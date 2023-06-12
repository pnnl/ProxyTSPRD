{ // tbuf1a_0_0_73
    TBuffer::Params tbuf1a_0_0_73_param;
    tbuf1a_0_0_73_param.buffer_depth = 1;
    // layout: <INT16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    tbuf1a_0_0_73_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_0_0_73_loc = loc("LogregTorchSamba.cpp", 125, 0);
    auto *tbuf1a_0_0_73 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_0_0_73", kNoParent, tbuf1a_0_0_73_loc, &rail, tbuf1a_0_0_73_param);
    auto tbuf1a_0_0_73_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_0_0_73->setup_addr(tbuf1a_0_0_73_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, immediate(32), immediate(1), 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4}, boolean(true),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto tbuf1a_0_0_73_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1623, 0);
    tbuf1a_0_0_73->setup_addr(tbuf1a_0_0_73_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x0 = immediate(1);
        auto x2 = immediate(0);
        auto x4 = dsl::iterator(x2, x0, x0, 1);
        auto x6 = set_ctx_done_expr(x4.done());
        auto x7 = dsl::iterator(x2, x0, x0, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x2, x0, x0, 1), x4, x7});
        auto x8 = (x4 + x7);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse}, boolean(true),  scalar_out("1001"));
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("phase2_strip_done"), x4.done(), 0);
        send(x6,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x6, 0);
    });
    auto tbuf1a_0_0_73_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputYCopySrc_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1639, 0);
    tbuf1a_0_0_73->setup_addr(tbuf1a_0_0_73_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputYCopySrc_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputYCopySrc", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x0 = immediate(1);
        auto x1 = immediate(32);
        auto x3 = immediate(0);
        auto x5 = dsl::iterator(x3, x1, x0, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x9 = x5.done();
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x3, x0, x0, 1), x5, dsl::iterator(x3, x1, x1, 1)});
        auto target = set_read_addr(std::vector<Value>{x5}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("phase3_strip_done"), x9, 1);
        token_buffer( control_in("y_copy_rd_done"), x9, 1);
        send(x7,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x7, 0);
    });
} // tbuf1a_0_0_73
{ // tbuf1a_0_0_74
    TBuffer::Params tbuf1a_0_0_74_param;
    tbuf1a_0_0_74_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    tbuf1a_0_0_74_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_0_0_74_loc = loc("LogregTorchSamba.cpp", 132, 0);
    auto *tbuf1a_0_0_74 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_0_0_74", kNoParent, tbuf1a_0_0_74_loc, &rail, tbuf1a_0_0_74_param);
    auto tbuf1a_0_0_74_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_0_0_74->setup_addr(tbuf1a_0_0_74_kDefaultWrite_loc, "kDefaultWrite", [&](){
        enable_addr_splitting();
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, x2, immediate(10), 1);
        auto x6 = dsl::iterator(x4, immediate(32), x2, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x5, x6}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        send(x8,  control_out("1000"));
        send(x8,  control_out("done"));
        token_buffer( control_in("begin"), x8, 1);
    });
    auto tbuf1a_0_0_74_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1400, 0);
    tbuf1a_0_0_74->setup_addr(tbuf1a_0_0_74_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        enable_addr_splitting();
        auto x2 = immediate(1);
        auto x5 = immediate(0);
        auto x7 = dsl::iterator(x5, x2, immediate(2), 1);
        auto x8 = dsl::iterator(x5, immediate(32), x2, 1);
        auto x9 = dsl::iterator(x5, x2, immediate(12), 1);
        auto x11 = set_ctx_done_expr(x7.done());
        // chain steps:  (24 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x5, x2, x2, 1), x7, x8, x9});
        send(x7.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x9, x8}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        auto x16 = x7.done();
        token_buffer( control_in("5000"), x7.done(), 0);
        token_buffer( control_in("phase3_strip_done"), x16, 1);
        auto x22 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x22, x8.done(), 1);
        token_buffer( control_in("scalar_done"), x16, 1);
        send(x16,  control_out("4000"));
    });
    auto tbuf1a_0_0_74_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1466, 0);
    tbuf1a_0_0_74->setup_addr(tbuf1a_0_0_74_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar", [&](){
        // pacing_window: default;
        set_concurrency_group(1);
        set_mem_port(node_constants::PmuOp::kRead0);
        enable_addr_splitting();
        auto x0 = immediate(1);
        auto x3 = immediate(0);
        auto x5 = dsl::iterator(x3, x0, x0, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x3, x0, x0, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x3, x0, x0, 1), x5, x8});
        send(x5.done(),  control_out("1000"));
        auto x11 =  scalar_in("label");
        token_buffer(x11, 0);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse, (x5 + x8)}, boolean(true),  scalar_out("1001"));
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateForceZero);
        auto x16 = x5.done();
        token_buffer( control_in("phase2_strip_done"), x16, 0);
        token_buffer( control_in("second_replay_done_0"), x16, 0);
        send(x16,  control_out("scalar_done"));
        send(x5.done(),  control_out("frame_done"));
    });
} // tbuf1a_0_0_74
{ // LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp
    TBuffer::Params LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_param;
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_param.buffer_depth = 1;
    // layout: <BF16[14, 1]CM/64@0x0> vec_order: {1, 0} vec_dim: 0 dims: {32, 1}
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 1},{1, 0}).with_vector_transpose_dim(1).vector_align();
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 2000, 0);
    auto *LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp = rail.plasma()->create_node<prism::plasma::TBuffer>("LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp", kNoParent, LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_loc, &rail, LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_param);
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w0_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 881, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w0_loc, "phase_w0", [&](){
        disable_full_stall();
        set_concurrency_group(0);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), immediate(1), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto target = set_write_addr(std::vector<Value>{immediate(12), x5}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("6000"), x5.done(), 1);
        token_buffer( control_in("3000"), x7, 1);
        token_buffer( control_in("3001"), x7, 1);
        send(x7,  control_out("2000"));
        send(x7,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase1_R_max_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 947, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase1_R_max_loc, "phase1_R_max", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = immediate(1);
        auto x2 = immediate(12);
        auto x4 = immediate(0);
        auto x6 = dsl::iterator(x4, immediate(32), x1, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x4, x1, x2, 1)});
        auto target = set_read_addr(std::vector<Value>{x2, x6}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("6000"), x6.done(), 1);
        token_buffer( control_in("3000"), x8, 0);
        send(x8,  control_out("2000"));
        send(x8,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_rd_dummy_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 985, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_rd_dummy_loc, "phase_rd_dummy", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = immediate(1);
        auto x2 = immediate(0);
        auto x3 = dsl::iterator(x2, x0, x0, 1);
        auto x5 = set_ctx_done_expr(x3.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x3});
        auto target = set_read_addr(std::vector<Value>{x2, x2}, boolean(false),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("dummy_wire"), x3.done(), 1);
        token_buffer( control_in("3000"), x5, 0);
        send(x5,  control_out("2000"));
        send(x5,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w1_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 928, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w1_loc, "phase_w1", [&](){
        disable_full_stall();
        set_concurrency_group(1);
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, x2, immediate(12), 1);
        auto x6 = dsl::iterator(x4, immediate(32), x2, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto target = set_write_addr(std::vector<Value>{x5, x6}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("3000"), x8, 0);
        send(x8,  control_out("2000"));
        send(x8,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase2_R_exp_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1011, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase2_R_exp_loc, "phase2_R_exp", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(1);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), x1, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x1, immediate(10), 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto target = set_read_addr(std::vector<Value>{x8, x5}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("6000"), x5.done(), 0);
        token_buffer( control_in("3000"), x7, 0);
        token_buffer( control_in("3001"), x7, 0);
        token_buffer( control_in("3002"), x7, 0);
        send(x7,  control_out("2000"));
        send(x7,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w2_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 881, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase_w2_loc, "phase_w2", [&](){
        disable_full_stall();
        set_concurrency_group(2);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), immediate(1), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto target = set_write_addr(std::vector<Value>{immediate(13), x5}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("3000"), x7, 0);
        token_buffer( control_in("3001"), x7, 0);
        token_buffer( control_in("3002"), x7, 0);
        send(x7,  control_out("2000"));
        send(x7,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_max_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1039, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_max_loc, "phase3_R_max", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(2);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = immediate(1);
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, x0, x0, 1);
        auto x6 = set_ctx_done_expr(x4.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto target = set_read_addr(std::vector<Value>{immediate(12), x4}, boolean(true),  scalar_out("1001"));
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("6000"), x4.done(), 0);
        token_buffer( control_in("dummy_wire"), x4.done(), 0);
        send(x6,  control_out("2000"));
        token_buffer( control_in("3000"), x6, 0);
        token_buffer( control_in("3001"), x6, 0);
        send(x6,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_logsum_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1039, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_logsum_loc, "phase3_R_logsum", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(2);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = immediate(1);
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, x0, x0, 1);
        auto x6 = set_ctx_done_expr(x4.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto target = set_read_addr(std::vector<Value>{immediate(13), x4}, boolean(true),  scalar_out("1001"));
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("6000"), x4.done(), 0);
        send(x6,  control_out("2000"));
        token_buffer( control_in("3000"), x6, 0);
        token_buffer( control_in("3001"), x6, 0);
        send(x6,  control_out("1000"));
    });
} // LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_tmp
{ // LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy
    TBuffer::Params LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_param;
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_param.buffer_depth = 1;
    // layout: <INT16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 2063, 0);
    auto *LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy = rail.plasma()->create_node<prism::plasma::TBuffer>("LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy", kNoParent, LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_loc, &rail, LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_param);
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_phase_y_copy_write_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1068, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_phase_y_copy_write_loc, "phase_y_copy_write", [&](){
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, immediate(32), immediate(1), 1);
        auto x6 = set_ctx_done_expr(x4.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto target = set_write_addr(std::vector<Value>{x4}, boolean(true),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("3000"), x6, 1);
        send(x6,  control_out("2000"));
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_phase_y_copy_read_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1085, 0);
    LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy->setup_addr(LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy_phase_y_copy_read_loc, "phase_y_copy_read", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x0 = immediate(1);
        auto x2 = immediate(0);
        auto x3 = dsl::iterator(x2, x0, x0, 1);
        auto x5 = set_ctx_done_expr(x3.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x3});
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse}, boolean(true),  scalar_out("1001"));
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("phase2_strip_done"), x3.done(), 0);
        send(x3.done(),  control_out("y_copy_rd_done"));
        send(x5,  control_out("2000"));
        token_buffer( control_in("3000"), x5, 0);
        send(x5,  control_out("1000"));
        token_buffer( control_in("phase_y_copy_write_wdone_in__"), x5, 0);
    });
} // LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_tbuf_y_copy
{ // tbuf1a_0_0_75
    TBuffer::Params tbuf1a_0_0_75_param;
    tbuf1a_0_0_75_param.buffer_depth = 1;
    // layout: <BF16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    tbuf1a_0_0_75_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_0_0_75_loc = loc("LogregTorchSamba.cpp", 156, 0);
    auto *tbuf1a_0_0_75 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_0_0_75", kNoParent, tbuf1a_0_0_75_loc, &rail, tbuf1a_0_0_75_param);
    auto tbuf1a_0_0_75_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc = loc("software/compiler/apps/rail/cross_entropy/template/src/RAILCrossEntropy.cpp", 1663, 0);
    tbuf1a_0_0_75->setup_addr(tbuf1a_0_0_75_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput", [&](){
        auto x0 = immediate(1);
        auto x2 = immediate(0);
        auto x3 =  scalar_in("8");
        token_buffer(x3, 0);
        auto x5 = dsl::iterator(x2, x0, x0, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x2, x0, x0, 1), x5});
        send(x5.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x5}, boolean(true), x3);
        target.set_vec_dim(-1);
        target.set_predicate_type(kPredicateDrop);
        send(x7,  control_out("1000"));
        send(x7,  control_out("wdone__"));
    });
    auto tbuf1a_0_0_75_kBackReadCtx_loc = loc("software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp", 131, 0);
    tbuf1a_0_0_75->setup_addr(tbuf1a_0_0_75_kBackReadCtx_loc, "kBackReadCtx", [&](){
        set_pacing_window(1);
        auto x1 = immediate(1);
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, immediate(32), x1, 1);
        auto x5 = dsl::iterator(x3, x1, x1, 1);
        reset({}, x5);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x4});
        auto x7 = set_ctx_done_expr(x4.done());
        auto target = set_read_addr(std::vector<Value>{x4}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("0"), get_pacing_done_expr(1, x4), 4);
        send(x7,  control_out("1000"));
        auto x12 =  control_in("LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput_wdone_in__");
        token_buffer(x12, x7, 0);
    });
} // tbuf1a_0_0_75
{ // tbuf1a_1_0_77
    TBuffer::Params tbuf1a_1_0_77_param;
    tbuf1a_1_0_77_param.buffer_depth = 1;
    // layout: <INT16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    tbuf1a_1_0_77_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_1_0_77_loc = loc("LogregTorchSamba.cpp", 194, 0);
    auto *tbuf1a_1_0_77 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_1_0_77", kNoParent, tbuf1a_1_0_77_loc, &rail, tbuf1a_1_0_77_param);
    auto tbuf1a_1_0_77_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_1_0_77->setup_addr(tbuf1a_1_0_77_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, immediate(32), immediate(1), 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4}, boolean(true),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto tbuf1a_1_0_77_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 1294, 0);
    tbuf1a_1_0_77->setup_addr(tbuf1a_1_0_77_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x7 = dsl::iterator(x4, immediate(32), x2, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x2, x2, 1), x7, dsl::iterator(x4, x2, immediate(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x7}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("phase2_strip_done"), x7.done(), 0);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // tbuf1a_1_0_77
{ // tbuf1a_1_0_78
    TBuffer::Params tbuf1a_1_0_78_param;
    tbuf1a_1_0_78_param.buffer_depth = 1;
    // layout: <BF16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    tbuf1a_1_0_78_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_1_0_78_loc = loc("LogregTorchSamba.cpp", 201, 0);
    auto *tbuf1a_1_0_78 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_1_0_78", kNoParent, tbuf1a_1_0_78_loc, &rail, tbuf1a_1_0_78_param);
    auto tbuf1a_1_0_78_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_1_0_78->setup_addr(tbuf1a_1_0_78_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x3 = immediate(0);
        auto x4 = dsl::iterator(x3, immediate(32), immediate(1), 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4}, boolean(true),  vector_in("8"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateDrop);
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto tbuf1a_1_0_78_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 1311, 0);
    tbuf1a_1_0_78->setup_addr(tbuf1a_1_0_78_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x7 = dsl::iterator(x4, immediate(32), x2, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x2, x2, 1), x7, dsl::iterator(x4, x2, immediate(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x7}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(0);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("phase2_strip_done"), x7.done(), 0);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // tbuf1a_1_0_78
{ // tbuf1a_1_0_79
    TBuffer::Params tbuf1a_1_0_79_param;
    tbuf1a_1_0_79_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    tbuf1a_1_0_79_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_1_0_79_loc = loc("LogregTorchSamba.cpp", 208, 0);
    auto *tbuf1a_1_0_79 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_1_0_79", kNoParent, tbuf1a_1_0_79_loc, &rail, tbuf1a_1_0_79_param);
    auto tbuf1a_1_0_79_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_1_0_79->setup_addr(tbuf1a_1_0_79_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, x2, immediate(10), 1);
        auto x6 = dsl::iterator(x4, immediate(32), x2, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x5, x6}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto tbuf1a_1_0_79_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 1187, 0);
    tbuf1a_1_0_79->setup_addr(tbuf1a_1_0_79_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        enable_addr_splitting();
        auto x2 = immediate(1);
        auto x5 = immediate(0);
        auto x7 = dsl::iterator(x5, x2, immediate(2), 1);
        auto x8 = dsl::iterator(x5, immediate(32), x2, 1);
        auto x9 = dsl::iterator(x5, x2, immediate(12), 1);
        // chain steps:  (24 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x5, x2, x2, 1), x7, x8, x9});
        send(x7.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x9, x8}, (x9 < immediate(10)),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        auto x17 = x7.done();
        auto x20 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x20, x8.done(), 1);
        token_buffer( control_in("phase3_strip_done"), x17, 1);
        send(x17,  control_out("5000"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), set_ctx_done_expr(x7.done()), 0);
    });
} // tbuf1a_1_0_79
{ // LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
    TBuffer::Params LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param;
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.buffer_depth = 1;
    // layout: <BF16[14, 1]RM/64@0x0> vec_order: {0, 1} vec_dim: 1 dims: {14, 32}
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 1},{0, 1}).with_vector_transpose_dim(1).vector_align();
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 1558, 0);
    auto *LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0 = rail.plasma()->create_node<prism::plasma::TBuffer>("LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0", kNoParent, LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc, &rail, LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param);
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 716, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc, "phaseW0", [&](){
        disable_full_stall();
        set_concurrency_group(0);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), immediate(1), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto target = set_write_addr(std::vector<Value>{immediate(13), x5}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("7000"), x5.done(), 1);
        send(x7,  control_out("2000"));
        token_buffer( control_in("3000"), x7, 1);
        send(x7,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 877, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc, "phaseRMax", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x2 = immediate(1);
        auto x5 = immediate(0);
        auto x7 = dsl::iterator(x5, immediate(32), x2, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, dsl::iterator(x5, x2, immediate(12), 1)});
        auto target = set_read_addr(std::vector<Value>{immediate(13), x7}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("7000"), x7.done(), 0);
        token_buffer( control_in("7001"), x7.done(), 1);
        token_buffer( control_in("3000"), x9, 0);
        token_buffer( control_in("3001"), x9, 1);
        send(x9,  control_out("2000"));
        send(x9,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 853, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc, "phase_rd_dummy", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = immediate(1);
        auto x2 = immediate(0);
        auto x3 = dsl::iterator(x2, x0, x0, 1);
        auto x5 = set_ctx_done_expr(x3.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x3});
        auto target = set_read_addr(std::vector<Value>{x2, x2}, boolean(false),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("3000"), x5, 0);
        token_buffer( control_in("3001"), x5, 1);
        send(x5,  control_out("2000"));
        send(x5,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 749, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc, "phaseW1", [&](){
        disable_full_stall();
        set_concurrency_group(1);
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, x2, immediate(12), 1);
        auto x6 = dsl::iterator(x4, immediate(32), x2, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto target = set_write_addr(std::vector<Value>{x5, x6}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("7000"), x6.done(), 1);
        token_buffer( control_in("3000"), x8, 0);
        send(x8,  control_out("2000"));
        send(x8,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 816, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc, "phaseRExp0", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(1);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), x1, 1);
        auto x6 = dsl::iterator(x4, x1, immediate(12), 1);
        auto x8 = set_ctx_done_expr(x5.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x6});
        auto target = set_read_addr(std::vector<Value>{x6, x5}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("7000"), x5.done(), 0);
        token_buffer( control_in("7001"), x5.done(), 1);
        token_buffer( control_in("3000"), x8, 0);
        token_buffer( control_in("3001"), x8, 0);
        send(x8,  control_out("2000"));
        send(x8,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 716, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc, "phaseW2", [&](){
        disable_full_stall();
        set_concurrency_group(2);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), immediate(1), 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto target = set_write_addr(std::vector<Value>{immediate(12), x5}, boolean(true),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        token_buffer( control_in("7000"), x5.done(), 0);
        token_buffer( control_in("3000"), x7, 0);
        send(x7,  control_out("2000"));
        send(x7,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 816, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc, "phaseRExp1", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(2);
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, immediate(32), x1, 1);
        auto x6 = dsl::iterator(x4, x1, immediate(12), 1);
        auto x8 = set_ctx_done_expr(x5.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x6});
        auto target = set_read_addr(std::vector<Value>{x6, x5}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("7000"), x5.done(), 0);
        send(x8,  control_out("2000"));
        token_buffer( control_in("3000"), x8, 0);
        token_buffer( control_in("3001"), x8, 0);
        send(x8,  control_out("1000"));
    });
    auto LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 877, 0);
    LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc, "phaseRSumRecip", [&](){
        disable_empty_stall();
        // pacing_window: default;
        set_concurrency_group(2);
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x1 = immediate(1);
        auto x2 = immediate(12);
        auto x4 = immediate(0);
        auto x6 = dsl::iterator(x4, immediate(32), x1, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x4, x1, x2, 1)});
        auto target = set_read_addr(std::vector<Value>{x2, x6}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        token_buffer( control_in("7000"), x6.done(), 0);
        send(x8,  control_out("2000"));
        token_buffer( control_in("3000"), x8, 0);
        token_buffer( control_in("3001"), x8, 0);
        send(x8,  control_out("1000"));
    });
} // LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
{ // tbuf1a_1_0_90
    TBuffer::Params tbuf1a_1_0_90_param;
    tbuf1a_1_0_90_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    tbuf1a_1_0_90_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto tbuf1a_1_0_90_loc = loc("LogregTorchSamba.cpp", 227, 0);
    auto *tbuf1a_1_0_90 = rail.plasma()->create_node<prism::plasma::TBuffer>("tbuf1a_1_0_90", kNoParent, tbuf1a_1_0_90_loc, &rail, tbuf1a_1_0_90_param);
    auto tbuf1a_1_0_90_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc = loc("software/compiler/apps/rail/cross_entropy_grad/template/src/RAILCrossEntropyGrad.cpp", 1246, 0);
    tbuf1a_1_0_90->setup_addr(tbuf1a_1_0_90_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0", [&](){
        enable_addr_splitting();
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x6 = dsl::iterator(x4, x2, immediate(12), 1);
        auto x7 = dsl::iterator(x4, immediate(32), x2, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{dsl::iterator(x4, x2, x2, 1), x7, x6});
        send(x7.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x6, x7}, (x6 < immediate(10)),  vector_in("8"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateDrop);
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto tbuf1a_1_0_90_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 347, 0);
    tbuf1a_1_0_90->setup_addr(tbuf1a_1_0_90_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x2 = immediate(1);
        auto x4 = immediate(0);
        auto x5 = dsl::iterator(x4, x2, immediate(10), 1);
        auto x6 = dsl::iterator(x4, immediate(32), x2, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, x5});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_read_addr(std::vector<Value>{x5, x6}, boolean(true),  vector_out("1001"));
        target.set_vec_dim(1);
        target.set_predicate_type(kPredicateForceZero);
        send(x8,  control_out("1000"));
        auto x11 =  control_in("LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_wdone_in__");
        token_buffer(x11, x8, 0);
    });
} // tbuf1a_1_0_90
