{ // partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf
    TBuffer::Params partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_param;
    partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_param.buffer_depth = 1;
    // layout: <BF16[256, 136, 3, 1]RM/64@0x0> vec_order: {0, 1, 2, 3} vec_dim: 3 dims: {256, 136, 3, 32}
    partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{256, 136, 3, 1},{0, 1, 2, 3}).with_vector_transpose_dim(3).vector_align();
    auto partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 69, 0);
    auto *partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf", kNoParent, partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_loc, &rail, partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_param);
    auto partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_W_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_W_loc, "W", [&](){
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(256), 1);
        auto x8 = dsl::iterator(x6, x4, imm(136), 1);
        auto x9 = dsl::iterator(x6, x4, imm(3), 1);
        auto x10 = dsl::iterator(x6, imm(32), x4, 1);
        // chain steps:  (104448 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9, x10});
        auto x12 = set_ctx_done_expr(x7.done());
        auto target = set_write_addr(std::vector<Value>{x7, x8, x9, x10}, x5,  vector_in("8"));
        target.set_vec_dim(3);
        send(x12,  control_out("1000"));
        send(x12,  control_out("wdone__"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_R_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 73, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf_R_loc, "R", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x0 = imm(3);
        auto x1 = imm(1);
        auto x2 = imm(136);
        auto x4 = imm(256);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x1, x0, 1);
        auto x9 = dsl::iterator(x6, x1, x1, 1);
        auto x12 = dsl::iterator(x6, x1, x2, 1);
        auto x15 = dsl::iterator(x6, imm(32), x4, 1);
        auto x17 = ((((x7 < x0) & (x9 < x1)) & (x12 < x2)) & (x15 < x4));
        // chain steps:  (3264 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x9, x15, x12});
        auto x19 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x15, x12, x7, x9}, boolean(true), x17,  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x19,  control_out("1000"));
        token_buffer( control_in("W_wdone_in__"), x19, 0);
    });
} // partition_0_0__LogregTorchSamba_partition_0_0__ptconvlstm__conv_layer__conv2d_weight_permute_tbuf
{ // partition_0_0__tbuf2u_0_0_189
    TBuffer::Params partition_0_0__tbuf2u_0_0_189_param;
    partition_0_0__tbuf2u_0_0_189_param.buffer_depth = 2;
    // layout: <BF16[60, 136]RM/64@0x0> vec_order: {0, 1} vec_dim: 1 dims: {60, 160}
    partition_0_0__tbuf2u_0_0_189_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{60, 136},{0, 1}).with_vector_transpose_dim(1).vector_align();
    auto partition_0_0__tbuf2u_0_0_189_loc = loc("LogregTorchSamba.cpp", 122, 0);
    auto *partition_0_0__tbuf2u_0_0_189 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf2u_0_0_189", kNoParent, partition_0_0__tbuf2u_0_0_189_loc, &rail, partition_0_0__tbuf2u_0_0_189_param);
    auto partition_0_0__tbuf2u_0_0_189_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_0_0__tbuf2u_0_0_189->setup_addr(partition_0_0__tbuf2u_0_0_189_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(60), 1);
        auto x7 = dsl::iterator(x5, imm(32), imm(136), 1);
        // chain steps:  (300 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6, x7}, x4,  vector_in("8"));
        target.set_vec_dim(1);
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf2u_0_0_189_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 137, 0);
    partition_0_0__tbuf2u_0_0_189->setup_addr(partition_0_0__tbuf2u_0_0_189_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x6 = imm(0);
        auto x7 =  scalar_in("idx");
        token_buffer(x7, 0);
        auto x8 = dsl::iterator(x6, imm(1), imm(3), 1);
        auto x9 = dsl::iterator(x6, imm(32), imm(136), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9});
        auto x11 = set_ctx_done_expr(x8.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x7, x9}, (x7 < imm(60)), boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("0"), x11, 1);
        token_buffer( control_in("1"), x11, 2);
        send(x11,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x11, 0);
    });
} // partition_0_0__tbuf2u_0_0_189
{ // partition_0_0__tbuf1u_0_0_190
    TBuffer::Params partition_0_0__tbuf1u_0_0_190_param;
    partition_0_0__tbuf1u_0_0_190_param.buffer_depth = 1;
    // layout: <INT32[3]RM@0x0> vec_order: {0} vec_dim: 0 dims: {3}
    partition_0_0__tbuf1u_0_0_190_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT32"),{3},{0}).with_vector_transpose_dim(0);
    auto partition_0_0__tbuf1u_0_0_190_loc = loc("LogregTorchSamba.cpp", 131, 0);
    auto *partition_0_0__tbuf1u_0_0_190 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1u_0_0_190", kNoParent, partition_0_0__tbuf1u_0_0_190_loc, &rail, partition_0_0__tbuf1u_0_0_190_param);
    auto partition_0_0__tbuf1u_0_0_190_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_0_0__tbuf1u_0_0_190->setup_addr(partition_0_0__tbuf1u_0_0_190_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 = dsl::iterator(x3, imm(16), imm(3), 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4}, x2,  vector_in("8"));
        target.set_vec_dim(0);
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf1u_0_0_190_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kIndexRd_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 124, 0);
    partition_0_0__tbuf1u_0_0_190->setup_addr(partition_0_0__tbuf1u_0_0_190_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kIndexRd_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kIndexRd", [&](){
        // pacing_window: default;
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(3), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x5, imm(32), imm(136), 1)});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x6}, x4, x4,  scalar_out("1001"));
        target.set_vec_dim(-1);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // partition_0_0__tbuf1u_0_0_190
{ // partition_0_0__tbuf2u_0_0_194
    TBuffer::Params partition_0_0__tbuf2u_0_0_194_param;
    partition_0_0__tbuf2u_0_0_194_param.buffer_depth = 2;
    // layout: <BF16[136, 3]CM/64@0x0> vec_order: {1, 0} vec_dim: 0 dims: {160, 3}
    partition_0_0__tbuf2u_0_0_194_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{136, 3},{1, 0}).with_vector_transpose_dim(1).vector_align();
    auto partition_0_0__tbuf2u_0_0_194_loc = loc("LogregTorchSamba.cpp", 152, 0);
    auto *partition_0_0__tbuf2u_0_0_194 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf2u_0_0_194", kNoParent, partition_0_0__tbuf2u_0_0_194_loc, &rail, partition_0_0__tbuf2u_0_0_194_param);
    auto partition_0_0__tbuf2u_0_0_194_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 161, 0);
    partition_0_0__tbuf2u_0_0_194->setup_addr(partition_0_0__tbuf2u_0_0_194_LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr", [&](){
        enable_addr_splitting();
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(3), 1);
        auto x7 = dsl::iterator(x5, imm(32), imm(136), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x7, x6}, x4,  vector_in("8"));
        target.set_vec_dim(0);
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf2u_0_0_194_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_0_0__tbuf2u_0_0_194->setup_addr(partition_0_0__tbuf2u_0_0_194_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(32), imm(136), 1);
        auto x7 = dsl::iterator(x5, imm(1), imm(3), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x6});
        auto x9 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x6, x7}, x4, x4,  vector_out("1001"));
        target.set_vec_dim(0);
        token_buffer( control_in("0"), x9, 2);
        token_buffer( control_in("1"), x9, 2);
        send(x9,  control_out("1000"));
        auto x14 =  control_in("LogregTorchSamba.partition_0_0_.ptconvlstm__lambda_layer__indexselect@kOutWr_wdone_in__");
        token_buffer(x14, x9, 0);
    });
} // partition_0_0__tbuf2u_0_0_194
{ // partition_1_0__tbuf2u_1_0_245
    TBuffer::Params partition_1_0__tbuf2u_1_0_245_param;
    partition_1_0__tbuf2u_1_0_245_param.buffer_depth = 2;
    // layout: <BF16[60, 136]RM/64@0x0> vec_order: {0, 1} vec_dim: 1 dims: {60, 160}
    partition_1_0__tbuf2u_1_0_245_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{60, 136},{0, 1}).with_vector_transpose_dim(1).vector_align();
    auto partition_1_0__tbuf2u_1_0_245_loc = loc("LogregTorchSamba.cpp", 1773, 0);
    auto *partition_1_0__tbuf2u_1_0_245 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2u_1_0_245", kNoParent, partition_1_0__tbuf2u_1_0_245_loc, &rail, partition_1_0__tbuf2u_1_0_245_param);
    auto partition_1_0__tbuf2u_1_0_245_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_1_0__tbuf2u_1_0_245->setup_addr(partition_1_0__tbuf2u_1_0_245_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(60), 1);
        auto x7 = dsl::iterator(x5, imm(32), imm(136), 1);
        // chain steps:  (300 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6, x7}, x4,  vector_in("8"));
        target.set_vec_dim(1);
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2u_1_0_245_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 137, 0);
    partition_1_0__tbuf2u_1_0_245->setup_addr(partition_1_0__tbuf2u_1_0_245_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x6 = imm(0);
        auto x7 =  scalar_in("idx");
        token_buffer(x7, 0);
        auto x8 = dsl::iterator(x6, imm(1), imm(3), 1);
        auto x9 = dsl::iterator(x6, imm(32), imm(136), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9});
        auto x11 = set_ctx_done_expr(x8.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x7, x9}, (x7 < imm(60)), boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("0"), x11, 1);
        token_buffer( control_in("1"), x11, 2);
        send(x11,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x11, 0);
    });
} // partition_1_0__tbuf2u_1_0_245
{ // partition_1_0__tbuf1u_1_0_246
    TBuffer::Params partition_1_0__tbuf1u_1_0_246_param;
    partition_1_0__tbuf1u_1_0_246_param.buffer_depth = 1;
    // layout: <INT32[3]RM@0x0> vec_order: {0} vec_dim: 0 dims: {3}
    partition_1_0__tbuf1u_1_0_246_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT32"),{3},{0}).with_vector_transpose_dim(0);
    auto partition_1_0__tbuf1u_1_0_246_loc = loc("LogregTorchSamba.cpp", 1782, 0);
    auto *partition_1_0__tbuf1u_1_0_246 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1u_1_0_246", kNoParent, partition_1_0__tbuf1u_1_0_246_loc, &rail, partition_1_0__tbuf1u_1_0_246_param);
    auto partition_1_0__tbuf1u_1_0_246_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_1_0__tbuf1u_1_0_246->setup_addr(partition_1_0__tbuf1u_1_0_246_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 = dsl::iterator(x3, imm(16), imm(3), 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4}, x2,  vector_in("8"));
        target.set_vec_dim(0);
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1u_1_0_246_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 124, 0);
    partition_1_0__tbuf1u_1_0_246->setup_addr(partition_1_0__tbuf1u_1_0_246_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd", [&](){
        // pacing_window: default;
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(3), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x5, imm(32), imm(136), 1)});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x6}, x4, x4,  scalar_out("1001"));
        target.set_vec_dim(-1);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // partition_1_0__tbuf1u_1_0_246
{ // partition_1_0__tbuf2u_1_0_250
    TBuffer::Params partition_1_0__tbuf2u_1_0_250_param;
    partition_1_0__tbuf2u_1_0_250_param.buffer_depth = 2;
    // layout: <BF16[136, 3]CM/64@0x0> vec_order: {1, 0} vec_dim: 0 dims: {160, 3}
    partition_1_0__tbuf2u_1_0_250_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{136, 3},{1, 0}).with_vector_transpose_dim(1).vector_align();
    auto partition_1_0__tbuf2u_1_0_250_loc = loc("LogregTorchSamba.cpp", 1803, 0);
    auto *partition_1_0__tbuf2u_1_0_250 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2u_1_0_250", kNoParent, partition_1_0__tbuf2u_1_0_250_loc, &rail, partition_1_0__tbuf2u_1_0_250_param);
    auto partition_1_0__tbuf2u_1_0_250_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kOutWr_loc = loc("software/compiler/apps/rail/rail_index/template/src/RAILIndex.cpp", 161, 0);
    partition_1_0__tbuf2u_1_0_250->setup_addr(partition_1_0__tbuf2u_1_0_250_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kOutWr_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kOutWr", [&](){
        enable_addr_splitting();
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(1), imm(3), 1);
        auto x7 = dsl::iterator(x5, imm(32), imm(136), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x7, x6}, x4,  vector_in("8"));
        target.set_vec_dim(0);
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2u_1_0_250_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_1_0__tbuf2u_1_0_250->setup_addr(partition_1_0__tbuf2u_1_0_250_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(32), imm(136), 1);
        auto x7 = dsl::iterator(x5, imm(1), imm(3), 1);
        // chain steps:  (15 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x6});
        auto x9 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x6, x7}, x4, x4,  vector_out("1001"));
        target.set_vec_dim(0);
        token_buffer( control_in("0"), x9, 2);
        token_buffer( control_in("1"), x9, 2);
        send(x9,  control_out("1000"));
        auto x14 =  control_in("LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kOutWr_wdone_in__");
        token_buffer(x14, x9, 0);
    });
} // partition_1_0__tbuf2u_1_0_250
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 256]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 256}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 256},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 563, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(128);
        auto x5 = imm(0);
        auto x7 = dsl::iterator(x5, imm(32), x3, 1);
        auto x8 = dsl::iterator(x5, x1, imm(256), 1);
        auto x10 = set_ctx_done_expr(x7.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x5, x1, x1, 1), x7, x8});
        auto target = set_write_addr(std::vector<Value>{x7, x8}, ((x7 >= x5) & (x7 < x3)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x7.done(),  control_out("w_loop_done"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_1_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_1_0_loc, "w_loop_1_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x2 = imm(128);
        auto x3 = imm(256);
        auto x5 = imm(0);
        auto x7 = dsl::iterator(x2, imm(32), x3, 1);
        auto x8 = dsl::iterator(x5, x1, x3, 1);
        auto x10 = set_ctx_done_expr(x7.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x5, x1, x1, 1), x7, x8});
        auto target = set_write_addr(std::vector<Value>{x7, x8}, ((x7 >= x2) & (x7 < x3)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x7.done(),  control_out("w_loop_done"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_2_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_2_0_loc, "w_loop_2_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x2 = imm(256);
        auto x3 = imm(384);
        auto x5 = imm(0);
        auto x7 = dsl::iterator(x2, imm(32), x3, 1);
        auto x8 = dsl::iterator(x5, x1, x2, 1);
        auto x10 = set_ctx_done_expr(x7.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x5, x1, x1, 1), x7, x8});
        auto target = set_write_addr(std::vector<Value>{x7, x8}, ((x7 >= x2) & (x7 < x3)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x7.done(),  control_out("w_loop_done"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_3_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_3_0_loc, "w_loop_3_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(384);
        auto x4 = imm(512);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_4_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_4_0_loc, "w_loop_4_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(512);
        auto x4 = imm(640);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_5_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_5_0_loc, "w_loop_5_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(640);
        auto x4 = imm(768);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_6_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_6_0_loc, "w_loop_6_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(768);
        auto x4 = imm(896);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_7_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_7_0_loc, "w_loop_7_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(896);
        auto x4 = imm(1024);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_8_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_8_0_loc, "w_loop_8_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1024);
        auto x4 = imm(1152);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_9_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_9_0_loc, "w_loop_9_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1152);
        auto x4 = imm(1280);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_10_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_10_0_loc, "w_loop_10_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1280);
        auto x4 = imm(1408);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_11_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_11_0_loc, "w_loop_11_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1408);
        auto x4 = imm(1536);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_12_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_12_0_loc, "w_loop_12_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1536);
        auto x4 = imm(1664);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_13_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_13_0_loc, "w_loop_13_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1664);
        auto x4 = imm(1792);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_14_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_14_0_loc, "w_loop_14_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1792);
        auto x4 = imm(1920);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_15_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_15_0_loc, "w_loop_15_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(1920);
        auto x4 = imm(2048);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_16_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_16_0_loc, "w_loop_16_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2048);
        auto x4 = imm(2176);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_17_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_17_0_loc, "w_loop_17_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2176);
        auto x4 = imm(2304);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_18_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_18_0_loc, "w_loop_18_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2304);
        auto x4 = imm(2432);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_19_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_19_0_loc, "w_loop_19_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2432);
        auto x4 = imm(2560);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_20_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_20_0_loc, "w_loop_20_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2560);
        auto x4 = imm(2688);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_21_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_21_0_loc, "w_loop_21_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2688);
        auto x4 = imm(2816);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_22_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_22_0_loc, "w_loop_22_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2816);
        auto x4 = imm(2944);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_23_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_23_0_loc, "w_loop_23_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(2944);
        auto x4 = imm(3072);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_24_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_24_0_loc, "w_loop_24_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3072);
        auto x4 = imm(3200);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_25_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_25_0_loc, "w_loop_25_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3200);
        auto x4 = imm(3328);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_26_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_26_0_loc, "w_loop_26_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3328);
        auto x4 = imm(3456);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_27_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_27_0_loc, "w_loop_27_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3456);
        auto x4 = imm(3584);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_28_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_28_0_loc, "w_loop_28_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3584);
        auto x4 = imm(3712);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_29_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_29_0_loc, "w_loop_29_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3712);
        auto x4 = imm(3840);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_30_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_30_0_loc, "w_loop_30_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3840);
        auto x4 = imm(3968);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_31_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_31_0_loc, "w_loop_31_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x3 = imm(3968);
        auto x4 = imm(4080);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x3, imm(32), x4, 1);
        auto x9 = dsl::iterator(x6, x1, imm(256), 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (1024 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x6, x1, x1, 1), x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9}, ((x8 >= x3) & (x8 < x4)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8.done(),  control_out("w_loop_done"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 613, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        set_pacing_window(8192);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(32), imm(4080), 1);
        auto x8 = set_ctx_done_expr(x6.done());
        auto x9 = dsl::iterator(x5, imm(1), imm(256), 1);
        // chain steps:  (32768 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x9});
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x6, x9}, x4, x4,  vector_out("1001"));
        target.set_vec_dim(0);
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(8192, x6), 1);
        send(x8,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_1_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_2_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_3_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_4_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_5_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_6_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_7_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_8_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_9_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_10_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_11_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_12_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_13_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_14_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_15_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_16_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_17_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_18_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_19_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_20_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_21_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_22_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_23_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_24_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_25_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_26_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_27_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_28_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_29_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_30_0_wdone_in__"), x8, 0);
        token_buffer( control_in("w_loop_31_0_wdone_in__"), x8, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 563, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x2 = imm(4096);
        auto x4 = imm(0);
        auto x6 = dsl::iterator(x4, imm(32), x2, 1);
        auto x7 = dsl::iterator(x4, x1, x1, 1);
        auto x9 = set_ctx_done_expr(x6.done());
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x1, x1, 1), x6, x7});
        auto target = set_write_addr(std::vector<Value>{x6, x7}, ((x6 >= x4) & (x6 < x2)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6.done(),  control_out("w_loop_done"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 613, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        set_pacing_window(128);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, imm(32), imm(4096), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x2, x2, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x5, x8}, x3, x3,  vector_out("1001"));
        target.set_vec_dim(0);
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(128, x5), 4);
        send(x7,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x7, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_param.buffer_depth = 1;
    // layout: <BF16[122880, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {122880, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{122880, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 563, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x2 = imm(122880);
        auto x4 = imm(0);
        auto x6 = dsl::iterator(x4, imm(32), x2, 1);
        auto x7 = dsl::iterator(x4, x1, x1, 1);
        auto x9 = set_ctx_done_expr(x6.done());
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x1, x1, 1), x6, x7});
        auto target = set_write_addr(std::vector<Value>{x6, x7}, ((x6 >= x4) & (x6 < x2)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6.done(),  control_out("w_loop_done"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 613, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, imm(32), imm(122880), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x2, x2, 1);
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x5, x8}, x3, x3,  vector_out("1001"));
        target.set_vec_dim(0);
        send(x7,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x7, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_param.buffer_depth = 1;
    // layout: <BF16[256, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {256, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{256, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 563, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 420, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = imm(1);
        auto x2 = imm(256);
        auto x4 = imm(0);
        auto x6 = dsl::iterator(x4, imm(32), x2, 1);
        auto x7 = dsl::iterator(x4, x1, x1, 1);
        auto x9 = set_ctx_done_expr(x6.done());
        // chain steps:  (8 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x1, x1, 1), x6, x7});
        auto target = set_write_addr(std::vector<Value>{x6, x7}, ((x6 >= x4) & (x6 < x2)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6.done(),  control_out("w_loop_done"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 613, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        set_pacing_window(8);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, imm(32), imm(256), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x2, x2, 1);
        // chain steps:  (8 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x5, x8}, x3, x3,  vector_out("1001"));
        target.set_vec_dim(0);
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(8, x5), 4);
        send(x7,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x7, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_bwd_accum_1_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_param.buffer_depth = 1;
    // layout: <BF16[256, 3, 1, 136]RM/64@0x0> vec_order: {0, 1, 2, 3} vec_dim: 3 dims: {256, 3, 1, 160}
    partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{256, 3, 1, 136},{0, 1, 2, 3}).with_vector_transpose_dim(3).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 69, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_W_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_W_loc, "W", [&](){
        auto x2 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, imm(256), 1);
        auto x8 = dsl::iterator(x6, x2, imm(3), 1);
        auto x9 = dsl::iterator(x6, x2, x2, 1);
        auto x10 = dsl::iterator(x6, imm(32), imm(136), 1);
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9, x10});
        auto x12 = set_ctx_done_expr(x7.done());
        auto target = set_write_addr(std::vector<Value>{x7, x8, x9, x10}, x5,  vector_in("8"));
        target.set_vec_dim(3);
        send(x12,  control_out("1000"));
        send(x12,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_R_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 73, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf_R_loc, "R", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x0 = imm(3);
        auto x1 = imm(1);
        auto x2 = imm(136);
        auto x4 = imm(256);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x1, x0, 1);
        auto x9 = dsl::iterator(x6, x1, x1, 1);
        auto x12 = dsl::iterator(x6, x1, x2, 1);
        auto x15 = dsl::iterator(x6, imm(32), x4, 1);
        auto x17 = ((((x7 < x0) & (x9 < x1)) & (x12 < x2)) & (x15 < x4));
        // chain steps:  (3264 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x9, x15, x12});
        auto x19 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x15, x7, x9, x12}, boolean(true), x17,  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x19,  control_out("1000"));
        token_buffer( control_in("W_wdone_in__"), x19, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__permute_1_0_416_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_param.buffer_depth = 1;
    // layout: <BF16[3, 1, 136, 256]CVRM/64@0x0> vec_order: {0, 1, 2, 3} vec_dim: 2 dims: {3, 1, 160, 256}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{3, 1, 136, 256},{0, 1, 3, 2}).with_vector_transpose_dim(2).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 69, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_W_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 436, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_W_loc, "W", [&](){
        auto x3 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x3, imm(3), 1);
        auto x8 = dsl::iterator(x6, x3, x3, 1);
        auto x9 = dsl::iterator(x6, imm(32), imm(136), 1);
        auto x10 = dsl::iterator(x6, x3, imm(256), 1);
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9, x10});
        auto x12 = set_ctx_done_expr(x7.done());
        auto target = set_write_addr(std::vector<Value>{x7, x8, x9, x10}, x5,  vector_in("8"));
        target.set_vec_dim(2);
        send(x12,  control_out("1000"));
        send(x12,  control_out("wdone__"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_R_loc = loc("software/compiler/apps/rail/permute/template/src/TBufferPermute.cpp", 73, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf_R_loc, "R", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x0 = imm(256);
        auto x1 = imm(136);
        auto x3 = imm(3);
        auto x4 = imm(1);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, x0, 1);
        auto x9 = dsl::iterator(x6, x4, x1, 1);
        auto x12 = dsl::iterator(x6, imm(32), x3, 1);
        auto x15 = dsl::iterator(x6, x4, x4, 1);
        auto x17 = ((((x7 < x0) & (x9 < x1)) & (x12 < x3)) & (x15 < x4));
        // chain steps:  (34816 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x9, x12, x15});
        auto x19 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr_dyn_pred(std::vector<Value>{x12, x15, x9, x7}, boolean(true), x17,  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x19,  control_out("1000"));
        token_buffer( control_in("W_wdone_in__"), x19, 0);
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv2d_weight_permute_bwd_tbuf
