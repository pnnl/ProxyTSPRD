
#pragma once

#include "logging.h"
#include "device_functions-generated.h"
#include "model_interface.h"
#include "raii_wrapper.h"
#include "macros.h"
#include <algorithm>
#include <deque>
#include <string>
#include <unordered_map>
#include <math.h>


void gemm_rcr_bias_fast_gelu_0(
  void*,
  void*,
  void*,
  void*,
  uint8_t*,

    int,


  int64_t*,

  int64_t*,


  int64_t*,

  int64_t*,


  int64_t*,

  int64_t*,

  cudaStream_t
);

void gemm_rcr_bias_add_4(
  void*,
  void*,
  void*,
  void*,

  void*,
  uint8_t*,

    int,


  int64_t*,

  int64_t*,


  int64_t*,

  int64_t*,


  int64_t*,

  int64_t*,

  cudaStream_t
);

    cudaError_t layernorm_3(void* output,
                   void* input,
                   const void* gamma,
                   const void* beta,
                   int m,
                   int n,
                   const float eps,
                   cudaStream_t stream);
    

#define CHECK_VECTOR_ACCESS(vector, idx)                                  \
  if (idx >= vector.size()) {                                             \
    throw std::out_of_range(                                              \
        "[__func__]: index out of range, " #vector ".size()=" +           \
        std::to_string(vector.size()) + ", got " + std::to_string(idx));  \
  }

namespace ait {
namespace {
void DeviceCheckLastError(const char* file, int line) {
  auto device_error = GetLastError();
  if (device_error != GetDeviceSuccess()) {
    std::string msg = std::string("Got error: ") + GetLastErrorString() +
                      " enum: " + std::to_string(device_error) +
                      " at " + file + ": " + std::to_string(line);
    LOG(ERROR) << msg;
    throw std::runtime_error(msg);
  }
}

thread_local bool target_has_graph_mode = true;
} // namespace

// Model is the class that actually performs inference. It owns memory for
// intermediate tensors and dynamic dimensions. Constants are owned by
// the model's owning container object, and input/output memory is owned
// by the user.
// Once an inference run has started, it is not safe to re-use the Model
// until the run has finished!
class Model {
  public:
  Model(
      size_t blob_size,
      size_t workspace_size,
      size_t num_inputs,
      size_t num_outputs,
      size_t num_unbound_constants,
      uint8_t* constants,
      AITemplateAllocator& allocator)
      : blob_(RAII_DeviceMalloc(blob_size, allocator)),
        workspace_(RAII_DeviceMalloc(workspace_size, allocator)),
        params_(num_inputs + num_outputs + num_unbound_constants),
        num_inputs_(num_inputs),
        num_outputs_(num_outputs),
        constants_(constants) {
      dmlc::InitLogging("aitemplate"); // TODO(xxx): render network name
      LOG(INFO) << "Init AITemplate Runtime.";
      global_workspace_ = static_cast<uint8_t*>(workspace_.get()) + 0;
      unique_workspace_ = static_cast<uint8_t*>(workspace_.get());
      DEVICE_CHECK(GetDevice(&device_idx_))
      DEVICE_CHECK(CreateEvent(&run_finished_));
#if defined(__NVCC__) || (defined(__clang__) && defined(__CUDA__))
      DEVICE_CHECK(cudaDeviceGetAttribute(
        &max_smem_size_, cudaDevAttrMaxSharedMemoryPerBlockOptin, device_idx_));
#endif
      DEVICE_CHECK(GetDeviceProperties(&device_properties_, device_idx_));
      DEVICE_CHECK(StreamCreate(&graph_capture_stream_, /*non_blocking=*/true));
  InitConstants(constants_);
      auto* blob_ptr = static_cast<uint8_t*>(blob_.get());
      gemm_rcr_bias_fast_gelu_0_0 = reinterpret_cast<decltype(gemm_rcr_bias_fast_gelu_0_0)>(blob_ptr + 0);
    elementwise_2_0 = reinterpret_cast<decltype(elementwise_2_0)>(blob_ptr + 5242880);
  
    }

