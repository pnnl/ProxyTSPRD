import os
os.environ['DGLBACKEND']='tensorflow'

import numpy as np
import tensorflow as tf

import dgl
from dgl.data import CoraGraphDataset

# load data
dataset = dgl.data.CoraGraphDataset()
print("Number of categories: %d" %(dataset.num_classes))

# load the graph
g = dataset[0]
print("Node features:")
print(g.ndata['feat'].shape)
print("Edge features:")
print(g.edata)

# load conv layer
from dgl.nn.tensorflow import GraphConv

# Tensorflow model
class GCN(tf.keras.Model):
    def __init__(self, in_feats, n_hidden, n_classes) -> None:
        super(GCN, self).__init__()
        self.conv1 = GraphConv(in_feats, n_hidden)
        self.conv2 = GraphConv(n_hidden, n_classes)

    def call(self, g, in_feat):
        h = self.conv1(g, in_feat)
        h = self.conv2(g, h)
        return h
    
# create the model with given dimensions
model = GCN(
            g.ndata["feat"].shape[1], 
            16, 
            dataset.num_classes
        )

# loss function
loss_fcn = tf.keras.losses.SparseCategoricalCrossentropy(
            from_logits=True
)
# use optimizer
optimizer = tf.keras.optimizers.Adam(
    learning_rate=0.01, epsilon=1e-8
)

features = g.ndata["feat"]
labels = g.ndata["label"]
train_mask = g.ndata["train_mask"]
test_mask = g.ndata["test_mask"]
val_mask = g.ndata["val_mask"]
n_edges = g.number_of_edges()

def evaluate(model, g, features, labels, mask):
    logits = model(g, features, training=False)
    logits = logits[mask]
    labels = labels[mask]
    indices = tf.math.argmax(logits, axis=1)
    acc = tf.reduce_mean(tf.cast(indices == labels, dtype=tf.float32))
    return acc.numpy().item()

for epoch in range(2):
    # forward
    with tf.GradientTape() as tape:
        logits = model(g, features)
        loss_value = loss_fcn(labels[train_mask], logits[train_mask])
        # Manually Weight Decay
        # We found Tensorflow has a different implementation on weight decay
        # of Adam(W) optimizer with PyTorch. And this results in worse results.
        # Manually adding weights to the loss to do weight decay solves this problem.
        for weight in model.trainable_weights:
            loss_value = loss_value + 5e-4 * tf.nn.l2_loss(
                weight
            )

        grads = tape.gradient(loss_value, model.trainable_weights)
        optimizer.apply_gradients(zip(grads, model.trainable_weights))
    
    acc = evaluate(model, g, features, labels, val_mask)
    print(
        "Epoch {:05d} | Loss {:.4f} | Accuracy {:.4f} | ".format(
            epoch,
            loss_value.numpy().item(),
            acc,
        )
    )

acc = evaluate(model, g, features, labels, test_mask)
print("Test Accuracy {:.4f}".format(acc))
