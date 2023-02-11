{ // partition_0_0__tbuf1a_0_0_81
    TBuffer::Params partition_0_0__tbuf1a_0_0_81_param;
    partition_0_0__tbuf1a_0_0_81_param.buffer_depth = 1;
    // layout: <INT16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    partition_0_0__tbuf1a_0_0_81_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_81_loc = loc("LogregTorchSamba.cpp", 161, 0);
    auto *partition_0_0__tbuf1a_0_0_81 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_81", kNoParent, partition_0_0__tbuf1a_0_0_81_loc, &rail, partition_0_0__tbuf1a_0_0_81_param);
    auto partition_0_0__tbuf1a_0_0_81_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__tbuf1a_0_0_81->setup_addr(partition_0_0__tbuf1a_0_0_81_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x1 = imm(1);
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 = dsl::iterator(x3, imm(32), x1, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto x6 = set_ctx_done_expr(x4.done());
        auto target = set_write_addr(std::vector<Value>{x4});
        target.set_vec_dim(0);
        target.set_en_drop(x2);
        target.set_data( vector_in("8"));
        send(x6,  control_out("1000"));
        send(x6,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf1a_0_0_81_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1728, 0);
    partition_0_0__tbuf1a_0_0_81->setup_addr(partition_0_0__tbuf1a_0_0_81_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x1 = imm(1);
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 = dsl::iterator(x3, x1, x1, 1);
        auto x6 = set_ctx_done_expr(x4.done());
        auto x7 = dsl::iterator(x3, x1, x1, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4, x7});
        auto x8 = (x4 + x7);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse});
        target.set_vec_dim(-1);
        target.set_en_zero(x2);
        target.set_en_drop(x2);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x4.done(), 0);
        send(x6,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x6, 0);
    });
} // partition_0_0__tbuf1a_0_0_81
{ // partition_0_0__tbuf1a_0_0_82
    TBuffer::Params partition_0_0__tbuf1a_0_0_82_param;
    partition_0_0__tbuf1a_0_0_82_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    partition_0_0__tbuf1a_0_0_82_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_82_loc = loc("LogregTorchSamba.cpp", 172, 0);
    auto *partition_0_0__tbuf1a_0_0_82 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_82", kNoParent, partition_0_0__tbuf1a_0_0_82_loc, &rail, partition_0_0__tbuf1a_0_0_82_param);
    auto partition_0_0__tbuf1a_0_0_82_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__tbuf1a_0_0_82->setup_addr(partition_0_0__tbuf1a_0_0_82_kDefaultWrite_loc, "kDefaultWrite", [&](){
        no_implicit_ctrl()
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(10);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x3, x4, 1);
        auto x8 = dsl::iterator(x6, x1, x3, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x7});
        auto x10 = set_ctx_done_expr(x8.done());
        auto target = set_write_addr(std::vector<Value>{x7, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("done"));
        token_buffer( control_in("begin"), x10, 1);
    });
    auto partition_0_0__tbuf1a_0_0_82_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1504, 0);
    partition_0_0__tbuf1a_0_0_82->setup_addr(partition_0_0__tbuf1a_0_0_82_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(10);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x3, imm(2), 1);
        auto x8 = dsl::iterator(x6, x1, x3, 1);
        auto x9 = dsl::iterator(x6, x3, imm(12), 1);
        auto x11 = set_ctx_done_expr(x7.done());
        // chain steps:  (24 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        send(x7.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x9, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x16 = x7.done();
        token_buffer( control_in("kFrameReady"), x7.done(), 0);
        token_buffer( control_in("phase3_strip_done"), x16, 1);
        auto x22 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x22, x8.done(), 1);
        token_buffer( control_in("scalar_done"), x16, 1);
        send(x16,  control_out("kSecondReplayDone"));
    });
    auto partition_0_0__tbuf1a_0_0_82_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1571, 0);
    partition_0_0__tbuf1a_0_0_82->setup_addr(partition_0_0__tbuf1a_0_0_82_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar", [&](){
        set_pacing_window(1);
        set_concurrency_group(1);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(10);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x3, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        auto x10 = dsl::iterator(x6, x3, x3, 1);
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x10});
        send(x7.done(),  control_out("1000"));
        auto x13 =  scalar_in("label");
        token_buffer(x13, 0);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse, (x7 + x10)});
        target.set_vec_dim(-1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( scalar_out("1001"));
        auto x18 = x7.done();
        token_buffer( control_in("phase2_strip_done"), x18, 0);
        token_buffer( control_in("second_replay_done_0"), x18, 0);
        send(x18,  control_out("scalar_done"));
        send(x7.done(),  control_out("frame_done"));
    });
} // partition_0_0__tbuf1a_0_0_82
{ // partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp
    TBuffer::Params partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param;
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param.buffer_depth = 1;
    // layout: <BF16[14, 1]CM/64@0x0> vec_order: {1, 0} vec_dim: 0 dims: {32, 1}
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 1},{1, 0}).with_vector_transpose_dim(1).vector_align();
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 2112, 0);
    auto *partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp", kNoParent, partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_loc, &rail, partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param);
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 964, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w0_loc, "phase_w0", [&](){
        disable_full_stall();
        set_concurrency_group(0);
        no_implicit_ctrl()
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x2, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_write_addr(std::vector<Value>{x3, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute"), x8.done(), 1);
        token_buffer( control_in("kBegin0"), x10, 1);
        token_buffer( control_in("kBegin1"), x10, 1);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase1_R_max_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1028, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase1_R_max_loc, "phase1_R_max", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x9 = dsl::iterator(x7, x2, x4, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, dsl::iterator(x7, x4, x3, 1)});
        auto target = set_read_addr(std::vector<Value>{x3, x9});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x9.done(), 1);
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_rd_dummy_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1066, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_rd_dummy_loc, "phase_rd_dummy", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x9 = dsl::iterator(x7, x2, x4, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, dsl::iterator(x7, x4, x1, 1)});
        auto x11 = set_ctx_done_expr(x9.done());
        auto target = set_read_addr(std::vector<Value>{x7, x7});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(boolean(false));
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w1_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1004, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w1_loc, "phase_w1", [&](){
        disable_full_stall();
        set_concurrency_group(1);
        no_implicit_ctrl()
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, x3, 1);
        auto x9 = dsl::iterator(x7, x2, x4, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, x8});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase2_R_exp_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1094, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase2_R_exp_loc, "phase2_R_exp", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(1);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x2, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        auto x11 = dsl::iterator(x7, x4, x1, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x11});
        auto target = set_read_addr(std::vector<Value>{x11, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x8.done(), 0);
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        token_buffer( control_in("kBegin2"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w2_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 964, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase_w2_loc, "phase_w2", [&](){
        disable_full_stall();
        set_concurrency_group(2);
        no_implicit_ctrl()
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x2, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_write_addr(std::vector<Value>{x5, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        token_buffer( control_in("kBegin2"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_max_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1122, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_max_loc, "phase3_R_max", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_read_addr(std::vector<Value>{x3, x8});
        target.set_vec_dim(-1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x8.done(), 0);
        send(x10,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        send(x10,  control_out("1000"));
    });
    auto partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_logsum_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1122, 0);
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp->setup_addr(partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_phase3_R_logsum_loc, "phase3_R_logsum", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(12);
        auto x4 = imm(1);
        auto x5 = imm(13);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_read_addr(std::vector<Value>{x5, x8});
        target.set_vec_dim(-1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x8.done(), 0);
        send(x10,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        send(x10,  control_out("1000"));
    });
} // partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp
{ // partition_0_0__tbuf1a_0_0_83
    TBuffer::Params partition_0_0__tbuf1a_0_0_83_param;
    partition_0_0__tbuf1a_0_0_83_param.buffer_depth = 1;
    // layout: <BF16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    partition_0_0__tbuf1a_0_0_83_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_83_loc = loc("LogregTorchSamba.cpp", 203, 0);
    auto *partition_0_0__tbuf1a_0_0_83 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_83", kNoParent, partition_0_0__tbuf1a_0_0_83_loc, &rail, partition_0_0__tbuf1a_0_0_83_param);
    auto partition_0_0__tbuf1a_0_0_83_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1768, 0);
    partition_0_0__tbuf1a_0_0_83->setup_addr(partition_0_0__tbuf1a_0_0_83_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput", [&](){
        auto x1 = imm(1);
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 =  scalar_in("8");
        token_buffer(x4, 0);
        auto x5 = dsl::iterator(x3, x1, x1, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        send(x5.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x5});
        target.set_vec_dim(-1);
        target.set_en_drop(x2);
        target.set_data(x4);
        send(x7,  control_out("1000"));
        send(x7,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf1a_0_0_83_kBackReadCtx_loc = loc("software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp", 150, 0);
    partition_0_0__tbuf1a_0_0_83->setup_addr(partition_0_0__tbuf1a_0_0_83_kBackReadCtx_loc, "kBackReadCtx", [&](){
        set_pacing_window(1);
        auto x1 = imm(1);
        auto x2 = boolean(true);
        auto x3 = imm(0);
        auto x4 = dsl::iterator(x3, imm(32), x1, 1);
        auto x6 = set_ctx_done_expr(x4.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x4});
        auto target = set_read_addr(std::vector<Value>{x4});
        target.set_vec_dim(0);
        target.set_en_zero(x2);
        target.set_en_drop(x2);
        target.set_data( vector_out("1001"));
        reset({}, x4);
        token_buffer( control_in("10"), get_pacing_done_expr(1, x4), 4);
        send(x6,  control_out("1000"));
        auto x11 =  control_in("LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput_wdone_in__");
        token_buffer(x11, x6, 0);
    });
} // partition_0_0__tbuf1a_0_0_83
{ // partition_1_0__tbuf1a_1_0_85
    TBuffer::Params partition_1_0__tbuf1a_1_0_85_param;
    partition_1_0__tbuf1a_1_0_85_param.buffer_depth = 1;
    // layout: <INT16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    partition_1_0__tbuf1a_1_0_85_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_85_loc = loc("LogregTorchSamba.cpp", 253, 0);
    auto *partition_1_0__tbuf1a_1_0_85 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_85", kNoParent, partition_1_0__tbuf1a_1_0_85_loc, &rail, partition_1_0__tbuf1a_1_0_85_param);
    auto partition_1_0__tbuf1a_1_0_85_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_85->setup_addr(partition_1_0__tbuf1a_1_0_85_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x1, x2, 1);
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
    auto partition_1_0__tbuf1a_1_0_85_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1469, 0);
    partition_1_0__tbuf1a_1_0_85->setup_addr(partition_1_0__tbuf1a_1_0_85_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x6 = dsl::iterator(x4, x1, x2, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x4, x2, imm(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x6});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x6.done(), 0);
        send(x8,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x8, 0);
    });
} // partition_1_0__tbuf1a_1_0_85
{ // partition_1_0__tbuf1a_1_0_86
    TBuffer::Params partition_1_0__tbuf1a_1_0_86_param;
    partition_1_0__tbuf1a_1_0_86_param.buffer_depth = 1;
    // layout: <BF16[1]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {32}
    partition_1_0__tbuf1a_1_0_86_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{1},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_86_loc = loc("LogregTorchSamba.cpp", 264, 0);
    auto *partition_1_0__tbuf1a_1_0_86 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_86", kNoParent, partition_1_0__tbuf1a_1_0_86_loc, &rail, partition_1_0__tbuf1a_1_0_86_param);
    auto partition_1_0__tbuf1a_1_0_86_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_86->setup_addr(partition_1_0__tbuf1a_1_0_86_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x1, x2, 1);
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
    auto partition_1_0__tbuf1a_1_0_86_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1502, 0);
    partition_1_0__tbuf1a_1_0_86->setup_addr(partition_1_0__tbuf1a_1_0_86_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x6 = dsl::iterator(x4, x1, x2, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6, dsl::iterator(x4, x2, imm(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x6});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x6.done(), 0);
        send(x8,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x8, 0);
    });
} // partition_1_0__tbuf1a_1_0_86
{ // partition_1_0__tbuf1a_1_0_87
    TBuffer::Params partition_1_0__tbuf1a_1_0_87_param;
    partition_1_0__tbuf1a_1_0_87_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    partition_1_0__tbuf1a_1_0_87_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_87_loc = loc("LogregTorchSamba.cpp", 275, 0);
    auto *partition_1_0__tbuf1a_1_0_87 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_87", kNoParent, partition_1_0__tbuf1a_1_0_87_loc, &rail, partition_1_0__tbuf1a_1_0_87_param);
    auto partition_1_0__tbuf1a_1_0_87_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_87->setup_addr(partition_1_0__tbuf1a_1_0_87_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = imm(10);
        auto x7 = dsl::iterator(x5, x2, x6, 1);
        auto x8 = dsl::iterator(x5, x1, x2, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x7});
        auto x10 = set_ctx_done_expr(x8.done());
        auto target = set_write_addr(std::vector<Value>{x7, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_87_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1362, 0);
    partition_1_0__tbuf1a_1_0_87->setup_addr(partition_1_0__tbuf1a_1_0_87_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        set_explicit_dispatch(0);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x2 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = imm(10);
        auto x7 = dsl::iterator(x5, x2, imm(2), 1);
        auto x8 = dsl::iterator(x5, x1, x2, 1);
        auto x9 = dsl::iterator(x5, x2, imm(12), 1);
        // chain steps:  (24 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8, x9});
        send(x7.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x9, x8});
        target.set_vec_dim(1);
        target.set_en_zero((x9 < x6));
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        auto x17 = x7.done();
        auto x20 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x20, x8.done(), 1);
        token_buffer( control_in("phase3_strip_done"), x17, 1);
        send(x17,  control_out("kSecondReplayDone"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), set_ctx_done_expr(x7.done()), 0);
    });
} // partition_1_0__tbuf1a_1_0_87
{ // partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param;
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.buffer_depth = 1;
    // layout: <BF16[14, 1]RM/64@0x0> vec_order: {0, 1} vec_dim: 1 dims: {14, 32}
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 1},{0, 1}).with_vector_transpose_dim(1).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1761, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 871, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc, "phaseW0", [&](){
        disable_full_stall();
        set_concurrency_group(0);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7});
        auto target = set_write_addr(std::vector<Value>{x0, x7});
        target.set_vec_dim(1);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x7.done(), 1);
        send(x9,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x9, 1);
        send(x9,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1039, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc, "phaseRMax", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, dsl::iterator(x6, x3, x4, 1)});
        auto target = set_read_addr(std::vector<Value>{x0, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 0);
        token_buffer( control_in("kBeginFromTCompute1"), x8.done(), 1);
        token_buffer( control_in("kBegin0"), x10, 0);
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1010, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc, "phase_rd_dummy", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, dsl::iterator(x6, x3, x4, 1)});
        auto x10 = set_ctx_done_expr(x8.done());
        auto target = set_read_addr(std::vector<Value>{x6, x6});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(boolean(false));
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBegin0"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 902, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc, "phaseW1", [&](){
        disable_full_stall();
        set_concurrency_group(1);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x3, x4, 1);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x7});
        auto target = set_write_addr(std::vector<Value>{x7, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 1);
        token_buffer( control_in("kBegin0"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 969, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc, "phaseRExp0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(1);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x8 = dsl::iterator(x6, x3, x4, 1);
        auto x10 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8});
        auto target = set_read_addr(std::vector<Value>{x8, x7});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x7.done(), 0);
        token_buffer( control_in("kBeginFromTCompute1"), x7.done(), 1);
        token_buffer( control_in("kBegin0"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 871, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc, "phaseW2", [&](){
        disable_full_stall();
        set_concurrency_group(2);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (1 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7});
        auto target = set_write_addr(std::vector<Value>{x4, x7});
        target.set_vec_dim(1);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x7.done(), 0);
        token_buffer( control_in("kBegin0"), x9, 0);
        send(x9,  control_out("kDone"));
        send(x9,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 969, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc, "phaseRExp1", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x2, x3, 1);
        auto x8 = dsl::iterator(x6, x3, x4, 1);
        auto x10 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x8});
        auto target = set_read_addr(std::vector<Value>{x8, x7});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x7.done(), 0);
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1039, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc, "phaseRSumRecip", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = imm(13);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = imm(12);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x8 = dsl::iterator(x6, x2, x3, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, dsl::iterator(x6, x3, x4, 1)});
        auto target = set_read_addr(std::vector<Value>{x4, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 0);
        token_buffer( control_in("kBegin0"), x10, 0);
        token_buffer( control_in("kBegin1"), x10, 0);
        send(x10,  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
{ // partition_1_0__tbuf1a_1_0_99
    TBuffer::Params partition_1_0__tbuf1a_1_0_99_param;
    partition_1_0__tbuf1a_1_0_99_param.buffer_depth = 1;
    // layout: <BF16[10, 1]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 32}
    partition_1_0__tbuf1a_1_0_99_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 1},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_99_loc = loc("LogregTorchSamba.cpp", 301, 0);
    auto *partition_1_0__tbuf1a_1_0_99 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_99", kNoParent, partition_1_0__tbuf1a_1_0_99_loc, &rail, partition_1_0__tbuf1a_1_0_99_param);
    auto partition_1_0__tbuf1a_1_0_99_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1418, 0);
    partition_1_0__tbuf1a_1_0_99->setup_addr(partition_1_0__tbuf1a_1_0_99_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0", [&](){
        set_explicit_dispatch(0);
        enable_addr_splitting();
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x3, imm(12), 1);
        auto x7 = dsl::iterator(x5, x2, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (12 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x6});
        send(x7.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x6, x7});
        target.set_vec_dim(1);
        target.set_en_drop((x6 < x1));
        target.set_data( vector_in("8"));
        send(x9,  control_out("1000"));
        send(x9,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_99_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_99->setup_addr(partition_1_0__tbuf1a_1_0_99_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x1 = imm(10);
        auto x2 = imm(32);
        auto x3 = imm(1);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x3, x1, 1);
        auto x7 = dsl::iterator(x5, x2, x3, 1);
        // chain steps:  (10 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, x6});
        auto x9 = set_ctx_done_expr(x7.done());
        auto target = set_read_addr(std::vector<Value>{x6, x7});
        target.set_vec_dim(1);
        target.set_en_zero(x4);
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        send(x9,  control_out("1000"));
        auto x12 =  control_in("LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_wdone_in__");
        token_buffer(x12, x9, 0);
    });
} // partition_1_0__tbuf1a_1_0_99
