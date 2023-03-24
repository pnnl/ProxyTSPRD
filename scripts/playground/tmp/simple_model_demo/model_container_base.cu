
#include "model_container.h"
#include "owned_constants.h"

namespace ait {
namespace {
// Contains the metadata for each constant.
constexpr std::array<ConstantInfo, 5> owned_constants = {
  ConstantInfo{"conv_layer_weight", 0, 0, 28800},ConstantInfo{"conv_layer_bias", 28800, 28800, 2},ConstantInfo{"dense_layer_bias", 28802, 28864, 8160},ConstantInfo{"tensor_0", 36962, 37056, 6144},ConstantInfo{"concatenate_5_0", 43106, 43200, 652800}
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

     param_names_[0] = "X";
     param_names_[1] = "Y";
     param_dtypes_[0] = AITemplateDtype::kHalf;
     param_dtypes_[1] = AITemplateDtype::kHalf;
     max_param_shapes_[0] = {1024, 60, 136, 4};
     max_param_shapes_[1] = {1024, 30, 136};
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
  return new ModelContainer(num_runtimes, 67004416, 0, 1, 1, 0, 696000, allocator);
}
} // namespace ait