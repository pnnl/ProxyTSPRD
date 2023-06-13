{ // partition_0_0__tbuf1a_0_0_95
    TBuffer::Params partition_0_0__tbuf1a_0_0_95_param;
    partition_0_0__tbuf1a_0_0_95_param.buffer_depth = 1;
    // layout: <INT16[500]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {512}
    partition_0_0__tbuf1a_0_0_95_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{500},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_95_loc = loc("LogregTorchSamba.cpp", 167, 0);
    auto *partition_0_0__tbuf1a_0_0_95 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_95", kNoParent, partition_0_0__tbuf1a_0_0_95_loc, &rail, partition_0_0__tbuf1a_0_0_95_param);
    auto partition_0_0__tbuf1a_0_0_95_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__tbuf1a_0_0_95->setup_addr(partition_0_0__tbuf1a_0_0_95_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x1 = imm(1);
        auto x2 = imm(500);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, imm(32), x2, 1);
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto x7 = set_ctx_done_expr(x5.done());
        auto target = set_write_addr(std::vector<Value>{x5});
        target.set_vec_dim(0);
        target.set_en_drop(x3);
        target.set_data( vector_in("8"));
        send(x7,  control_out("1000"));
        send(x7,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf1a_0_0_95_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1728, 0);
    partition_0_0__tbuf1a_0_0_95->setup_addr(partition_0_0__tbuf1a_0_0_95_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x1 = imm(1);
        auto x2 = imm(500);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, x1, x2, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        auto x8 = dsl::iterator(x4, x1, x1, 1);
        // chain steps:  (500 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5, x8});
        auto x9 = (x5 + x8);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse});
        target.set_vec_dim(-1);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x5.done(), 0);
        send(x7,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x7, 0);
    });
} // partition_0_0__tbuf1a_0_0_95
{ // partition_0_0__tbuf1a_0_0_96
    TBuffer::Params partition_0_0__tbuf1a_0_0_96_param;
    partition_0_0__tbuf1a_0_0_96_param.buffer_depth = 1;
    // layout: <BF16[10, 500]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 512}
    partition_0_0__tbuf1a_0_0_96_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 500},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_96_loc = loc("LogregTorchSamba.cpp", 178, 0);
    auto *partition_0_0__tbuf1a_0_0_96 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_96", kNoParent, partition_0_0__tbuf1a_0_0_96_loc, &rail, partition_0_0__tbuf1a_0_0_96_param);
    auto partition_0_0__tbuf1a_0_0_96_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_0_0__tbuf1a_0_0_96->setup_addr(partition_0_0__tbuf1a_0_0_96_kDefaultWrite_loc, "kDefaultWrite", [&](){
        no_implicit_ctrl()
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(500);
        auto x4 = imm(1);
        auto x5 = imm(10);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, x5, 1);
        auto x9 = dsl::iterator(x7, x1, x3, 1);
        // chain steps:  (160 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, x8});
        auto x11 = set_ctx_done_expr(x9.done());
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("done"));
        token_buffer( control_in("begin"), x11, 1);
    });
    auto partition_0_0__tbuf1a_0_0_96_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1504, 0);
    partition_0_0__tbuf1a_0_0_96->setup_addr(partition_0_0__tbuf1a_0_0_96_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_explicit_dispatch(0);
        set_mem_port(node_constants::PmuOp::kRead1);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(500);
        auto x4 = imm(1);
        auto x5 = imm(10);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, imm(2), 1);
        auto x9 = dsl::iterator(x7, x1, x3, 1);
        auto x10 = dsl::iterator(x7, x4, imm(12), 1);
        auto x12 = set_ctx_done_expr(x8.done());
        // chain steps:  (384 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9, x10});
        send(x8.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x10, x9});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        auto x17 = x8.done();
        token_buffer( control_in("kFrameReady"), x8.done(), 0);
        token_buffer( control_in("phase3_strip_done"), x17, 1);
        auto x23 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x23, x9.done(), 1);
        token_buffer( control_in("scalar_done"), x17, 1);
        send(x17,  control_out("kSecondReplayDone"));
    });
    auto partition_0_0__tbuf1a_0_0_96_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1571, 0);
    partition_0_0__tbuf1a_0_0_96->setup_addr(partition_0_0__tbuf1a_0_0_96_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar", [&](){
        set_pacing_window(500);
        set_concurrency_group(1);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x3 = imm(500);
        auto x4 = imm(1);
        auto x5 = imm(10);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x4, x3, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        auto x11 = dsl::iterator(x7, x4, x4, 1);
        // chain steps:  (500 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x11});
        send(x8.done(),  control_out("1000"));
        auto x14 =  scalar_in("label");
        token_buffer(x14, 0);
        auto target = set_read_addr(std::vector<Value>{// TODO rail.ifelse, (x8 + x11)});
        target.set_vec_dim(-1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( scalar_out("1001"));
        auto x19 = x8.done();
        token_buffer( control_in("phase2_strip_done"), x19, 0);
        token_buffer( control_in("second_replay_done_0"), x19, 0);
        send(x19,  control_out("scalar_done"));
        send(x8.done(),  control_out("frame_done"));
    });
} // partition_0_0__tbuf1a_0_0_96
{ // partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp
    TBuffer::Params partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param;
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param.buffer_depth = 1;
    // layout: <BF16[14, 500]CM/64@0x0> vec_order: {1, 0} vec_dim: 0 dims: {32, 500}
    partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 500},{1, 0}).with_vector_transpose_dim(1).vector_align();
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x2, x5, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9});
        auto target = set_write_addr(std::vector<Value>{x3, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x7);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute"), x9.done(), 1);
        token_buffer( control_in("kBegin0"), x11, 1);
        token_buffer( control_in("kBegin1"), x11, 1);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x10 = dsl::iterator(x8, x2, x5, 1);
        auto x12 = set_ctx_done_expr(x10.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x10, dsl::iterator(x8, x4, x3, 1)});
        auto target = set_read_addr(std::vector<Value>{x3, x10});
        target.set_vec_dim(1);
        target.set_en_zero(x7);
        target.set_en_drop(x7);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x10.done(), 1);
        token_buffer( control_in("kBegin0"), x12, 0);
        send(x12,  control_out("kDone"));
        send(x12,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x10 = dsl::iterator(x8, x2, x5, 1);
        // chain steps:  (160 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x10, dsl::iterator(x8, x4, x1, 1)});
        auto x12 = set_ctx_done_expr(x10.done());
        auto target = set_read_addr(std::vector<Value>{x8, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x7);
        target.set_en_drop(boolean(false));
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBegin0"), x12, 0);
        send(x12,  control_out("kDone"));
        send(x12,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x4, x3, 1);
        auto x10 = dsl::iterator(x8, x2, x5, 1);
        auto x12 = set_ctx_done_expr(x10.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x10, x9});
        auto target = set_write_addr(std::vector<Value>{x9, x10});
        target.set_vec_dim(1);
        target.set_en_drop(x7);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBegin0"), x12, 0);
        send(x12,  control_out("kDone"));
        send(x12,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x2, x5, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        auto x12 = dsl::iterator(x8, x4, x1, 1);
        // chain steps:  (160 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, x12});
        auto target = set_read_addr(std::vector<Value>{x12, x9});
        target.set_vec_dim(1);
        target.set_en_zero(x7);
        target.set_en_drop(x7);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x9.done(), 0);
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        token_buffer( control_in("kBegin2"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x2, x5, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9});
        auto target = set_write_addr(std::vector<Value>{x6, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x7);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        token_buffer( control_in("kBegin2"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x4, x5, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (500 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9});
        auto target = set_read_addr(std::vector<Value>{x3, x9});
        target.set_vec_dim(-1);
        target.set_en_zero(x7);
        target.set_en_drop(x7);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x9.done(), 0);
        send(x11,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        send(x11,  control_out("1000"));
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
        auto x5 = imm(500);
        auto x6 = imm(13);
        auto x7 = boolean(true);
        auto x8 = imm(0);
        auto x9 = dsl::iterator(x8, x4, x5, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (500 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9});
        auto target = set_read_addr(std::vector<Value>{x6, x9});
        target.set_vec_dim(-1);
        target.set_en_zero(x7);
        target.set_en_drop(x7);
        target.set_data( scalar_out("1001"));
        token_buffer( control_in("kBeginFromTCompute"), x9.done(), 0);
        send(x11,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        send(x11,  control_out("1000"));
    });
} // partition_0_0__LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_logreg__criterion__crossentropyloss_tbuf_tmp
{ // partition_0_0__tbuf1a_0_0_97
    TBuffer::Params partition_0_0__tbuf1a_0_0_97_param;
    partition_0_0__tbuf1a_0_0_97_param.buffer_depth = 1;
    // layout: <BF16[500]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {512}
    partition_0_0__tbuf1a_0_0_97_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{500},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_0_0__tbuf1a_0_0_97_loc = loc("LogregTorchSamba.cpp", 209, 0);
    auto *partition_0_0__tbuf1a_0_0_97 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_0_0__tbuf1a_0_0_97", kNoParent, partition_0_0__tbuf1a_0_0_97_loc, &rail, partition_0_0__tbuf1a_0_0_97_param);
    auto partition_0_0__tbuf1a_0_0_97_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropy.cpp", 1768, 0);
    partition_0_0__tbuf1a_0_0_97->setup_addr(partition_0_0__tbuf1a_0_0_97_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput_loc, "LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput", [&](){
        auto x2 = imm(500);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 =  scalar_in("8");
        token_buffer(x5, 0);
        auto x6 = dsl::iterator(x4, imm(1), x2, 1);
        auto x8 = set_ctx_done_expr(x6.done());
        // chain steps:  (500 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6});
        send(x6.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x6});
        target.set_vec_dim(-1);
        target.set_en_drop(x3);
        target.set_data(x5);
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto partition_0_0__tbuf1a_0_0_97_kBackReadCtx_loc = loc("software/prism/src/plasma/templates/mlnodes/BackingPmu.cpp", 150, 0);
    partition_0_0__tbuf1a_0_0_97->setup_addr(partition_0_0__tbuf1a_0_0_97_kBackReadCtx_loc, "kBackReadCtx", [&](){
        set_pacing_window(16);
        auto x2 = imm(500);
        auto x3 = boolean(true);
        auto x4 = imm(0);
        auto x5 = dsl::iterator(x4, imm(32), x2, 1);
        auto x7 = set_ctx_done_expr(x5.done());
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x5});
        auto target = set_read_addr(std::vector<Value>{x5});
        target.set_vec_dim(0);
        target.set_en_zero(x3);
        target.set_en_drop(x3);
        target.set_data( vector_out("1001"));
        reset({}, x5);
        token_buffer( control_in("10"), get_pacing_done_expr(16, x5), 4);
        send(x7,  control_out("1000"));
        auto x12 =  control_in("LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput_wdone_in__");
        token_buffer(x12, x7, 0);
    });
} // partition_0_0__tbuf1a_0_0_97
{ // partition_1_0__tbuf1a_1_0_99
    TBuffer::Params partition_1_0__tbuf1a_1_0_99_param;
    partition_1_0__tbuf1a_1_0_99_param.buffer_depth = 1;
    // layout: <INT16[500]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {512}
    partition_1_0__tbuf1a_1_0_99_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("INT16"),{500},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_99_loc = loc("LogregTorchSamba.cpp", 259, 0);
    auto *partition_1_0__tbuf1a_1_0_99 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_99", kNoParent, partition_1_0__tbuf1a_1_0_99_loc, &rail, partition_1_0__tbuf1a_1_0_99_param);
    auto partition_1_0__tbuf1a_1_0_99_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_99->setup_addr(partition_1_0__tbuf1a_1_0_99_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x2 = imm(32);
        auto x3 = imm(500);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x2, x3, 1);
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6});
        target.set_vec_dim(0);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_99_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1469, 0);
    partition_1_0__tbuf1a_1_0_99->setup_addr(partition_1_0__tbuf1a_1_0_99_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputY", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x2 = imm(32);
        auto x3 = imm(500);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x7 = dsl::iterator(x5, x2, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, dsl::iterator(x5, imm(1), imm(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x7});
        target.set_vec_dim(0);
        target.set_en_zero(x4);
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x7.done(), 0);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // partition_1_0__tbuf1a_1_0_99
{ // partition_1_0__tbuf1a_1_0_100
    TBuffer::Params partition_1_0__tbuf1a_1_0_100_param;
    partition_1_0__tbuf1a_1_0_100_param.buffer_depth = 1;
    // layout: <BF16[500]RM/64@0x0> vec_order: {0} vec_dim: 0 dims: {512}
    partition_1_0__tbuf1a_1_0_100_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{500},{0}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_100_loc = loc("LogregTorchSamba.cpp", 270, 0);
    auto *partition_1_0__tbuf1a_1_0_100 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_100", kNoParent, partition_1_0__tbuf1a_1_0_100_loc, &rail, partition_1_0__tbuf1a_1_0_100_param);
    auto partition_1_0__tbuf1a_1_0_100_kFrontDynamicWriteCtx_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_100->setup_addr(partition_1_0__tbuf1a_1_0_100_kFrontDynamicWriteCtx_loc, "kFrontDynamicWriteCtx", [&](){
        auto x2 = imm(32);
        auto x3 = imm(500);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x6 = dsl::iterator(x5, x2, x3, 1);
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x6});
        auto x8 = set_ctx_done_expr(x6.done());
        auto target = set_write_addr(std::vector<Value>{x6});
        target.set_vec_dim(0);
        target.set_en_drop(x4);
        target.set_data( vector_in("8"));
        send(x8,  control_out("1000"));
        send(x8,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_100_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1502, 0);
    partition_1_0__tbuf1a_1_0_100->setup_addr(partition_1_0__tbuf1a_1_0_100_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss", [&](){
        // pacing_window: default;
        set_concurrency_group(0);
        auto x2 = imm(32);
        auto x3 = imm(500);
        auto x4 = boolean(true);
        auto x5 = imm(0);
        auto x7 = dsl::iterator(x5, x2, x3, 1);
        auto x9 = set_ctx_done_expr(x7.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x7, dsl::iterator(x5, imm(1), imm(12), 1)});
        auto target = set_read_addr(std::vector<Value>{x7});
        target.set_vec_dim(0);
        target.set_en_zero(x4);
        target.set_en_drop(x4);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("phase2_strip_done"), x7.done(), 0);
        send(x9,  control_out("1000"));
        token_buffer( control_in("kFrontDynamicWriteCtx_wdone_in__"), x9, 0);
    });
} // partition_1_0__tbuf1a_1_0_100
{ // partition_1_0__tbuf1a_1_0_101
    TBuffer::Params partition_1_0__tbuf1a_1_0_101_param;
    partition_1_0__tbuf1a_1_0_101_param.buffer_depth = 1;
    // layout: <BF16[10, 500]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 512}
    partition_1_0__tbuf1a_1_0_101_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 500},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_101_loc = loc("LogregTorchSamba.cpp", 281, 0);
    auto *partition_1_0__tbuf1a_1_0_101 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_101", kNoParent, partition_1_0__tbuf1a_1_0_101_loc, &rail, partition_1_0__tbuf1a_1_0_101_param);
    auto partition_1_0__tbuf1a_1_0_101_kDefaultWrite_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_101->setup_addr(partition_1_0__tbuf1a_1_0_101_kDefaultWrite_loc, "kDefaultWrite", [&](){
        auto x1 = imm(32);
        auto x2 = imm(500);
        auto x3 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = imm(10);
        auto x8 = dsl::iterator(x6, x3, x7, 1);
        auto x9 = dsl::iterator(x6, x1, x2, 1);
        // chain steps:  (160 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, x8});
        auto x11 = set_ctx_done_expr(x9.done());
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x5);
        target.set_data( vector_in("8"));
        send(x11,  control_out("1000"));
        send(x11,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_101_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1362, 0);
    partition_1_0__tbuf1a_1_0_101->setup_addr(partition_1_0__tbuf1a_1_0_101_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0", [&](){
        set_pacing_window(12);
        set_concurrency_group(0);
        set_explicit_dispatch(0);
        enable_addr_splitting();
        auto x1 = imm(32);
        auto x2 = imm(500);
        auto x3 = imm(1);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = imm(10);
        auto x8 = dsl::iterator(x6, x3, imm(2), 1);
        auto x9 = dsl::iterator(x6, x1, x2, 1);
        auto x10 = dsl::iterator(x6, x3, imm(12), 1);
        // chain steps:  (384 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9, x10});
        send(x8.done(),  control_out("1000"));
        auto target = set_read_addr(std::vector<Value>{x10, x9});
        target.set_vec_dim(1);
        target.set_en_zero((x10 < x7));
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        auto x18 = x8.done();
        auto x21 = ( control_in("phase0_strip_done") |  control_in("phase1_strip_done"));
        token_buffer(x21, x9.done(), 1);
        token_buffer( control_in("phase3_strip_done"), x18, 1);
        send(x18,  control_out("kSecondReplayDone"));
        token_buffer( control_in("kDefaultWrite_wdone_in__"), set_ctx_done_expr(x8.done()), 0);
    });
} // partition_1_0__tbuf1a_1_0_101
{ // partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
    TBuffer::Params partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param;
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.buffer_depth = 1;
    // layout: <BF16[14, 500]RM/64@0x0> vec_order: {0, 1} vec_dim: 1 dims: {14, 512}
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{14, 500},{0, 1}).with_vector_transpose_dim(1).vector_align();
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1761, 0);
    auto *partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0", kNoParent, partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_loc, &rail, partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_param);
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 871, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW0_loc, "phaseW0", [&](){
        disable_full_stall();
        set_concurrency_group(0);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x3, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_write_addr(std::vector<Value>{x0, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 1);
        send(x10,  control_out("kDone"));
        token_buffer( control_in("kBegin0"), x10, 1);
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1039, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRMax_loc, "phaseRMax", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x9 = dsl::iterator(x7, x3, x4, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, dsl::iterator(x7, x2, x5, 1)});
        auto target = set_read_addr(std::vector<Value>{x0, x9});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x9.done(), 0);
        token_buffer( control_in("kBeginFromTCompute1"), x9.done(), 1);
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1010, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phase_rd_dummy_loc, "phase_rd_dummy", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(0);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x9 = dsl::iterator(x7, x3, x4, 1);
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, dsl::iterator(x7, x2, x5, 1)});
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
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 902, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW1_loc, "phaseW1", [&](){
        disable_full_stall();
        set_concurrency_group(1);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x2, x5, 1);
        auto x9 = dsl::iterator(x7, x3, x4, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, x8});
        auto target = set_write_addr(std::vector<Value>{x8, x9});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x9.done(), 1);
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 969, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp0_loc, "phaseRExp0", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(1);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x3, x4, 1);
        auto x9 = dsl::iterator(x7, x2, x5, 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9});
        auto target = set_read_addr(std::vector<Value>{x9, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 0);
        token_buffer( control_in("kBeginFromTCompute1"), x8.done(), 1);
        token_buffer( control_in("kBegin0"), x11, 0);
        send(x11,  control_out("kDone"));
        send(x11,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 871, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseW2_loc, "phaseW2", [&](){
        disable_full_stall();
        set_concurrency_group(2);
        no_implicit_ctrl()
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x3, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (16 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8});
        auto target = set_write_addr(std::vector<Value>{x5, x8});
        target.set_vec_dim(1);
        target.set_en_drop(x6);
        target.set_data( vector_in("8"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 0);
        token_buffer( control_in("kBegin0"), x10, 0);
        send(x10,  control_out("kDone"));
        send(x10,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 969, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRExp1_loc, "phaseRExp1", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead0);
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x8 = dsl::iterator(x7, x3, x4, 1);
        auto x9 = dsl::iterator(x7, x2, x5, 1);
        auto x11 = set_ctx_done_expr(x8.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x9});
        auto target = set_read_addr(std::vector<Value>{x9, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x8.done(), 0);
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        send(x11,  control_out("1000"));
    });
    auto partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1039, 0);
    partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0->setup_addr(partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0_phaseRSumRecip_loc, "phaseRSumRecip", [&](){
        disable_empty_stall(true, 0);
        // pacing_window: default;
        set_concurrency_group(2);
        no_implicit_ctrl()
        set_mem_port(node_constants::PmuOp::kRead1);
        auto x0 = imm(13);
        auto x2 = imm(1);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = imm(12);
        auto x6 = boolean(true);
        auto x7 = imm(0);
        auto x9 = dsl::iterator(x7, x3, x4, 1);
        auto x11 = set_ctx_done_expr(x9.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x9, dsl::iterator(x7, x2, x5, 1)});
        auto target = set_read_addr(std::vector<Value>{x5, x9});
        target.set_vec_dim(1);
        target.set_en_zero(x6);
        target.set_en_drop(x6);
        target.set_data( vector_out("1001"));
        token_buffer( control_in("kBeginFromTCompute0"), x9.done(), 0);
        token_buffer( control_in("kBegin0"), x11, 0);
        token_buffer( control_in("kBegin1"), x11, 0);
        send(x11,  control_out("1000"));
    });
} // partition_1_0__LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_tbuf_tmp0
{ // partition_1_0__tbuf1a_1_0_114
    TBuffer::Params partition_1_0__tbuf1a_1_0_114_param;
    partition_1_0__tbuf1a_1_0_114_param.buffer_depth = 1;
    // layout: <BF16[10, 500]RVCM/64@0x0> vec_order: {1, 0} vec_dim: 1 dims: {10, 512}
    partition_1_0__tbuf1a_1_0_114_param.layout = TensorLayout(node_constants::TemplateDataFormats::parse("BF16"),{10, 500},{0, 1}).with_vector_transpose_dim(0).vector_align();
    auto partition_1_0__tbuf1a_1_0_114_loc = loc("LogregTorchSamba.cpp", 307, 0);
    auto *partition_1_0__tbuf1a_1_0_114 = rail.plasma()->create_node<prism::plasma::TBuffer>("partition_1_0__tbuf1a_1_0_114", kNoParent, partition_1_0__tbuf1a_1_0_114_loc, &rail, partition_1_0__tbuf1a_1_0_114_param);
    auto partition_1_0__tbuf1a_1_0_114_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc = loc("software/templates/src/templates/cross_entropy/rail/CrossEntropyGrad.cpp", 1418, 0);
    partition_1_0__tbuf1a_1_0_114->setup_addr(partition_1_0__tbuf1a_1_0_114_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0_loc, "LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0", [&](){
        set_explicit_dispatch(0);
        enable_addr_splitting();
        auto x1 = imm(1);
        auto x2 = imm(10);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x1, imm(12), 1);
        auto x8 = dsl::iterator(x6, x3, x4, 1);
        auto x10 = set_ctx_done_expr(x8.done());
        // chain steps:  (192 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x7});
        send(x8.done(),  control_out("done"));
        auto target = set_write_addr(std::vector<Value>{x7, x8});
        target.set_vec_dim(1);
        target.set_en_drop((x7 < x2));
        target.set_data( vector_in("8"));
        send(x10,  control_out("1000"));
        send(x10,  control_out("wdone__"));
    });
    auto partition_1_0__tbuf1a_1_0_114_kDefaultRead1_loc = loc("software/compiler/rail/src/lib/node/tbuffer/TBufferContext.cpp", 469, 0);
    partition_1_0__tbuf1a_1_0_114->setup_addr(partition_1_0__tbuf1a_1_0_114_kDefaultRead1_loc, "kDefaultRead1", [&](){
        // pacing_window: default;
        auto x1 = imm(1);
        auto x2 = imm(10);
        auto x3 = imm(32);
        auto x4 = imm(500);
        auto x5 = boolean(true);
        auto x6 = imm(0);
        auto x7 = dsl::iterator(x6, x1, x2, 1);
        auto x8 = dsl::iterator(x6, x3, x4, 1);
        // chain steps:  (160 # steps): 
        set_iterchain("addr_chain", std::vector<Value>{x8, x7});
        auto x10 = set_ctx_done_expr(x8.done());
        auto target = set_read_addr(std::vector<Value>{x7, x8});
        target.set_vec_dim(1);
        target.set_en_zero(x5);
        target.set_en_drop(x5);
        target.set_data( vector_out("1001"));
        send(x10,  control_out("1000"));
        auto x13 =  control_in("LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_wdone_in__");
        token_buffer(x13, x10, 0);
    });
} // partition_1_0__tbuf1a_1_0_114
