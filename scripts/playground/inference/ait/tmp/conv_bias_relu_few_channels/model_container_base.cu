
#include "model_container.h"
#include "owned_constants.h"

namespace ait {
namespace {
// Contains the metadata for each constant.
constexpr std::array<ConstantInfo, 0> owned_constants = {
  
};
} // namespace

ModelContainerBase::ModelContainerBase(
    size_t num_inputs,
    size_t num_outputs,
    size_t num_unbound_constants,
    size_t params_size,
    AITemplateAllocator& allocator)
    : constants_(RAII_DeviceMalloc(params_size, allocator)),
      num_params_(num_inputs + num_outputs + num_unbound_constants),
      param_names_(num_params_),
      param_dtypes_(num_params_),
      max_param_shapes_(num_params_),
      max_param_numel_(num_params_),
      max_param_storage_bytes_(num_params_) {

     param_names_[0] = "input_0";
     param_names_[1] = "input_1";
     param_names_[2] = "input_2";
     param_names_[3] = "output_0";
     param_dtypes_[0] = AITemplateDtype::kHalf;
     param_dtypes_[1] = AITemplateDtype::kHalf;
     param_dtypes_[2] = AITemplateDtype::kHalf;
     param_dtypes_[3] = AITemplateDtype::kHalf;
     max_param_shapes_[0] = {1024, 60, 136, 4};
     max_param_shapes_[1] = {1, 60, 60, 4};
     max_param_shapes_[2] = {1};
     max_param_shapes_[3] = {1024, 1, 77, 1};
  for (size_t i = 0; i < num_params_; ++i) {
    max_param_numel_[i] = std::accumulate(
      max_param_shapes_[i].begin(),
      max_param_shapes_[i].end(),
      1,
      std::multiplies<int64_t>()
    );
    max_param_storage_bytes_[i] = max_param_numel_[i] * AITemplateDtypeSizeBytes(param_dtypes_[i]);
  }

  auto* constants_ptr = static_cast<uint8_t*>(constants_.get());
  const auto binary_constants_bin_size = static_cast<size_t>(_binary_constants_bin_end - _binary_constants_bin_start);
  for (auto& constant_info : owned_constants) {
    auto* dst = constants_ptr + constant_info.internal_offset;
    if (constant_info.data_offset + constant_info.num_bytes > binary_constants_bin_size) {
      throw std::runtime_error(std::string("Copying constant ") + constant_info.name + " would overflow constant buffer");
    }
    DEVICE_CHECK(CopyToDevice(dst, _binary_constants_bin_start + constant_info.data_offset, constant_info.num_bytes));
  }
}

ModelContainer* CreateModelContainer(size_t num_runtimes, AITemplateAllocator& allocator) {
  // num_runtimes, blob_size, workspace_size, num_inputs, num_outputs, num_unbound_constants, param_size, allocator
  return new ModelContainer(num_runtimes, 67033280, 0, 3, 1, 0, 0, allocator);
}
} // namespace ait