    ~Model() {
      if (run_finished_ != nullptr) {
        DestroyEvent(run_finished_);
      }
      if (graph_capture_stream_ != nullptr) {
        StreamDestroy(graph_capture_stream_);
      }
      if (graph_exec_ != nullptr) {
        GraphExecDestroy(graph_exec_);
      }
    }

    Model(Model&& other) {
      run_finished_ = other.run_finished_;
      graph_exec_ = other.graph_exec_;
      graph_capture_stream_ = other.graph_capture_stream_;
      other.run_finished_ = nullptr;
      other.graph_exec_ = nullptr;
      other.graph_capture_stream_ = nullptr;

      constants_ = other.constants_;
      num_inputs_ = other.num_inputs_;
      global_workspace_ = other.global_workspace_;
      unique_workspace_ = other.unique_workspace_;
      workspace_ = std::move(other.workspace_);

      params_ = std::move(other.params_);
      constant_name_to_ptr_ = std::move(other.constant_name_to_ptr_);
      // Re-wire the pointers in the above 2 structures.
      InitConstants(constants_);
    }

    Model& operator=(Model&&) = delete;
    Model(const Model&) = delete;
    Model& operator=(const Model&) = delete;

    void SetUpInputsOutputs() {
             X = static_cast<decltype(X)>(params_[0].ptr);

if (X == nullptr) {
    throw std::runtime_error("Constant X was not set! Set the value with set_constant.");
}
    
     Y = static_cast<decltype(Y)>(params_[1].ptr);

if (Y == nullptr) {
    throw std::runtime_error("Constant Y was not set! Set the value with set_constant.");
}
    
    }

    void DeviceToDeviceCopies(StreamType stream) {
  
    }
    void Run(StreamType stream, bool graph_mode) {
      SetUpInputsOutputs();
      if (target_has_graph_mode && graph_mode) {
        RunAsGraph(stream);
      } else {
        RunImpl(stream);
      }
      DEVICE_CHECK(EventRecord(run_finished_, stream));
    }

    void RunImpl(StreamType stream) {
  
  
    {
    

    gemm_rcr_bias_fast_gelu_0(

        X,
        dense1_weight,

        dense1_bias,

        gemm_rcr_bias_fast_gelu_0_0,
        global_workspace_,
        1,

        &X_dim_0,

        &X_dim_1,


        &dense1_weight_dim_0,

        &dense1_weight_dim_1,


        &X_dim_0,

        &dense1_weight_dim_0,

        stream
    );
    }
      DeviceCheckLastError(__FILE__, __LINE__);
  
  
    {
    

    gemm_rcr_bias_add_4(

        gemm_rcr_bias_fast_gelu_0_0,
        dense2_weight,
        dense2_bias,
        X,

        elementwise_2_0,
        global_workspace_,

     1,


        &X_dim_0,

        &dense1_weight_dim_0,


        &dense2_weight_dim_0,

        &dense2_weight_dim_1,


        &X_dim_0,

        &dense2_weight_dim_0,

        stream
    );
    }
      DeviceCheckLastError(__FILE__, __LINE__);
  
  
      {
        
        int64_t M = 1;

        M *= X_dim_0;

    

        int64_t N = 1;

        N *= dense2_weight_dim_0;

    
        layernorm_3(
           Y, elementwise_2_0, layernorm_weight, layernorm_bias,
           M, N, 1e-05, stream /* default stream */
        );
      }
    
      DeviceCheckLastError(__FILE__, __LINE__);
  
      DeviceToDeviceCopies(stream);
    }

    bool IsPending() {
      auto query = QueryEvent(run_finished_);
      if (query == GetDeviceNotReady()) {
        return true;
      }
      if (query != GetDeviceSuccess()) {
        LOG(WARNING) << "Pending model run did not finish successfully. Error: "
                    << GetErrorString(query);
      }
      return false;
    }

    void WaitForCompletion() {
      DEVICE_CHECK(EventSynchronize(run_finished_));
    }

    size_t NumInputs() const {
      return num_inputs_;
    }

    size_t NumOutputs() const {
      return num_outputs_;
    }

