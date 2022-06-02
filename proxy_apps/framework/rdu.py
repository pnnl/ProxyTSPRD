from .main import Framework
import torch.distributed as dist
import sambaflow.samba.utils as utils
from sambaflow import samba
from sambaflow.samba.utils.argparser import parse_app_args, parse_yaml_to_args
from sambaflow.samba.utils.benchmark_acc import AccuracyReport
from sambaflow.samba.utils.dataset.mnist import dataset_transform
from sambaflow.samba.utils.pef_utils import get_pefmeta

from .import PyTorchInterface

class RDU(Framework):
    def __init__(
        self, 
        machine_name, 
        config_file, 
        n_epochs, 
        batch_size
    ) -> None:
        super().__init__(machine_name, config_file, n_epochs, batch_size)

    def use_pytorch(self):
        super().use_pytorch()
        self.interface = PyTorchInterfaceSN()
    
    def load_data(self, path):
        self.dataloader = self.interface.init_dataloader()
        self.interface.load_data()


class PyTorchInterfaceSN(PyTorchInterface):
    def __init__(
        self, 
        machine_name, 
        data_type, 
        n_epochs, 
        batch_size,
    ) -> None:
        super().__init__(machine_name, data_type, n_epochs, batch_size)

        # when it is not distributed mode, local rank is -1.
        self.local_rank = dist.get_rank() if dist.is_initialized() else -1

    def init_dataloader(self):
        super().init_dataloader()
        

    def init_model(
        self, 
        model_name, 
        weight_norm,
        opt_params
    ):
        # Instantiate the model
        self.model = super().init_model(
            model_name
        )

        # Sync model parameters with RDU memory
        samba.from_torch_(self.model)

        # Annotate parameters if weight normalization is on
        if weight_norm:
            utils.weight_norm_(self.model.lin_layer)

        # We use the SGD optimizer to update the weights of the model
        self.optimizer = samba.optim.SGD(self.model.parameters(),
                                    lr=opt_params['lr'],
                                    momentum=opt_params['momentum'],
                                    weight_decay=opt_params['weight_decay']
                                    )

    def compile(
        self,
        inputs,
        app_dir,

    ):
        #  Compile the model to generate a PEF (Plasticine Executable Format) binary
        # utils.get_file_dir(__file__)
        samba.session.compile(self.model,
                              inputs,
                              self.optimizer,
                              name=self.model_name,
                              app_dir=app_dir,
                              config_dict=vars(args),
                              pef_metadata=get_pefmeta(args, self.model))

    def train(
        self,
        mapping="spatial",
        num_spatial_batches=1
    ):
        # Build inputs of the correct shape for spatial
        if mapping == "spatial":
            inputs = (samba.SambaTensor(samba.to_torch(inputs[0]).repeat(num_spatial_batches, 1),
                                        name='image',
                                        batch_dim=0),
                      samba.SambaTensor(samba.to_torch(inputs[1]).repeat(num_spatial_batches),
                                        name='label',
                                        batch_dim=0))

        # Trace the compiled graph to initialize the model weights and input/output tensors
        # for execution on the RDU.
        # The PEF required for tracing is the binary generated during compilation
        # Mapping refers to how the model layers are arranged in a pipeline for execution.
        # Valid options: 'spatial' or 'section'
        print("--------------------- Hello --------------------------------")
        traced_outputs = utils.trace_graph(self.model,
                                           inputs,
                                           self.optimizer,
                                           pef=args.pef,
                                           mapping=args.mapping,
                                           distlearn_config=args.distlearn_config)

    
        # Get data loaders for training and test data
        train_loader, test_loader = prepare_dataloader(args)

        # Total training steps (iterations) per epoch
        total_step = len(train_loader)

        hyperparam_dict = {"lr": args.lr, "momentum": args.momentum, "weight_decay": args.weight_decay}

        # Train and test for specified number of epochs
        for epoch in range(args.num_epochs):
            avg_loss = 0

            # Train the model for all samples in the train data loader
            for i, (images, labels) in enumerate(train_loader):
                sn_images = samba.from_torch(images, name='image', batch_dim=0)
                sn_labels = samba.from_torch(labels, name='label', batch_dim=0)

                loss, outputs = samba.session.run(input_tensors=[sn_images, sn_labels],
                                                output_tensors=output_tensors,
                                                hyperparam_dict=hyperparam_dict,
                                                data_parallel=args.data_parallel,
                                                reduce_on_rdu=args.reduce_on_rdu)

                # Sync the loss and outputs with host memory
                loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
                avg_loss += loss.mean()

                # Print loss per 10,000th sample in every epoch
                if (i + 1) % 10000 == 0 and args.local_rank <= 0:
                    print('Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, args.num_epochs, i + 1, total_step,
                                                                            avg_loss / (i + 1)))

            # Check the accuracy of the trained model for all samples in the test data loader
            # Sync the model parameters with host memory
            samba.session.to_cpu(model)
            test_acc = 0.0
            with torch.no_grad():
                correct = 0
                total = 0
                total_loss = 0
                for images, labels in test_loader:
                    loss, outputs = model(images, labels)
                    loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
                    total_loss += loss.mean()
                    _, predicted = torch.max(outputs.data, 1)
                    total += labels.size(0)
                    correct += (predicted == labels).sum()

                test_acc = 100.0 * correct / total

                if args.local_rank <= 0:
                    print('Test Accuracy: {:.2f}'.format(test_acc),
                        ' Loss: {:.4f}'.format(total_loss.item() / (len(test_loader))))

            if args.acc_test:
                assert args.num_epochs == 1, "Accuracy test only supported for 1 epoch"
                assert test_acc > 91.0 and test_acc < 92.0, "Test accuracy not within specified bounds."

        if args.json is not None:
            report = AccuracyReport(val_accuracy=test_acc.item(),
                                    batch_size=args.batch_size,
                                    num_iterations=args.num_epochs * total_step)
            report.save(args.json)