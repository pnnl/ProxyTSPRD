{ // LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf
    TBuffer::Params LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_param;
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_param.buffer_depth = 1;
    // layout: <BF16[480, 256]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {480, 256}
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{480, 256},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 442, 0);
    auto *LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf", kNoParent, LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_loc, &rail, LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_param);
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 342, 0);
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf->setup_addr(LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = immediate(1);
        auto x3 = immediate(480);
        auto x4 = immediate(0);
        auto x6 = dsl::iterator(x4, immediate(32), x3, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        auto x9 = dsl::iterator(x4, x1, immediate(256), 1);
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x1, x1, 1), x6, x9});
        auto target = set_write_addr(std::vector<Value>{x6, x9}, ((x6 >= x4) & (x6 < x3)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 487, 0);
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf->setup_addr(LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x5 = immediate(0);
        auto x6 = dsl::iterator(x5, immediate(32), immediate(480), 1);
        auto x8 = set_ctx_done_expr(x6.done());
        auto x9 = dsl::iterator(x5, immediate(1), immediate(256), 1);
        // chain steps:  (3840 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x9});
        auto target = set_read_addr(std::vector<Value>{x6, x9}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        send(x8,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x8, 0);
    });
} // LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_tbuf
{ // LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf
    TBuffer::Params LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_param;
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_param.buffer_depth = 1;
    // layout: <BF16[256, 1]CVRM/64@0x0> vec_order: {0, 1} vec_dim: 0 dims: {256, 1}
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{256, 1},{1, 0}).with_vector_transpose_dim(0).vector_align();
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 442, 0);
    auto *LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf = rail.plasma()->create_node<prism::plasma::TBuffer>("LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf", kNoParent, LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_loc, &rail, LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_param);
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_w_loop_0_0_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 342, 0);
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf->setup_addr(LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_w_loop_0_0_loc, "w_loop_0_0", [&](){
        disable_full_stall();
        auto x1 = immediate(1);
        auto x2 = immediate(256);
        auto x3 = immediate(0);
        auto x5 = dsl::iterator(x3, immediate(32), x2, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x3, x1, x1, 1);
        // chain steps:  (8 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x3, x1, x1, 1), x5, x8});
        auto target = set_write_addr(std::vector<Value>{x5, x8}, ((x5 >= x3) & (x5 < x2)),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x7,  control_out("1000"));
        send(x7,  control_out("wdone__"));
    });
    auto LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_kBackReadCtx_loc = loc("software/compiler/apps/rail/par_accum/template/src/ParAccum.cpp", 487, 0);
    LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf->setup_addr(LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf_kBackReadCtx_loc, "kBackReadCtx", [&](){
        disable_empty_stall();
        set_pacing_window(8);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), immediate(256), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x2, x2, 1);
        // chain steps:  (8 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr(std::vector<Value>{x5, x8}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("pacing_in"), get_pacing_done_expr(8, x5), 4);
        send(x7,  control_out("1000"));
        token_buffer( control_in("w_loop_0_0_wdone_in__"), x7, 0);
    });
} // LogregTorchSamba_partition_1_0__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_tbuf