    void SetParam(const void* src, size_t param_idx) {
      CHECK_VECTOR_ACCESS(params_, param_idx)
      // const_cast is not ideal here, but it is unfortunately
      // necessary:
      // 1) We store outputs and inputs in the same vector,
      //    and outputs cannot be const.
      // 2) Most of the codegen is not const-correct (most ops
      //    require non-const pointers). So even if we put const
      //    pointers into params, a const_cast would be required
      //    somewhere else.
      params_[param_idx].ptr = const_cast<void*>(src);
    }

    void SetInput(const void* src, const AITemplateParamShape& shape, size_t idx) {
      SetInputShape(shape, idx);
      SetParam(src, idx);
    }

    void SetOutput(void* src, size_t idx) {
      SetParam(src, idx + num_inputs_);
    }

    // Write the (possibly dynamic) output shape to the given pointer.
    // Note that this should be called _after_ the shape inference in
    // Run() is finished. output_shape_out should be able to store
    // at least GetOutputMaximumShape(idx).size values.
    void GetOutputShape(size_t idx, int64_t* output_shape_out) {
      const auto param_idx = idx + num_inputs_;
      CHECK_VECTOR_ACCESS(params_, param_idx);
      const auto& shape_ptrs = params_[param_idx].shape_ptrs;
      for (size_t i = 0; i < shape_ptrs.size(); ++i) {
        output_shape_out[i] = shape_ptrs[i].GetValue();
      }
    }

    void SetConstant(const char* name, const void* src) {
      auto it = constant_name_to_ptr_.find(name);
      if (it == constant_name_to_ptr_.end()) {
        throw std::out_of_range(std::string("Could not find constant ") + name);
      }
      const void** ptr = it->second;
      *ptr = src;
    }

  private:
    void InitConstants(uint8_t* constants) {
          dense1_weight = reinterpret_cast<decltype(dense1_weight)>(constants + 0);
    dense1_bias = reinterpret_cast<decltype(dense1_bias)>(constants + 2097152);
    dense2_weight = reinterpret_cast<decltype(dense2_weight)>(constants + 2101248);
    dense2_bias = reinterpret_cast<decltype(dense2_bias)>(constants + 4198400);
    layernorm_weight = reinterpret_cast<decltype(layernorm_weight)>(constants + 4199424);
    layernorm_bias = reinterpret_cast<decltype(layernorm_bias)>(constants + 4200448);
           params_[0].shape_ptrs = {ParamDim(1024, 1024, &X_dim_0), ParamDim(512, 512, &X_dim_1)};
     params_[1].shape_ptrs = {ParamDim(1024, 1024, &X_dim_0), ParamDim(512, 512, &dense2_weight_dim_0)};
    }

    void SetInputShape(const AITemplateParamShape& shape, size_t idx) {
      auto& param = params_[idx];
      if (shape.size != param.shape_ptrs.size()) {
        throw std::runtime_error(
          "[SetInputShape] Got wrong param shape for input " + std::to_string(idx) +
          "; expected " + std::to_string(param.shape_ptrs.size()) + ", got " +
          std::to_string(shape.size));
      }
      for (size_t i = 0; i < param.shape_ptrs.size(); ++i) {
        param.shape_ptrs[i].SetValue(shape.shape_data[i]);
      }
    }

    DeviceError EndCapture(GraphType* graph_ptr) {
      auto err = StreamEndCapture(graph_capture_stream_, graph_ptr);
      if (err != GetDeviceSuccess()) {
        // If we can't take the stream out of capture mode, something is probably
        // wrong with CUDA graph for this model (e.g. there might have been an
        // illegal capture mode operation). Disable graph mode to avoid such issues
        // in future iterations.
        target_has_graph_mode = false;
        LOG(WARNING) << "Graph capture failed to end. Disabling graph mode.";
        return err;
      }
      return GetDeviceSuccess();
    }

