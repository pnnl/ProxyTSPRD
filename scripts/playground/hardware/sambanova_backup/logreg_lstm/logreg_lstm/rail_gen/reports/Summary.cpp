{ // partition_0_0__tbuf2u_0_0_334
    TBuffer::Params partition_0_0__tbuf2u_0_0_334_param;
    partition_0_0__tbuf2u_0_0_334_param.buffer_depth = 2;
    // layout: <BF16[60, 64]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {60, 64}
    partition_0_0__tbuf2u_0_0_334_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{60, 64},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf2u_0_0_334_loc = loc("LogregTorchSamba.cpp", 923, 0);
    auto *partition_0_0__tbuf2u_0_0_334 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf2u_0_0_334", kNoParent, partition_0_0__tbuf2u_0_0_334_loc, &rail, partition_0_0__tbuf2u_0_0_334_param);
    auto partition_0_0__tbuf2u_0_0_334_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__tbuf2u_0_0_334->setup_addr(partition_0_0__tbuf2u_0_0_334_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = imm(60);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x0, x3, 1);
        auto x7 = dsl::iterator(x5, x1, x2, 1);
        // chain steps:  (120 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6, x7});
        target.set_vec_dim(1);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf2u_0_0_334_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 137, 0);
    partition_0_0__tbuf2u_0_0_334->setup_addr(partition_0_0__tbuf2u_0_0_334_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = imm(60);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 =  scalar_in("idx");
        token_buffer(x6, 0);
        auto x7 = dsl::iterator(x5, x0, x0, 1);
        auto x8 = dsl::iterator(x5, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8});
        auto x10 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr(std::vector<Value>{x6, x8});
        target.set_vec_dim(1);
        target.set_en_zero((x6 < x3));
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("0"), x10, 1);
        token_buffer( control_in("1"), x10, 2);
        send(x10,  control_out("1000"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), x10, 0);
    });
} // partition_0_0__tbuf2u_0_0_334
{ // partition_0_0__rbuf1u_0_0_335
    TBuffer::Params partition_0_0__rbuf1u_0_0_335_param;
    partition_0_0__rbuf1u_0_0_335_param.buffer_depth = 1;
    // layout: <INT32[1]RM@0x0> vec_order: {0} vec_dim: 0 dims: {1}
    partition_0_0__rbuf1u_0_0_335_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT32"),{1},{0}).with_vector_transpose_dim(0);
    auto partition_0_0__rbuf1u_0_0_335_loc = loc("LogregTorchSamba.cpp", 934, 0);
    auto *partition_0_0__rbuf1u_0_0_335 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__rbuf1u_0_0_335", kNoParent, partition_0_0__rbuf1u_0_0_335_loc, &rail, partition_0_0__rbuf1u_0_0_335_param);
    auto partition_0_0__rbuf1u_0_0_335_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__rbuf1u_0_0_335->setup_addr(partition_0_0__rbuf1u_0_0_335_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x2 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, imm(16), x2, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7});
        auto x9 = set_ctx_done_expr(x7.done());
        auto target = set_write_addr(std::vector<Value>{x7});
        target.set_vec_dim(0);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_0_0__rbuf1u_0_0_335_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 124, 0);
    partition_0_0__rbuf1u_0_0_335->setup_addr(partition_0_0__rbuf1u_0_0_335_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd", [&](){
        set_pacing_window(2);
        auto x2 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, imm(100), 1);
        auto x9 = set_ctx_done_expr(x7.done());
        auto x10 = dsl::iterator(x6, x2, x2, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10, dsl::iterator(x6, imm(32), imm(64), 1)});
        auto target = set_read_addr(std::vector<Value>{x10});
        target.set_vec_dim(-1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( scalar_out("1001"));
        auto x13 = get_pacing_done_expr(2);
        token_buffer( control_in("0"), x13, 1);
        token_buffer( control_in("1"), x13, 2);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // partition_0_0__rbuf1u_0_0_335
{ // partition_0_0__tbuf2u_0_0_342
    TBuffer::Params partition_0_0__tbuf2u_0_0_342_param;
    partition_0_0__tbuf2u_0_0_342_param.buffer_depth = 2;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_0_0__tbuf2u_0_0_342_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf2u_0_0_342_loc = loc("LogregTorchSamba.cpp", 958, 0);
    auto *partition_0_0__tbuf2u_0_0_342 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf2u_0_0_342", kNoParent, partition_0_0__tbuf2u_0_0_342_loc, &rail, partition_0_0__tbuf2u_0_0_342_param);
    auto partition_0_0__tbuf2u_0_0_342_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 161, 0);
    partition_0_0__tbuf2u_0_0_342->setup_addr(partition_0_0__tbuf2u_0_0_342_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr", [&](){
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = imm(1);
        auto x6 = dsl::iterator(x4, x5, x5, 1);
        auto x7 = dsl::iterator(x4, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x7, x6});
        target.set_vec_dim(0);
        target.set_en_drop(x3);
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf2u_0_0_342_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB_loc = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp", 2012, 0);
    partition_0_0__tbuf2u_0_0_342->setup_addr(partition_0_0__tbuf2u_0_0_342_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB_loc, "LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB", [&](){
        // pacing_window: default;
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = imm(1);
        auto x6 = dsl::iterator(x4, x5, imm(128), 1);
        auto x8 = set_ctx_done_expr(x6.done());
        auto x9 = dsl::iterator(x4, x2, x2, 1);
        auto x10 = dsl::iterator(x4, x1, x2, 1);
        auto x11 = dsl::iterator(x4, x5, x5, 1);
        auto x12 = dsl::iterator(x4, x5, x5, 1);
        auto x13 = dsl::iterator(x4, x5, x5, 1);
        // chain steps:  (256 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x9, x11, x12, x10, x13});
        auto x16 = ((x11 + x12) + (x4 - x13));
        auto target = set_read_addr(std::vector<Value>{(x9 + x10), x16});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop((x16 < x5));
        target.set_data( vector_out("1001"));
        token_buffer( control_in("0"), x8, 1);
        token_buffer( control_in("1"), x8, 2);
        send(x8,  control_out("1000"));
        auto x23 =  control_in("LogregTorchSamba.partition_0_0_.ptconvlstm__indexselect@kOutWr_wdone_in__");
        token_buffer(x23, x8, 0);
    });
} // partition_0_0__tbuf2u_0_0_342
{ // partition_1_0__tbuf2u_1_0_401
    TBuffer::Params partition_1_0__tbuf2u_1_0_401_param;
    partition_1_0__tbuf2u_1_0_401_param.buffer_depth = 2;
    // layout: <BF16[60, 64]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {60, 64}
    partition_1_0__tbuf2u_1_0_401_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{60, 64},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf2u_1_0_401_loc = loc("LogregTorchSamba.cpp", 2497, 0);
    auto *partition_1_0__tbuf2u_1_0_401 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2u_1_0_401", kNoParent, partition_1_0__tbuf2u_1_0_401_loc, &rail, partition_1_0__tbuf2u_1_0_401_param);
    auto partition_1_0__tbuf2u_1_0_401_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf2u_1_0_401->setup_addr(partition_1_0__tbuf2u_1_0_401_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = imm(60);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x0, x3, 1);
        auto x7 = dsl::iterator(x5, x1, x2, 1);
        // chain steps:  (120 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x6});
        auto x9 = set_ctx_done_expr(x7.done());
        auto target = set_write_addr(std::vector<Value>{x6, x7});
        target.set_vec_dim(1);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2u_1_0_401_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 137, 0);
    partition_1_0__tbuf2u_1_0_401->setup_addr(partition_1_0__tbuf2u_1_0_401_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd", [&](){
        // pacing_window: default;
        enable_addr_splitting();
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = imm(60);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 =  scalar_in("idx");
        token_buffer(x6, 0);
        auto x7 = dsl::iterator(x5, x0, x0, 1);
        auto x8 = dsl::iterator(x5, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8});
        auto x10 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr(std::vector<Value>{x6, x8});
        target.set_vec_dim(1);
        target.set_en_zero((x6 < x3));
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("0"), x10, 1);
        token_buffer( control_in("1"), x10, 1);
        token_buffer( control_in("2"), x10, 2);
        token_buffer( control_in("3"), x10, 2);
        send(x10,  control_out("1000"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), x10, 0);
    });
} // partition_1_0__tbuf2u_1_0_401
{ // partition_1_0__rbuf1u_1_0_402
    TBuffer::Params partition_1_0__rbuf1u_1_0_402_param;
    partition_1_0__rbuf1u_1_0_402_param.buffer_depth = 1;
    // layout: <INT32[1]RM@0x0> vec_order: {0} vec_dim: 0 dims: {1}
    partition_1_0__rbuf1u_1_0_402_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT32"),{1},{0}).with_vector_transpose_dim(0);
    auto partition_1_0__rbuf1u_1_0_402_loc = loc("LogregTorchSamba.cpp", 2508, 0);
    auto *partition_1_0__rbuf1u_1_0_402 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__rbuf1u_1_0_402", kNoParent, partition_1_0__rbuf1u_1_0_402_loc, &rail, partition_1_0__rbuf1u_1_0_402_param);
    auto partition_1_0__rbuf1u_1_0_402_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__rbuf1u_1_0_402->setup_addr(partition_1_0__rbuf1u_1_0_402_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x0 = imm(16);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x0, x2, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto x7 = set_ctx_done_expr(x5.done());
        auto target = set_write_addr(std::vector<Value>{x5});
        target.set_vec_dim(0);
        target.set_en_drop(x3);
        target.set_data( vector_in("8"));
        send(x7,  control_out("1000"));
        send(x7,  control_out("wdone__"));
    });
    auto partition_1_0__rbuf1u_1_0_402_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__rbuf1u_1_0_402->setup_addr(partition_1_0__rbuf1u_1_0_402_kDefaultRead1_loc, "kDefaultRead1", [&](){
        set_pacing_window(1);
        auto x0 = imm(16);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x2, imm(100), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x0, x2, 1);
        // chain steps:  (100 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr(std::vector<Value>{x8});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( vector_out("1001"));
        auto x10 = get_pacing_done_expr(1);
        token_buffer( control_in("0"), x10, 2);
        token_buffer( control_in("1"), x10, 12);
        token_buffer( control_in("2"), x10, 2);
        token_buffer( control_in("3"), x10, 12);
        send(x7,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x7, 0);
    });
} // partition_1_0__rbuf1u_1_0_402
{ // partition_1_0__tbuf2a_1_0_850
    TBuffer::Params partition_1_0__tbuf2a_1_0_850_param;
    partition_1_0__tbuf2a_1_0_850_param.buffer_depth = 2;
    // layout: <INT32[1]RM@0x0> vec_order: {0} vec_dim: 0 dims: {1}
    partition_1_0__tbuf2a_1_0_850_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT32"),{1},{0}).with_vector_transpose_dim(0);
    auto partition_1_0__tbuf2a_1_0_850_loc = loc("LogregTorchSamba.cpp", 2519, 0);
    auto *partition_1_0__tbuf2a_1_0_850 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2a_1_0_850", kNoParent, partition_1_0__tbuf2a_1_0_850_loc, &rail, partition_1_0__tbuf2a_1_0_850_param);
    auto partition_1_0__tbuf2a_1_0_850_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf2a_1_0_850->setup_addr(partition_1_0__tbuf2a_1_0_850_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x1 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, imm(16), x1, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6});
        target.set_vec_dim(0);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2a_1_0_850_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kIndexRd_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 124, 0);
    partition_1_0__tbuf2a_1_0_850->setup_addr(partition_1_0__tbuf2a_1_0_850_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kIndexRd_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kIndexRd", [&](){
        // pacing_window: default;
        auto x1 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x1, x1, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x5, imm(32), imm(64), 1)});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_read_addr(std::vector<Value>{x6});
        target.set_vec_dim(-1);
        target.set_en_zero(x4);
        target.set_en_drop(x4);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("0"), x9, 1);
        token_buffer( control_in("1"), x9, 1);
        token_buffer( control_in("2"), x9, 2);
        token_buffer( control_in("3"), x9, 2);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), x9, 0);
    });
} // partition_1_0__tbuf2a_1_0_850
{ // partition_1_0__tbuf2u_1_0_406
    TBuffer::Params partition_1_0__tbuf2u_1_0_406_param;
    partition_1_0__tbuf2u_1_0_406_param.buffer_depth = 2;
    // layout: <BF16[1, 64]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {1, 64}
    partition_1_0__tbuf2u_1_0_406_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{1, 64},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf2u_1_0_406_loc = loc("LogregTorchSamba.cpp", 2543, 0);
    auto *partition_1_0__tbuf2u_1_0_406 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2u_1_0_406", kNoParent, partition_1_0__tbuf2u_1_0_406_loc, &rail, partition_1_0__tbuf2u_1_0_406_param);
    auto partition_1_0__tbuf2u_1_0_406_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 161, 0);
    partition_1_0__tbuf2u_1_0_406->setup_addr(partition_1_0__tbuf2u_1_0_406_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr", [&](){
        enable_addr_splitting();
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x0, x0, 1);
        auto x6 = dsl::iterator(x4, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x6});
        auto x8 = set_ctx_done_expr(x5.done());
        auto target = set_write_addr(std::vector<Value>{x5, x6});
        target.set_vec_dim(1);
        target.set_en_drop(x3);
        target.set_data( vector_in("8"));
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2u_1_0_406_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf2u_1_0_406->setup_addr(partition_1_0__tbuf2u_1_0_406_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x0 = imm(1);
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x0, x0, 1);
        auto x6 = dsl::iterator(x4, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_read_addr(std::vector<Value>{x5, x6});
        target.set_vec_dim(1);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("0"), x8, 1);
        token_buffer( control_in("1"), x8, 7);
        send(x8,  control_out("1000"));
        auto x13 =  control_in("LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_wdone_in__");
        token_buffer(x13, x8, 0);
    });
} // partition_1_0__tbuf2u_1_0_406
{ // partition_1_0__tbuf2u_1_0_409
    TBuffer::Params partition_1_0__tbuf2u_1_0_409_param;
    partition_1_0__tbuf2u_1_0_409_param.buffer_depth = 2;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__tbuf2u_1_0_409_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf2u_1_0_409_loc = loc("LogregTorchSamba.cpp", 2565, 0);
    auto *partition_1_0__tbuf2u_1_0_409 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf2u_1_0_409", kNoParent, partition_1_0__tbuf2u_1_0_409_loc, &rail, partition_1_0__tbuf2u_1_0_409_param);
    auto partition_1_0__tbuf2u_1_0_409_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr_loc = loc("software/templates/src/templates/index/rail/Index.cpp", 161, 0);
    partition_1_0__tbuf2u_1_0_409->setup_addr(partition_1_0__tbuf2u_1_0_409_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kOutWr", [&](){
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = imm(1);
        auto x6 = dsl::iterator(x4, x5, x5, 1);
        auto x7 = dsl::iterator(x4, x1, x2, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x7});
        auto x9 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x7, x6});
        target.set_vec_dim(0);
        target.set_en_drop(x3);
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf2u_1_0_409_LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_recompute__kFwdPropB_loc = loc("software/templates/src/templates/gemm/prism/GemmSubnet.cpp", 2012, 0);
    partition_1_0__tbuf2u_1_0_409->setup_addr(partition_1_0__tbuf2u_1_0_409_LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_recompute__kFwdPropB_loc, "LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_recompute__kFwdPropB", [&](){
        // pacing_window: default;
        auto x1 = imm(32);
        auto x2 = imm(64);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = imm(1);
        auto x6 = dsl::iterator(x4, x5, imm(128), 1);
        auto x8 = set_ctx_done_expr(x6.done());
        auto x9 = dsl::iterator(x4, x2, x2, 1);
        auto x10 = dsl::iterator(x4, x1, x2, 1);
        auto x11 = dsl::iterator(x4, x5, x5, 1);
        auto x12 = dsl::iterator(x4, x5, x5, 1);
        auto x13 = dsl::iterator(x4, x5, x5, 1);
        // chain steps:  (256 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x9, x11, x12, x10, x13});
        auto x16 = ((x11 + x12) + (x4 - x13));
        auto target = set_read_addr(std::vector<Value>{(x9 + x10), x16});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop((x16 < x5));
        target.set_data( vector_out("1001"));
        token_buffer( control_in("0"), x8, 1);
        token_buffer( control_in("1"), x8, 2);
        send(x8,  control_out("1000"));
        auto x23 =  control_in("LogregTorchSamba.partition_1_0_.ptconvlstm__indexselect_recompute_@kOutWr_wdone_in__");
        token_buffer(x23, x8, 0);
    });
} // partition_1_0__tbuf2u_1_0_409
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param.buffer_depth = 1;
    // layout: <BF16[262144, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {262144, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{262144, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(262144);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (819200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(262144);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (811008 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        set_pacing_window(8192);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(262144);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (8192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(8192, x7), 1);
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12800 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12672 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        set_pacing_window(128);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(128, x7), 4);
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__dense_layer__linear_bwd_weight_accum_1_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12800 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12672 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12800 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12672 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_1_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12800 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12672 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_2_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_param.buffer_depth = 1;
    // layout: <BF16[4096, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {4096, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{4096, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12800 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (12672 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(4096);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (128 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_3_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_param.buffer_depth = 1;
    // layout: <BF16[8704, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {8704, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{8704, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (27200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (26928 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (272 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_4_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_param.buffer_depth = 1;
    // layout: <BF16[8704, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {8704, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{8704, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (27200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (26928 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (272 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_5_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_param.buffer_depth = 1;
    // layout: <BF16[8704, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {8704, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{8704, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (27200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (26928 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (272 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_6_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_param.buffer_depth = 1;
    // layout: <BF16[8704, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {8704, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{8704, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (27200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (26928 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(8704);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (272 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_7_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_8_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_9_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_10_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_11_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_12_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_13_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_14_tbuf
{ // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_param;
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_param.buffer_depth = 1;
    // layout: <BF16[64, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {64, 1}
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{64, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 578, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_w_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 424, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(100), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (200 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_drop(((x8 >= x6) & (x8 < x3)));
        target.set_data( vector_in("8"));
        send(x7.done(),  control_out("w_loop_done"));
        send(x8.done(),  control_out("w_loop_special_done"));
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_r_loop_0_0_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 473, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_r_loop_0_0_loc, "r_loop_0_0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x4, imm(99), 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (198 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        auto target = set_read_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(0);
        target.set_en_zero(((x8 >= x6) & (x8 < x3)));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = dsl::iterator(x6, x2, x3, 1);
        token_buffer( control_in("w_loop_special_done_in"), (x8.done() |  control_in("r_drain_done_in")), 0);
        token_buffer( control_in("not_last"), x7.done(), 1);
        send(set_ctx_done_expr(x8.done()),  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_kBackReadCtx_loc = loc("software/templates/src/templates/accumulator/rail/ParAccum.cpp", 629, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = imm(32);
        auto x3 = imm(64);
        auto x4 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = dsl::iterator(x6, x4, x4, 1);
        // chain steps:  (2 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        auto target = set_read_addr(std::vector<Value>{x7, x10});
        target.set_vec_dim(0);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("w_done_in_0_0"), x7.done(), 0);
        send(x7.done(),  control_out("r_drain_done"));
        send(set_ctx_done_expr(x7.done()),  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__ptconvlstm__lstm_layer__lstm_bwd_accum_15_tbuf
