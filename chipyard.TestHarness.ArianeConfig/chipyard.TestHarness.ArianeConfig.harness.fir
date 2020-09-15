circuit TestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@2.0]
  module Queue_13_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@86683.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@86684.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86685.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    input io_enq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    input io_enq_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    input io_enq_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    output io_deq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    output io_deq_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
    output io_deq_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  
    mem ram_data : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
      data-type => UInt<64>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_strb : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
      data-type => UInt<8>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_last : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
      data-type => UInt<1>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@86689.4]
    skip
    node empty = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@86691.4]
    skip
    skip
    node _T_1 = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86694.4]
    node _T_2 = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86697.4]
    node _GEN_9 = mux(io_deq_ready, UInt<1>("h0"), _T_1) @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@86728.6]
    node do_enq = mux(empty, _GEN_9, _T_1) @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node do_deq = mux(empty, UInt<1>("h0"), _T_2) @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
    skip
    node _T_4 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@86708.4]
    node _GEN_7 = mux(_T_4, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@86709.4]
    node _T_5 = not(empty) @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@86712.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(maybe_full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@86715.4]
    io_deq_valid <= or(io_enq_valid, _T_5) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@86713.4 Decoupled.scala 236:40:chipyard.TestHarness.ArianeConfig.fir@86721.6]
    io_deq_bits_data <= mux(empty, io_enq_bits_data, ram_data._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86719.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86726.6]
    io_deq_bits_strb <= mux(empty, io_enq_bits_strb, ram_strb._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86718.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86725.6]
    io_deq_bits_last <= mux(empty, io_enq_bits_last, ram_last._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86717.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86724.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_7) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@86710.6]
    ram_data._T_7.en <= UInt<1>("h1")
    ram_data._T_7.addr <= UInt<1>("h0")
    ram_data._T_7.clk <= clock
    ram_data._T_3.en <= mux(empty, _GEN_9, _T_1)
    ram_data._T_3.addr <= UInt<1>("h0")
    ram_data._T_3.mask <= UInt<1>("h1")
    ram_data._T_3.data <= io_enq_bits_data
    ram_data._T_3.clk <= clock
    ram_strb._T_7.en <= UInt<1>("h1")
    ram_strb._T_7.addr <= UInt<1>("h0")
    ram_strb._T_7.clk <= clock
    ram_strb._T_3.en <= mux(empty, _GEN_9, _T_1)
    ram_strb._T_3.addr <= UInt<1>("h0")
    ram_strb._T_3.mask <= UInt<1>("h1")
    ram_strb._T_3.data <= io_enq_bits_strb
    ram_strb._T_3.clk <= clock
    ram_last._T_7.en <= UInt<1>("h1")
    ram_last._T_7.addr <= UInt<1>("h0")
    ram_last._T_7.clk <= clock
    ram_last._T_3.en <= mux(empty, _GEN_9, _T_1)
    ram_last._T_3.addr <= UInt<1>("h0")
    ram_last._T_3.mask <= UInt<1>("h1")
    ram_last._T_3.data <= io_enq_bits_last
    ram_last._T_3.clk <= clock

  extmodule ChipTop : @[:chipyard.TestHarness.ArianeConfig.fir@226129.2]
    input debug_clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_clockeddmi_dmi_req_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmi_req_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmi_req_bits_addr : UInt<7> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmi_req_bits_data : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmi_req_bits_op : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmi_resp_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_clockeddmi_dmi_resp_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_clockeddmi_dmi_resp_bits_data : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_clockeddmi_dmi_resp_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmiClock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_clockeddmi_dmiReset : AsyncReset @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_ndreset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    output debug_dmactive : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input debug_dmactiveAck : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226131.4]
    input resetctrl_hartIsInReset_0 : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226132.4]
    output serial_in_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    input serial_in_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    input serial_in_bits : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    input serial_out_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    output serial_out_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    output serial_out_bits : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226134.4]
    input mem_axi4_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_addr : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_lock : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_cache : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_prot : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_aw_bits_qos : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_addr : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_lock : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_cache : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_prot : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_ar_bits_qos : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output mem_axi4_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    input mem_axi4_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226135.4]
    output uart_0_txd : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226136.4]
    input uart_0_rxd : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226136.4]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@226137.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@226138.4]
  
    defname = ChipTop
    

  extmodule SimSerial : @[:chipyard.TestHarness.ArianeConfig.fir@229710.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@229711.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229712.4]
    input serial_in_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    output serial_in_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    output serial_in_bits : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    output serial_out_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    input serial_out_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    input serial_out_bits : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@229713.4]
    output exit : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229714.4]
  
    defname = SimSerial
    

  module AXI4RAM_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@229719.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@229720.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229721.4]
    output auto_in_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_aw_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_b_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_ar_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    input auto_in_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
    output auto_in_r_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  
    inst mem of mem_inTestHarness @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
    skip
    node _T = shr(auto_in_ar_bits_addr, 3) @[SRAM.scala 57:49:chipyard.TestHarness.ArianeConfig.fir@229731.4]
    node _T_1 = bits(_T, 0, 0) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229732.4]
    node _T_2 = bits(_T, 1, 1) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229733.4]
    node _T_3 = bits(_T, 2, 2) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229734.4]
    node _T_4 = bits(_T, 3, 3) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229735.4]
    node _T_5 = bits(_T, 4, 4) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229736.4]
    node _T_6 = bits(_T, 5, 5) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229737.4]
    node _T_7 = bits(_T, 6, 6) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229738.4]
    node _T_8 = bits(_T, 7, 7) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229739.4]
    node _T_9 = bits(_T, 8, 8) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229740.4]
    node _T_10 = bits(_T, 9, 9) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229741.4]
    node _T_11 = bits(_T, 10, 10) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229742.4]
    node _T_12 = bits(_T, 11, 11) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229743.4]
    node _T_13 = bits(_T, 12, 12) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229744.4]
    node _T_14 = bits(_T, 13, 13) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229745.4]
    node _T_15 = bits(_T, 14, 14) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229746.4]
    node _T_16 = bits(_T, 15, 15) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229747.4]
    node _T_17 = bits(_T, 16, 16) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229748.4]
    node _T_18 = bits(_T, 17, 17) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229749.4]
    node _T_19 = bits(_T, 18, 18) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229750.4]
    node _T_20 = bits(_T, 19, 19) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229751.4]
    node _T_21 = bits(_T, 20, 20) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229752.4]
    node _T_22 = bits(_T, 21, 21) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229753.4]
    node _T_23 = bits(_T, 22, 22) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229754.4]
    node _T_24 = bits(_T, 23, 23) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229755.4]
    node _T_25 = bits(_T, 24, 24) @[SRAM.scala 57:73:chipyard.TestHarness.ArianeConfig.fir@229756.4]
    skip
    skip
    skip
    skip
    node _T_30 = cat(cat(cat(_T_6, _T_5), _T_4), cat(cat(_T_3, _T_2), _T_1)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229761.4]
    skip
    skip
    skip
    skip
    skip
    node _T_36 = cat(cat(cat(cat(_T_12, _T_11), _T_10), cat(cat(_T_9, _T_8), _T_7)), _T_30) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229767.4]
    skip
    skip
    skip
    skip
    node _T_41 = cat(cat(cat(_T_18, _T_17), _T_16), cat(cat(_T_15, _T_14), _T_13)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229772.4]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_48 = cat(cat(cat(cat(_T_25, _T_24), cat(_T_23, _T_22)), cat(cat(_T_21, _T_20), _T_19)), _T_41) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229779.4]
    skip
    skip
    node _T_49 = shr(auto_in_aw_bits_addr, 3) @[SRAM.scala 58:49:chipyard.TestHarness.ArianeConfig.fir@229781.4]
    node _T_50 = bits(_T_49, 0, 0) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229782.4]
    node _T_51 = bits(_T_49, 1, 1) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229783.4]
    node _T_52 = bits(_T_49, 2, 2) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229784.4]
    node _T_53 = bits(_T_49, 3, 3) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229785.4]
    node _T_54 = bits(_T_49, 4, 4) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229786.4]
    node _T_55 = bits(_T_49, 5, 5) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229787.4]
    node _T_56 = bits(_T_49, 6, 6) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229788.4]
    node _T_57 = bits(_T_49, 7, 7) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229789.4]
    node _T_58 = bits(_T_49, 8, 8) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229790.4]
    node _T_59 = bits(_T_49, 9, 9) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229791.4]
    node _T_60 = bits(_T_49, 10, 10) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229792.4]
    node _T_61 = bits(_T_49, 11, 11) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229793.4]
    node _T_62 = bits(_T_49, 12, 12) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229794.4]
    node _T_63 = bits(_T_49, 13, 13) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229795.4]
    node _T_64 = bits(_T_49, 14, 14) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229796.4]
    node _T_65 = bits(_T_49, 15, 15) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229797.4]
    node _T_66 = bits(_T_49, 16, 16) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229798.4]
    node _T_67 = bits(_T_49, 17, 17) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229799.4]
    node _T_68 = bits(_T_49, 18, 18) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229800.4]
    node _T_69 = bits(_T_49, 19, 19) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229801.4]
    node _T_70 = bits(_T_49, 20, 20) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229802.4]
    node _T_71 = bits(_T_49, 21, 21) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229803.4]
    node _T_72 = bits(_T_49, 22, 22) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229804.4]
    node _T_73 = bits(_T_49, 23, 23) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229805.4]
    node _T_74 = bits(_T_49, 24, 24) @[SRAM.scala 58:73:chipyard.TestHarness.ArianeConfig.fir@229806.4]
    skip
    skip
    skip
    skip
    node _T_79 = cat(cat(cat(_T_55, _T_54), _T_53), cat(cat(_T_52, _T_51), _T_50)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229811.4]
    skip
    skip
    skip
    skip
    skip
    node _T_85 = cat(cat(cat(cat(_T_61, _T_60), _T_59), cat(cat(_T_58, _T_57), _T_56)), _T_79) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229817.4]
    skip
    skip
    skip
    skip
    node _T_90 = cat(cat(cat(_T_67, _T_66), _T_65), cat(cat(_T_64, _T_63), _T_62)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229822.4]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_97 = cat(cat(cat(cat(_T_74, _T_73), cat(_T_72, _T_71)), cat(cat(_T_70, _T_69), _T_68)), _T_90) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229829.4]
    skip
    skip
    node _T_99 = cvt(auto_in_ar_bits_addr) @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229832.4]
    node _T_100 = and(_T_99, SInt<29>("h-10000000")) @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229833.4]
    node _T_101 = asSInt(_T_100) @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229834.4]
    node r_sel0 = eq(_T_101, SInt<29>("h0")) @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229835.4]
    skip
    node _T_103 = cvt(auto_in_aw_bits_addr) @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229837.4]
    node _T_104 = and(_T_103, SInt<29>("h-10000000")) @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229838.4]
    node _T_105 = asSInt(_T_104) @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229839.4]
    node w_sel0 = eq(_T_105, SInt<29>("h0")) @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229840.4]
    reg w_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), w_full) @[SRAM.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@229841.4]
    reg w_id : UInt<4>, clock with :
      reset => (UInt<1>("h0"), w_id) @[SRAM.scala 63:21:chipyard.TestHarness.ArianeConfig.fir@229842.4]
    reg w_echo_real_last : UInt<1>, clock with :
      reset => (UInt<1>("h0"), w_echo_real_last) @[SRAM.scala 64:21:chipyard.TestHarness.ArianeConfig.fir@229843.4]
    reg r_sel1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r_sel1) @[SRAM.scala 65:21:chipyard.TestHarness.ArianeConfig.fir@229844.4]
    reg w_sel1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), w_sel1) @[SRAM.scala 66:21:chipyard.TestHarness.ArianeConfig.fir@229845.4]
    skip
    skip
    node _T_106 = and(auto_in_b_ready, w_full) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229846.4]
    node _GEN_0 = mux(_T_106, UInt<1>("h0"), w_full) @[SRAM.scala 68:25:chipyard.TestHarness.ArianeConfig.fir@229847.4]
    skip
    node _T_128 = not(w_full) @[SRAM.scala 84:50:chipyard.TestHarness.ArianeConfig.fir@229916.4]
    node _T_129 = or(auto_in_b_ready, _T_128) @[SRAM.scala 84:47:chipyard.TestHarness.ArianeConfig.fir@229917.4]
    node in_aw_ready = and(auto_in_w_valid, _T_129) @[SRAM.scala 84:32:chipyard.TestHarness.ArianeConfig.fir@229918.4]
    skip
    skip
    node _T_107 = and(in_aw_ready, auto_in_aw_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229850.4]
    node _GEN_1 = or(_T_107, _GEN_0) @[SRAM.scala 69:25:chipyard.TestHarness.ArianeConfig.fir@229851.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg r_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r_full) @[SRAM.scala 91:25:chipyard.TestHarness.ArianeConfig.fir@229928.4]
    reg r_id : UInt<4>, clock with :
      reset => (UInt<1>("h0"), r_id) @[SRAM.scala 92:21:chipyard.TestHarness.ArianeConfig.fir@229929.4]
    reg r_echo_real_last : UInt<1>, clock with :
      reset => (UInt<1>("h0"), r_echo_real_last) @[SRAM.scala 93:21:chipyard.TestHarness.ArianeConfig.fir@229930.4]
    skip
    skip
    node _T_135 = and(auto_in_r_ready, r_full) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229931.4]
    node _GEN_40 = mux(_T_135, UInt<1>("h0"), r_full) @[SRAM.scala 95:25:chipyard.TestHarness.ArianeConfig.fir@229932.4]
    node _T_144 = not(r_full) @[SRAM.scala 109:34:chipyard.TestHarness.ArianeConfig.fir@229970.4]
    node in_ar_ready = or(auto_in_r_ready, _T_144) @[SRAM.scala 109:31:chipyard.TestHarness.ArianeConfig.fir@229971.4]
    skip
    skip
    node _T_136 = and(in_ar_ready, auto_in_ar_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229935.4]
    node _GEN_41 = or(_T_136, _GEN_40) @[SRAM.scala 96:25:chipyard.TestHarness.ArianeConfig.fir@229936.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    reg _T_142 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_142) @[package.scala 75:91:chipyard.TestHarness.ArianeConfig.fir@229955.4]
    reg _T_143_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_0) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_1) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_2) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_3 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_3) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_4 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_4) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_5 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_5) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_6 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_6) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    reg _T_143_7 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_143_7) @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
    node _GEN_49 = mux(_T_142, mem.R0_data_0, _T_143_0) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_50 = mux(_T_142, mem.R0_data_1, _T_143_1) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_51 = mux(_T_142, mem.R0_data_2, _T_143_2) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_52 = mux(_T_142, mem.R0_data_3, _T_143_3) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_53 = mux(_T_142, mem.R0_data_4, _T_143_4) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_54 = mux(_T_142, mem.R0_data_5, _T_143_5) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_55 = mux(_T_142, mem.R0_data_6, _T_143_6) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    node _GEN_56 = mux(_T_142, mem.R0_data_7, _T_143_7) @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_150 = cat(cat(_GEN_52, _GEN_51), cat(_GEN_50, _GEN_49)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229979.4]
    skip
    skip
    node _T_153 = cat(cat(_GEN_56, _GEN_55), cat(_GEN_54, _GEN_53)) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229982.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_in_aw_ready <= and(auto_in_w_valid, _T_129) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_w_ready <= and(auto_in_aw_valid, _T_129) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_b_valid <= w_full @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_b_bits_id <= w_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_b_bits_resp <= mux(w_sel1, UInt<2>("h0"), UInt<2>("h3")) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_b_bits_echo_real_last <= w_echo_real_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_ar_ready <= or(auto_in_r_ready, _T_144) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_r_valid <= r_full @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_r_bits_id <= r_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_r_bits_data <= cat(_T_153, _T_150) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_r_bits_resp <= mux(r_sel1, UInt<2>("h0"), UInt<2>("h3")) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    auto_in_r_bits_echo_real_last <= r_echo_real_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
    skip
    mem.R0_addr <= cat(_T_48, _T_36) @[package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229953.6]
    mem.R0_en <= and(in_ar_ready, auto_in_ar_valid) @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4 package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229952.6]
    mem.R0_clk <= clock @[package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229953.6]
    mem.W0_addr <= cat(_T_97, _T_85) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6]
    mem.W0_en <= and(_T_107, w_sel0) @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4 :chipyard.TestHarness.ArianeConfig.fir@229889.6]
    mem.W0_clk <= clock @[:chipyard.TestHarness.ArianeConfig.fir@229889.6]
    mem.W0_data_0 <= bits(auto_in_w_bits_data, 7, 0) @[:chipyard.TestHarness.ArianeConfig.fir@229891.8]
    mem.W0_data_1 <= bits(auto_in_w_bits_data, 15, 8) @[:chipyard.TestHarness.ArianeConfig.fir@229894.8]
    mem.W0_data_2 <= bits(auto_in_w_bits_data, 23, 16) @[:chipyard.TestHarness.ArianeConfig.fir@229897.8]
    mem.W0_data_3 <= bits(auto_in_w_bits_data, 31, 24) @[:chipyard.TestHarness.ArianeConfig.fir@229900.8]
    mem.W0_data_4 <= bits(auto_in_w_bits_data, 39, 32) @[:chipyard.TestHarness.ArianeConfig.fir@229903.8]
    mem.W0_data_5 <= bits(auto_in_w_bits_data, 47, 40) @[:chipyard.TestHarness.ArianeConfig.fir@229906.8]
    mem.W0_data_6 <= bits(auto_in_w_bits_data, 55, 48) @[:chipyard.TestHarness.ArianeConfig.fir@229909.8]
    mem.W0_data_7 <= bits(auto_in_w_bits_data, 63, 56) @[:chipyard.TestHarness.ArianeConfig.fir@229912.8]
    mem.W0_mask_0 <= bits(auto_in_w_bits_strb, 0, 0) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229891.8]
    mem.W0_mask_1 <= bits(auto_in_w_bits_strb, 1, 1) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229894.8]
    mem.W0_mask_2 <= bits(auto_in_w_bits_strb, 2, 2) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229897.8]
    mem.W0_mask_3 <= bits(auto_in_w_bits_strb, 3, 3) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229900.8]
    mem.W0_mask_4 <= bits(auto_in_w_bits_strb, 4, 4) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229903.8]
    mem.W0_mask_5 <= bits(auto_in_w_bits_strb, 5, 5) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229906.8]
    mem.W0_mask_6 <= bits(auto_in_w_bits_strb, 6, 6) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229909.8]
    mem.W0_mask_7 <= bits(auto_in_w_bits_strb, 7, 7) @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229912.8]
    w_full <= mux(reset, UInt<1>("h0"), _GEN_1) @[SRAM.scala 68:34:chipyard.TestHarness.ArianeConfig.fir@229848.6 SRAM.scala 69:34:chipyard.TestHarness.ArianeConfig.fir@229852.6]
    w_id <= mux(_T_107, auto_in_aw_bits_id, w_id) @[SRAM.scala 72:12:chipyard.TestHarness.ArianeConfig.fir@229856.6]
    w_echo_real_last <= mux(_T_107, auto_in_aw_bits_echo_real_last, w_echo_real_last) @[BundleMap.scala 248:19:chipyard.TestHarness.ArianeConfig.fir@229858.6]
    r_sel1 <= mux(_T_136, r_sel0, r_sel1) @[SRAM.scala 100:14:chipyard.TestHarness.ArianeConfig.fir@229942.6]
    w_sel1 <= mux(_T_107, w_sel0, w_sel1) @[SRAM.scala 73:14:chipyard.TestHarness.ArianeConfig.fir@229857.6]
    r_full <= mux(reset, UInt<1>("h0"), _GEN_41) @[SRAM.scala 95:34:chipyard.TestHarness.ArianeConfig.fir@229933.6 SRAM.scala 96:34:chipyard.TestHarness.ArianeConfig.fir@229937.6]
    r_id <= mux(_T_136, auto_in_ar_bits_id, r_id) @[SRAM.scala 99:12:chipyard.TestHarness.ArianeConfig.fir@229941.6]
    r_echo_real_last <= mux(_T_136, auto_in_ar_bits_echo_real_last, r_echo_real_last) @[BundleMap.scala 248:19:chipyard.TestHarness.ArianeConfig.fir@229943.6]
    _T_142 <= and(in_ar_ready, auto_in_ar_valid) @[package.scala 75:91:chipyard.TestHarness.ArianeConfig.fir@229956.4]
    _T_143_0 <= mux(_T_142, mem.R0_data_0, _T_143_0) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229959.6]
    _T_143_1 <= mux(_T_142, mem.R0_data_1, _T_143_1) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229960.6]
    _T_143_2 <= mux(_T_142, mem.R0_data_2, _T_143_2) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229961.6]
    _T_143_3 <= mux(_T_142, mem.R0_data_3, _T_143_3) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229962.6]
    _T_143_4 <= mux(_T_142, mem.R0_data_4, _T_143_4) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229963.6]
    _T_143_5 <= mux(_T_142, mem.R0_data_5, _T_143_5) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229964.6]
    _T_143_6 <= mux(_T_142, mem.R0_data_6, _T_143_6) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229965.6]
    _T_143_7 <= mux(_T_142, mem.R0_data_7, _T_143_7) @[Reg.scala 16:23:chipyard.TestHarness.ArianeConfig.fir@229966.6]

  module AXI4Xbar_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230118.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230119.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230120.4]
    output auto_in_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_in_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_in_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    output auto_out_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
    input auto_out_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_44 = not(auto_in_aw_valid) @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230321.4]
    skip
    skip
    skip
    skip
    skip
    node _T_50 = or(_T_44, auto_in_aw_valid) @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230331.4]
    skip
    node _T_52 = or(_T_50, reset) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230333.4]
    node _T_53 = not(_T_52) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230334.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_65 = not(auto_in_ar_valid) @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230375.4]
    skip
    skip
    skip
    skip
    skip
    node _T_71 = or(_T_65, auto_in_ar_valid) @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230385.4]
    skip
    node _T_73 = or(_T_71, reset) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230387.4]
    node _T_74 = not(_T_73) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230388.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_88 = not(auto_out_r_valid) @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230435.4]
    skip
    skip
    skip
    skip
    skip
    node _T_94 = or(_T_88, auto_out_r_valid) @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230445.4]
    skip
    node _T_96 = or(_T_94, reset) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230447.4]
    node _T_97 = not(_T_96) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230448.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_109 = not(auto_out_b_valid) @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230483.4]
    skip
    skip
    skip
    skip
    skip
    node _T_115 = or(_T_109, auto_out_b_valid) @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230493.4]
    skip
    node _T_117 = or(_T_115, reset) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230495.4]
    node _T_118 = not(_T_117) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230496.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_in_aw_ready <= auto_out_aw_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_w_ready <= auto_out_w_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_b_valid <= auto_out_b_valid @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_b_bits_id <= auto_out_b_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_b_bits_resp <= auto_out_b_bits_resp @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_ar_ready <= auto_out_ar_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_r_valid <= auto_out_r_valid @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_r_bits_id <= auto_out_r_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_r_bits_data <= auto_out_r_bits_data @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_r_bits_resp <= auto_out_r_bits_resp @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_in_r_bits_last <= auto_out_r_bits_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
    auto_out_aw_valid <= auto_in_aw_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_aw_bits_id <= auto_in_aw_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_aw_bits_addr <= auto_in_aw_bits_addr @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_aw_bits_len <= auto_in_aw_bits_len @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_aw_bits_size <= auto_in_aw_bits_size @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_aw_bits_burst <= auto_in_aw_bits_burst @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    skip
    skip
    skip
    skip
    auto_out_w_valid <= auto_in_w_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_w_bits_data <= auto_in_w_bits_data @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_w_bits_strb <= auto_in_w_bits_strb @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_w_bits_last <= auto_in_w_bits_last @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_b_ready <= auto_in_b_ready @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_valid <= auto_in_ar_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_bits_id <= auto_in_ar_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_bits_addr <= auto_in_ar_bits_addr @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_bits_len <= auto_in_ar_bits_len @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_bits_size <= auto_in_ar_bits_size @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    auto_out_ar_bits_burst <= auto_in_ar_bits_burst @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    skip
    skip
    skip
    skip
    auto_out_r_ready <= auto_in_r_ready @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    printf(clock, _T_53, "Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n") @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230336.6]
    stop(clock, _T_53, 1) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230337.6]
    skip
    skip
    printf(clock, _T_74, "Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n") @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230390.6]
    stop(clock, _T_74, 1) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230391.6]
    skip
    skip
    printf(clock, _T_97, "Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n") @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230450.6]
    stop(clock, _T_97, 1) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230451.6]
    skip
    skip
    printf(clock, _T_118, "Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n") @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230498.6]
    stop(clock, _T_118, 1) @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230499.6]

  module Queue_38_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230520.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230521.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230522.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    input io_enq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    input io_enq_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    input io_enq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    output io_deq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    output io_deq_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
    output io_deq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  
    mem ram_id : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
      data-type => UInt<4>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_addr : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
      data-type => UInt<28>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    mem ram_echo_real_last : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
      data-type => UInt<1>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230526.4]
    reg _T_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_1) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230527.4]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230528.4]
    node ptr_match = eq(_T, _T_1) @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230529.4]
    node _T_2 = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230530.4]
    node empty = and(ptr_match, _T_2) @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230531.4]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230532.4]
    node do_enq = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230533.4]
    node do_deq = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230536.4]
    skip
    node _T_7 = add(_T, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230552.6]
    node _T_8 = tail(_T_7, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230553.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_14 = mux(do_enq, _T_8, _T) @[Decoupled.scala 220:17:chipyard.TestHarness.ArianeConfig.fir@230539.4]
    skip
    node _T_10 = add(_T_1, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230558.6]
    node _T_11 = tail(_T_10, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230559.6]
    skip
    node _GEN_15 = mux(do_deq, _T_11, _T_1) @[Decoupled.scala 224:17:chipyard.TestHarness.ArianeConfig.fir@230556.4]
    node _T_12 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230562.4]
    node _GEN_16 = mux(_T_12, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@230563.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230569.4]
    io_deq_valid <= not(empty) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230567.4]
    io_deq_bits_id <= ram_id._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230580.4]
    io_deq_bits_addr <= ram_addr._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230579.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_deq_bits_echo_real_last <= ram_echo_real_last._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230571.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    _T <= mux(reset, UInt<1>("h0"), _GEN_14) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230554.6]
    _T_1 <= mux(reset, UInt<1>("h0"), _GEN_15) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230560.6]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_16) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@230564.6]
    ram_id._T_15.en <= UInt<1>("h1")
    ram_id._T_15.addr <= _T_1
    ram_id._T_15.clk <= clock
    ram_id._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_id._T_5.addr <= _T
    ram_id._T_5.mask <= UInt<1>("h1")
    ram_id._T_5.data <= io_enq_bits_id
    ram_id._T_5.clk <= clock
    ram_addr._T_15.en <= UInt<1>("h1")
    ram_addr._T_15.addr <= _T_1
    ram_addr._T_15.clk <= clock
    ram_addr._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_addr._T_5.addr <= _T
    ram_addr._T_5.mask <= UInt<1>("h1")
    ram_addr._T_5.data <= io_enq_bits_addr
    ram_addr._T_5.clk <= clock
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    ram_echo_real_last._T_15.en <= UInt<1>("h1")
    ram_echo_real_last._T_15.addr <= _T_1
    ram_echo_real_last._T_15.clk <= clock
    ram_echo_real_last._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_echo_real_last._T_5.addr <= _T
    ram_echo_real_last._T_5.mask <= UInt<1>("h1")
    ram_echo_real_last._T_5.data <= io_enq_bits_echo_real_last
    ram_echo_real_last._T_5.clk <= clock

  module Queue_39_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230588.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230589.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230590.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    input io_enq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    input io_enq_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    output io_deq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
    output io_deq_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  
    mem ram_data : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
      data-type => UInt<64>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_strb : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
      data-type => UInt<8>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    skip
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230594.4]
    reg _T_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_1) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230595.4]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230596.4]
    node ptr_match = eq(_T, _T_1) @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230597.4]
    node _T_2 = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230598.4]
    node empty = and(ptr_match, _T_2) @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230599.4]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230600.4]
    node do_enq = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230601.4]
    node do_deq = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230604.4]
    skip
    node _T_7 = add(_T, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230613.6]
    node _T_8 = tail(_T_7, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230614.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_7 = mux(do_enq, _T_8, _T) @[Decoupled.scala 220:17:chipyard.TestHarness.ArianeConfig.fir@230607.4]
    skip
    node _T_10 = add(_T_1, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230619.6]
    node _T_11 = tail(_T_10, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230620.6]
    skip
    node _GEN_8 = mux(do_deq, _T_11, _T_1) @[Decoupled.scala 224:17:chipyard.TestHarness.ArianeConfig.fir@230617.4]
    node _T_12 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230623.4]
    node _GEN_9 = mux(_T_12, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@230624.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230630.4]
    io_deq_valid <= not(empty) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230628.4]
    io_deq_bits_data <= ram_data._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230634.4]
    io_deq_bits_strb <= ram_strb._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230633.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    _T <= mux(reset, UInt<1>("h0"), _GEN_7) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230615.6]
    _T_1 <= mux(reset, UInt<1>("h0"), _GEN_8) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230621.6]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_9) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@230625.6]
    ram_data._T_15.en <= UInt<1>("h1")
    ram_data._T_15.addr <= _T_1
    ram_data._T_15.clk <= clock
    ram_data._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_data._T_5.addr <= _T
    ram_data._T_5.mask <= UInt<1>("h1")
    ram_data._T_5.data <= io_enq_bits_data
    ram_data._T_5.clk <= clock
    ram_strb._T_15.en <= UInt<1>("h1")
    ram_strb._T_15.addr <= _T_1
    ram_strb._T_15.clk <= clock
    ram_strb._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_strb._T_5.addr <= _T
    ram_strb._T_5.mask <= UInt<1>("h1")
    ram_strb._T_5.data <= io_enq_bits_strb
    ram_strb._T_5.clk <= clock
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip

  module Queue_40_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230642.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230643.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230644.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    input io_enq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    input io_enq_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    input io_enq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    output io_deq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    output io_deq_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
    output io_deq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  
    mem ram_id : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
      data-type => UInt<4>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_resp : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
      data-type => UInt<2>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_echo_real_last : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
      data-type => UInt<1>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230648.4]
    reg _T_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_1) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230649.4]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230650.4]
    node ptr_match = eq(_T, _T_1) @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230651.4]
    node _T_2 = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230652.4]
    node empty = and(ptr_match, _T_2) @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230653.4]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230654.4]
    node do_enq = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230655.4]
    node do_deq = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230658.4]
    skip
    node _T_7 = add(_T, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230667.6]
    node _T_8 = tail(_T_7, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230668.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_7 = mux(do_enq, _T_8, _T) @[Decoupled.scala 220:17:chipyard.TestHarness.ArianeConfig.fir@230661.4]
    skip
    node _T_10 = add(_T_1, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230673.6]
    node _T_11 = tail(_T_10, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230674.6]
    skip
    node _GEN_8 = mux(do_deq, _T_11, _T_1) @[Decoupled.scala 224:17:chipyard.TestHarness.ArianeConfig.fir@230671.4]
    node _T_12 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230677.4]
    node _GEN_9 = mux(_T_12, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@230678.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230684.4]
    io_deq_valid <= not(empty) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230682.4]
    io_deq_bits_id <= ram_id._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230688.4]
    io_deq_bits_resp <= ram_resp._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230687.4]
    io_deq_bits_echo_real_last <= ram_echo_real_last._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230686.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    _T <= mux(reset, UInt<1>("h0"), _GEN_7) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230669.6]
    _T_1 <= mux(reset, UInt<1>("h0"), _GEN_8) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230675.6]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_9) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@230679.6]
    ram_id._T_15.en <= UInt<1>("h1")
    ram_id._T_15.addr <= _T_1
    ram_id._T_15.clk <= clock
    ram_id._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_id._T_5.addr <= _T
    ram_id._T_5.mask <= UInt<1>("h1")
    ram_id._T_5.data <= io_enq_bits_id
    ram_id._T_5.clk <= clock
    ram_resp._T_15.en <= UInt<1>("h1")
    ram_resp._T_15.addr <= _T_1
    ram_resp._T_15.clk <= clock
    ram_resp._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_resp._T_5.addr <= _T
    ram_resp._T_5.mask <= UInt<1>("h1")
    ram_resp._T_5.data <= io_enq_bits_resp
    ram_resp._T_5.clk <= clock
    ram_echo_real_last._T_15.en <= UInt<1>("h1")
    ram_echo_real_last._T_15.addr <= _T_1
    ram_echo_real_last._T_15.clk <= clock
    ram_echo_real_last._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_echo_real_last._T_5.addr <= _T
    ram_echo_real_last._T_5.mask <= UInt<1>("h1")
    ram_echo_real_last._T_5.data <= io_enq_bits_echo_real_last
    ram_echo_real_last._T_5.clk <= clock

  module Queue_42_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230764.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230765.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230766.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_enq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_enq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_enq_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_enq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
    output io_deq_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  
    mem ram_id : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
      data-type => UInt<4>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_data : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
      data-type => UInt<64>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_resp : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
      data-type => UInt<2>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_echo_real_last : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
      data-type => UInt<1>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    mem ram_last : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
      data-type => UInt<1>
      depth => 2
      read-latency => 0
      write-latency => 1
      reader => _T_15
      writer => _T_5
      read-under-write => undefined
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230770.4]
    reg _T_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_1) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230771.4]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230772.4]
    node ptr_match = eq(_T, _T_1) @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230773.4]
    node _T_2 = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230774.4]
    node empty = and(ptr_match, _T_2) @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230775.4]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230776.4]
    node do_enq = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230777.4]
    node do_deq = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230780.4]
    skip
    node _T_7 = add(_T, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230791.6]
    node _T_8 = tail(_T_7, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230792.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_9 = mux(do_enq, _T_8, _T) @[Decoupled.scala 220:17:chipyard.TestHarness.ArianeConfig.fir@230783.4]
    skip
    node _T_10 = add(_T_1, UInt<1>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230797.6]
    node _T_11 = tail(_T_10, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230798.6]
    skip
    node _GEN_10 = mux(do_deq, _T_11, _T_1) @[Decoupled.scala 224:17:chipyard.TestHarness.ArianeConfig.fir@230795.4]
    node _T_12 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230801.4]
    node _GEN_11 = mux(_T_12, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@230802.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230808.4]
    io_deq_valid <= not(empty) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230806.4]
    io_deq_bits_id <= ram_id._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230814.4]
    io_deq_bits_data <= ram_data._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230813.4]
    io_deq_bits_resp <= ram_resp._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230812.4]
    io_deq_bits_echo_real_last <= ram_echo_real_last._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230811.4]
    io_deq_bits_last <= ram_last._T_15.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230810.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    _T <= mux(reset, UInt<1>("h0"), _GEN_9) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230793.6]
    _T_1 <= mux(reset, UInt<1>("h0"), _GEN_10) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@230799.6]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_11) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@230803.6]
    ram_id._T_15.en <= UInt<1>("h1")
    ram_id._T_15.addr <= _T_1
    ram_id._T_15.clk <= clock
    ram_id._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_id._T_5.addr <= _T
    ram_id._T_5.mask <= UInt<1>("h1")
    ram_id._T_5.data <= io_enq_bits_id
    ram_id._T_5.clk <= clock
    ram_data._T_15.en <= UInt<1>("h1")
    ram_data._T_15.addr <= _T_1
    ram_data._T_15.clk <= clock
    ram_data._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_data._T_5.addr <= _T
    ram_data._T_5.mask <= UInt<1>("h1")
    ram_data._T_5.data <= io_enq_bits_data
    ram_data._T_5.clk <= clock
    ram_resp._T_15.en <= UInt<1>("h1")
    ram_resp._T_15.addr <= _T_1
    ram_resp._T_15.clk <= clock
    ram_resp._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_resp._T_5.addr <= _T
    ram_resp._T_5.mask <= UInt<1>("h1")
    ram_resp._T_5.data <= io_enq_bits_resp
    ram_resp._T_5.clk <= clock
    ram_echo_real_last._T_15.en <= UInt<1>("h1")
    ram_echo_real_last._T_15.addr <= _T_1
    ram_echo_real_last._T_15.clk <= clock
    ram_echo_real_last._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_echo_real_last._T_5.addr <= _T
    ram_echo_real_last._T_5.mask <= UInt<1>("h1")
    ram_echo_real_last._T_5.data <= io_enq_bits_echo_real_last
    ram_echo_real_last._T_5.clk <= clock
    ram_last._T_15.en <= UInt<1>("h1")
    ram_last._T_15.addr <= _T_1
    ram_last._T_15.clk <= clock
    ram_last._T_5.en <= and(io_enq_ready, io_enq_valid)
    ram_last._T_5.addr <= _T
    ram_last._T_5.mask <= UInt<1>("h1")
    ram_last._T_5.data <= UInt<1>("h1")
    ram_last._T_5.clk <= clock

  module AXI4Buffer_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230822.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230823.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230824.4]
    output auto_in_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_aw_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_b_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_ar_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_in_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_in_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_aw_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_b_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_ar_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    output auto_out_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
    input auto_out_r_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  
    inst Queue of Queue_38_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
    inst Queue_1 of Queue_39_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
    inst Queue_2 of Queue_40_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
    inst Queue_3 of Queue_38_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
    inst Queue_4 of Queue_42_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_in_aw_ready <= Queue.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_w_ready <= Queue_1.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_b_valid <= Queue_2.io_deq_valid @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_b_bits_id <= Queue_2.io_deq_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_b_bits_resp <= Queue_2.io_deq_bits_resp @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_b_bits_echo_real_last <= Queue_2.io_deq_bits_echo_real_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_ar_ready <= Queue_3.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_valid <= Queue_4.io_deq_valid @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_bits_id <= Queue_4.io_deq_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_bits_data <= Queue_4.io_deq_bits_data @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_bits_resp <= Queue_4.io_deq_bits_resp @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_bits_echo_real_last <= Queue_4.io_deq_bits_echo_real_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_in_r_bits_last <= Queue_4.io_deq_bits_last @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
    auto_out_aw_valid <= Queue.io_deq_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_aw_bits_id <= Queue.io_deq_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_aw_bits_addr <= Queue.io_deq_bits_addr @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_out_aw_bits_echo_real_last <= Queue.io_deq_bits_echo_real_last @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_w_valid <= Queue_1.io_deq_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_w_bits_data <= Queue_1.io_deq_bits_data @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_w_bits_strb <= Queue_1.io_deq_bits_strb @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    skip
    auto_out_b_ready <= Queue_2.io_enq_ready @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_ar_valid <= Queue_3.io_deq_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_ar_bits_id <= Queue_3.io_deq_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_ar_bits_addr <= Queue_3.io_deq_bits_addr @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_out_ar_bits_echo_real_last <= Queue_3.io_deq_bits_echo_real_last @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    auto_out_r_ready <= Queue_4.io_enq_ready @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
    Queue.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@230837.4]
    Queue.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@230838.4]
    Queue.io_enq_valid <= auto_in_aw_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230839.4]
    Queue.io_enq_bits_id <= auto_in_aw_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230849.4]
    Queue.io_enq_bits_addr <= auto_in_aw_bits_addr @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230848.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    Queue.io_enq_bits_echo_real_last <= auto_in_aw_bits_echo_real_last @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230840.4]
    Queue.io_deq_ready <= auto_out_aw_ready @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230863.4]
    Queue_1.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@230866.4]
    Queue_1.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@230867.4]
    Queue_1.io_enq_valid <= auto_in_w_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230868.4]
    Queue_1.io_enq_bits_data <= auto_in_w_bits_data @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230871.4]
    Queue_1.io_enq_bits_strb <= auto_in_w_bits_strb @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230870.4]
    skip
    Queue_1.io_deq_ready <= auto_out_w_ready @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230878.4]
    Queue_2.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@230881.4]
    Queue_2.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@230882.4]
    Queue_2.io_enq_valid <= auto_out_b_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230883.4]
    Queue_2.io_enq_bits_id <= auto_out_b_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230886.4]
    Queue_2.io_enq_bits_resp <= auto_out_b_bits_resp @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230885.4]
    Queue_2.io_enq_bits_echo_real_last <= auto_out_b_bits_echo_real_last @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230884.4]
    Queue_2.io_deq_ready <= auto_in_b_ready @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230893.4]
    Queue_3.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@230896.4]
    Queue_3.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@230897.4]
    Queue_3.io_enq_valid <= auto_in_ar_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230898.4]
    Queue_3.io_enq_bits_id <= auto_in_ar_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230908.4]
    Queue_3.io_enq_bits_addr <= auto_in_ar_bits_addr @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230907.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    Queue_3.io_enq_bits_echo_real_last <= auto_in_ar_bits_echo_real_last @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230899.4]
    Queue_3.io_deq_ready <= auto_out_ar_ready @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230922.4]
    Queue_4.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@230925.4]
    Queue_4.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@230926.4]
    Queue_4.io_enq_valid <= auto_out_r_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230927.4]
    Queue_4.io_enq_bits_id <= auto_out_r_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230932.4]
    Queue_4.io_enq_bits_data <= auto_out_r_bits_data @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230931.4]
    Queue_4.io_enq_bits_resp <= auto_out_r_bits_resp @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230930.4]
    Queue_4.io_enq_bits_echo_real_last <= auto_out_r_bits_echo_real_last @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230929.4]
    skip
    Queue_4.io_deq_ready <= auto_in_r_ready @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230941.4]

  module Queue_43_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@230944.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@230945.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230946.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_enq_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
    output io_deq_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  
    mem ram_id : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
      data-type => UInt<4>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_addr : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
      data-type => UInt<28>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_len : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
      data-type => UInt<8>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_size : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
      data-type => UInt<3>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    mem ram_burst : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
      data-type => UInt<2>
      depth => 1
      read-latency => 0
      write-latency => 1
      reader => _T_7
      writer => _T_3
      read-under-write => undefined
    skip
    skip
    skip
    skip
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230950.4]
    skip
    node empty = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230952.4]
    skip
    skip
    node _T_1 = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230955.4]
    node _T_2 = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230958.4]
    node _GEN_15 = mux(io_deq_ready, UInt<1>("h0"), _T_1) @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@231007.6]
    node do_enq = mux(empty, _GEN_15, _T_1) @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node do_deq = mux(empty, UInt<1>("h0"), _T_2) @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
    skip
    node _T_4 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230975.4]
    node _GEN_13 = mux(_T_4, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@230976.4]
    node _T_5 = not(empty) @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@230979.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(maybe_full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230982.4]
    io_deq_valid <= or(io_enq_valid, _T_5) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230980.4 Decoupled.scala 236:40:chipyard.TestHarness.ArianeConfig.fir@230994.6]
    io_deq_bits_id <= mux(empty, io_enq_bits_id, ram_id._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230992.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231005.6]
    io_deq_bits_addr <= mux(empty, io_enq_bits_addr, ram_addr._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230991.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231004.6]
    io_deq_bits_len <= mux(empty, io_enq_bits_len, ram_len._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230990.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231003.6]
    io_deq_bits_size <= mux(empty, io_enq_bits_size, ram_size._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230989.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231002.6]
    io_deq_bits_burst <= mux(empty, io_enq_bits_burst, ram_burst._T_7.data) @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230988.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231001.6]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_13) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@230977.6]
    ram_id._T_7.en <= UInt<1>("h1")
    ram_id._T_7.addr <= UInt<1>("h0")
    ram_id._T_7.clk <= clock
    ram_id._T_3.en <= mux(empty, _GEN_15, _T_1)
    ram_id._T_3.addr <= UInt<1>("h0")
    ram_id._T_3.mask <= UInt<1>("h1")
    ram_id._T_3.data <= io_enq_bits_id
    ram_id._T_3.clk <= clock
    ram_addr._T_7.en <= UInt<1>("h1")
    ram_addr._T_7.addr <= UInt<1>("h0")
    ram_addr._T_7.clk <= clock
    ram_addr._T_3.en <= mux(empty, _GEN_15, _T_1)
    ram_addr._T_3.addr <= UInt<1>("h0")
    ram_addr._T_3.mask <= UInt<1>("h1")
    ram_addr._T_3.data <= io_enq_bits_addr
    ram_addr._T_3.clk <= clock
    ram_len._T_7.en <= UInt<1>("h1")
    ram_len._T_7.addr <= UInt<1>("h0")
    ram_len._T_7.clk <= clock
    ram_len._T_3.en <= mux(empty, _GEN_15, _T_1)
    ram_len._T_3.addr <= UInt<1>("h0")
    ram_len._T_3.mask <= UInt<1>("h1")
    ram_len._T_3.data <= io_enq_bits_len
    ram_len._T_3.clk <= clock
    ram_size._T_7.en <= UInt<1>("h1")
    ram_size._T_7.addr <= UInt<1>("h0")
    ram_size._T_7.clk <= clock
    ram_size._T_3.en <= mux(empty, _GEN_15, _T_1)
    ram_size._T_3.addr <= UInt<1>("h0")
    ram_size._T_3.mask <= UInt<1>("h1")
    ram_size._T_3.data <= io_enq_bits_size
    ram_size._T_3.clk <= clock
    ram_burst._T_7.en <= UInt<1>("h1")
    ram_burst._T_7.addr <= UInt<1>("h0")
    ram_burst._T_7.clk <= clock
    ram_burst._T_3.en <= mux(empty, _GEN_15, _T_1)
    ram_burst._T_3.addr <= UInt<1>("h0")
    ram_burst._T_3.mask <= UInt<1>("h1")
    ram_burst._T_3.data <= io_enq_bits_burst
    ram_burst._T_3.clk <= clock
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip

  module AXI4Fragmenter_1_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@231148.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@231149.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231150.4]
    output auto_in_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_in_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_in_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_aw_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_b_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_ar_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    output auto_out_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_bits_echo_real_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
    input auto_out_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  
    inst Queue of Queue_43_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
    inst Queue_1 of Queue_43_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
    inst Queue_2 of Queue_13_inTestHarness @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
    reg _T_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_4) @[Fragmenter.scala 61:29:chipyard.TestHarness.ArianeConfig.fir@231190.4]
    reg _T_5 : UInt<28>, clock with :
      reset => (UInt<1>("h0"), _T_5) @[Fragmenter.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@231191.4]
    reg _T_6 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_6) @[Fragmenter.scala 63:25:chipyard.TestHarness.ArianeConfig.fir@231192.4]
    node _T_2_bits_len = Queue.io_deq_bits_len @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231183.4]
    node _T_7 = mux(_T_4, _T_6, _T_2_bits_len) @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231193.4]
    node _T_2_bits_addr = Queue.io_deq_bits_addr @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231184.4]
    node _T_8 = mux(_T_4, _T_5, _T_2_bits_addr) @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231194.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_2_bits_burst = Queue.io_deq_bits_burst @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231181.4]
    node _T_50 = eq(_T_2_bits_burst, UInt<2>("h0")) @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231236.4]
    node _T_2_bits_size = Queue.io_deq_bits_size @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231182.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_59 = dshlw(UInt<16>("h1"), _T_2_bits_size) @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231245.4]
    node _GEN_48 = pad(_T_59, 28) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231246.4]
    node _T_60 = add(_T_8, _GEN_48) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231246.4]
    node _T_61 = tail(_T_60, 1) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231247.4]
    node _T_62 = cat(_T_2_bits_len, UInt<8>("hff")) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231248.4]
    node _GEN_49 = pad(_T_62, 23) @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
    node _T_63 = dshlw(_GEN_49, _T_2_bits_size) @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
    node _T_64 = shr(_T_63, 8) @[Bundles.scala 30:30:chipyard.TestHarness.ArianeConfig.fir@231250.4]
    node _T_66 = eq(_T_2_bits_burst, UInt<2>("h2")) @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231254.4]
    node _GEN_50 = pad(_T_64, 28) @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
    node _T_67 = and(_T_61, _GEN_50) @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
    node _T_68 = not(_T_2_bits_addr) @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231257.6]
    skip
    node _T_69 = or(_T_68, _GEN_50) @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231258.6]
    node _T_70 = not(_T_69) @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231259.6]
    node _T_71 = or(_T_67, _T_70) @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231260.6]
    node _GEN_0 = mux(_T_66, _T_71, _T_61) @[Fragmenter.scala 104:59:chipyard.TestHarness.ArianeConfig.fir@231255.4]
    skip
    node _GEN_1 = mux(_T_50, _T_2_bits_addr, _GEN_0) @[Fragmenter.scala 107:60:chipyard.TestHarness.ArianeConfig.fir@231264.4]
    node _T_73 = eq(UInt<8>("h0"), _T_7) @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231267.4]
    skip
    skip
    skip
    node _T_75 = not(_T_8) @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231281.4]
    skip
    node _T_77 = dshlw(UInt<10>("h7"), _T_2_bits_size) @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231283.4]
    node _T_78 = bits(_T_77, 2, 0) @[package.scala 189:82:chipyard.TestHarness.ArianeConfig.fir@231284.4]
    node _T_79 = not(_T_78) @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231285.4]
    node _GEN_52 = pad(_T_79, 28) @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
    node _T_80 = or(_T_75, _GEN_52) @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
    skip
    node _T_2_valid = Queue.io_deq_valid @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231186.4]
    skip
    node _T_82 = and(auto_out_ar_ready, _T_2_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231289.4]
    node _T_83 = not(_T_73) @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231291.6]
    node _GEN_53 = pad(_T_7, 9) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231294.6]
    node _T_84 = sub(_GEN_53, UInt<9>("h1")) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231294.6]
    node _T_85 = tail(_T_84, 1) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231295.6]
    node _GEN_2 = mux(_T_82, _T_83, _T_4) @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231290.4]
    skip
    skip
    node _GEN_4 = mux(_T_82, _T_85, pad(_T_6, 9)) @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231290.4]
    reg _T_88 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_88) @[Fragmenter.scala 61:29:chipyard.TestHarness.ArianeConfig.fir@231326.4]
    reg _T_89 : UInt<28>, clock with :
      reset => (UInt<1>("h0"), _T_89) @[Fragmenter.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@231327.4]
    reg _T_90 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), _T_90) @[Fragmenter.scala 63:25:chipyard.TestHarness.ArianeConfig.fir@231328.4]
    node _T_86_bits_len = Queue_1.io_deq_bits_len @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231319.4]
    node _T_91 = mux(_T_88, _T_90, _T_86_bits_len) @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231329.4]
    node _T_86_bits_addr = Queue_1.io_deq_bits_addr @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231320.4]
    node _T_92 = mux(_T_88, _T_89, _T_86_bits_addr) @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231330.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_86_bits_burst = Queue_1.io_deq_bits_burst @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231317.4]
    node _T_134 = eq(_T_86_bits_burst, UInt<2>("h0")) @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231372.4]
    node _T_86_bits_size = Queue_1.io_deq_bits_size @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231318.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_143 = dshlw(UInt<16>("h1"), _T_86_bits_size) @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231381.4]
    node _GEN_58 = pad(_T_143, 28) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231382.4]
    node _T_144 = add(_T_92, _GEN_58) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231382.4]
    node _T_145 = tail(_T_144, 1) @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231383.4]
    node _T_146 = cat(_T_86_bits_len, UInt<8>("hff")) @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231384.4]
    node _GEN_59 = pad(_T_146, 23) @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
    node _T_147 = dshlw(_GEN_59, _T_86_bits_size) @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
    node _T_148 = shr(_T_147, 8) @[Bundles.scala 30:30:chipyard.TestHarness.ArianeConfig.fir@231386.4]
    node _T_150 = eq(_T_86_bits_burst, UInt<2>("h2")) @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231390.4]
    node _GEN_60 = pad(_T_148, 28) @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
    node _T_151 = and(_T_145, _GEN_60) @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
    node _T_152 = not(_T_86_bits_addr) @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231393.6]
    skip
    node _T_153 = or(_T_152, _GEN_60) @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231394.6]
    node _T_154 = not(_T_153) @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231395.6]
    node _T_155 = or(_T_151, _T_154) @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231396.6]
    node _GEN_5 = mux(_T_150, _T_155, _T_145) @[Fragmenter.scala 104:59:chipyard.TestHarness.ArianeConfig.fir@231391.4]
    skip
    node _GEN_6 = mux(_T_134, _T_86_bits_addr, _GEN_5) @[Fragmenter.scala 107:60:chipyard.TestHarness.ArianeConfig.fir@231400.4]
    node _T_157 = eq(UInt<8>("h0"), _T_91) @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231403.4]
    skip
    reg _T_182 : UInt<9>, clock with :
      reset => (UInt<1>("h0"), _T_182) @[Fragmenter.scala 165:30:chipyard.TestHarness.ArianeConfig.fir@231494.4]
    node _T_183 = eq(_T_182, UInt<9>("h0")) @[Fragmenter.scala 166:30:chipyard.TestHarness.ArianeConfig.fir@231495.4]
    skip
    reg _T_171 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T_171) @[Fragmenter.scala 151:35:chipyard.TestHarness.ArianeConfig.fir@231461.4]
    node _T_178 = or(_T_183, _T_171) @[Fragmenter.scala 159:52:chipyard.TestHarness.ArianeConfig.fir@231477.4]
    node _T_179 = and(auto_out_aw_ready, _T_178) @[Fragmenter.scala 159:35:chipyard.TestHarness.ArianeConfig.fir@231478.4]
    skip
    skip
    node _T_159 = not(_T_92) @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231417.4]
    skip
    node _T_161 = dshlw(UInt<10>("h7"), _T_86_bits_size) @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231419.4]
    node _T_162 = bits(_T_161, 2, 0) @[package.scala 189:82:chipyard.TestHarness.ArianeConfig.fir@231420.4]
    node _T_163 = not(_T_162) @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231421.4]
    node _GEN_62 = pad(_T_163, 28) @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
    node _T_164 = or(_T_159, _GEN_62) @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
    skip
    node _T_86_valid = Queue_1.io_deq_valid @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231322.4]
    skip
    node _T_166 = and(_T_179, _T_86_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231425.4]
    node _T_167 = not(_T_157) @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231427.6]
    node _GEN_63 = pad(_T_91, 9) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231430.6]
    node _T_168 = sub(_GEN_63, UInt<9>("h1")) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231430.6]
    node _T_169 = tail(_T_168, 1) @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231431.6]
    node _GEN_7 = mux(_T_166, _T_167, _T_88) @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231426.4]
    skip
    skip
    node _GEN_9 = mux(_T_166, _T_169, pad(_T_90, 9)) @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231426.4]
    node _T_180 = not(_T_171) @[Fragmenter.scala 160:38:chipyard.TestHarness.ArianeConfig.fir@231480.4]
    node _T_181 = and(_T_86_valid, _T_180) @[Fragmenter.scala 160:35:chipyard.TestHarness.ArianeConfig.fir@231481.4]
    skip
    node _T_174 = and(_T_181, _T_183) @[Fragmenter.scala 154:26:chipyard.TestHarness.ArianeConfig.fir@231466.4]
    node _GEN_10 = or(_T_174, _T_171) @[Fragmenter.scala 154:43:chipyard.TestHarness.ArianeConfig.fir@231467.4]
    skip
    node _T_177 = and(_T_86_valid, _T_178) @[Fragmenter.scala 158:35:chipyard.TestHarness.ArianeConfig.fir@231475.4]
    skip
    node _T_175 = and(auto_out_aw_ready, _T_177) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231470.4]
    node _GEN_11 = mux(_T_175, UInt<1>("h0"), _GEN_10) @[Fragmenter.scala 155:28:chipyard.TestHarness.ArianeConfig.fir@231471.4]
    node _T_184 = mux(_T_181, UInt<9>("h1"), UInt<9>("h0")) @[Fragmenter.scala 167:35:chipyard.TestHarness.ArianeConfig.fir@231496.4]
    node _T_185 = mux(_T_183, _T_184, _T_182) @[Fragmenter.scala 167:23:chipyard.TestHarness.ArianeConfig.fir@231497.4]
    node _T_186 = eq(_T_185, UInt<9>("h1")) @[Fragmenter.scala 168:27:chipyard.TestHarness.ArianeConfig.fir@231498.4]
    skip
    node _T_170_valid = Queue_2.io_deq_valid @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231446.4]
    node _T_197 = not(_T_183) @[Fragmenter.scala 174:37:chipyard.TestHarness.ArianeConfig.fir@231515.4]
    node _T_198 = or(_T_197, _T_181) @[Fragmenter.scala 174:51:chipyard.TestHarness.ArianeConfig.fir@231516.4]
    node _T_199 = and(_T_170_valid, _T_198) @[Fragmenter.scala 174:33:chipyard.TestHarness.ArianeConfig.fir@231517.4]
    skip
    node _T_187 = and(auto_out_w_ready, _T_199) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231499.4]
    node _GEN_64 = pad(_T_187, 9) @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231500.4]
    node _T_188 = sub(_T_185, _GEN_64) @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231500.4]
    node _T_189 = tail(_T_188, 1) @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231501.4]
    skip
    node _T_191 = not(_T_187) @[Fragmenter.scala 170:15:chipyard.TestHarness.ArianeConfig.fir@231504.4]
    node _T_192 = neq(_T_185, UInt<9>("h0")) @[Fragmenter.scala 170:39:chipyard.TestHarness.ArianeConfig.fir@231505.4]
    node _T_193 = or(_T_191, _T_192) @[Fragmenter.scala 170:29:chipyard.TestHarness.ArianeConfig.fir@231506.4]
    skip
    node _T_195 = or(_T_193, reset) @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231508.4]
    node _T_196 = not(_T_195) @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231509.4]
    skip
    skip
    skip
    node _T_203 = not(_T_199) @[Fragmenter.scala 179:15:chipyard.TestHarness.ArianeConfig.fir@231527.4]
    node _T_170_bits_last = Queue_2.io_deq_bits_last @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231443.4]
    node _T_204 = not(_T_170_bits_last) @[Fragmenter.scala 179:31:chipyard.TestHarness.ArianeConfig.fir@231528.4]
    node _T_205 = or(_T_203, _T_204) @[Fragmenter.scala 179:28:chipyard.TestHarness.ArianeConfig.fir@231529.4]
    node _T_206 = or(_T_205, _T_186) @[Fragmenter.scala 179:47:chipyard.TestHarness.ArianeConfig.fir@231530.4]
    skip
    node _T_208 = or(_T_206, reset) @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231532.4]
    node _T_209 = not(_T_208) @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231533.4]
    skip
    skip
    skip
    skip
    skip
    skip
    node _T_212 = not(auto_out_b_bits_echo_real_last) @[Fragmenter.scala 190:36:chipyard.TestHarness.ArianeConfig.fir@231552.4]
    skip
    node _T_213 = or(auto_in_b_ready, _T_212) @[Fragmenter.scala 190:33:chipyard.TestHarness.ArianeConfig.fir@231553.4]
    reg _T_215_0 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_0) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_1) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_2 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_2) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_3 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_3) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_4 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_4) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_5 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_5) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_6 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_6) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_7 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_7) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_8 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_8) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_9 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_9) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_10 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_10) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_11 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_11) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_12 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_12) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_13 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_13) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_14 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_14) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    reg _T_215_15 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), _T_215_15) @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
    skip
    skip
    node _GEN_13 = mux(eq(UInt<4>("h1"), auto_out_b_bits_id), _T_215_1, _T_215_0) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_14 = mux(eq(UInt<4>("h2"), auto_out_b_bits_id), _T_215_2, _GEN_13) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_15 = mux(eq(UInt<4>("h3"), auto_out_b_bits_id), _T_215_3, _GEN_14) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_16 = mux(eq(UInt<4>("h4"), auto_out_b_bits_id), _T_215_4, _GEN_15) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_17 = mux(eq(UInt<4>("h5"), auto_out_b_bits_id), _T_215_5, _GEN_16) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_18 = mux(eq(UInt<4>("h6"), auto_out_b_bits_id), _T_215_6, _GEN_17) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_19 = mux(eq(UInt<4>("h7"), auto_out_b_bits_id), _T_215_7, _GEN_18) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_20 = mux(eq(UInt<4>("h8"), auto_out_b_bits_id), _T_215_8, _GEN_19) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_21 = mux(eq(UInt<4>("h9"), auto_out_b_bits_id), _T_215_9, _GEN_20) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_22 = mux(eq(UInt<4>("ha"), auto_out_b_bits_id), _T_215_10, _GEN_21) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_23 = mux(eq(UInt<4>("hb"), auto_out_b_bits_id), _T_215_11, _GEN_22) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_24 = mux(eq(UInt<4>("hc"), auto_out_b_bits_id), _T_215_12, _GEN_23) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_25 = mux(eq(UInt<4>("hd"), auto_out_b_bits_id), _T_215_13, _GEN_24) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_26 = mux(eq(UInt<4>("he"), auto_out_b_bits_id), _T_215_14, _GEN_25) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    node _GEN_27 = mux(eq(UInt<4>("hf"), auto_out_b_bits_id), _T_215_15, _GEN_26) @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
    skip
    skip
    skip
    skip
    node _T_218 = dshlw(UInt<16>("h1"), auto_out_b_bits_id) @[OneHot.scala 65:12:chipyard.TestHarness.ArianeConfig.fir@231577.4]
    skip
    node _T_220 = bits(_T_218, 0, 0) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231579.4]
    node _T_221 = bits(_T_218, 1, 1) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231580.4]
    node _T_222 = bits(_T_218, 2, 2) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231581.4]
    node _T_223 = bits(_T_218, 3, 3) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231582.4]
    node _T_224 = bits(_T_218, 4, 4) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231583.4]
    node _T_225 = bits(_T_218, 5, 5) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231584.4]
    node _T_226 = bits(_T_218, 6, 6) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231585.4]
    node _T_227 = bits(_T_218, 7, 7) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231586.4]
    node _T_228 = bits(_T_218, 8, 8) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231587.4]
    node _T_229 = bits(_T_218, 9, 9) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231588.4]
    node _T_230 = bits(_T_218, 10, 10) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231589.4]
    node _T_231 = bits(_T_218, 11, 11) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231590.4]
    node _T_232 = bits(_T_218, 12, 12) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231591.4]
    node _T_233 = bits(_T_218, 13, 13) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231592.4]
    node _T_234 = bits(_T_218, 14, 14) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231593.4]
    node _T_235 = bits(_T_218, 15, 15) @[Fragmenter.scala 195:63:chipyard.TestHarness.ArianeConfig.fir@231594.4]
    skip
    node _T_236 = and(_T_213, auto_out_b_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231595.4]
    node _T_237 = and(_T_220, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231596.4]
    node _T_238 = or(_T_215_0, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231598.6]
    node _T_239 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_238) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231599.6]
    node _GEN_28 = mux(_T_237, _T_239, _T_215_0) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231597.4]
    skip
    node _T_241 = and(_T_221, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231603.4]
    node _T_242 = or(_T_215_1, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231605.6]
    node _T_243 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_242) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231606.6]
    node _GEN_29 = mux(_T_241, _T_243, _T_215_1) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231604.4]
    skip
    node _T_245 = and(_T_222, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231610.4]
    node _T_246 = or(_T_215_2, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231612.6]
    node _T_247 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_246) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231613.6]
    node _GEN_30 = mux(_T_245, _T_247, _T_215_2) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231611.4]
    skip
    node _T_249 = and(_T_223, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231617.4]
    node _T_250 = or(_T_215_3, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231619.6]
    node _T_251 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_250) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231620.6]
    node _GEN_31 = mux(_T_249, _T_251, _T_215_3) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231618.4]
    skip
    node _T_253 = and(_T_224, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231624.4]
    node _T_254 = or(_T_215_4, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231626.6]
    node _T_255 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_254) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231627.6]
    node _GEN_32 = mux(_T_253, _T_255, _T_215_4) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231625.4]
    skip
    node _T_257 = and(_T_225, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231631.4]
    node _T_258 = or(_T_215_5, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231633.6]
    node _T_259 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_258) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231634.6]
    node _GEN_33 = mux(_T_257, _T_259, _T_215_5) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231632.4]
    skip
    node _T_261 = and(_T_226, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231638.4]
    node _T_262 = or(_T_215_6, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231640.6]
    node _T_263 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_262) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231641.6]
    node _GEN_34 = mux(_T_261, _T_263, _T_215_6) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231639.4]
    skip
    node _T_265 = and(_T_227, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231645.4]
    node _T_266 = or(_T_215_7, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231647.6]
    node _T_267 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_266) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231648.6]
    node _GEN_35 = mux(_T_265, _T_267, _T_215_7) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231646.4]
    skip
    node _T_269 = and(_T_228, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231652.4]
    node _T_270 = or(_T_215_8, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231654.6]
    node _T_271 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_270) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231655.6]
    node _GEN_36 = mux(_T_269, _T_271, _T_215_8) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231653.4]
    skip
    node _T_273 = and(_T_229, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231659.4]
    node _T_274 = or(_T_215_9, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231661.6]
    node _T_275 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_274) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231662.6]
    node _GEN_37 = mux(_T_273, _T_275, _T_215_9) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231660.4]
    skip
    node _T_277 = and(_T_230, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231666.4]
    node _T_278 = or(_T_215_10, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231668.6]
    node _T_279 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_278) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231669.6]
    node _GEN_38 = mux(_T_277, _T_279, _T_215_10) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231667.4]
    skip
    node _T_281 = and(_T_231, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231673.4]
    node _T_282 = or(_T_215_11, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231675.6]
    node _T_283 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_282) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231676.6]
    node _GEN_39 = mux(_T_281, _T_283, _T_215_11) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231674.4]
    skip
    node _T_285 = and(_T_232, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231680.4]
    node _T_286 = or(_T_215_12, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231682.6]
    node _T_287 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_286) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231683.6]
    node _GEN_40 = mux(_T_285, _T_287, _T_215_12) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231681.4]
    skip
    node _T_289 = and(_T_233, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231687.4]
    node _T_290 = or(_T_215_13, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231689.6]
    node _T_291 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_290) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231690.6]
    node _GEN_41 = mux(_T_289, _T_291, _T_215_13) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231688.4]
    skip
    node _T_293 = and(_T_234, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231694.4]
    node _T_294 = or(_T_215_14, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231696.6]
    node _T_295 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_294) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231697.6]
    node _GEN_42 = mux(_T_293, _T_295, _T_215_14) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231695.4]
    skip
    node _T_297 = and(_T_235, _T_236) @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231701.4]
    node _T_298 = or(_T_215_15, auto_out_b_bits_resp) @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231703.6]
    node _T_299 = mux(auto_out_b_bits_echo_real_last, UInt<2>("h0"), _T_298) @[Fragmenter.scala 196:48:chipyard.TestHarness.ArianeConfig.fir@231704.6]
    node _GEN_43 = mux(_T_297, _T_299, _T_215_15) @[Fragmenter.scala 196:36:chipyard.TestHarness.ArianeConfig.fir@231702.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_in_aw_ready <= Queue_1.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_w_ready <= Queue_2.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_b_valid <= and(auto_out_b_valid, auto_out_b_bits_echo_real_last) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_b_bits_id <= auto_out_b_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_b_bits_resp <= or(auto_out_b_bits_resp, _GEN_27) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_ar_ready <= Queue.io_enq_ready @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_r_valid <= auto_out_r_valid @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_r_bits_id <= auto_out_r_bits_id @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_r_bits_data <= auto_out_r_bits_data @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_r_bits_resp <= auto_out_r_bits_resp @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_in_r_bits_last <= and(auto_out_r_bits_last, auto_out_r_bits_echo_real_last) @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
    auto_out_aw_valid <= and(_T_86_valid, _T_178) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_aw_bits_id <= Queue_1.io_deq_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_aw_bits_addr <= not(_T_164) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_out_aw_bits_echo_real_last <= eq(UInt<8>("h0"), _T_91) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_w_valid <= and(_T_170_valid, _T_198) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_w_bits_data <= Queue_2.io_deq_bits_data @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_w_bits_strb <= Queue_2.io_deq_bits_strb @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    skip
    auto_out_b_ready <= or(auto_in_b_ready, _T_212) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_ar_valid <= Queue.io_deq_valid @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_ar_bits_id <= Queue.io_deq_bits_id @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_ar_bits_addr <= not(_T_80) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    auto_out_ar_bits_echo_real_last <= eq(UInt<8>("h0"), _T_7) @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    auto_out_r_ready <= auto_in_r_ready @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
    Queue.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231163.4]
    Queue.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231164.4]
    Queue.io_enq_valid <= auto_in_ar_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231165.4]
    Queue.io_enq_bits_id <= auto_in_ar_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231174.4]
    Queue.io_enq_bits_addr <= auto_in_ar_bits_addr @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231173.4]
    Queue.io_enq_bits_len <= auto_in_ar_bits_len @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231172.4]
    Queue.io_enq_bits_size <= auto_in_ar_bits_size @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231171.4]
    Queue.io_enq_bits_burst <= auto_in_ar_bits_burst @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231170.4]
    skip
    skip
    skip
    skip
    Queue.io_deq_ready <= and(auto_out_ar_ready, _T_73) @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231187.4]
    _T_4 <= mux(reset, UInt<1>("h0"), _GEN_2) @[Fragmenter.scala 126:16:chipyard.TestHarness.ArianeConfig.fir@231292.6]
    _T_5 <= mux(_T_82, _GEN_1, _T_5) @[Fragmenter.scala 127:18:chipyard.TestHarness.ArianeConfig.fir@231293.6]
    _T_6 <= bits(_GEN_4, 7, 0) @[Fragmenter.scala 128:18:chipyard.TestHarness.ArianeConfig.fir@231296.6]
    Queue_1.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231299.4]
    Queue_1.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231300.4]
    Queue_1.io_enq_valid <= auto_in_aw_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231301.4]
    Queue_1.io_enq_bits_id <= auto_in_aw_bits_id @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231310.4]
    Queue_1.io_enq_bits_addr <= auto_in_aw_bits_addr @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231309.4]
    Queue_1.io_enq_bits_len <= auto_in_aw_bits_len @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231308.4]
    Queue_1.io_enq_bits_size <= auto_in_aw_bits_size @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231307.4]
    Queue_1.io_enq_bits_burst <= auto_in_aw_bits_burst @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231306.4]
    skip
    skip
    skip
    skip
    Queue_1.io_deq_ready <= and(_T_179, _T_157) @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231323.4]
    _T_88 <= mux(reset, UInt<1>("h0"), _GEN_7) @[Fragmenter.scala 126:16:chipyard.TestHarness.ArianeConfig.fir@231428.6]
    _T_89 <= mux(_T_166, _GEN_6, _T_89) @[Fragmenter.scala 127:18:chipyard.TestHarness.ArianeConfig.fir@231429.6]
    _T_90 <= bits(_GEN_9, 7, 0) @[Fragmenter.scala 128:18:chipyard.TestHarness.ArianeConfig.fir@231432.6]
    Queue_2.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231435.4]
    Queue_2.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231436.4]
    Queue_2.io_enq_valid <= auto_in_w_valid @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231437.4]
    Queue_2.io_enq_bits_data <= auto_in_w_bits_data @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231440.4]
    Queue_2.io_enq_bits_strb <= auto_in_w_bits_strb @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231439.4]
    Queue_2.io_enq_bits_last <= auto_in_w_bits_last @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231438.4]
    Queue_2.io_deq_ready <= and(auto_out_w_ready, _T_198) @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231447.4]
    _T_171 <= mux(reset, UInt<1>("h0"), _GEN_11) @[Fragmenter.scala 154:60:chipyard.TestHarness.ArianeConfig.fir@231468.6 Fragmenter.scala 155:45:chipyard.TestHarness.ArianeConfig.fir@231472.6]
    _T_182 <= mux(reset, UInt<9>("h0"), _T_189) @[Fragmenter.scala 169:17:chipyard.TestHarness.ArianeConfig.fir@231502.4]
    _T_215_0 <= mux(reset, UInt<2>("h0"), _GEN_28) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231600.6]
    _T_215_1 <= mux(reset, UInt<2>("h0"), _GEN_29) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231607.6]
    _T_215_2 <= mux(reset, UInt<2>("h0"), _GEN_30) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231614.6]
    _T_215_3 <= mux(reset, UInt<2>("h0"), _GEN_31) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231621.6]
    _T_215_4 <= mux(reset, UInt<2>("h0"), _GEN_32) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231628.6]
    _T_215_5 <= mux(reset, UInt<2>("h0"), _GEN_33) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231635.6]
    _T_215_6 <= mux(reset, UInt<2>("h0"), _GEN_34) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231642.6]
    _T_215_7 <= mux(reset, UInt<2>("h0"), _GEN_35) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231649.6]
    _T_215_8 <= mux(reset, UInt<2>("h0"), _GEN_36) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231656.6]
    _T_215_9 <= mux(reset, UInt<2>("h0"), _GEN_37) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231663.6]
    _T_215_10 <= mux(reset, UInt<2>("h0"), _GEN_38) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231670.6]
    _T_215_11 <= mux(reset, UInt<2>("h0"), _GEN_39) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231677.6]
    _T_215_12 <= mux(reset, UInt<2>("h0"), _GEN_40) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231684.6]
    _T_215_13 <= mux(reset, UInt<2>("h0"), _GEN_41) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231691.6]
    _T_215_14 <= mux(reset, UInt<2>("h0"), _GEN_42) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231698.6]
    _T_215_15 <= mux(reset, UInt<2>("h0"), _GEN_43) @[Fragmenter.scala 196:42:chipyard.TestHarness.ArianeConfig.fir@231705.6]
    printf(clock, _T_196, "Assertion failed\n    at Fragmenter.scala:170 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n") @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231511.6]
    stop(clock, _T_196, 1) @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231512.6]
    printf(clock, _T_209, "Assertion failed\n    at Fragmenter.scala:179 assert (!out.w.valid || !in_w.bits.last || w_last)\n") @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231535.6]
    stop(clock, _T_209, 1) @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231536.6]

  module SimAXIMem_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@231708.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@231709.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231710.4]
    output io_axi4_0_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_bits_addr : UInt<28> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    input io_axi4_0_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
    output io_axi4_0_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  
    inst srams of AXI4RAM_inTestHarness @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
    inst axi4xbar of AXI4Xbar_inTestHarness @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
    inst axi4buf of AXI4Buffer_inTestHarness @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
    inst axi4frag of AXI4Fragmenter_1_inTestHarness @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_axi4_0_aw_ready <= axi4xbar.auto_in_aw_ready @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_w_ready <= axi4xbar.auto_in_w_ready @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_b_valid <= axi4xbar.auto_in_b_valid @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_b_bits_id <= axi4xbar.auto_in_b_bits_id @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_b_bits_resp <= axi4xbar.auto_in_b_bits_resp @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_ar_ready <= axi4xbar.auto_in_ar_ready @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_r_valid <= axi4xbar.auto_in_r_valid @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_r_bits_id <= axi4xbar.auto_in_r_bits_id @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_r_bits_data <= axi4xbar.auto_in_r_bits_data @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_r_bits_resp <= axi4xbar.auto_in_r_bits_resp @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    io_axi4_0_r_bits_last <= axi4xbar.auto_in_r_bits_last @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
    srams.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231722.4]
    srams.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231723.4]
    srams.auto_in_aw_valid <= axi4buf.auto_out_aw_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_aw_bits_id <= axi4buf.auto_out_aw_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_aw_bits_addr <= axi4buf.auto_out_aw_bits_addr @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    srams.auto_in_aw_bits_echo_real_last <= axi4buf.auto_out_aw_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_w_valid <= axi4buf.auto_out_w_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_w_bits_data <= axi4buf.auto_out_w_bits_data @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_w_bits_strb <= axi4buf.auto_out_w_bits_strb @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    skip
    srams.auto_in_b_ready <= axi4buf.auto_out_b_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_ar_valid <= axi4buf.auto_out_ar_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_ar_bits_id <= axi4buf.auto_out_ar_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_ar_bits_addr <= axi4buf.auto_out_ar_bits_addr @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    srams.auto_in_ar_bits_echo_real_last <= axi4buf.auto_out_ar_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    srams.auto_in_r_ready <= axi4buf.auto_out_r_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4xbar.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231728.4]
    axi4xbar.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231729.4]
    axi4xbar.auto_in_aw_valid <= io_axi4_0_aw_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_aw_bits_id <= io_axi4_0_aw_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_aw_bits_addr <= io_axi4_0_aw_bits_addr @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_aw_bits_len <= io_axi4_0_aw_bits_len @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_aw_bits_size <= io_axi4_0_aw_bits_size @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_aw_bits_burst <= io_axi4_0_aw_bits_burst @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    skip
    skip
    skip
    skip
    axi4xbar.auto_in_w_valid <= io_axi4_0_w_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_w_bits_data <= io_axi4_0_w_bits_data @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_w_bits_strb <= io_axi4_0_w_bits_strb @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_w_bits_last <= io_axi4_0_w_bits_last @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_b_ready <= io_axi4_0_b_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_valid <= io_axi4_0_ar_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_bits_id <= io_axi4_0_ar_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_bits_addr <= io_axi4_0_ar_bits_addr @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_bits_len <= io_axi4_0_ar_bits_len @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_bits_size <= io_axi4_0_ar_bits_size @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_in_ar_bits_burst <= io_axi4_0_ar_bits_burst @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    skip
    skip
    skip
    skip
    axi4xbar.auto_in_r_ready <= io_axi4_0_r_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
    axi4xbar.auto_out_aw_ready <= axi4frag.auto_in_aw_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_w_ready <= axi4frag.auto_in_w_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_b_valid <= axi4frag.auto_in_b_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_b_bits_id <= axi4frag.auto_in_b_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_b_bits_resp <= axi4frag.auto_in_b_bits_resp @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_ar_ready <= axi4frag.auto_in_ar_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_r_valid <= axi4frag.auto_in_r_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_r_bits_id <= axi4frag.auto_in_r_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_r_bits_data <= axi4frag.auto_in_r_bits_data @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_r_bits_resp <= axi4frag.auto_in_r_bits_resp @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4xbar.auto_out_r_bits_last <= axi4frag.auto_in_r_bits_last @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4buf.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231734.4]
    axi4buf.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231735.4]
    axi4buf.auto_in_aw_valid <= axi4frag.auto_out_aw_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_aw_bits_id <= axi4frag.auto_out_aw_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_aw_bits_addr <= axi4frag.auto_out_aw_bits_addr @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    axi4buf.auto_in_aw_bits_echo_real_last <= axi4frag.auto_out_aw_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_w_valid <= axi4frag.auto_out_w_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_w_bits_data <= axi4frag.auto_out_w_bits_data @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_w_bits_strb <= axi4frag.auto_out_w_bits_strb @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    skip
    axi4buf.auto_in_b_ready <= axi4frag.auto_out_b_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_ar_valid <= axi4frag.auto_out_ar_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_ar_bits_id <= axi4frag.auto_out_ar_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_ar_bits_addr <= axi4frag.auto_out_ar_bits_addr @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    axi4buf.auto_in_ar_bits_echo_real_last <= axi4frag.auto_out_ar_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_in_r_ready <= axi4frag.auto_out_r_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4buf.auto_out_aw_ready <= srams.auto_in_aw_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_w_ready <= srams.auto_in_w_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_b_valid <= srams.auto_in_b_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_b_bits_id <= srams.auto_in_b_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_b_bits_resp <= srams.auto_in_b_bits_resp @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_b_bits_echo_real_last <= srams.auto_in_b_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_ar_ready <= srams.auto_in_ar_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_r_valid <= srams.auto_in_r_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_r_bits_id <= srams.auto_in_r_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_r_bits_data <= srams.auto_in_r_bits_data @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_r_bits_resp <= srams.auto_in_r_bits_resp @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    axi4buf.auto_out_r_bits_echo_real_last <= srams.auto_in_r_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
    skip
    axi4frag.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231740.4]
    axi4frag.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231741.4]
    axi4frag.auto_in_aw_valid <= axi4xbar.auto_out_aw_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_aw_bits_id <= axi4xbar.auto_out_aw_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_aw_bits_addr <= axi4xbar.auto_out_aw_bits_addr @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_aw_bits_len <= axi4xbar.auto_out_aw_bits_len @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_aw_bits_size <= axi4xbar.auto_out_aw_bits_size @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_aw_bits_burst <= axi4xbar.auto_out_aw_bits_burst @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    skip
    skip
    skip
    skip
    axi4frag.auto_in_w_valid <= axi4xbar.auto_out_w_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_w_bits_data <= axi4xbar.auto_out_w_bits_data @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_w_bits_strb <= axi4xbar.auto_out_w_bits_strb @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_w_bits_last <= axi4xbar.auto_out_w_bits_last @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_b_ready <= axi4xbar.auto_out_b_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_valid <= axi4xbar.auto_out_ar_valid @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_bits_id <= axi4xbar.auto_out_ar_bits_id @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_bits_addr <= axi4xbar.auto_out_ar_bits_addr @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_bits_len <= axi4xbar.auto_out_ar_bits_len @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_bits_size <= axi4xbar.auto_out_ar_bits_size @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_in_ar_bits_burst <= axi4xbar.auto_out_ar_bits_burst @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    skip
    skip
    skip
    skip
    axi4frag.auto_in_r_ready <= axi4xbar.auto_out_r_ready @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
    axi4frag.auto_out_aw_ready <= axi4buf.auto_in_aw_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_w_ready <= axi4buf.auto_in_w_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_b_valid <= axi4buf.auto_in_b_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_b_bits_id <= axi4buf.auto_in_b_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_b_bits_resp <= axi4buf.auto_in_b_bits_resp @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_b_bits_echo_real_last <= axi4buf.auto_in_b_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_ar_ready <= axi4buf.auto_in_ar_ready @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_valid <= axi4buf.auto_in_r_valid @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_bits_id <= axi4buf.auto_in_r_bits_id @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_bits_data <= axi4buf.auto_in_r_bits_data @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_bits_resp <= axi4buf.auto_in_r_bits_resp @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_bits_echo_real_last <= axi4buf.auto_in_r_bits_echo_real_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
    axi4frag.auto_out_r_bits_last <= axi4buf.auto_in_r_bits_last @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]

  module Queue_46_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@231750.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@231751.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231752.4]
    output io_enq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
    input io_enq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
    input io_enq_bits : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
    input io_deq_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
    output io_deq_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
    output io_deq_bits : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  
    mem ram : @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
      data-type => UInt<8>
      depth => 128
      read-latency => 0
      write-latency => 1
      reader => _T_11
      writer => _T_3
      read-under-write => undefined
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (UInt<1>("h0"), enq_ptr_value) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231756.4]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (UInt<1>("h0"), deq_ptr_value) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231757.4]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@231758.4]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@231759.4]
    node _T = not(maybe_full) @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@231760.4]
    node empty = and(ptr_match, _T) @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@231761.4]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@231762.4]
    node do_enq = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231763.4]
    node do_deq = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231766.4]
    skip
    node _T_4 = add(enq_ptr_value, UInt<7>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231773.6]
    node _T_5 = tail(_T_4, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231774.6]
    skip
    skip
    skip
    skip
    skip
    skip
    node _GEN_5 = mux(do_enq, _T_5, enq_ptr_value) @[Decoupled.scala 220:17:chipyard.TestHarness.ArianeConfig.fir@231769.4]
    skip
    node _T_6 = add(deq_ptr_value, UInt<7>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231779.6]
    node _T_7 = tail(_T_6, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231780.6]
    skip
    node _GEN_6 = mux(do_deq, _T_7, deq_ptr_value) @[Decoupled.scala 224:17:chipyard.TestHarness.ArianeConfig.fir@231777.4]
    node _T_8 = neq(do_enq, do_deq) @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@231783.4]
    node _GEN_7 = mux(_T_8, do_enq, maybe_full) @[Decoupled.scala 227:28:chipyard.TestHarness.ArianeConfig.fir@231784.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    io_enq_ready <= not(full) @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@231790.4]
    io_deq_valid <= not(empty) @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@231788.4]
    io_deq_bits <= ram._T_11.data @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@231792.4]
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    skip
    enq_ptr_value <= mux(reset, UInt<7>("h0"), _GEN_5) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231775.6]
    deq_ptr_value <= mux(reset, UInt<7>("h0"), _GEN_6) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231781.6]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_7) @[Decoupled.scala 228:16:chipyard.TestHarness.ArianeConfig.fir@231785.6]
    ram._T_11.en <= UInt<1>("h1")
    ram._T_11.addr <= deq_ptr_value
    ram._T_11.clk <= clock
    ram._T_3.en <= and(io_enq_ready, io_enq_valid)
    ram._T_3.addr <= enq_ptr_value
    ram._T_3.mask <= UInt<1>("h1")
    ram._T_3.data <= io_enq_bits
    ram._T_3.clk <= clock

  extmodule SimUART_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@231850.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@231851.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231852.4]
    input serial_in_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
    output serial_in_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
    output serial_in_bits : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
    output serial_out_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
    input serial_out_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
    input serial_out_bits : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@231853.4]
  
    defname = SimUART
    parameter UARTNO = 0

  module UARTAdapter_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@231858.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@231859.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231860.4]
    input io_uart_txd : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231861.4]
    output io_uart_rxd : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@231861.4]
  
    inst txfifo of Queue_46_inTestHarness @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
    inst rxfifo of Queue_46_inTestHarness @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
    inst sim of SimUART_inTestHarness @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
    reg txState : UInt<2>, clock with :
      reset => (UInt<1>("h0"), txState) @[UARTAdapter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231869.4]
    reg txData : UInt<8>, clock with :
      reset => (UInt<1>("h0"), txData) @[UARTAdapter.scala 39:19:chipyard.TestHarness.ArianeConfig.fir@231870.4]
    node _T = eq(txState, UInt<2>("h2")) @[UARTAdapter.scala 41:49:chipyard.TestHarness.ArianeConfig.fir@231871.4]
    node _T_1 = and(_T, txfifo.io_enq_ready) @[UARTAdapter.scala 41:61:chipyard.TestHarness.ArianeConfig.fir@231872.4]
    reg txDataIdx : UInt<3>, clock with :
      reset => (UInt<1>("h0"), txDataIdx) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231873.4]
    node _T_2 = eq(txDataIdx, UInt<3>("h7")) @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231877.6]
    node _T_3 = add(txDataIdx, UInt<3>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231878.6]
    node _T_4 = tail(_T_3, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231879.6]
    node _GEN_0 = mux(_T_1, _T_4, txDataIdx) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231876.4]
    node txDataWrap = and(_T_1, _T_2) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231876.4]
    node _T_5 = eq(txState, UInt<2>("h1")) @[UARTAdapter.scala 43:51:chipyard.TestHarness.ArianeConfig.fir@231883.4]
    node _T_6 = and(_T_5, txfifo.io_enq_ready) @[UARTAdapter.scala 43:63:chipyard.TestHarness.ArianeConfig.fir@231884.4]
    reg txBaudCount : UInt<10>, clock with :
      reset => (UInt<1>("h0"), txBaudCount) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231885.4]
    node _T_7 = eq(txBaudCount, UInt<10>("h363")) @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231889.6]
    node _T_8 = add(txBaudCount, UInt<10>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231890.6]
    node _T_9 = tail(_T_8, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231891.6]
    node _GEN_2 = mux(_T_7, UInt<10>("h0"), _T_9) @[Counter.scala 41:21:chipyard.TestHarness.ArianeConfig.fir@231893.6]
    node _GEN_3 = mux(_T_6, _GEN_2, txBaudCount) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231888.4]
    node txBaudWrap = and(_T_6, _T_7) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231888.4]
    node _T_10 = eq(txState, UInt<2>("h0")) @[UARTAdapter.scala 44:53:chipyard.TestHarness.ArianeConfig.fir@231898.4]
    node _T_11 = not(io_uart_txd) @[UARTAdapter.scala 44:80:chipyard.TestHarness.ArianeConfig.fir@231899.4]
    node _T_12 = and(_T_10, _T_11) @[UARTAdapter.scala 44:65:chipyard.TestHarness.ArianeConfig.fir@231900.4]
    node _T_13 = and(_T_12, txfifo.io_enq_ready) @[UARTAdapter.scala 44:88:chipyard.TestHarness.ArianeConfig.fir@231901.4]
    reg txSlackCount : UInt<2>, clock with :
      reset => (UInt<1>("h0"), txSlackCount) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231902.4]
    node _T_14 = eq(txSlackCount, UInt<2>("h3")) @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231906.6]
    node _T_15 = add(txSlackCount, UInt<2>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231907.6]
    node _T_16 = tail(_T_15, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231908.6]
    node _GEN_5 = mux(_T_13, _T_16, txSlackCount) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231905.4]
    node txSlackWrap = and(_T_13, _T_14) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231905.4]
    node _T_17 = eq(UInt<2>("h0"), txState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231912.4]
    skip
    node _GEN_7 = mux(txSlackWrap, UInt<8>("h0"), txData) @[UARTAdapter.scala 48:25:chipyard.TestHarness.ArianeConfig.fir@231914.6]
    node _GEN_8 = mux(txSlackWrap, UInt<2>("h1"), txState) @[UARTAdapter.scala 48:25:chipyard.TestHarness.ArianeConfig.fir@231914.6]
    node _T_18 = eq(UInt<2>("h1"), txState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231920.6]
    skip
    node _GEN_9 = mux(txBaudWrap, UInt<2>("h2"), txState) @[UARTAdapter.scala 54:24:chipyard.TestHarness.ArianeConfig.fir@231922.8]
    node _T_19 = eq(UInt<2>("h2"), txState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231927.8]
    node _GEN_35 = pad(io_uart_txd, 8) @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
    node _T_20 = dshlw(_GEN_35, txDataIdx) @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
    node _T_21 = or(txData, _T_20) @[UARTAdapter.scala 60:26:chipyard.TestHarness.ArianeConfig.fir@231931.12]
    node _GEN_10 = mux(txfifo.io_enq_ready, _T_21, txData) @[UARTAdapter.scala 59:34:chipyard.TestHarness.ArianeConfig.fir@231929.10]
    skip
    node _T_23 = mux(io_uart_txd, UInt<2>("h0"), UInt<2>("h3")) @[UARTAdapter.scala 63:23:chipyard.TestHarness.ArianeConfig.fir@231936.12]
    node _GEN_11 = mux(txfifo.io_enq_ready, UInt<2>("h1"), txState) @[UARTAdapter.scala 64:39:chipyard.TestHarness.ArianeConfig.fir@231940.12]
    skip
    node _GEN_12 = mux(txDataWrap, _T_23, _GEN_11) @[UARTAdapter.scala 62:24:chipyard.TestHarness.ArianeConfig.fir@231934.10]
    node _T_24 = eq(UInt<2>("h3"), txState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231945.10]
    skip
    node _T_26 = and(io_uart_txd, txfifo.io_enq_ready) @[UARTAdapter.scala 69:32:chipyard.TestHarness.ArianeConfig.fir@231948.12]
    node _GEN_13 = mux(_T_26, UInt<2>("h0"), txState) @[UARTAdapter.scala 69:56:chipyard.TestHarness.ArianeConfig.fir@231949.12]
    node _GEN_14 = mux(_T_24, _GEN_13, txState) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231946.10]
    node _GEN_15 = mux(_T_19, _GEN_10, txData) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231928.8]
    node _GEN_16 = mux(_T_19, _GEN_12, _GEN_14) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231928.8]
    node _GEN_17 = mux(_T_18, _GEN_9, _GEN_16) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231921.6]
    node _GEN_18 = mux(_T_18, txData, _GEN_15) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231921.6]
    skip
    node _GEN_20 = mux(_T_17, _GEN_8, _GEN_17) @[Conditional.scala 40:58:chipyard.TestHarness.ArianeConfig.fir@231913.4]
    reg rxState : UInt<2>, clock with :
      reset => (UInt<1>("h0"), rxState) @[UARTAdapter.scala 79:24:chipyard.TestHarness.ArianeConfig.fir@231955.4]
    reg rxBaudCount : UInt<10>, clock with :
      reset => (UInt<1>("h0"), rxBaudCount) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231956.4]
    node _T_27 = eq(rxBaudCount, UInt<10>("h363")) @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231960.6]
    node _T_28 = add(rxBaudCount, UInt<10>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231961.6]
    node _T_29 = tail(_T_28, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231962.6]
    node _GEN_21 = mux(_T_27, UInt<10>("h0"), _T_29) @[Counter.scala 41:21:chipyard.TestHarness.ArianeConfig.fir@231964.6]
    node _GEN_22 = mux(txfifo.io_enq_ready, _GEN_21, rxBaudCount) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231959.4]
    node rxBaudWrap = and(txfifo.io_enq_ready, _T_27) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231959.4]
    node _T_30 = eq(rxState, UInt<2>("h2")) @[UARTAdapter.scala 83:49:chipyard.TestHarness.ArianeConfig.fir@231969.4]
    node _T_31 = and(_T_30, txfifo.io_enq_ready) @[UARTAdapter.scala 83:61:chipyard.TestHarness.ArianeConfig.fir@231970.4]
    skip
    node _T_32 = and(_T_31, rxBaudWrap) @[UARTAdapter.scala 83:84:chipyard.TestHarness.ArianeConfig.fir@231971.4]
    reg rxDataIdx : UInt<3>, clock with :
      reset => (UInt<1>("h0"), rxDataIdx) @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231972.4]
    node _T_33 = eq(rxDataIdx, UInt<3>("h7")) @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231976.6]
    node _T_34 = add(rxDataIdx, UInt<3>("h1")) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231977.6]
    node _T_35 = tail(_T_34, 1) @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231978.6]
    node _GEN_24 = mux(_T_32, _T_35, rxDataIdx) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231975.4]
    node rxDataWrap = and(_T_32, _T_33) @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231975.4]
    node _T_36 = eq(UInt<2>("h0"), rxState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231983.4]
    node _T_37 = and(rxBaudWrap, rxfifo.io_deq_valid) @[UARTAdapter.scala 89:24:chipyard.TestHarness.ArianeConfig.fir@231986.6]
    node _GEN_26 = mux(_T_37, UInt<2>("h1"), rxState) @[UARTAdapter.scala 89:48:chipyard.TestHarness.ArianeConfig.fir@231987.6]
    node _T_38 = eq(UInt<2>("h1"), rxState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231992.6]
    node _GEN_27 = mux(rxBaudWrap, UInt<2>("h2"), rxState) @[UARTAdapter.scala 95:24:chipyard.TestHarness.ArianeConfig.fir@231995.8]
    node _T_39 = eq(UInt<2>("h2"), rxState) @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@232000.8]
    node _T_40 = dshr(rxfifo.io_deq_bits, rxDataIdx) @[UARTAdapter.scala 100:42:chipyard.TestHarness.ArianeConfig.fir@232002.10]
    node _T_41 = bits(_T_40, 0, 0) @[UARTAdapter.scala 100:55:chipyard.TestHarness.ArianeConfig.fir@232003.10]
    skip
    node _T_42 = and(rxDataWrap, rxBaudWrap) @[UARTAdapter.scala 101:23:chipyard.TestHarness.ArianeConfig.fir@232005.10]
    node _GEN_28 = mux(_T_42, UInt<2>("h0"), rxState) @[UARTAdapter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@232006.10]
    node _GEN_29 = mux(_T_39, _T_41, UInt<1>("h1")) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@232001.8]
    node _GEN_30 = mux(_T_39, _GEN_28, rxState) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@232001.8]
    node _GEN_31 = mux(_T_38, UInt<1>("h0"), _GEN_29) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231993.6]
    node _GEN_32 = mux(_T_38, _GEN_27, _GEN_30) @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231993.6]
    skip
    node _GEN_34 = mux(_T_36, _GEN_26, _GEN_32) @[Conditional.scala 40:58:chipyard.TestHarness.ArianeConfig.fir@231984.4]
    skip
    node _T_44 = and(_T_30, rxDataWrap) @[UARTAdapter.scala 106:48:chipyard.TestHarness.ArianeConfig.fir@232011.4]
    node _T_45 = and(_T_44, rxBaudWrap) @[UARTAdapter.scala 106:62:chipyard.TestHarness.ArianeConfig.fir@232012.4]
    skip
    skip
    io_uart_rxd <= or(_T_36, _GEN_31) @[UARTAdapter.scala 85:15:chipyard.TestHarness.ArianeConfig.fir@231982.4 UARTAdapter.scala 88:19:chipyard.TestHarness.ArianeConfig.fir@231985.6 UARTAdapter.scala 94:19:chipyard.TestHarness.ArianeConfig.fir@231994.8 UARTAdapter.scala 100:19:chipyard.TestHarness.ArianeConfig.fir@232004.10]
    txfifo.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231864.4]
    txfifo.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231865.4]
    txfifo.io_enq_valid <= and(_T_1, _T_2) @[UARTAdapter.scala 76:23:chipyard.TestHarness.ArianeConfig.fir@231954.4]
    txfifo.io_enq_bits <= txData @[UARTAdapter.scala 75:23:chipyard.TestHarness.ArianeConfig.fir@231953.4]
    txfifo.io_deq_ready <= sim.serial_out_ready @[UARTAdapter.scala 115:23:chipyard.TestHarness.ArianeConfig.fir@232024.4]
    rxfifo.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@231867.4]
    rxfifo.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@231868.4]
    rxfifo.io_enq_valid <= sim.serial_in_valid @[UARTAdapter.scala 118:23:chipyard.TestHarness.ArianeConfig.fir@232026.4]
    rxfifo.io_enq_bits <= sim.serial_in_bits @[UARTAdapter.scala 117:22:chipyard.TestHarness.ArianeConfig.fir@232025.4]
    rxfifo.io_deq_ready <= and(_T_45, txfifo.io_enq_ready) @[UARTAdapter.scala 106:23:chipyard.TestHarness.ArianeConfig.fir@232014.4]
    txState <= mux(reset, UInt<2>("h0"), _GEN_20) @[UARTAdapter.scala 50:17:chipyard.TestHarness.ArianeConfig.fir@231916.8 UARTAdapter.scala 55:17:chipyard.TestHarness.ArianeConfig.fir@231923.10 UARTAdapter.scala 63:17:chipyard.TestHarness.ArianeConfig.fir@231937.12 UARTAdapter.scala 65:17:chipyard.TestHarness.ArianeConfig.fir@231941.14 UARTAdapter.scala 70:17:chipyard.TestHarness.ArianeConfig.fir@231950.14]
    txData <= mux(_T_17, _GEN_7, _GEN_18) @[UARTAdapter.scala 49:17:chipyard.TestHarness.ArianeConfig.fir@231915.8 UARTAdapter.scala 60:16:chipyard.TestHarness.ArianeConfig.fir@231932.12]
    txDataIdx <= mux(reset, UInt<3>("h0"), _GEN_0) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231880.6]
    txBaudCount <= mux(reset, UInt<10>("h0"), _GEN_3) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231892.6 Counter.scala 41:29:chipyard.TestHarness.ArianeConfig.fir@231894.8]
    txSlackCount <= mux(reset, UInt<2>("h0"), _GEN_5) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231909.6]
    rxState <= mux(reset, UInt<2>("h0"), _GEN_34) @[UARTAdapter.scala 90:17:chipyard.TestHarness.ArianeConfig.fir@231988.8 UARTAdapter.scala 96:17:chipyard.TestHarness.ArianeConfig.fir@231996.10 UARTAdapter.scala 102:17:chipyard.TestHarness.ArianeConfig.fir@232007.12]
    rxBaudCount <= mux(reset, UInt<10>("h0"), _GEN_22) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231963.6 Counter.scala 41:29:chipyard.TestHarness.ArianeConfig.fir@231965.8]
    rxDataIdx <= mux(reset, UInt<3>("h0"), _GEN_24) @[Counter.scala 39:13:chipyard.TestHarness.ArianeConfig.fir@231979.6]
    sim.clock <= clock @[UARTAdapter.scala 110:16:chipyard.TestHarness.ArianeConfig.fir@232019.4]
    sim.reset <= reset @[UARTAdapter.scala 111:16:chipyard.TestHarness.ArianeConfig.fir@232021.4]
    sim.serial_in_ready <= rxfifo.io_enq_ready @[UARTAdapter.scala 119:26:chipyard.TestHarness.ArianeConfig.fir@232027.4]
    sim.serial_out_valid <= txfifo.io_deq_valid @[UARTAdapter.scala 114:27:chipyard.TestHarness.ArianeConfig.fir@232023.4]
    sim.serial_out_bits <= txfifo.io_deq_bits @[UARTAdapter.scala 113:26:chipyard.TestHarness.ArianeConfig.fir@232022.4]

  module TestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@232029.2]
    input clock : Clock @[:chipyard.TestHarness.ArianeConfig.fir@232030.4]
    input reset : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@232031.4]
    output io_success : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@232032.4]
  
    inst dut of ChipTop @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
    inst SimSerial of SimSerial @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
    inst mem of SimAXIMem_inTestHarness @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
    inst uart_sim_0 of UARTAdapter_inTestHarness @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
    skip
    skip
    skip
    skip
    skip
    skip
    io_success <= SimSerial.exit @[TestHarness.scala 26:14:chipyard.TestHarness.ArianeConfig.fir@232035.4 IOBinders.scala 384:39:chipyard.TestHarness.ArianeConfig.fir@232070.6]
    dut.debug_clock <= clock @[Periphery.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@232040.4 IOBinders.scala 345:17:chipyard.TestHarness.ArianeConfig.fir@232053.4]
    dut.debug_reset <= UInt<1>("h1") @[Periphery.scala 309:19:chipyard.TestHarness.ArianeConfig.fir@232041.4]
    dut.debug_clockeddmi_dmi_req_valid <= UInt<1>("h0") @[Periphery.scala 323:25:chipyard.TestHarness.ArianeConfig.fir@232042.4]
    dut.debug_clockeddmi_dmi_req_bits_addr <= UInt<7>("h0")
    dut.debug_clockeddmi_dmi_req_bits_data <= UInt<32>("h0")
    dut.debug_clockeddmi_dmi_req_bits_op <= UInt<2>("h0")
    dut.debug_clockeddmi_dmi_resp_ready <= UInt<1>("h1") @[Periphery.scala 324:26:chipyard.TestHarness.ArianeConfig.fir@232043.4]
    dut.debug_clockeddmi_dmiClock <= clock @[Periphery.scala 325:20:chipyard.TestHarness.ArianeConfig.fir@232045.4 IOBinders.scala 343:85:chipyard.TestHarness.ArianeConfig.fir@232051.4]
    dut.debug_clockeddmi_dmiReset <= asAsyncReset(UInt<1>("h1")) @[Periphery.scala 326:20:chipyard.TestHarness.ArianeConfig.fir@232047.4]
    dut.debug_dmactiveAck <= UInt<1>("h0")
    dut.resetctrl_hartIsInReset_0 <= UInt<1>("h0") @[Periphery.scala 306:59:chipyard.TestHarness.ArianeConfig.fir@232038.4]
    dut.serial_in_valid <= SimSerial.serial_in_valid @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232067.4]
    dut.serial_in_bits <= SimSerial.serial_in_bits @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232066.4]
    dut.serial_out_ready <= SimSerial.serial_out_ready @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232065.4]
    dut.mem_axi4_aw_ready <= mem.io_axi4_0_aw_ready @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_w_ready <= mem.io_axi4_0_w_ready @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_b_valid <= mem.io_axi4_0_b_valid @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_b_bits_id <= mem.io_axi4_0_b_bits_id @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_b_bits_resp <= mem.io_axi4_0_b_bits_resp @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_ar_ready <= mem.io_axi4_0_ar_ready @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_r_valid <= mem.io_axi4_0_r_valid @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_r_bits_id <= mem.io_axi4_0_r_bits_id @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_r_bits_data <= mem.io_axi4_0_r_bits_data @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_r_bits_resp <= mem.io_axi4_0_r_bits_resp @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.mem_axi4_r_bits_last <= mem.io_axi4_0_r_bits_last @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    dut.uart_0_rxd <= uart_sim_0.io_uart_rxd @[UARTAdapter.scala 135:18:chipyard.TestHarness.ArianeConfig.fir@232080.4]
    dut.clock <= clock @[ChipTop.scala 111:11:chipyard.TestHarness.ArianeConfig.fir@232081.4]
    dut.reset <= reset @[ChipTop.scala 114:11:chipyard.TestHarness.ArianeConfig.fir@232082.4]
    SimSerial.clock <= clock @[SerialAdapter.scala 18:20:chipyard.TestHarness.ArianeConfig.fir@232061.4]
    SimSerial.reset <= reset @[SerialAdapter.scala 19:20:chipyard.TestHarness.ArianeConfig.fir@232062.4]
    SimSerial.serial_in_ready <= dut.serial_in_ready @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232068.4]
    SimSerial.serial_out_valid <= dut.serial_out_valid @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232064.4]
    SimSerial.serial_out_bits <= dut.serial_out_bits @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232063.4]
    mem.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@232073.4]
    mem.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@232074.4]
    mem.io_axi4_0_aw_valid <= dut.mem_axi4_aw_valid @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_aw_bits_id <= dut.mem_axi4_aw_bits_id @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_aw_bits_addr <= bits(dut.mem_axi4_aw_bits_addr, 27, 0) @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_aw_bits_len <= dut.mem_axi4_aw_bits_len @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_aw_bits_size <= dut.mem_axi4_aw_bits_size @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_aw_bits_burst <= dut.mem_axi4_aw_bits_burst @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    skip
    skip
    skip
    skip
    mem.io_axi4_0_w_valid <= dut.mem_axi4_w_valid @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_w_bits_data <= dut.mem_axi4_w_bits_data @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_w_bits_strb <= dut.mem_axi4_w_bits_strb @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_w_bits_last <= dut.mem_axi4_w_bits_last @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_b_ready <= dut.mem_axi4_b_ready @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_valid <= dut.mem_axi4_ar_valid @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_bits_id <= dut.mem_axi4_ar_bits_id @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_bits_addr <= bits(dut.mem_axi4_ar_bits_addr, 27, 0) @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_bits_len <= dut.mem_axi4_ar_bits_len @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_bits_size <= dut.mem_axi4_ar_bits_size @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    mem.io_axi4_0_ar_bits_burst <= dut.mem_axi4_ar_bits_burst @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    skip
    skip
    skip
    skip
    mem.io_axi4_0_r_ready <= dut.mem_axi4_r_ready @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
    uart_sim_0.clock <= clock @[:chipyard.TestHarness.ArianeConfig.fir@232077.4]
    uart_sim_0.reset <= reset @[:chipyard.TestHarness.ArianeConfig.fir@232078.4]
    uart_sim_0.io_uart_txd <= dut.uart_0_txd @[UARTAdapter.scala 134:28:chipyard.TestHarness.ArianeConfig.fir@232079.4]

  extmodule plusarg_reader_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@122.2]
    output out : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@123.4]
  
    defname = plusarg_reader
    parameter FORMAT = "tilelink_timeout=%d"
    parameter DEFAULT = 0
    parameter WIDTH = 32

  extmodule ArianeCoreBlackbox_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@214994.2]
    input clk_i : Clock @[:chipyard.TestHarness.ArianeConfig.fir@214995.4]
    input rst_ni : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@214996.4]
    input boot_addr_i : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@214997.4]
    input hart_id_i : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@214998.4]
    input irq_i : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@214999.4]
    input ipi_i : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215000.4]
    input time_irq_i : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215001.4]
    input debug_req_i : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215002.4]
    output trace_o : UInt<256> @[:chipyard.TestHarness.ArianeConfig.fir@215003.4]
    input axi_resp_i_aw_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215004.4]
    output axi_req_o_aw_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215005.4]
    output axi_req_o_aw_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215006.4]
    output axi_req_o_aw_bits_addr : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@215007.4]
    output axi_req_o_aw_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@215008.4]
    output axi_req_o_aw_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@215009.4]
    output axi_req_o_aw_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@215010.4]
    output axi_req_o_aw_bits_lock : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215011.4]
    output axi_req_o_aw_bits_cache : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215012.4]
    output axi_req_o_aw_bits_prot : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@215013.4]
    output axi_req_o_aw_bits_qos : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215014.4]
    output axi_req_o_aw_bits_region : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215015.4]
    output axi_req_o_aw_bits_atop : UInt<6> @[:chipyard.TestHarness.ArianeConfig.fir@215016.4]
    output axi_req_o_aw_bits_user : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215017.4]
    input axi_resp_i_w_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215018.4]
    output axi_req_o_w_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215019.4]
    output axi_req_o_w_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@215020.4]
    output axi_req_o_w_bits_strb : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@215021.4]
    output axi_req_o_w_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215022.4]
    output axi_req_o_w_bits_user : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215023.4]
    input axi_resp_i_ar_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215024.4]
    output axi_req_o_ar_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215025.4]
    output axi_req_o_ar_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215026.4]
    output axi_req_o_ar_bits_addr : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@215027.4]
    output axi_req_o_ar_bits_len : UInt<8> @[:chipyard.TestHarness.ArianeConfig.fir@215028.4]
    output axi_req_o_ar_bits_size : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@215029.4]
    output axi_req_o_ar_bits_burst : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@215030.4]
    output axi_req_o_ar_bits_lock : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215031.4]
    output axi_req_o_ar_bits_cache : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215032.4]
    output axi_req_o_ar_bits_prot : UInt<3> @[:chipyard.TestHarness.ArianeConfig.fir@215033.4]
    output axi_req_o_ar_bits_qos : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215034.4]
    output axi_req_o_ar_bits_region : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215035.4]
    output axi_req_o_ar_bits_user : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215036.4]
    output axi_req_o_b_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215037.4]
    input axi_resp_i_b_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215038.4]
    input axi_resp_i_b_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215039.4]
    input axi_resp_i_b_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@215040.4]
    input axi_resp_i_b_bits_user : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215041.4]
    output axi_req_o_r_ready : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215042.4]
    input axi_resp_i_r_valid : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215043.4]
    input axi_resp_i_r_bits_id : UInt<4> @[:chipyard.TestHarness.ArianeConfig.fir@215044.4]
    input axi_resp_i_r_bits_data : UInt<64> @[:chipyard.TestHarness.ArianeConfig.fir@215045.4]
    input axi_resp_i_r_bits_resp : UInt<2> @[:chipyard.TestHarness.ArianeConfig.fir@215046.4]
    input axi_resp_i_r_bits_last : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215047.4]
    input axi_resp_i_r_bits_user : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@215048.4]
  
    defname = ArianeCoreBlackbox
    parameter CACHE_REG_BASE_2 = 0
    parameter BTB_ENTRIES = 16
    parameter CACHE_REG_SZ_2 = 0
    parameter XLEN = 64
    parameter EXEC_REG_BASE_1 = 65536
    parameter AXI_USER_WIDTH = 1
    parameter EXEC_REG_SZ_2 = 4096
    parameter EXEC_REG_BASE_2 = 0
    parameter EXEC_REG_SZ_0 = 268435456
    parameter CACHE_REG_SZ_0 = 268431232
    parameter EXEC_REG_CNT = 5
    parameter DEBUG_BASE = 0
    parameter CACHE_REG_BASE_3 = 0
    parameter EXEC_REG_SZ_1 = 65536
    parameter CACHE_REG_SZ_1 = 4096
    parameter RAS_ENTRIES = 4
    parameter AXI_ID_WIDTH = 4
    parameter EXEC_REG_SZ_4 = 0
    parameter BHT_ENTRIES = 16
    parameter EXEC_REG_BASE_3 = 0
    parameter TRACEPORT_SZ = 256
    parameter CACHE_REG_BASE_4 = 0
    parameter AXI_DATA_WIDTH = 64
    parameter CACHE_REG_SZ_4 = 0
    parameter AXI_ADDRESS_WIDTH = 64
    parameter EXEC_REG_BASE_4 = 0
    parameter CACHE_REG_BASE_1 = 2147483648
    parameter CACHE_REG_CNT = 5
    parameter CACHE_REG_SZ_3 = 0
    parameter CACHE_REG_BASE_0 = 2147487872
    parameter EXEC_REG_BASE_0 = 2147483648
    parameter EXEC_REG_SZ_3 = 0

  extmodule plusarg_reader_65_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@220940.2]
    output out : UInt<32> @[:chipyard.TestHarness.ArianeConfig.fir@220941.4]
  
    defname = plusarg_reader
    parameter FORMAT = "uart_tx=%d"
    parameter DEFAULT = 1
    parameter WIDTH = 32

  extmodule GenericDigitalInIOCell_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@222601.2]
    input pad : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222602.4]
    output i : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222603.4]
    input ie : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222604.4]
  
    defname = GenericDigitalInIOCell
    

  extmodule GenericDigitalOutIOCell_inTestHarness : @[:chipyard.TestHarness.ArianeConfig.fir@222609.2]
    output pad : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222610.4]
    input o : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222611.4]
    input oe : UInt<1> @[:chipyard.TestHarness.ArianeConfig.fir@222612.4]
  
    defname = GenericDigitalOutIOCell
    

  extmodule cc_dir_ext_inTestHarness :
    input RW0_addr : UInt<10>
    input RW0_en : UInt<1>
    input RW0_clk : Clock
    input RW0_wmode : UInt<1>
    input RW0_wdata : UInt<128>
    output RW0_rdata : UInt<128>
    input RW0_wmask : UInt<8>
  
    defname = cc_dir_ext
    

  extmodule cc_banks_0_ext_inTestHarness :
    input RW0_addr : UInt<14>
    input RW0_en : UInt<1>
    input RW0_clk : Clock
    input RW0_wmode : UInt<1>
    input RW0_wdata : UInt<64>
    output RW0_rdata : UInt<64>
  
    defname = cc_banks_0_ext
    

  extmodule mem_ext_inTestHarness :
    input R0_addr : UInt<25>
    input R0_en : UInt<1>
    input R0_clk : Clock
    output R0_data : UInt<64>
    input W0_addr : UInt<25>
    input W0_en : UInt<1>
    input W0_clk : Clock
    input W0_data : UInt<64>
    input W0_mask : UInt<8>
  
    defname = mem_ext
    

  module mem_inTestHarness :
    input R0_addr : UInt<25>
    input R0_en : UInt<1>
    input R0_clk : Clock
    output R0_data_0 : UInt<8>
    output R0_data_1 : UInt<8>
    output R0_data_2 : UInt<8>
    output R0_data_3 : UInt<8>
    output R0_data_4 : UInt<8>
    output R0_data_5 : UInt<8>
    output R0_data_6 : UInt<8>
    output R0_data_7 : UInt<8>
    input W0_addr : UInt<25>
    input W0_en : UInt<1>
    input W0_clk : Clock
    input W0_data_0 : UInt<8>
    input W0_data_1 : UInt<8>
    input W0_data_2 : UInt<8>
    input W0_data_3 : UInt<8>
    input W0_data_4 : UInt<8>
    input W0_data_5 : UInt<8>
    input W0_data_6 : UInt<8>
    input W0_data_7 : UInt<8>
    input W0_mask_0 : UInt<1>
    input W0_mask_1 : UInt<1>
    input W0_mask_2 : UInt<1>
    input W0_mask_3 : UInt<1>
    input W0_mask_4 : UInt<1>
    input W0_mask_5 : UInt<1>
    input W0_mask_6 : UInt<1>
    input W0_mask_7 : UInt<1>
  
    inst mem_ext of mem_ext_inTestHarness
    mem_ext.R0_clk <= R0_clk
    mem_ext.R0_en <= R0_en
    mem_ext.R0_addr <= R0_addr
    R0_data_0 <= bits(mem_ext.R0_data, 7, 0)
    R0_data_1 <= bits(mem_ext.R0_data, 15, 8)
    R0_data_2 <= bits(mem_ext.R0_data, 23, 16)
    R0_data_3 <= bits(mem_ext.R0_data, 31, 24)
    R0_data_4 <= bits(mem_ext.R0_data, 39, 32)
    R0_data_5 <= bits(mem_ext.R0_data, 47, 40)
    R0_data_6 <= bits(mem_ext.R0_data, 55, 48)
    R0_data_7 <= bits(mem_ext.R0_data, 63, 56)
    mem_ext.W0_clk <= W0_clk
    mem_ext.W0_en <= W0_en
    mem_ext.W0_addr <= W0_addr
    skip
    skip
    skip
    skip
    node _GEN_4 = cat(cat(W0_data_7, W0_data_6), cat(W0_data_5, W0_data_4))
    node _GEN_5 = cat(cat(W0_data_3, W0_data_2), cat(W0_data_1, W0_data_0))
    mem_ext.W0_data <= cat(_GEN_4, _GEN_5)
    skip
    skip
    skip
    skip
    node _GEN_10 = cat(cat(W0_mask_7, W0_mask_6), cat(W0_mask_5, W0_mask_4))
    node _GEN_11 = cat(cat(W0_mask_3, W0_mask_2), cat(W0_mask_1, W0_mask_0))
    mem_ext.W0_mask <= cat(_GEN_10, _GEN_11)