    void RunAsGraph(StreamType stream) {
      DEVICE_CHECK(StreamBeginCapture(graph_capture_stream_, /*global=*/false));
      try {
        RunImpl(graph_capture_stream_);
      } catch (...) {
        GraphType graph;
        // No need to DEVICE_CHECK here, we want to see the original exception.
        EndCapture(&graph);
        if (graph != nullptr && GraphDestroy(graph) != GetDeviceSuccess()) {
          LOG(WARNING) << "Graph destruction failed while handling exception! Memory will be leaked.";
        }
        throw;
      }

      // The following function ends the capture and creates a graph
      // inside a unique_ptr that cleans up it when it goes out of scope.
      // Note that it throws an exception if EndCapture fails.
      auto graph = RAII_EndCaptureAndCreateGraph(
        [this](GraphType* graph_ptr){ return EndCapture(graph_ptr); }
      );

      if (graph_exec_ == nullptr) {
        DEVICE_CHECK(GraphInstantiate(&graph_exec_, graph.get()));
      } else if (GraphExecUpdate(graph_exec_, graph.get()) != GetDeviceSuccess()) {
        // Consume the last cuda error, which may affect the next GraphExecLaunch
        // call.
        GetLastError();
        DEVICE_CHECK(GraphExecDestroy(graph_exec_));
        DEVICE_CHECK(GraphInstantiate(&graph_exec_, graph.get()));
      }

      DEVICE_CHECK(GraphExecLaunch(graph_exec_, stream));
    }

    int device_idx_;
    int max_smem_size_{0};
    DevicePropertyType device_properties_;
    // This event tracks when the inference is finished
    // so that this Model may be reclaimed by its owning
    // ModelContainer.
    EventType run_finished_;
    // A blob of memory used for storing intermediate tensors.
    GPUPtr blob_;
    // Memory for constants that were folded into the *.so. Unowned by Model,
    // owned by ModelContainer.
    // TODO: make this const. It can't be const right now because we derive
    // tensor pointers from it, and no tensor pointers are const.
    uint8_t* constants_;
    size_t num_inputs_;
    size_t num_outputs_;

    // The workspace blob is used as scratch memory. See
    // _generate_workspace in memory planning for more information.
    GPUPtr workspace_;
    uint8_t* global_workspace_{nullptr};
    uint8_t* unique_workspace_{nullptr};

    class ParamDim {
      public:
        ParamDim(int64_t lower_bound, int64_t upper_bound, int64_t* value) :
          lower_bound_(lower_bound),
          upper_bound_(upper_bound),
          value_(value) {}

        void SetValue(int64_t new_value) {
          if (new_value < lower_bound_ || new_value > upper_bound_) {
            throw std::out_of_range(
              "[SetValue] Dimension got value out of bounds; expected value to be in [" +
              std::to_string(lower_bound_) + ", " + std::to_string(upper_bound_) + "], but got " +
              std::to_string(new_value)
            );
          }
          *value_ = new_value;
        }

        int64_t GetValue() const {
          return *value_;
        }

      private:
        int64_t lower_bound_;
        int64_t upper_bound_;
        int64_t* value_;
    };

    struct ParamInfo {
      void* ptr = nullptr;
      // TODO add offset
      const char* name;
      std::vector<ParamDim> shape_ptrs;
    };

    // Contains info for all tensors marked as inputs
    // or outputs. The first num_inputs elements are the inputs.
    // Constants are not included.
    std::vector<ParamInfo> params_;

    GraphExecType graph_exec_ = nullptr;
    StreamType graph_capture_stream_;

    std::unordered_map<std::string, const void**> constant_name_to_ptr_;
   void* X {nullptr};
   void* dense1_weight {nullptr};
   void* dense1_bias {nullptr};
   void* gemm_rcr_bias_fast_gelu_0_0 {nullptr};
   void* dense2_weight {nullptr};
   void* dense2_bias {nullptr};
   void* elementwise_2_0 {nullptr};
   void* layernorm_weight {nullptr};
   void* layernorm_bias {nullptr};
   void* Y {nullptr};
   int64_t X_dim_0 { 1024 };
   int64_t X_dim_1 { 512 };
   int64_t dense1_weight_dim_0 { 2048 };
   int64_t dense1_weight_dim_1 { 512 };
   int64_t dense1_bias_dim_0 { 2048 };
   int64_t dense2_weight_dim_0 { 512 };
   int64_t dense2_weight_dim_1 { 2048 };
   int64_t dense2_bias_dim_0 { 512 };
   int64_t layernorm_weight_dim_0 { 512 };
   int64_t layernorm_bias_dim_0 { 512 };

};
} // namespace ait