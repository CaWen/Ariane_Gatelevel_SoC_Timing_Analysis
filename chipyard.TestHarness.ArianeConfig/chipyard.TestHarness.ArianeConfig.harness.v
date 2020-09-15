module Queue_13_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@86683.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@86684.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@86685.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  input  [7:0]  io_enq_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  input         io_enq_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  output [7:0]  io_deq_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
  output        io_deq_bits_last // @[:chipyard.TestHarness.ArianeConfig.fir@86686.4]
);
  reg [63:0] ram_data [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg [63:0] _RAND_0;
  wire [63:0] ram_data__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_data__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire [63:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_data__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg [7:0] ram_strb [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg [31:0] _RAND_1;
  wire [7:0] ram_strb__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_strb__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire [7:0] ram_strb__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_strb__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_strb__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_strb__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg  ram_last [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg [31:0] _RAND_2;
  wire  ram_last__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_last__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_last__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_last__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_last__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  wire  ram_last__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@86689.4]
  reg [31:0] _RAND_3;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@86691.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86694.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86697.4]
  wire  _GEN_9; // @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@86728.6]
  wire  do_enq; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
  wire  do_deq; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@86708.4]
  wire  _T_5; // @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@86712.4]
  assign ram_data__T_7_addr = 1'h0;
  assign ram_data__T_7_data = ram_data[ram_data__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = 1'h0;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = empty ? _GEN_9 : _T_1;
  assign ram_strb__T_7_addr = 1'h0;
  assign ram_strb__T_7_data = ram_strb[ram_strb__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  assign ram_strb__T_3_data = io_enq_bits_strb;
  assign ram_strb__T_3_addr = 1'h0;
  assign ram_strb__T_3_mask = 1'h1;
  assign ram_strb__T_3_en = empty ? _GEN_9 : _T_1;
  assign ram_last__T_7_addr = 1'h0;
  assign ram_last__T_7_data = ram_last[ram_last__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
  assign ram_last__T_3_data = io_enq_bits_last;
  assign ram_last__T_3_addr = 1'h0;
  assign ram_last__T_3_mask = 1'h1;
  assign ram_last__T_3_en = empty ? _GEN_9 : _T_1;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@86691.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86694.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@86697.4]
  assign _GEN_9 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@86728.6]
  assign do_enq = empty ? _GEN_9 : _T_1; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@86723.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@86708.4]
  assign _T_5 = ~empty; // @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@86712.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@86715.4]
  assign io_deq_valid = io_enq_valid | _T_5; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@86713.4 Decoupled.scala 236:40:chipyard.TestHarness.ArianeConfig.fir@86721.6]
  assign io_deq_bits_data = empty ? io_enq_bits_data : ram_data__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86719.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86726.6]
  assign io_deq_bits_strb = empty ? io_enq_bits_strb : ram_strb__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86718.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86725.6]
  assign io_deq_bits_last = empty ? io_enq_bits_last : ram_last__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@86717.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@86724.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
    end
    if(ram_strb__T_3_en & ram_strb__T_3_mask) begin
      ram_strb[ram_strb__T_3_addr] <= ram_strb__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
    end
    if(ram_last__T_3_en & ram_last__T_3_mask) begin
      ram_last[ram_last__T_3_addr] <= ram_last__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@86688.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _T_1;
        end
      end else begin
        maybe_full <= _T_1;
      end
    end
  end
endmodule
module AXI4RAM_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@229719.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@229720.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@229721.4]
  output        auto_in_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_aw_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [63:0] auto_in_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output [3:0]  auto_in_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output [1:0]  auto_in_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_b_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_ar_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  input         auto_in_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output [3:0]  auto_in_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output [63:0] auto_in_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output [1:0]  auto_in_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
  output        auto_in_r_bits_echo_real_last // @[:chipyard.TestHarness.ArianeConfig.fir@229722.4]
);
  wire [24:0] mem_R0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_R0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_R0_data_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [24:0] mem_W0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [7:0] mem_W0_data_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_4; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_5; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_6; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire  mem_W0_mask_7; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
  wire [5:0] _T_30; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229761.4]
  wire [11:0] _T_36; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229767.4]
  wire [5:0] _T_41; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229772.4]
  wire [12:0] _T_48; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229779.4]
  wire [5:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229811.4]
  wire [11:0] _T_85; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229817.4]
  wire [5:0] _T_90; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229822.4]
  wire [12:0] _T_97; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229829.4]
  wire [28:0] _T_99; // @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229832.4]
  wire [28:0] _T_101; // @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229834.4]
  wire  r_sel0; // @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229835.4]
  wire [28:0] _T_103; // @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229837.4]
  wire [28:0] _T_105; // @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229839.4]
  wire  w_sel0; // @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229840.4]
  reg  w_full; // @[SRAM.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@229841.4]
  reg [31:0] _RAND_0;
  reg [3:0] w_id; // @[SRAM.scala 63:21:chipyard.TestHarness.ArianeConfig.fir@229842.4]
  reg [31:0] _RAND_1;
  reg  w_echo_real_last; // @[SRAM.scala 64:21:chipyard.TestHarness.ArianeConfig.fir@229843.4]
  reg [31:0] _RAND_2;
  reg  r_sel1; // @[SRAM.scala 65:21:chipyard.TestHarness.ArianeConfig.fir@229844.4]
  reg [31:0] _RAND_3;
  reg  w_sel1; // @[SRAM.scala 66:21:chipyard.TestHarness.ArianeConfig.fir@229845.4]
  reg [31:0] _RAND_4;
  wire  _T_106; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229846.4]
  wire  _GEN_0; // @[SRAM.scala 68:25:chipyard.TestHarness.ArianeConfig.fir@229847.4]
  wire  _T_128; // @[SRAM.scala 84:50:chipyard.TestHarness.ArianeConfig.fir@229916.4]
  wire  _T_129; // @[SRAM.scala 84:47:chipyard.TestHarness.ArianeConfig.fir@229917.4]
  wire  in_aw_ready; // @[SRAM.scala 84:32:chipyard.TestHarness.ArianeConfig.fir@229918.4]
  wire  _T_107; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229850.4]
  wire  _GEN_1; // @[SRAM.scala 69:25:chipyard.TestHarness.ArianeConfig.fir@229851.4]
  reg  r_full; // @[SRAM.scala 91:25:chipyard.TestHarness.ArianeConfig.fir@229928.4]
  reg [31:0] _RAND_5;
  reg [3:0] r_id; // @[SRAM.scala 92:21:chipyard.TestHarness.ArianeConfig.fir@229929.4]
  reg [31:0] _RAND_6;
  reg  r_echo_real_last; // @[SRAM.scala 93:21:chipyard.TestHarness.ArianeConfig.fir@229930.4]
  reg [31:0] _RAND_7;
  wire  _T_135; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229931.4]
  wire  _GEN_40; // @[SRAM.scala 95:25:chipyard.TestHarness.ArianeConfig.fir@229932.4]
  wire  _T_144; // @[SRAM.scala 109:34:chipyard.TestHarness.ArianeConfig.fir@229970.4]
  wire  in_ar_ready; // @[SRAM.scala 109:31:chipyard.TestHarness.ArianeConfig.fir@229971.4]
  wire  _T_136; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229935.4]
  wire  _GEN_41; // @[SRAM.scala 96:25:chipyard.TestHarness.ArianeConfig.fir@229936.4]
  reg  _T_142; // @[package.scala 75:91:chipyard.TestHarness.ArianeConfig.fir@229955.4]
  reg [31:0] _RAND_8;
  reg [7:0] _T_143_0; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_9;
  reg [7:0] _T_143_1; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_10;
  reg [7:0] _T_143_2; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_11;
  reg [7:0] _T_143_3; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_12;
  reg [7:0] _T_143_4; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_13;
  reg [7:0] _T_143_5; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_14;
  reg [7:0] _T_143_6; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_15;
  reg [7:0] _T_143_7; // @[Reg.scala 15:16:chipyard.TestHarness.ArianeConfig.fir@229957.4]
  reg [31:0] _RAND_16;
  wire [7:0] _GEN_49; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_50; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_51; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_52; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_53; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_54; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_55; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [7:0] _GEN_56; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  wire [31:0] _T_150; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229979.4]
  wire [31:0] _T_153; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229982.4]
  mem_inTestHarness mem ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4]
    .R0_addr(mem_R0_addr),
    .R0_en(mem_R0_en),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .R0_data_4(mem_R0_data_4),
    .R0_data_5(mem_R0_data_5),
    .R0_data_6(mem_R0_data_6),
    .R0_data_7(mem_R0_data_7),
    .W0_addr(mem_W0_addr),
    .W0_en(mem_W0_en),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_data_4(mem_W0_data_4),
    .W0_data_5(mem_W0_data_5),
    .W0_data_6(mem_W0_data_6),
    .W0_data_7(mem_W0_data_7),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3),
    .W0_mask_4(mem_W0_mask_4),
    .W0_mask_5(mem_W0_mask_5),
    .W0_mask_6(mem_W0_mask_6),
    .W0_mask_7(mem_W0_mask_7)
  );
  assign _T_30 = {auto_in_ar_bits_addr[8],auto_in_ar_bits_addr[7],auto_in_ar_bits_addr[6],auto_in_ar_bits_addr[5],auto_in_ar_bits_addr[4],auto_in_ar_bits_addr[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229761.4]
  assign _T_36 = {auto_in_ar_bits_addr[14],auto_in_ar_bits_addr[13],auto_in_ar_bits_addr[12],auto_in_ar_bits_addr[11],auto_in_ar_bits_addr[10],auto_in_ar_bits_addr[9],_T_30}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229767.4]
  assign _T_41 = {auto_in_ar_bits_addr[20],auto_in_ar_bits_addr[19],auto_in_ar_bits_addr[18],auto_in_ar_bits_addr[17],auto_in_ar_bits_addr[16],auto_in_ar_bits_addr[15]}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229772.4]
  assign _T_48 = {auto_in_ar_bits_addr[27],auto_in_ar_bits_addr[26],auto_in_ar_bits_addr[25],auto_in_ar_bits_addr[24],auto_in_ar_bits_addr[23],auto_in_ar_bits_addr[22],auto_in_ar_bits_addr[21],_T_41}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229779.4]
  assign _T_79 = {auto_in_aw_bits_addr[8],auto_in_aw_bits_addr[7],auto_in_aw_bits_addr[6],auto_in_aw_bits_addr[5],auto_in_aw_bits_addr[4],auto_in_aw_bits_addr[3]}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229811.4]
  assign _T_85 = {auto_in_aw_bits_addr[14],auto_in_aw_bits_addr[13],auto_in_aw_bits_addr[12],auto_in_aw_bits_addr[11],auto_in_aw_bits_addr[10],auto_in_aw_bits_addr[9],_T_79}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229817.4]
  assign _T_90 = {auto_in_aw_bits_addr[20],auto_in_aw_bits_addr[19],auto_in_aw_bits_addr[18],auto_in_aw_bits_addr[17],auto_in_aw_bits_addr[16],auto_in_aw_bits_addr[15]}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229822.4]
  assign _T_97 = {auto_in_aw_bits_addr[27],auto_in_aw_bits_addr[26],auto_in_aw_bits_addr[25],auto_in_aw_bits_addr[24],auto_in_aw_bits_addr[23],auto_in_aw_bits_addr[22],auto_in_aw_bits_addr[21],_T_90}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229829.4]
  assign _T_99 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229832.4]
  assign _T_101 = $signed(_T_99) & -29'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229834.4]
  assign r_sel0 = $signed(_T_101) == 29'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229835.4]
  assign _T_103 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 137:49:chipyard.TestHarness.ArianeConfig.fir@229837.4]
  assign _T_105 = $signed(_T_103) & -29'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.ArianeConfig.fir@229839.4]
  assign w_sel0 = $signed(_T_105) == 29'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.ArianeConfig.fir@229840.4]
  assign _T_106 = auto_in_b_ready & w_full; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229846.4]
  assign _GEN_0 = _T_106 ? 1'h0 : w_full; // @[SRAM.scala 68:25:chipyard.TestHarness.ArianeConfig.fir@229847.4]
  assign _T_128 = ~w_full; // @[SRAM.scala 84:50:chipyard.TestHarness.ArianeConfig.fir@229916.4]
  assign _T_129 = auto_in_b_ready | _T_128; // @[SRAM.scala 84:47:chipyard.TestHarness.ArianeConfig.fir@229917.4]
  assign in_aw_ready = auto_in_w_valid & _T_129; // @[SRAM.scala 84:32:chipyard.TestHarness.ArianeConfig.fir@229918.4]
  assign _T_107 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229850.4]
  assign _GEN_1 = _T_107 | _GEN_0; // @[SRAM.scala 69:25:chipyard.TestHarness.ArianeConfig.fir@229851.4]
  assign _T_135 = auto_in_r_ready & r_full; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229931.4]
  assign _GEN_40 = _T_135 ? 1'h0 : r_full; // @[SRAM.scala 95:25:chipyard.TestHarness.ArianeConfig.fir@229932.4]
  assign _T_144 = ~r_full; // @[SRAM.scala 109:34:chipyard.TestHarness.ArianeConfig.fir@229970.4]
  assign in_ar_ready = auto_in_r_ready | _T_144; // @[SRAM.scala 109:31:chipyard.TestHarness.ArianeConfig.fir@229971.4]
  assign _T_136 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@229935.4]
  assign _GEN_41 = _T_136 | _GEN_40; // @[SRAM.scala 96:25:chipyard.TestHarness.ArianeConfig.fir@229936.4]
  assign _GEN_49 = _T_142 ? mem_R0_data_0 : _T_143_0; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_50 = _T_142 ? mem_R0_data_1 : _T_143_1; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_51 = _T_142 ? mem_R0_data_2 : _T_143_2; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_52 = _T_142 ? mem_R0_data_3 : _T_143_3; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_53 = _T_142 ? mem_R0_data_4 : _T_143_4; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_54 = _T_142 ? mem_R0_data_5 : _T_143_5; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_55 = _T_142 ? mem_R0_data_6 : _T_143_6; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _GEN_56 = _T_142 ? mem_R0_data_7 : _T_143_7; // @[Reg.scala 16:19:chipyard.TestHarness.ArianeConfig.fir@229958.4]
  assign _T_150 = {_GEN_52,_GEN_51,_GEN_50,_GEN_49}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229979.4]
  assign _T_153 = {_GEN_56,_GEN_55,_GEN_54,_GEN_53}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@229982.4]
  assign auto_in_aw_ready = auto_in_w_valid & _T_129; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_w_ready = auto_in_aw_valid & _T_129; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_b_valid = w_full; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_b_bits_id = w_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_b_bits_resp = w_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_b_bits_echo_real_last = w_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_ar_ready = auto_in_r_ready | _T_144; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_r_valid = r_full; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_r_bits_id = r_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_r_bits_data = {_T_153,_T_150}; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_r_bits_resp = r_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign auto_in_r_bits_echo_real_last = r_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@229729.4]
  assign mem_R0_addr = {_T_48,_T_36}; // @[package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229953.6]
  assign mem_R0_en = in_ar_ready & auto_in_ar_valid; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4 package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229952.6]
  assign mem_R0_clk = clock; // @[package.scala 75:58:chipyard.TestHarness.ArianeConfig.fir@229953.6]
  assign mem_W0_addr = {_T_97,_T_85}; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6]
  assign mem_W0_en = _T_107 & w_sel0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.ArianeConfig.fir@229730.4 :chipyard.TestHarness.ArianeConfig.fir@229889.6]
  assign mem_W0_clk = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6]
  assign mem_W0_data_0 = auto_in_w_bits_data[7:0]; // @[:chipyard.TestHarness.ArianeConfig.fir@229891.8]
  assign mem_W0_data_1 = auto_in_w_bits_data[15:8]; // @[:chipyard.TestHarness.ArianeConfig.fir@229894.8]
  assign mem_W0_data_2 = auto_in_w_bits_data[23:16]; // @[:chipyard.TestHarness.ArianeConfig.fir@229897.8]
  assign mem_W0_data_3 = auto_in_w_bits_data[31:24]; // @[:chipyard.TestHarness.ArianeConfig.fir@229900.8]
  assign mem_W0_data_4 = auto_in_w_bits_data[39:32]; // @[:chipyard.TestHarness.ArianeConfig.fir@229903.8]
  assign mem_W0_data_5 = auto_in_w_bits_data[47:40]; // @[:chipyard.TestHarness.ArianeConfig.fir@229906.8]
  assign mem_W0_data_6 = auto_in_w_bits_data[55:48]; // @[:chipyard.TestHarness.ArianeConfig.fir@229909.8]
  assign mem_W0_data_7 = auto_in_w_bits_data[63:56]; // @[:chipyard.TestHarness.ArianeConfig.fir@229912.8]
  assign mem_W0_mask_0 = auto_in_w_bits_strb[0]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229891.8]
  assign mem_W0_mask_1 = auto_in_w_bits_strb[1]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229894.8]
  assign mem_W0_mask_2 = auto_in_w_bits_strb[2]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229897.8]
  assign mem_W0_mask_3 = auto_in_w_bits_strb[3]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229900.8]
  assign mem_W0_mask_4 = auto_in_w_bits_strb[4]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229903.8]
  assign mem_W0_mask_5 = auto_in_w_bits_strb[5]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229906.8]
  assign mem_W0_mask_6 = auto_in_w_bits_strb[6]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229909.8]
  assign mem_W0_mask_7 = auto_in_w_bits_strb[7]; // @[:chipyard.TestHarness.ArianeConfig.fir@229889.6 :chipyard.TestHarness.ArianeConfig.fir@229912.8]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  w_full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  w_id = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  w_echo_real_last = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  r_sel1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  w_sel1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  r_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  r_id = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  r_echo_real_last = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_142 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_143_0 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_143_1 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_143_2 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_143_3 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_143_4 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_143_5 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_143_6 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_143_7 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      w_full <= 1'h0;
    end else begin
      w_full <= _GEN_1;
    end
    if (_T_107) begin
      w_id <= auto_in_aw_bits_id;
    end
    if (_T_107) begin
      w_echo_real_last <= auto_in_aw_bits_echo_real_last;
    end
    if (_T_136) begin
      r_sel1 <= r_sel0;
    end
    if (_T_107) begin
      w_sel1 <= w_sel0;
    end
    if (reset) begin
      r_full <= 1'h0;
    end else begin
      r_full <= _GEN_41;
    end
    if (_T_136) begin
      r_id <= auto_in_ar_bits_id;
    end
    if (_T_136) begin
      r_echo_real_last <= auto_in_ar_bits_echo_real_last;
    end
    _T_142 <= in_ar_ready & auto_in_ar_valid;
    if (_T_142) begin
      _T_143_0 <= mem_R0_data_0;
    end
    if (_T_142) begin
      _T_143_1 <= mem_R0_data_1;
    end
    if (_T_142) begin
      _T_143_2 <= mem_R0_data_2;
    end
    if (_T_142) begin
      _T_143_3 <= mem_R0_data_3;
    end
    if (_T_142) begin
      _T_143_4 <= mem_R0_data_4;
    end
    if (_T_142) begin
      _T_143_5 <= mem_R0_data_5;
    end
    if (_T_142) begin
      _T_143_6 <= mem_R0_data_6;
    end
    if (_T_142) begin
      _T_143_7 <= mem_R0_data_7;
    end
  end
endmodule
module AXI4Xbar_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230118.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230119.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230120.4]
  output        auto_in_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_in_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [63:0] auto_in_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_w_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [3:0]  auto_in_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [1:0]  auto_in_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_in_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_in_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_in_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [3:0]  auto_in_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [63:0] auto_in_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [1:0]  auto_in_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_in_r_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [3:0]  auto_out_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [27:0] auto_out_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [7:0]  auto_out_aw_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [2:0]  auto_out_aw_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [63:0] auto_out_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [7:0]  auto_out_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_w_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [3:0]  auto_out_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [3:0]  auto_out_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [27:0] auto_out_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [7:0]  auto_out_ar_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [2:0]  auto_out_ar_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  output        auto_out_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [3:0]  auto_out_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [63:0] auto_out_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
  input         auto_out_r_bits_last // @[:chipyard.TestHarness.ArianeConfig.fir@230121.4]
);
  wire  _T_44; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230321.4]
  wire  _T_50; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230331.4]
  wire  _T_52; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230333.4]
  wire  _T_53; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230334.4]
  wire  _T_65; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230375.4]
  wire  _T_71; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230385.4]
  wire  _T_73; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230387.4]
  wire  _T_74; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230388.4]
  wire  _T_88; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230435.4]
  wire  _T_94; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230445.4]
  wire  _T_96; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230447.4]
  wire  _T_97; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230448.4]
  wire  _T_109; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230483.4]
  wire  _T_115; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230493.4]
  wire  _T_117; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230495.4]
  wire  _T_118; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230496.4]
  assign _T_44 = ~auto_in_aw_valid; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230321.4]
  assign _T_50 = _T_44 | auto_in_aw_valid; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230331.4]
  assign _T_52 = _T_50 | reset; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230333.4]
  assign _T_53 = ~_T_52; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230334.4]
  assign _T_65 = ~auto_in_ar_valid; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230375.4]
  assign _T_71 = _T_65 | auto_in_ar_valid; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230385.4]
  assign _T_73 = _T_71 | reset; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230387.4]
  assign _T_74 = ~_T_73; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230388.4]
  assign _T_88 = ~auto_out_r_valid; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230435.4]
  assign _T_94 = _T_88 | auto_out_r_valid; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230445.4]
  assign _T_96 = _T_94 | reset; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230447.4]
  assign _T_97 = ~_T_96; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230448.4]
  assign _T_109 = ~auto_out_b_valid; // @[Xbar.scala 260:60:chipyard.TestHarness.ArianeConfig.fir@230483.4]
  assign _T_115 = _T_109 | auto_out_b_valid; // @[Xbar.scala 262:23:chipyard.TestHarness.ArianeConfig.fir@230493.4]
  assign _T_117 = _T_115 | reset; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230495.4]
  assign _T_118 = ~_T_117; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230496.4]
  assign auto_in_aw_ready = auto_out_aw_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230131.4]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230130.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_53) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230336.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_53) begin
          $fatal; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230337.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_74) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230390.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_74) begin
          $fatal; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230391.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_97) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230450.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_97) begin
          $fatal; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230451.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_118) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230498.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_118) begin
          $fatal; // @[Xbar.scala 262:12:chipyard.TestHarness.ArianeConfig.fir@230499.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Queue_38_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230520.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230521.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230522.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  input  [3:0]  io_enq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  input  [27:0] io_enq_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  input         io_enq_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  output [3:0]  io_deq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  output [27:0] io_deq_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
  output        io_deq_bits_echo_real_last // @[:chipyard.TestHarness.ArianeConfig.fir@230523.4]
);
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_id__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire [3:0] ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_id__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_id__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_id__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg [27:0] ram_addr [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg [31:0] _RAND_1;
  wire [27:0] ram_addr__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_addr__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire [27:0] ram_addr__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_addr__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_addr__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_addr__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg  ram_echo_real_last [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg [31:0] _RAND_2;
  wire  ram_echo_real_last__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_echo_real_last__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_echo_real_last__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_echo_real_last__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  wire  ram_echo_real_last__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230526.4]
  reg [31:0] _RAND_3;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230527.4]
  reg [31:0] _RAND_4;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230528.4]
  reg [31:0] _RAND_5;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230529.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230530.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230531.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230532.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230533.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230536.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230553.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230559.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230562.4]
  assign ram_id__T_15_addr = _T_1;
  assign ram_id__T_15_data = ram_id[ram_id__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  assign ram_id__T_5_data = io_enq_bits_id;
  assign ram_id__T_5_addr = _T;
  assign ram_id__T_5_mask = 1'h1;
  assign ram_id__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_addr__T_15_addr = _T_1;
  assign ram_addr__T_15_data = ram_addr[ram_addr__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  assign ram_addr__T_5_data = io_enq_bits_addr;
  assign ram_addr__T_5_addr = _T;
  assign ram_addr__T_5_mask = 1'h1;
  assign ram_addr__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_echo_real_last__T_15_addr = _T_1;
  assign ram_echo_real_last__T_15_data = ram_echo_real_last[ram_echo_real_last__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
  assign ram_echo_real_last__T_5_data = io_enq_bits_echo_real_last;
  assign ram_echo_real_last__T_5_addr = _T;
  assign ram_echo_real_last__T_5_mask = 1'h1;
  assign ram_echo_real_last__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230529.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230530.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230531.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230532.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230533.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230536.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230553.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230559.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230562.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230569.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230567.4]
  assign io_deq_bits_id = ram_id__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230580.4]
  assign io_deq_bits_addr = ram_addr__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230579.4]
  assign io_deq_bits_echo_real_last = ram_echo_real_last__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230571.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[27:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_real_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_5_en & ram_id__T_5_mask) begin
      ram_id[ram_id__T_5_addr] <= ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
    end
    if(ram_addr__T_5_en & ram_addr__T_5_mask) begin
      ram_addr[ram_addr__T_5_addr] <= ram_addr__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
    end
    if(ram_echo_real_last__T_5_en & ram_echo_real_last__T_5_mask) begin
      ram_echo_real_last[ram_echo_real_last__T_5_addr] <= ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230525.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module Queue_39_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230588.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230589.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230590.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  input  [7:0]  io_enq_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
  output [7:0]  io_deq_bits_strb // @[:chipyard.TestHarness.ArianeConfig.fir@230591.4]
);
  reg [63:0] ram_data [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  reg [63:0] _RAND_0;
  wire [63:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire [63:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  reg [7:0] ram_strb [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  reg [31:0] _RAND_1;
  wire [7:0] ram_strb__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_strb__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire [7:0] ram_strb__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_strb__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_strb__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  wire  ram_strb__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230594.4]
  reg [31:0] _RAND_2;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230595.4]
  reg [31:0] _RAND_3;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230596.4]
  reg [31:0] _RAND_4;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230597.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230598.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230599.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230600.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230601.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230604.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230614.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230620.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230623.4]
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_strb__T_15_addr = _T_1;
  assign ram_strb__T_15_data = ram_strb[ram_strb__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
  assign ram_strb__T_5_data = io_enq_bits_strb;
  assign ram_strb__T_5_addr = _T;
  assign ram_strb__T_5_mask = 1'h1;
  assign ram_strb__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230597.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230598.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230599.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230600.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230601.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230604.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230614.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230620.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230623.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230630.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230628.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230634.4]
  assign io_deq_bits_strb = ram_strb__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230633.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
    end
    if(ram_strb__T_5_en & ram_strb__T_5_mask) begin
      ram_strb[ram_strb__T_5_addr] <= ram_strb__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230593.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module Queue_40_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230642.2]
  input        clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230643.4]
  input        reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230644.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  input  [3:0] io_enq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  input  [1:0] io_enq_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  input        io_enq_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  output [3:0] io_deq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  output [1:0] io_deq_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
  output       io_deq_bits_echo_real_last // @[:chipyard.TestHarness.ArianeConfig.fir@230645.4]
);
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_id__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire [3:0] ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_id__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_id__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_id__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg [1:0] ram_resp [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg [31:0] _RAND_1;
  wire [1:0] ram_resp__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_resp__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire [1:0] ram_resp__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_resp__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_resp__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_resp__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg  ram_echo_real_last [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg [31:0] _RAND_2;
  wire  ram_echo_real_last__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_echo_real_last__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_echo_real_last__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_echo_real_last__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  wire  ram_echo_real_last__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230648.4]
  reg [31:0] _RAND_3;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230649.4]
  reg [31:0] _RAND_4;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230650.4]
  reg [31:0] _RAND_5;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230651.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230652.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230653.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230654.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230655.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230658.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230668.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230674.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230677.4]
  assign ram_id__T_15_addr = _T_1;
  assign ram_id__T_15_data = ram_id[ram_id__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  assign ram_id__T_5_data = io_enq_bits_id;
  assign ram_id__T_5_addr = _T;
  assign ram_id__T_5_mask = 1'h1;
  assign ram_id__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_resp__T_15_addr = _T_1;
  assign ram_resp__T_15_data = ram_resp[ram_resp__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  assign ram_resp__T_5_data = io_enq_bits_resp;
  assign ram_resp__T_5_addr = _T;
  assign ram_resp__T_5_mask = 1'h1;
  assign ram_resp__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_echo_real_last__T_15_addr = _T_1;
  assign ram_echo_real_last__T_15_data = ram_echo_real_last[ram_echo_real_last__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
  assign ram_echo_real_last__T_5_data = io_enq_bits_echo_real_last;
  assign ram_echo_real_last__T_5_addr = _T;
  assign ram_echo_real_last__T_5_mask = 1'h1;
  assign ram_echo_real_last__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230651.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230652.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230653.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230654.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230655.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230658.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230668.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230674.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230677.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230684.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230682.4]
  assign io_deq_bits_id = ram_id__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230688.4]
  assign io_deq_bits_resp = ram_resp__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230687.4]
  assign io_deq_bits_echo_real_last = ram_echo_real_last__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230686.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_resp[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_real_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_5_en & ram_id__T_5_mask) begin
      ram_id[ram_id__T_5_addr] <= ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
    end
    if(ram_resp__T_5_en & ram_resp__T_5_mask) begin
      ram_resp[ram_resp__T_5_addr] <= ram_resp__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
    end
    if(ram_echo_real_last__T_5_en & ram_echo_real_last__T_5_mask) begin
      ram_echo_real_last[ram_echo_real_last__T_5_addr] <= ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230647.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module Queue_42_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230764.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230765.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230766.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input  [3:0]  io_enq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input  [1:0]  io_enq_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input         io_enq_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output [3:0]  io_deq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output [1:0]  io_deq_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output        io_deq_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
  output        io_deq_bits_last // @[:chipyard.TestHarness.ArianeConfig.fir@230767.4]
);
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_id__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire [3:0] ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_id__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_id__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_id__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [63:0] ram_data [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [63:0] _RAND_1;
  wire [63:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire [63:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [1:0] ram_resp [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [31:0] _RAND_2;
  wire [1:0] ram_resp__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_resp__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire [1:0] ram_resp__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_resp__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_resp__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_resp__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg  ram_echo_real_last [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [31:0] _RAND_3;
  wire  ram_echo_real_last__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_echo_real_last__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_echo_real_last__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_echo_real_last__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_echo_real_last__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg  ram_last [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg [31:0] _RAND_4;
  wire  ram_last__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_last__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_last__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_last__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  wire  ram_last__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230770.4]
  reg [31:0] _RAND_5;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@230771.4]
  reg [31:0] _RAND_6;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230772.4]
  reg [31:0] _RAND_7;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230773.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230774.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230775.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230776.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230777.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230780.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230792.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230798.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230801.4]
  assign ram_id__T_15_addr = _T_1;
  assign ram_id__T_15_data = ram_id[ram_id__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  assign ram_id__T_5_data = io_enq_bits_id;
  assign ram_id__T_5_addr = _T;
  assign ram_id__T_5_mask = 1'h1;
  assign ram_id__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_resp__T_15_addr = _T_1;
  assign ram_resp__T_15_data = ram_resp[ram_resp__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  assign ram_resp__T_5_data = io_enq_bits_resp;
  assign ram_resp__T_5_addr = _T;
  assign ram_resp__T_5_mask = 1'h1;
  assign ram_resp__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_echo_real_last__T_15_addr = _T_1;
  assign ram_echo_real_last__T_15_data = ram_echo_real_last[ram_echo_real_last__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  assign ram_echo_real_last__T_5_data = io_enq_bits_echo_real_last;
  assign ram_echo_real_last__T_5_addr = _T;
  assign ram_echo_real_last__T_5_mask = 1'h1;
  assign ram_echo_real_last__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_last__T_15_addr = _T_1;
  assign ram_last__T_15_data = ram_last[ram_last__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
  assign ram_last__T_5_data = 1'h1;
  assign ram_last__T_5_addr = _T;
  assign ram_last__T_5_mask = 1'h1;
  assign ram_last__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@230773.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230774.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@230775.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@230776.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230777.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230780.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230792.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@230798.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230801.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230808.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230806.4]
  assign io_deq_bits_id = ram_id__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230814.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230813.4]
  assign io_deq_bits_resp = ram_resp__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230812.4]
  assign io_deq_bits_echo_real_last = ram_echo_real_last__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230811.4]
  assign io_deq_bits_last = ram_last__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230810.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_1[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_resp[initvar] = _RAND_2[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_real_last[initvar] = _RAND_3[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  maybe_full = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_5_en & ram_id__T_5_mask) begin
      ram_id[ram_id__T_5_addr] <= ram_id__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
    end
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
    end
    if(ram_resp__T_5_en & ram_resp__T_5_mask) begin
      ram_resp[ram_resp__T_5_addr] <= ram_resp__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
    end
    if(ram_echo_real_last__T_5_en & ram_echo_real_last__T_5_mask) begin
      ram_echo_real_last[ram_echo_real_last__T_5_addr] <= ram_echo_real_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
    end
    if(ram_last__T_5_en & ram_last__T_5_mask) begin
      ram_last[ram_last__T_5_addr] <= ram_last__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230769.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module AXI4Buffer_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230822.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230823.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230824.4]
  output        auto_in_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_aw_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [63:0] auto_in_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [3:0]  auto_in_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [1:0]  auto_in_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_b_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_ar_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_in_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [3:0]  auto_in_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [63:0] auto_in_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [1:0]  auto_in_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_r_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_in_r_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [3:0]  auto_out_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [27:0] auto_out_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_aw_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [63:0] auto_out_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [7:0]  auto_out_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [3:0]  auto_out_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_b_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [3:0]  auto_out_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output [27:0] auto_out_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_ar_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  output        auto_out_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [3:0]  auto_out_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [63:0] auto_out_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
  input         auto_out_r_bits_echo_real_last // @[:chipyard.TestHarness.ArianeConfig.fir@230825.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire [27:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire [27:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire [7:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire [7:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_2_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire [27:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire [27:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_3_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [63:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_enq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [63:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_deq_bits_echo_real_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
  Queue_38_inTestHarness Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230836.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_echo_real_last(Queue_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_echo_real_last(Queue_io_deq_bits_echo_real_last)
  );
  Queue_39_inTestHarness Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230865.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_strb(Queue_1_io_enq_bits_strb),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_strb(Queue_1_io_deq_bits_strb)
  );
  Queue_40_inTestHarness Queue_2 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230880.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_id(Queue_2_io_enq_bits_id),
    .io_enq_bits_resp(Queue_2_io_enq_bits_resp),
    .io_enq_bits_echo_real_last(Queue_2_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_id(Queue_2_io_deq_bits_id),
    .io_deq_bits_resp(Queue_2_io_deq_bits_resp),
    .io_deq_bits_echo_real_last(Queue_2_io_deq_bits_echo_real_last)
  );
  Queue_38_inTestHarness Queue_3 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230895.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_id(Queue_3_io_enq_bits_id),
    .io_enq_bits_addr(Queue_3_io_enq_bits_addr),
    .io_enq_bits_echo_real_last(Queue_3_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_id(Queue_3_io_deq_bits_id),
    .io_deq_bits_addr(Queue_3_io_deq_bits_addr),
    .io_deq_bits_echo_real_last(Queue_3_io_deq_bits_echo_real_last)
  );
  Queue_42_inTestHarness Queue_4 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@230924.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_id(Queue_4_io_enq_bits_id),
    .io_enq_bits_data(Queue_4_io_enq_bits_data),
    .io_enq_bits_resp(Queue_4_io_enq_bits_resp),
    .io_enq_bits_echo_real_last(Queue_4_io_enq_bits_echo_real_last),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_id(Queue_4_io_deq_bits_id),
    .io_deq_bits_data(Queue_4_io_deq_bits_data),
    .io_deq_bits_resp(Queue_4_io_deq_bits_resp),
    .io_deq_bits_echo_real_last(Queue_4_io_deq_bits_echo_real_last),
    .io_deq_bits_last(Queue_4_io_deq_bits_last)
  );
  assign auto_in_aw_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_w_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_b_bits_id = Queue_2_io_deq_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_b_bits_resp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_b_bits_echo_real_last = Queue_2_io_deq_bits_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_ar_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_bits_id = Queue_4_io_deq_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_bits_data = Queue_4_io_deq_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_bits_resp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_bits_echo_real_last = Queue_4_io_deq_bits_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_in_r_bits_last = Queue_4_io_deq_bits_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@230835.4]
  assign auto_out_aw_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_aw_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_aw_bits_addr = Queue_io_deq_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_aw_bits_echo_real_last = Queue_io_deq_bits_echo_real_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_w_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_w_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_w_bits_strb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_ar_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_ar_bits_id = Queue_3_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_ar_bits_addr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_ar_bits_echo_real_last = Queue_3_io_deq_bits_echo_real_last; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign auto_out_r_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@230834.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@230837.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@230838.4]
  assign Queue_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230839.4]
  assign Queue_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230849.4]
  assign Queue_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230848.4]
  assign Queue_io_enq_bits_echo_real_last = auto_in_aw_bits_echo_real_last; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230840.4]
  assign Queue_io_deq_ready = auto_out_aw_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230863.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@230866.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@230867.4]
  assign Queue_1_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230868.4]
  assign Queue_1_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230871.4]
  assign Queue_1_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230870.4]
  assign Queue_1_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230878.4]
  assign Queue_2_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@230881.4]
  assign Queue_2_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@230882.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230883.4]
  assign Queue_2_io_enq_bits_id = auto_out_b_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230886.4]
  assign Queue_2_io_enq_bits_resp = auto_out_b_bits_resp; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230885.4]
  assign Queue_2_io_enq_bits_echo_real_last = auto_out_b_bits_echo_real_last; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230884.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230893.4]
  assign Queue_3_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@230896.4]
  assign Queue_3_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@230897.4]
  assign Queue_3_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230898.4]
  assign Queue_3_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230908.4]
  assign Queue_3_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230907.4]
  assign Queue_3_io_enq_bits_echo_real_last = auto_in_ar_bits_echo_real_last; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230899.4]
  assign Queue_3_io_deq_ready = auto_out_ar_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230922.4]
  assign Queue_4_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@230925.4]
  assign Queue_4_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@230926.4]
  assign Queue_4_io_enq_valid = auto_out_r_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@230927.4]
  assign Queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230932.4]
  assign Queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230931.4]
  assign Queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230930.4]
  assign Queue_4_io_enq_bits_echo_real_last = auto_out_r_bits_echo_real_last; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@230929.4]
  assign Queue_4_io_deq_ready = auto_in_r_ready; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@230941.4]
endmodule
module Queue_43_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@230944.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@230945.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@230946.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input  [3:0]  io_enq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input  [27:0] io_enq_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input  [7:0]  io_enq_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input  [2:0]  io_enq_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input  [1:0]  io_enq_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output [3:0]  io_deq_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output [27:0] io_deq_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output [7:0]  io_deq_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output [2:0]  io_deq_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
  output [1:0]  io_deq_bits_burst // @[:chipyard.TestHarness.ArianeConfig.fir@230947.4]
);
  reg [3:0] ram_id [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_id__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire [3:0] ram_id__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_id__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_id__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_id__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [27:0] ram_addr [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [31:0] _RAND_1;
  wire [27:0] ram_addr__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_addr__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire [27:0] ram_addr__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_addr__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_addr__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_addr__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [7:0] ram_len [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [31:0] _RAND_2;
  wire [7:0] ram_len__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_len__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire [7:0] ram_len__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_len__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_len__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_len__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_size__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_size__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire [2:0] ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_size__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_size__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_size__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [1:0] ram_burst [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg [31:0] _RAND_4;
  wire [1:0] ram_burst__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_burst__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire [1:0] ram_burst__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_burst__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_burst__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  wire  ram_burst__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@230950.4]
  reg [31:0] _RAND_5;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230952.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230955.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230958.4]
  wire  _GEN_15; // @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@231007.6]
  wire  do_enq; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
  wire  do_deq; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230975.4]
  wire  _T_5; // @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@230979.4]
  assign ram_id__T_7_addr = 1'h0;
  assign ram_id__T_7_data = ram_id[ram_id__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  assign ram_id__T_3_data = io_enq_bits_id;
  assign ram_id__T_3_addr = 1'h0;
  assign ram_id__T_3_mask = 1'h1;
  assign ram_id__T_3_en = empty ? _GEN_15 : _T_1;
  assign ram_addr__T_7_addr = 1'h0;
  assign ram_addr__T_7_data = ram_addr[ram_addr__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  assign ram_addr__T_3_data = io_enq_bits_addr;
  assign ram_addr__T_3_addr = 1'h0;
  assign ram_addr__T_3_mask = 1'h1;
  assign ram_addr__T_3_en = empty ? _GEN_15 : _T_1;
  assign ram_len__T_7_addr = 1'h0;
  assign ram_len__T_7_data = ram_len[ram_len__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  assign ram_len__T_3_data = io_enq_bits_len;
  assign ram_len__T_3_addr = 1'h0;
  assign ram_len__T_3_mask = 1'h1;
  assign ram_len__T_3_en = empty ? _GEN_15 : _T_1;
  assign ram_size__T_7_addr = 1'h0;
  assign ram_size__T_7_data = ram_size[ram_size__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  assign ram_size__T_3_data = io_enq_bits_size;
  assign ram_size__T_3_addr = 1'h0;
  assign ram_size__T_3_mask = 1'h1;
  assign ram_size__T_3_en = empty ? _GEN_15 : _T_1;
  assign ram_burst__T_7_addr = 1'h0;
  assign ram_burst__T_7_data = ram_burst[ram_burst__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
  assign ram_burst__T_3_data = io_enq_bits_burst;
  assign ram_burst__T_3_addr = 1'h0;
  assign ram_burst__T_3_mask = 1'h1;
  assign ram_burst__T_3_en = empty ? _GEN_15 : _T_1;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@230952.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230955.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@230958.4]
  assign _GEN_15 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:chipyard.TestHarness.ArianeConfig.fir@231007.6]
  assign do_enq = empty ? _GEN_15 : _T_1; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:chipyard.TestHarness.ArianeConfig.fir@230996.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@230975.4]
  assign _T_5 = ~empty; // @[Decoupled.scala 231:19:chipyard.TestHarness.ArianeConfig.fir@230979.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@230982.4]
  assign io_deq_valid = io_enq_valid | _T_5; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@230980.4 Decoupled.scala 236:40:chipyard.TestHarness.ArianeConfig.fir@230994.6]
  assign io_deq_bits_id = empty ? io_enq_bits_id : ram_id__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230992.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231005.6]
  assign io_deq_bits_addr = empty ? io_enq_bits_addr : ram_addr__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230991.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231004.6]
  assign io_deq_bits_len = empty ? io_enq_bits_len : ram_len__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230990.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231003.6]
  assign io_deq_bits_size = empty ? io_enq_bits_size : ram_size__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230989.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231002.6]
  assign io_deq_bits_burst = empty ? io_enq_bits_burst : ram_burst__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@230988.4 Decoupled.scala 238:19:chipyard.TestHarness.ArianeConfig.fir@231001.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[27:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_id__T_3_en & ram_id__T_3_mask) begin
      ram_id[ram_id__T_3_addr] <= ram_id__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
    end
    if(ram_addr__T_3_en & ram_addr__T_3_mask) begin
      ram_addr[ram_addr__T_3_addr] <= ram_addr__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
    end
    if(ram_len__T_3_en & ram_len__T_3_mask) begin
      ram_len[ram_len__T_3_addr] <= ram_len__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
    end
    if(ram_size__T_3_en & ram_size__T_3_mask) begin
      ram_size[ram_size__T_3_addr] <= ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
    end
    if(ram_burst__T_3_en & ram_burst__T_3_mask) begin
      ram_burst[ram_burst__T_3_addr] <= ram_burst__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@230949.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _T_1;
        end
      end else begin
        maybe_full <= _T_1;
      end
    end
  end
endmodule
module AXI4Fragmenter_1_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@231148.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@231149.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@231150.4]
  output        auto_in_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [27:0] auto_in_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_in_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [63:0] auto_in_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_w_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_in_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [3:0]  auto_in_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [1:0]  auto_in_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_in_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [27:0] auto_in_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_in_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_in_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [3:0]  auto_in_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [63:0] auto_in_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [1:0]  auto_in_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_in_r_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [3:0]  auto_out_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [27:0] auto_out_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_aw_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [63:0] auto_out_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [7:0]  auto_out_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [3:0]  auto_out_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_b_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [3:0]  auto_out_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output [27:0] auto_out_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_ar_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  output        auto_out_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [3:0]  auto_out_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [63:0] auto_out_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_r_bits_echo_real_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
  input         auto_out_r_bits_last // @[:chipyard.TestHarness.ArianeConfig.fir@231151.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [27:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [27:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [27:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [27:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire [63:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire [7:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire [63:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire [7:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
  reg  _T_4; // @[Fragmenter.scala 61:29:chipyard.TestHarness.ArianeConfig.fir@231190.4]
  reg [31:0] _RAND_0;
  reg [27:0] _T_5; // @[Fragmenter.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@231191.4]
  reg [31:0] _RAND_1;
  reg [7:0] _T_6; // @[Fragmenter.scala 63:25:chipyard.TestHarness.ArianeConfig.fir@231192.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231183.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231193.4]
  wire [27:0] _T_2_bits_addr; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231184.4]
  wire [27:0] _T_8; // @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231194.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231181.4]
  wire  _T_50; // @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231236.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231182.4]
  wire [15:0] _T_59; // @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231245.4]
  wire [27:0] _GEN_48; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231246.4]
  wire [27:0] _T_61; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231247.4]
  wire [15:0] _T_62; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231248.4]
  wire [22:0] _GEN_49; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
  wire [22:0] _T_63; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
  wire  _T_66; // @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231254.4]
  wire [27:0] _GEN_50; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
  wire [27:0] _T_67; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
  wire [27:0] _T_68; // @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231257.6]
  wire [27:0] _T_69; // @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231258.6]
  wire [27:0] _T_70; // @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231259.6]
  wire [27:0] _T_71; // @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231260.6]
  wire  _T_73; // @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231267.4]
  wire [27:0] _T_75; // @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231281.4]
  wire [9:0] _T_77; // @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231283.4]
  wire [2:0] _T_79; // @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231285.4]
  wire [27:0] _GEN_52; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
  wire [27:0] _T_80; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
  wire  _T_2_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231186.4]
  wire  _T_82; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231289.4]
  wire  _T_83; // @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231291.6]
  wire [8:0] _GEN_53; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231294.6]
  wire [8:0] _T_85; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231295.6]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231290.4]
  reg  _T_88; // @[Fragmenter.scala 61:29:chipyard.TestHarness.ArianeConfig.fir@231326.4]
  reg [31:0] _RAND_3;
  reg [27:0] _T_89; // @[Fragmenter.scala 62:25:chipyard.TestHarness.ArianeConfig.fir@231327.4]
  reg [31:0] _RAND_4;
  reg [7:0] _T_90; // @[Fragmenter.scala 63:25:chipyard.TestHarness.ArianeConfig.fir@231328.4]
  reg [31:0] _RAND_5;
  wire [7:0] _T_86_bits_len; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231319.4]
  wire [7:0] _T_91; // @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231329.4]
  wire [27:0] _T_86_bits_addr; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231320.4]
  wire [27:0] _T_92; // @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231330.4]
  wire [1:0] _T_86_bits_burst; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231317.4]
  wire  _T_134; // @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231372.4]
  wire [2:0] _T_86_bits_size; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231318.4]
  wire [15:0] _T_143; // @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231381.4]
  wire [27:0] _GEN_58; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231382.4]
  wire [27:0] _T_145; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231383.4]
  wire [15:0] _T_146; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231384.4]
  wire [22:0] _GEN_59; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
  wire [22:0] _T_147; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
  wire  _T_150; // @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231390.4]
  wire [27:0] _GEN_60; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
  wire [27:0] _T_151; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
  wire [27:0] _T_152; // @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231393.6]
  wire [27:0] _T_153; // @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231394.6]
  wire [27:0] _T_154; // @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231395.6]
  wire [27:0] _T_155; // @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231396.6]
  wire  _T_157; // @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231403.4]
  reg [8:0] _T_182; // @[Fragmenter.scala 165:30:chipyard.TestHarness.ArianeConfig.fir@231494.4]
  reg [31:0] _RAND_6;
  wire  _T_183; // @[Fragmenter.scala 166:30:chipyard.TestHarness.ArianeConfig.fir@231495.4]
  reg  _T_171; // @[Fragmenter.scala 151:35:chipyard.TestHarness.ArianeConfig.fir@231461.4]
  reg [31:0] _RAND_7;
  wire  _T_178; // @[Fragmenter.scala 159:52:chipyard.TestHarness.ArianeConfig.fir@231477.4]
  wire  _T_179; // @[Fragmenter.scala 159:35:chipyard.TestHarness.ArianeConfig.fir@231478.4]
  wire [27:0] _T_159; // @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231417.4]
  wire [9:0] _T_161; // @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231419.4]
  wire [2:0] _T_163; // @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231421.4]
  wire [27:0] _GEN_62; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
  wire [27:0] _T_164; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
  wire  _T_86_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231322.4]
  wire  _T_166; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231425.4]
  wire  _T_167; // @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231427.6]
  wire [8:0] _GEN_63; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231430.6]
  wire [8:0] _T_169; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231431.6]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231426.4]
  wire  _T_180; // @[Fragmenter.scala 160:38:chipyard.TestHarness.ArianeConfig.fir@231480.4]
  wire  _T_181; // @[Fragmenter.scala 160:35:chipyard.TestHarness.ArianeConfig.fir@231481.4]
  wire  _T_174; // @[Fragmenter.scala 154:26:chipyard.TestHarness.ArianeConfig.fir@231466.4]
  wire  _GEN_10; // @[Fragmenter.scala 154:43:chipyard.TestHarness.ArianeConfig.fir@231467.4]
  wire  _T_177; // @[Fragmenter.scala 158:35:chipyard.TestHarness.ArianeConfig.fir@231475.4]
  wire  _T_175; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231470.4]
  wire [8:0] _T_184; // @[Fragmenter.scala 167:35:chipyard.TestHarness.ArianeConfig.fir@231496.4]
  wire [8:0] _T_185; // @[Fragmenter.scala 167:23:chipyard.TestHarness.ArianeConfig.fir@231497.4]
  wire  _T_186; // @[Fragmenter.scala 168:27:chipyard.TestHarness.ArianeConfig.fir@231498.4]
  wire  _T_170_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231446.4]
  wire  _T_197; // @[Fragmenter.scala 174:37:chipyard.TestHarness.ArianeConfig.fir@231515.4]
  wire  _T_198; // @[Fragmenter.scala 174:51:chipyard.TestHarness.ArianeConfig.fir@231516.4]
  wire  _T_199; // @[Fragmenter.scala 174:33:chipyard.TestHarness.ArianeConfig.fir@231517.4]
  wire  _T_187; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231499.4]
  wire [8:0] _GEN_64; // @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231500.4]
  wire [8:0] _T_189; // @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231501.4]
  wire  _T_191; // @[Fragmenter.scala 170:15:chipyard.TestHarness.ArianeConfig.fir@231504.4]
  wire  _T_192; // @[Fragmenter.scala 170:39:chipyard.TestHarness.ArianeConfig.fir@231505.4]
  wire  _T_193; // @[Fragmenter.scala 170:29:chipyard.TestHarness.ArianeConfig.fir@231506.4]
  wire  _T_195; // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231508.4]
  wire  _T_196; // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231509.4]
  wire  _T_203; // @[Fragmenter.scala 179:15:chipyard.TestHarness.ArianeConfig.fir@231527.4]
  wire  _T_170_bits_last; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231443.4]
  wire  _T_204; // @[Fragmenter.scala 179:31:chipyard.TestHarness.ArianeConfig.fir@231528.4]
  wire  _T_205; // @[Fragmenter.scala 179:28:chipyard.TestHarness.ArianeConfig.fir@231529.4]
  wire  _T_206; // @[Fragmenter.scala 179:47:chipyard.TestHarness.ArianeConfig.fir@231530.4]
  wire  _T_208; // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231532.4]
  wire  _T_209; // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231533.4]
  wire  _T_212; // @[Fragmenter.scala 190:36:chipyard.TestHarness.ArianeConfig.fir@231552.4]
  wire  _T_213; // @[Fragmenter.scala 190:33:chipyard.TestHarness.ArianeConfig.fir@231553.4]
  reg [1:0] _T_215_0; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_8;
  reg [1:0] _T_215_1; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_9;
  reg [1:0] _T_215_2; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_10;
  reg [1:0] _T_215_3; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_11;
  reg [1:0] _T_215_4; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_12;
  reg [1:0] _T_215_5; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_13;
  reg [1:0] _T_215_6; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_14;
  reg [1:0] _T_215_7; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_15;
  reg [1:0] _T_215_8; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_16;
  reg [1:0] _T_215_9; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_17;
  reg [1:0] _T_215_10; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_18;
  reg [1:0] _T_215_11; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_19;
  reg [1:0] _T_215_12; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_20;
  reg [1:0] _T_215_13; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_21;
  reg [1:0] _T_215_14; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_22;
  reg [1:0] _T_215_15; // @[Fragmenter.scala 193:26:chipyard.TestHarness.ArianeConfig.fir@231573.4]
  reg [31:0] _RAND_23;
  wire [1:0] _GEN_13; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_14; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_15; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_16; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_17; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_18; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_19; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_20; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_21; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_22; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_23; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_24; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_25; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_26; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [1:0] _GEN_27; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  wire [15:0] _T_218; // @[OneHot.scala 65:12:chipyard.TestHarness.ArianeConfig.fir@231577.4]
  wire  _T_236; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231595.4]
  wire  _T_237; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231596.4]
  wire [1:0] _T_238; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231598.6]
  wire  _T_241; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231603.4]
  wire [1:0] _T_242; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231605.6]
  wire  _T_245; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231610.4]
  wire [1:0] _T_246; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231612.6]
  wire  _T_249; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231617.4]
  wire [1:0] _T_250; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231619.6]
  wire  _T_253; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231624.4]
  wire [1:0] _T_254; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231626.6]
  wire  _T_257; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231631.4]
  wire [1:0] _T_258; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231633.6]
  wire  _T_261; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231638.4]
  wire [1:0] _T_262; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231640.6]
  wire  _T_265; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231645.4]
  wire [1:0] _T_266; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231647.6]
  wire  _T_269; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231652.4]
  wire [1:0] _T_270; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231654.6]
  wire  _T_273; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231659.4]
  wire [1:0] _T_274; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231661.6]
  wire  _T_277; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231666.4]
  wire [1:0] _T_278; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231668.6]
  wire  _T_281; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231673.4]
  wire [1:0] _T_282; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231675.6]
  wire  _T_285; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231680.4]
  wire [1:0] _T_286; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231682.6]
  wire  _T_289; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231687.4]
  wire [1:0] _T_290; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231689.6]
  wire  _T_293; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231694.4]
  wire [1:0] _T_294; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231696.6]
  wire  _T_297; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231701.4]
  wire [1:0] _T_298; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231703.6]
  Queue_43_inTestHarness Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231162.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst)
  );
  Queue_43_inTestHarness Queue_1 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231298.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_1_io_enq_bits_burst),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst)
  );
  Queue_13_inTestHarness Queue_2 ( // @[Decoupled.scala 287:21:chipyard.TestHarness.ArianeConfig.fir@231434.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_data(Queue_2_io_enq_bits_data),
    .io_enq_bits_strb(Queue_2_io_enq_bits_strb),
    .io_enq_bits_last(Queue_2_io_enq_bits_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_data(Queue_2_io_deq_bits_data),
    .io_deq_bits_strb(Queue_2_io_deq_bits_strb),
    .io_deq_bits_last(Queue_2_io_deq_bits_last)
  );
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231183.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231193.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231184.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231194.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231181.4]
  assign _T_50 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231236.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231182.4]
  assign _T_59 = 16'h1 << _T_2_bits_size; // @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231245.4]
  assign _GEN_48 = {{12'd0}, _T_59}; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231246.4]
  assign _T_61 = _T_8 + _GEN_48; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231247.4]
  assign _T_62 = {_T_2_bits_len,8'hff}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231248.4]
  assign _GEN_49 = {{7'd0}, _T_62}; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
  assign _T_63 = _GEN_49 << _T_2_bits_size; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231249.4]
  assign _T_66 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231254.4]
  assign _GEN_50 = {{13'd0}, _T_63[22:8]}; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
  assign _T_67 = _T_61 & _GEN_50; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231256.6]
  assign _T_68 = ~_T_2_bits_addr; // @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231257.6]
  assign _T_69 = _T_68 | _GEN_50; // @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231258.6]
  assign _T_70 = ~_T_69; // @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231259.6]
  assign _T_71 = _T_67 | _T_70; // @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231260.6]
  assign _T_73 = 8'h0 == _T_7; // @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231267.4]
  assign _T_75 = ~_T_8; // @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231281.4]
  assign _T_77 = 10'h7 << _T_2_bits_size; // @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231283.4]
  assign _T_79 = ~_T_77[2:0]; // @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231285.4]
  assign _GEN_52 = {{25'd0}, _T_79}; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
  assign _T_80 = _T_75 | _GEN_52; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231286.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231176.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231186.4]
  assign _T_82 = auto_out_ar_ready & _T_2_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231289.4]
  assign _T_83 = ~_T_73; // @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231291.6]
  assign _GEN_53 = {{1'd0}, _T_7}; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231294.6]
  assign _T_85 = _GEN_53 - 9'h1; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231295.6]
  assign _GEN_4 = _T_82 ? _T_85 : {{1'd0}, _T_6}; // @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231290.4]
  assign _T_86_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231319.4]
  assign _T_91 = _T_88 ? _T_90 : _T_86_bits_len; // @[Fragmenter.scala 65:23:chipyard.TestHarness.ArianeConfig.fir@231329.4]
  assign _T_86_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231320.4]
  assign _T_92 = _T_88 ? _T_89 : _T_86_bits_addr; // @[Fragmenter.scala 66:23:chipyard.TestHarness.ArianeConfig.fir@231330.4]
  assign _T_86_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231317.4]
  assign _T_134 = _T_86_bits_burst == 2'h0; // @[Fragmenter.scala 93:34:chipyard.TestHarness.ArianeConfig.fir@231372.4]
  assign _T_86_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231318.4]
  assign _T_143 = 16'h1 << _T_86_bits_size; // @[Fragmenter.scala 101:38:chipyard.TestHarness.ArianeConfig.fir@231381.4]
  assign _GEN_58 = {{12'd0}, _T_143}; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231382.4]
  assign _T_145 = _T_92 + _GEN_58; // @[Fragmenter.scala 101:29:chipyard.TestHarness.ArianeConfig.fir@231383.4]
  assign _T_146 = {_T_86_bits_len,8'hff}; // @[Cat.scala 29:58:chipyard.TestHarness.ArianeConfig.fir@231384.4]
  assign _GEN_59 = {{7'd0}, _T_146}; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
  assign _T_147 = _GEN_59 << _T_86_bits_size; // @[Bundles.scala 30:21:chipyard.TestHarness.ArianeConfig.fir@231385.4]
  assign _T_150 = _T_86_bits_burst == 2'h2; // @[Fragmenter.scala 104:28:chipyard.TestHarness.ArianeConfig.fir@231390.4]
  assign _GEN_60 = {{13'd0}, _T_147[22:8]}; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
  assign _T_151 = _T_145 & _GEN_60; // @[Fragmenter.scala 105:33:chipyard.TestHarness.ArianeConfig.fir@231392.6]
  assign _T_152 = ~_T_86_bits_addr; // @[Fragmenter.scala 105:49:chipyard.TestHarness.ArianeConfig.fir@231393.6]
  assign _T_153 = _T_152 | _GEN_60; // @[Fragmenter.scala 105:62:chipyard.TestHarness.ArianeConfig.fir@231394.6]
  assign _T_154 = ~_T_153; // @[Fragmenter.scala 105:47:chipyard.TestHarness.ArianeConfig.fir@231395.6]
  assign _T_155 = _T_151 | _T_154; // @[Fragmenter.scala 105:45:chipyard.TestHarness.ArianeConfig.fir@231396.6]
  assign _T_157 = 8'h0 == _T_91; // @[Fragmenter.scala 111:27:chipyard.TestHarness.ArianeConfig.fir@231403.4]
  assign _T_183 = _T_182 == 9'h0; // @[Fragmenter.scala 166:30:chipyard.TestHarness.ArianeConfig.fir@231495.4]
  assign _T_178 = _T_183 | _T_171; // @[Fragmenter.scala 159:52:chipyard.TestHarness.ArianeConfig.fir@231477.4]
  assign _T_179 = auto_out_aw_ready & _T_178; // @[Fragmenter.scala 159:35:chipyard.TestHarness.ArianeConfig.fir@231478.4]
  assign _T_159 = ~_T_92; // @[Fragmenter.scala 123:28:chipyard.TestHarness.ArianeConfig.fir@231417.4]
  assign _T_161 = 10'h7 << _T_86_bits_size; // @[package.scala 189:77:chipyard.TestHarness.ArianeConfig.fir@231419.4]
  assign _T_163 = ~_T_161[2:0]; // @[package.scala 189:46:chipyard.TestHarness.ArianeConfig.fir@231421.4]
  assign _GEN_62 = {{25'd0}, _T_163}; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
  assign _T_164 = _T_159 | _GEN_62; // @[Fragmenter.scala 123:34:chipyard.TestHarness.ArianeConfig.fir@231422.4]
  assign _T_86_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231312.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231322.4]
  assign _T_166 = _T_179 & _T_86_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231425.4]
  assign _T_167 = ~_T_157; // @[Fragmenter.scala 126:19:chipyard.TestHarness.ArianeConfig.fir@231427.6]
  assign _GEN_63 = {{1'd0}, _T_91}; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231430.6]
  assign _T_169 = _GEN_63 - 9'h1; // @[Fragmenter.scala 128:25:chipyard.TestHarness.ArianeConfig.fir@231431.6]
  assign _GEN_9 = _T_166 ? _T_169 : {{1'd0}, _T_90}; // @[Fragmenter.scala 125:27:chipyard.TestHarness.ArianeConfig.fir@231426.4]
  assign _T_180 = ~_T_171; // @[Fragmenter.scala 160:38:chipyard.TestHarness.ArianeConfig.fir@231480.4]
  assign _T_181 = _T_86_valid & _T_180; // @[Fragmenter.scala 160:35:chipyard.TestHarness.ArianeConfig.fir@231481.4]
  assign _T_174 = _T_181 & _T_183; // @[Fragmenter.scala 154:26:chipyard.TestHarness.ArianeConfig.fir@231466.4]
  assign _GEN_10 = _T_174 | _T_171; // @[Fragmenter.scala 154:43:chipyard.TestHarness.ArianeConfig.fir@231467.4]
  assign _T_177 = _T_86_valid & _T_178; // @[Fragmenter.scala 158:35:chipyard.TestHarness.ArianeConfig.fir@231475.4]
  assign _T_175 = auto_out_aw_ready & _T_177; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231470.4]
  assign _T_184 = _T_181 ? 9'h1 : 9'h0; // @[Fragmenter.scala 167:35:chipyard.TestHarness.ArianeConfig.fir@231496.4]
  assign _T_185 = _T_183 ? _T_184 : _T_182; // @[Fragmenter.scala 167:23:chipyard.TestHarness.ArianeConfig.fir@231497.4]
  assign _T_186 = _T_185 == 9'h1; // @[Fragmenter.scala 168:27:chipyard.TestHarness.ArianeConfig.fir@231498.4]
  assign _T_170_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 310:15:chipyard.TestHarness.ArianeConfig.fir@231446.4]
  assign _T_197 = ~_T_183; // @[Fragmenter.scala 174:37:chipyard.TestHarness.ArianeConfig.fir@231515.4]
  assign _T_198 = _T_197 | _T_181; // @[Fragmenter.scala 174:51:chipyard.TestHarness.ArianeConfig.fir@231516.4]
  assign _T_199 = _T_170_valid & _T_198; // @[Fragmenter.scala 174:33:chipyard.TestHarness.ArianeConfig.fir@231517.4]
  assign _T_187 = auto_out_w_ready & _T_199; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231499.4]
  assign _GEN_64 = {{8'd0}, _T_187}; // @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231500.4]
  assign _T_189 = _T_185 - _GEN_64; // @[Fragmenter.scala 169:27:chipyard.TestHarness.ArianeConfig.fir@231501.4]
  assign _T_191 = ~_T_187; // @[Fragmenter.scala 170:15:chipyard.TestHarness.ArianeConfig.fir@231504.4]
  assign _T_192 = _T_185 != 9'h0; // @[Fragmenter.scala 170:39:chipyard.TestHarness.ArianeConfig.fir@231505.4]
  assign _T_193 = _T_191 | _T_192; // @[Fragmenter.scala 170:29:chipyard.TestHarness.ArianeConfig.fir@231506.4]
  assign _T_195 = _T_193 | reset; // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231508.4]
  assign _T_196 = ~_T_195; // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231509.4]
  assign _T_203 = ~_T_199; // @[Fragmenter.scala 179:15:chipyard.TestHarness.ArianeConfig.fir@231527.4]
  assign _T_170_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@231442.4 Decoupled.scala 309:14:chipyard.TestHarness.ArianeConfig.fir@231443.4]
  assign _T_204 = ~_T_170_bits_last; // @[Fragmenter.scala 179:31:chipyard.TestHarness.ArianeConfig.fir@231528.4]
  assign _T_205 = _T_203 | _T_204; // @[Fragmenter.scala 179:28:chipyard.TestHarness.ArianeConfig.fir@231529.4]
  assign _T_206 = _T_205 | _T_186; // @[Fragmenter.scala 179:47:chipyard.TestHarness.ArianeConfig.fir@231530.4]
  assign _T_208 = _T_206 | reset; // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231532.4]
  assign _T_209 = ~_T_208; // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231533.4]
  assign _T_212 = ~auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 190:36:chipyard.TestHarness.ArianeConfig.fir@231552.4]
  assign _T_213 = auto_in_b_ready | _T_212; // @[Fragmenter.scala 190:33:chipyard.TestHarness.ArianeConfig.fir@231553.4]
  assign _GEN_13 = 4'h1 == auto_out_b_bits_id ? _T_215_1 : _T_215_0; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_14 = 4'h2 == auto_out_b_bits_id ? _T_215_2 : _GEN_13; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_15 = 4'h3 == auto_out_b_bits_id ? _T_215_3 : _GEN_14; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_16 = 4'h4 == auto_out_b_bits_id ? _T_215_4 : _GEN_15; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_17 = 4'h5 == auto_out_b_bits_id ? _T_215_5 : _GEN_16; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_18 = 4'h6 == auto_out_b_bits_id ? _T_215_6 : _GEN_17; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_19 = 4'h7 == auto_out_b_bits_id ? _T_215_7 : _GEN_18; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_20 = 4'h8 == auto_out_b_bits_id ? _T_215_8 : _GEN_19; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_21 = 4'h9 == auto_out_b_bits_id ? _T_215_9 : _GEN_20; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_22 = 4'ha == auto_out_b_bits_id ? _T_215_10 : _GEN_21; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_23 = 4'hb == auto_out_b_bits_id ? _T_215_11 : _GEN_22; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_24 = 4'hc == auto_out_b_bits_id ? _T_215_12 : _GEN_23; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_25 = 4'hd == auto_out_b_bits_id ? _T_215_13 : _GEN_24; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_26 = 4'he == auto_out_b_bits_id ? _T_215_14 : _GEN_25; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _GEN_27 = 4'hf == auto_out_b_bits_id ? _T_215_15 : _GEN_26; // @[Fragmenter.scala 194:41:chipyard.TestHarness.ArianeConfig.fir@231574.4]
  assign _T_218 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:chipyard.TestHarness.ArianeConfig.fir@231577.4]
  assign _T_236 = _T_213 & auto_out_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231595.4]
  assign _T_237 = _T_218[0] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231596.4]
  assign _T_238 = _T_215_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231598.6]
  assign _T_241 = _T_218[1] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231603.4]
  assign _T_242 = _T_215_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231605.6]
  assign _T_245 = _T_218[2] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231610.4]
  assign _T_246 = _T_215_2 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231612.6]
  assign _T_249 = _T_218[3] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231617.4]
  assign _T_250 = _T_215_3 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231619.6]
  assign _T_253 = _T_218[4] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231624.4]
  assign _T_254 = _T_215_4 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231626.6]
  assign _T_257 = _T_218[5] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231631.4]
  assign _T_258 = _T_215_5 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231633.6]
  assign _T_261 = _T_218[6] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231638.4]
  assign _T_262 = _T_215_6 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231640.6]
  assign _T_265 = _T_218[7] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231645.4]
  assign _T_266 = _T_215_7 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231647.6]
  assign _T_269 = _T_218[8] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231652.4]
  assign _T_270 = _T_215_8 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231654.6]
  assign _T_273 = _T_218[9] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231659.4]
  assign _T_274 = _T_215_9 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231661.6]
  assign _T_277 = _T_218[10] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231666.4]
  assign _T_278 = _T_215_10 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231668.6]
  assign _T_281 = _T_218[11] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231673.4]
  assign _T_282 = _T_215_11 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231675.6]
  assign _T_285 = _T_218[12] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231680.4]
  assign _T_286 = _T_215_12 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231682.6]
  assign _T_289 = _T_218[13] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231687.4]
  assign _T_290 = _T_215_13 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231689.6]
  assign _T_293 = _T_218[14] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231694.4]
  assign _T_294 = _T_215_14 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231696.6]
  assign _T_297 = _T_218[15] & _T_236; // @[Fragmenter.scala 196:19:chipyard.TestHarness.ArianeConfig.fir@231701.4]
  assign _T_298 = _T_215_15 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70:chipyard.TestHarness.ArianeConfig.fir@231703.6]
  assign auto_in_aw_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_w_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_27; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_ar_ready = Queue_io_enq_ready; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[LazyModule.scala 181:31:chipyard.TestHarness.ArianeConfig.fir@231161.4]
  assign auto_out_aw_valid = _T_86_valid & _T_178; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_aw_bits_addr = ~_T_164; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_aw_bits_echo_real_last = 8'h0 == _T_91; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_w_valid = _T_170_valid & _T_198; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_w_bits_data = Queue_2_io_deq_bits_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_w_bits_strb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_b_ready = auto_in_b_ready | _T_212; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_ar_valid = Queue_io_deq_valid; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_ar_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_ar_bits_addr = ~_T_80; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_ar_bits_echo_real_last = 8'h0 == _T_7; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 181:49:chipyard.TestHarness.ArianeConfig.fir@231160.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231163.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231164.4]
  assign Queue_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231165.4]
  assign Queue_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231174.4]
  assign Queue_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231173.4]
  assign Queue_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231172.4]
  assign Queue_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231171.4]
  assign Queue_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231170.4]
  assign Queue_io_deq_ready = auto_out_ar_ready & _T_73; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231187.4]
  assign Queue_1_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231299.4]
  assign Queue_1_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231300.4]
  assign Queue_1_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231301.4]
  assign Queue_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231310.4]
  assign Queue_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231309.4]
  assign Queue_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231308.4]
  assign Queue_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231307.4]
  assign Queue_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231306.4]
  assign Queue_1_io_deq_ready = _T_179 & _T_157; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231323.4]
  assign Queue_2_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231435.4]
  assign Queue_2_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231436.4]
  assign Queue_2_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.ArianeConfig.fir@231437.4]
  assign Queue_2_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231440.4]
  assign Queue_2_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231439.4]
  assign Queue_2_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:chipyard.TestHarness.ArianeConfig.fir@231438.4]
  assign Queue_2_io_deq_ready = auto_out_w_ready & _T_198; // @[Decoupled.scala 311:15:chipyard.TestHarness.ArianeConfig.fir@231447.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_4 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_5 = _RAND_1[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_88 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_89 = _RAND_4[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_90 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_182 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_171 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_215_0 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_215_1 = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_215_2 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_215_3 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_215_4 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_215_5 = _RAND_13[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_215_6 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_215_7 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_215_8 = _RAND_16[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_215_9 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_215_10 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_215_11 = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_215_12 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_215_13 = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_215_14 = _RAND_22[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_215_15 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_4 <= 1'h0;
    end else if (_T_82) begin
      _T_4 <= _T_83;
    end
    if (_T_82) begin
      if (_T_50) begin
        _T_5 <= _T_2_bits_addr;
      end else if (_T_66) begin
        _T_5 <= _T_71;
      end else begin
        _T_5 <= _T_61;
      end
    end
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_88 <= 1'h0;
    end else if (_T_166) begin
      _T_88 <= _T_167;
    end
    if (_T_166) begin
      if (_T_134) begin
        _T_89 <= _T_86_bits_addr;
      end else if (_T_150) begin
        _T_89 <= _T_155;
      end else begin
        _T_89 <= _T_145;
      end
    end
    _T_90 <= _GEN_9[7:0];
    if (reset) begin
      _T_182 <= 9'h0;
    end else begin
      _T_182 <= _T_189;
    end
    if (reset) begin
      _T_171 <= 1'h0;
    end else if (_T_175) begin
      _T_171 <= 1'h0;
    end else begin
      _T_171 <= _GEN_10;
    end
    if (reset) begin
      _T_215_0 <= 2'h0;
    end else if (_T_237) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_0 <= 2'h0;
      end else begin
        _T_215_0 <= _T_238;
      end
    end
    if (reset) begin
      _T_215_1 <= 2'h0;
    end else if (_T_241) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_1 <= 2'h0;
      end else begin
        _T_215_1 <= _T_242;
      end
    end
    if (reset) begin
      _T_215_2 <= 2'h0;
    end else if (_T_245) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_2 <= 2'h0;
      end else begin
        _T_215_2 <= _T_246;
      end
    end
    if (reset) begin
      _T_215_3 <= 2'h0;
    end else if (_T_249) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_3 <= 2'h0;
      end else begin
        _T_215_3 <= _T_250;
      end
    end
    if (reset) begin
      _T_215_4 <= 2'h0;
    end else if (_T_253) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_4 <= 2'h0;
      end else begin
        _T_215_4 <= _T_254;
      end
    end
    if (reset) begin
      _T_215_5 <= 2'h0;
    end else if (_T_257) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_5 <= 2'h0;
      end else begin
        _T_215_5 <= _T_258;
      end
    end
    if (reset) begin
      _T_215_6 <= 2'h0;
    end else if (_T_261) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_6 <= 2'h0;
      end else begin
        _T_215_6 <= _T_262;
      end
    end
    if (reset) begin
      _T_215_7 <= 2'h0;
    end else if (_T_265) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_7 <= 2'h0;
      end else begin
        _T_215_7 <= _T_266;
      end
    end
    if (reset) begin
      _T_215_8 <= 2'h0;
    end else if (_T_269) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_8 <= 2'h0;
      end else begin
        _T_215_8 <= _T_270;
      end
    end
    if (reset) begin
      _T_215_9 <= 2'h0;
    end else if (_T_273) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_9 <= 2'h0;
      end else begin
        _T_215_9 <= _T_274;
      end
    end
    if (reset) begin
      _T_215_10 <= 2'h0;
    end else if (_T_277) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_10 <= 2'h0;
      end else begin
        _T_215_10 <= _T_278;
      end
    end
    if (reset) begin
      _T_215_11 <= 2'h0;
    end else if (_T_281) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_11 <= 2'h0;
      end else begin
        _T_215_11 <= _T_282;
      end
    end
    if (reset) begin
      _T_215_12 <= 2'h0;
    end else if (_T_285) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_12 <= 2'h0;
      end else begin
        _T_215_12 <= _T_286;
      end
    end
    if (reset) begin
      _T_215_13 <= 2'h0;
    end else if (_T_289) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_13 <= 2'h0;
      end else begin
        _T_215_13 <= _T_290;
      end
    end
    if (reset) begin
      _T_215_14 <= 2'h0;
    end else if (_T_293) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_14 <= 2'h0;
      end else begin
        _T_215_14 <= _T_294;
      end
    end
    if (reset) begin
      _T_215_15 <= 2'h0;
    end else if (_T_297) begin
      if (auto_out_b_bits_echo_real_last) begin
        _T_215_15 <= 2'h0;
      end else begin
        _T_215_15 <= _T_298;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_196) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:170 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231511.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_196) begin
          $fatal; // @[Fragmenter.scala 170:14:chipyard.TestHarness.ArianeConfig.fir@231512.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_209) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:179 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231535.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_209) begin
          $fatal; // @[Fragmenter.scala 179:14:chipyard.TestHarness.ArianeConfig.fir@231536.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module SimAXIMem_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@231708.2]
  input         clock, // @[:chipyard.TestHarness.ArianeConfig.fir@231709.4]
  input         reset, // @[:chipyard.TestHarness.ArianeConfig.fir@231710.4]
  output        io_axi4_0_aw_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_aw_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [3:0]  io_axi4_0_aw_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [27:0] io_axi4_0_aw_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [7:0]  io_axi4_0_aw_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [2:0]  io_axi4_0_aw_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [1:0]  io_axi4_0_aw_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output        io_axi4_0_w_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_w_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [63:0] io_axi4_0_w_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [7:0]  io_axi4_0_w_bits_strb, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_w_bits_last, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_b_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output        io_axi4_0_b_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output [3:0]  io_axi4_0_b_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output [1:0]  io_axi4_0_b_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output        io_axi4_0_ar_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_ar_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [3:0]  io_axi4_0_ar_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [27:0] io_axi4_0_ar_bits_addr, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [7:0]  io_axi4_0_ar_bits_len, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [2:0]  io_axi4_0_ar_bits_size, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input  [1:0]  io_axi4_0_ar_bits_burst, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  input         io_axi4_0_r_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output        io_axi4_0_r_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output [3:0]  io_axi4_0_r_bits_id, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output [63:0] io_axi4_0_r_bits_data, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output [1:0]  io_axi4_0_r_bits_resp, // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
  output        io_axi4_0_r_bits_last // @[:chipyard.TestHarness.ArianeConfig.fir@231712.4]
);
  wire  srams_clock; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_reset; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_aw_ready; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_aw_valid; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [3:0] srams_auto_in_aw_bits_id; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [27:0] srams_auto_in_aw_bits_addr; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_aw_bits_echo_real_last; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_w_ready; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_w_valid; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [63:0] srams_auto_in_w_bits_data; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [7:0] srams_auto_in_w_bits_strb; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_b_ready; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_b_valid; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [3:0] srams_auto_in_b_bits_id; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [1:0] srams_auto_in_b_bits_resp; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_b_bits_echo_real_last; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_ar_ready; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_ar_valid; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [3:0] srams_auto_in_ar_bits_id; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [27:0] srams_auto_in_ar_bits_addr; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_ar_bits_echo_real_last; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_r_ready; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_r_valid; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [3:0] srams_auto_in_r_bits_id; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [63:0] srams_auto_in_r_bits_data; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire [1:0] srams_auto_in_r_bits_resp; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  srams_auto_in_r_bits_echo_real_last; // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
  wire  axi4xbar_clock; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_reset; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_aw_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_aw_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_in_aw_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [27:0] axi4xbar_auto_in_aw_bits_addr; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_in_aw_bits_len; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [2:0] axi4xbar_auto_in_aw_bits_size; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_in_aw_bits_burst; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_w_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_w_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [63:0] axi4xbar_auto_in_w_bits_data; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_in_w_bits_strb; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_w_bits_last; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_b_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_b_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_in_b_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_in_b_bits_resp; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_ar_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_ar_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_in_ar_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [27:0] axi4xbar_auto_in_ar_bits_addr; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_in_ar_bits_len; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [2:0] axi4xbar_auto_in_ar_bits_size; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_in_ar_bits_burst; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_r_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_r_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_in_r_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [63:0] axi4xbar_auto_in_r_bits_data; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_in_r_bits_resp; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_in_r_bits_last; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_aw_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_aw_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_out_aw_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [27:0] axi4xbar_auto_out_aw_bits_addr; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_out_aw_bits_len; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [2:0] axi4xbar_auto_out_aw_bits_size; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_out_aw_bits_burst; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_w_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_w_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [63:0] axi4xbar_auto_out_w_bits_data; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_out_w_bits_strb; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_w_bits_last; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_b_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_b_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_out_b_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_out_b_bits_resp; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_ar_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_ar_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_out_ar_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [27:0] axi4xbar_auto_out_ar_bits_addr; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [7:0] axi4xbar_auto_out_ar_bits_len; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [2:0] axi4xbar_auto_out_ar_bits_size; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_out_ar_bits_burst; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_r_ready; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_r_valid; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [3:0] axi4xbar_auto_out_r_bits_id; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [63:0] axi4xbar_auto_out_r_bits_data; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire [1:0] axi4xbar_auto_out_r_bits_resp; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4xbar_auto_out_r_bits_last; // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
  wire  axi4buf_clock; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_reset; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_aw_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_aw_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_in_aw_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [27:0] axi4buf_auto_in_aw_bits_addr; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_aw_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_w_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_w_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [63:0] axi4buf_auto_in_w_bits_data; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [7:0] axi4buf_auto_in_w_bits_strb; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_b_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_b_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_in_b_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [1:0] axi4buf_auto_in_b_bits_resp; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_b_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_ar_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_ar_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_in_ar_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [27:0] axi4buf_auto_in_ar_bits_addr; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_ar_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_r_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_r_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_in_r_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [63:0] axi4buf_auto_in_r_bits_data; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [1:0] axi4buf_auto_in_r_bits_resp; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_r_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_in_r_bits_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_aw_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_aw_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_out_aw_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [27:0] axi4buf_auto_out_aw_bits_addr; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_aw_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_w_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_w_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [63:0] axi4buf_auto_out_w_bits_data; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [7:0] axi4buf_auto_out_w_bits_strb; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_b_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_b_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_out_b_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [1:0] axi4buf_auto_out_b_bits_resp; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_b_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_ar_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_ar_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_out_ar_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [27:0] axi4buf_auto_out_ar_bits_addr; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_ar_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_r_ready; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_r_valid; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [3:0] axi4buf_auto_out_r_bits_id; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [63:0] axi4buf_auto_out_r_bits_data; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire [1:0] axi4buf_auto_out_r_bits_resp; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4buf_auto_out_r_bits_echo_real_last; // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
  wire  axi4frag_clock; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_reset; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [27:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [63:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [7:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [27:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [63:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [27:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_aw_bits_echo_real_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [63:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [7:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [27:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_ar_bits_echo_real_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [3:0] axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [63:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
  AXI4RAM_inTestHarness srams ( // @[SimAXIMem.scala 16:15:chipyard.TestHarness.ArianeConfig.fir@231718.4]
    .clock(srams_clock),
    .reset(srams_reset),
    .auto_in_aw_ready(srams_auto_in_aw_ready),
    .auto_in_aw_valid(srams_auto_in_aw_valid),
    .auto_in_aw_bits_id(srams_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(srams_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(srams_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(srams_auto_in_w_ready),
    .auto_in_w_valid(srams_auto_in_w_valid),
    .auto_in_w_bits_data(srams_auto_in_w_bits_data),
    .auto_in_w_bits_strb(srams_auto_in_w_bits_strb),
    .auto_in_b_ready(srams_auto_in_b_ready),
    .auto_in_b_valid(srams_auto_in_b_valid),
    .auto_in_b_bits_id(srams_auto_in_b_bits_id),
    .auto_in_b_bits_resp(srams_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(srams_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(srams_auto_in_ar_ready),
    .auto_in_ar_valid(srams_auto_in_ar_valid),
    .auto_in_ar_bits_id(srams_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(srams_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(srams_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(srams_auto_in_r_ready),
    .auto_in_r_valid(srams_auto_in_r_valid),
    .auto_in_r_bits_id(srams_auto_in_r_bits_id),
    .auto_in_r_bits_data(srams_auto_in_r_bits_data),
    .auto_in_r_bits_resp(srams_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(srams_auto_in_r_bits_echo_real_last)
  );
  AXI4Xbar_inTestHarness axi4xbar ( // @[Xbar.scala 215:30:chipyard.TestHarness.ArianeConfig.fir@231724.4]
    .clock(axi4xbar_clock),
    .reset(axi4xbar_reset),
    .auto_in_aw_ready(axi4xbar_auto_in_aw_ready),
    .auto_in_aw_valid(axi4xbar_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4xbar_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4xbar_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4xbar_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4xbar_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4xbar_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4xbar_auto_in_w_ready),
    .auto_in_w_valid(axi4xbar_auto_in_w_valid),
    .auto_in_w_bits_data(axi4xbar_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4xbar_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4xbar_auto_in_w_bits_last),
    .auto_in_b_ready(axi4xbar_auto_in_b_ready),
    .auto_in_b_valid(axi4xbar_auto_in_b_valid),
    .auto_in_b_bits_id(axi4xbar_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4xbar_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4xbar_auto_in_ar_ready),
    .auto_in_ar_valid(axi4xbar_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4xbar_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4xbar_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4xbar_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4xbar_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4xbar_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4xbar_auto_in_r_ready),
    .auto_in_r_valid(axi4xbar_auto_in_r_valid),
    .auto_in_r_bits_id(axi4xbar_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4xbar_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4xbar_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4xbar_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4xbar_auto_out_aw_ready),
    .auto_out_aw_valid(axi4xbar_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4xbar_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4xbar_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4xbar_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4xbar_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4xbar_auto_out_aw_bits_burst),
    .auto_out_w_ready(axi4xbar_auto_out_w_ready),
    .auto_out_w_valid(axi4xbar_auto_out_w_valid),
    .auto_out_w_bits_data(axi4xbar_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4xbar_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4xbar_auto_out_w_bits_last),
    .auto_out_b_ready(axi4xbar_auto_out_b_ready),
    .auto_out_b_valid(axi4xbar_auto_out_b_valid),
    .auto_out_b_bits_id(axi4xbar_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4xbar_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4xbar_auto_out_ar_ready),
    .auto_out_ar_valid(axi4xbar_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4xbar_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4xbar_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4xbar_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4xbar_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4xbar_auto_out_ar_bits_burst),
    .auto_out_r_ready(axi4xbar_auto_out_r_ready),
    .auto_out_r_valid(axi4xbar_auto_out_r_valid),
    .auto_out_r_bits_id(axi4xbar_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4xbar_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4xbar_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4xbar_auto_out_r_bits_last)
  );
  AXI4Buffer_inTestHarness axi4buf ( // @[Buffer.scala 58:29:chipyard.TestHarness.ArianeConfig.fir@231730.4]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_aw_ready(axi4buf_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(axi4buf_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(axi4buf_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_auto_in_w_bits_strb),
    .auto_in_b_ready(axi4buf_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(axi4buf_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(axi4buf_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(axi4buf_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(axi4buf_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(axi4buf_auto_in_r_bits_echo_real_last),
    .auto_in_r_bits_last(axi4buf_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_auto_out_aw_bits_addr),
    .auto_out_aw_bits_echo_real_last(axi4buf_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4buf_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4buf_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_real_last(axi4buf_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4buf_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4buf_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4buf_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4buf_auto_out_r_bits_echo_real_last)
  );
  AXI4Fragmenter_1_inTestHarness axi4frag ( // @[Fragmenter.scala 206:30:chipyard.TestHarness.ArianeConfig.fir@231736.4]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
    .auto_out_aw_bits_echo_real_last(axi4frag_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4frag_auto_out_w_ready),
    .auto_out_w_valid(axi4frag_auto_out_w_valid),
    .auto_out_w_bits_data(axi4frag_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4frag_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4frag_auto_out_b_ready),
    .auto_out_b_valid(axi4frag_auto_out_b_valid),
    .auto_out_b_bits_id(axi4frag_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4frag_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_real_last(axi4frag_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4frag_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4frag_auto_out_r_bits_echo_real_last),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  assign io_axi4_0_aw_ready = axi4xbar_auto_in_aw_ready; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_w_ready = axi4xbar_auto_in_w_ready; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_b_valid = axi4xbar_auto_in_b_valid; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_ar_ready = axi4xbar_auto_in_ar_ready; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_r_valid = axi4xbar_auto_in_r_valid; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign io_axi4_0_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[Nodes.scala 647:60:chipyard.TestHarness.ArianeConfig.fir@231748.4]
  assign srams_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231722.4]
  assign srams_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231723.4]
  assign srams_auto_in_aw_valid = axi4buf_auto_out_aw_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_aw_bits_id = axi4buf_auto_out_aw_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_aw_bits_addr = axi4buf_auto_out_aw_bits_addr; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_aw_bits_echo_real_last = axi4buf_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_w_valid = axi4buf_auto_out_w_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_w_bits_data = axi4buf_auto_out_w_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_w_bits_strb = axi4buf_auto_out_w_bits_strb; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_b_ready = axi4buf_auto_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_ar_valid = axi4buf_auto_out_ar_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_ar_bits_id = axi4buf_auto_out_ar_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_ar_bits_addr = axi4buf_auto_out_ar_bits_addr; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_ar_bits_echo_real_last = axi4buf_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign srams_auto_in_r_ready = axi4buf_auto_out_r_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4xbar_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231728.4]
  assign axi4xbar_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231729.4]
  assign axi4xbar_auto_in_aw_valid = io_axi4_0_aw_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_aw_bits_id = io_axi4_0_aw_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_aw_bits_addr = io_axi4_0_aw_bits_addr; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_aw_bits_len = io_axi4_0_aw_bits_len; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_aw_bits_size = io_axi4_0_aw_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_aw_bits_burst = io_axi4_0_aw_bits_burst; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_w_valid = io_axi4_0_w_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_w_bits_data = io_axi4_0_w_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_w_bits_strb = io_axi4_0_w_bits_strb; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_w_bits_last = io_axi4_0_w_bits_last; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_b_ready = io_axi4_0_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_valid = io_axi4_0_ar_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_bits_id = io_axi4_0_ar_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_bits_addr = io_axi4_0_ar_bits_addr; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_bits_len = io_axi4_0_ar_bits_len; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_bits_size = io_axi4_0_ar_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_ar_bits_burst = io_axi4_0_ar_bits_burst; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_in_r_ready = io_axi4_0_r_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231744.4]
  assign axi4xbar_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4xbar_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4buf_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231734.4]
  assign axi4buf_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231735.4]
  assign axi4buf_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_aw_bits_echo_real_last = axi4frag_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_ar_bits_echo_real_last = axi4frag_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4buf_auto_out_aw_ready = srams_auto_in_aw_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_w_ready = srams_auto_in_w_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_b_valid = srams_auto_in_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_b_bits_id = srams_auto_in_b_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_b_bits_resp = srams_auto_in_b_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_b_bits_echo_real_last = srams_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_ar_ready = srams_auto_in_ar_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_r_valid = srams_auto_in_r_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_r_bits_id = srams_auto_in_r_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_r_bits_data = srams_auto_in_r_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_r_bits_resp = srams_auto_in_r_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4buf_auto_out_r_bits_echo_real_last = srams_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231746.4]
  assign axi4frag_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231740.4]
  assign axi4frag_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231741.4]
  assign axi4frag_auto_in_aw_valid = axi4xbar_auto_out_aw_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_aw_bits_id = axi4xbar_auto_out_aw_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_aw_bits_addr = axi4xbar_auto_out_aw_bits_addr; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_aw_bits_len = axi4xbar_auto_out_aw_bits_len; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_aw_bits_size = axi4xbar_auto_out_aw_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_aw_bits_burst = axi4xbar_auto_out_aw_bits_burst; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_w_valid = axi4xbar_auto_out_w_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_w_bits_data = axi4xbar_auto_out_w_bits_data; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_w_bits_strb = axi4xbar_auto_out_w_bits_strb; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_w_bits_last = axi4xbar_auto_out_w_bits_last; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_b_ready = axi4xbar_auto_out_b_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_valid = axi4xbar_auto_out_ar_valid; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_bits_id = axi4xbar_auto_out_ar_bits_id; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_bits_addr = axi4xbar_auto_out_ar_bits_addr; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_bits_len = axi4xbar_auto_out_ar_bits_len; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_bits_size = axi4xbar_auto_out_ar_bits_size; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_ar_bits_burst = axi4xbar_auto_out_ar_bits_burst; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_in_r_ready = axi4xbar_auto_out_r_ready; // @[LazyModule.scala 175:57:chipyard.TestHarness.ArianeConfig.fir@231745.4]
  assign axi4frag_auto_out_aw_ready = axi4buf_auto_in_aw_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_w_ready = axi4buf_auto_in_w_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_b_valid = axi4buf_auto_in_b_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_b_bits_id = axi4buf_auto_in_b_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_b_bits_resp = axi4buf_auto_in_b_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_b_bits_echo_real_last = axi4buf_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_ar_ready = axi4buf_auto_in_ar_ready; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_valid = axi4buf_auto_in_r_valid; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_bits_id = axi4buf_auto_in_r_bits_id; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_bits_data = axi4buf_auto_in_r_bits_data; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_bits_resp = axi4buf_auto_in_r_bits_resp; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_bits_echo_real_last = axi4buf_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
  assign axi4frag_auto_out_r_bits_last = axi4buf_auto_in_r_bits_last; // @[LazyModule.scala 175:31:chipyard.TestHarness.ArianeConfig.fir@231747.4]
endmodule
module Queue_46_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@231750.2]
  input        clock, // @[:chipyard.TestHarness.ArianeConfig.fir@231751.4]
  input        reset, // @[:chipyard.TestHarness.ArianeConfig.fir@231752.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  input  [7:0] io_enq_bits, // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
  output [7:0] io_deq_bits // @[:chipyard.TestHarness.ArianeConfig.fir@231753.4]
);
  reg [7:0] ram [0:127]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  reg [31:0] _RAND_0;
  wire [7:0] ram__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  wire [6:0] ram__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  wire [7:0] ram__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  wire [6:0] ram__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  wire  ram__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  wire  ram__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  reg [6:0] enq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231756.4]
  reg [31:0] _RAND_1;
  reg [6:0] deq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231757.4]
  reg [31:0] _RAND_2;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.ArianeConfig.fir@231758.4]
  reg [31:0] _RAND_3;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@231759.4]
  wire  _T; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@231760.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@231761.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@231762.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231763.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231766.4]
  wire [6:0] _T_5; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231774.6]
  wire [6:0] _T_7; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231780.6]
  wire  _T_8; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@231783.4]
  assign ram__T_11_addr = deq_ptr_value;
  assign ram__T_11_data = ram[ram__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
  assign ram__T_3_data = io_enq_bits;
  assign ram__T_3_addr = enq_ptr_value;
  assign ram__T_3_mask = 1'h1;
  assign ram__T_3_en = io_enq_ready & io_enq_valid;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:chipyard.TestHarness.ArianeConfig.fir@231759.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.ArianeConfig.fir@231760.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:chipyard.TestHarness.ArianeConfig.fir@231761.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.ArianeConfig.fir@231762.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231763.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.ArianeConfig.fir@231766.4]
  assign _T_5 = enq_ptr_value + 7'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231774.6]
  assign _T_7 = deq_ptr_value + 7'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231780.6]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.ArianeConfig.fir@231783.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.ArianeConfig.fir@231790.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.ArianeConfig.fir@231788.4]
  assign io_deq_bits = ram__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.ArianeConfig.fir@231792.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  enq_ptr_value = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram__T_3_en & ram__T_3_mask) begin
      ram[ram__T_3_addr] <= ram__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.ArianeConfig.fir@231755.4]
    end
    if (reset) begin
      enq_ptr_value <= 7'h0;
    end else if (do_enq) begin
      enq_ptr_value <= _T_5;
    end
    if (reset) begin
      deq_ptr_value <= 7'h0;
    end else if (do_deq) begin
      deq_ptr_value <= _T_7;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      maybe_full <= do_enq;
    end
  end
endmodule
module UARTAdapter_inTestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@231858.2]
  input   clock, // @[:chipyard.TestHarness.ArianeConfig.fir@231859.4]
  input   reset, // @[:chipyard.TestHarness.ArianeConfig.fir@231860.4]
  input   io_uart_txd, // @[:chipyard.TestHarness.ArianeConfig.fir@231861.4]
  output  io_uart_rxd // @[:chipyard.TestHarness.ArianeConfig.fir@231861.4]
);
  wire  txfifo_clock; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  txfifo_reset; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  txfifo_io_enq_ready; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  txfifo_io_enq_valid; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire [7:0] txfifo_io_enq_bits; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  txfifo_io_deq_ready; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  txfifo_io_deq_valid; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire [7:0] txfifo_io_deq_bits; // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
  wire  rxfifo_clock; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  rxfifo_reset; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  rxfifo_io_enq_ready; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  rxfifo_io_enq_valid; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire [7:0] rxfifo_io_enq_bits; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  rxfifo_io_deq_ready; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  rxfifo_io_deq_valid; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire [7:0] rxfifo_io_deq_bits; // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
  wire  sim_clock; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire  sim_reset; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire  sim_serial_in_ready; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire  sim_serial_in_valid; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire [7:0] sim_serial_in_bits; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire  sim_serial_out_ready; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire  sim_serial_out_valid; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  wire [7:0] sim_serial_out_bits; // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
  reg [1:0] txState; // @[UARTAdapter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231869.4]
  reg [31:0] _RAND_0;
  reg [7:0] txData; // @[UARTAdapter.scala 39:19:chipyard.TestHarness.ArianeConfig.fir@231870.4]
  reg [31:0] _RAND_1;
  wire  _T; // @[UARTAdapter.scala 41:49:chipyard.TestHarness.ArianeConfig.fir@231871.4]
  wire  _T_1; // @[UARTAdapter.scala 41:61:chipyard.TestHarness.ArianeConfig.fir@231872.4]
  reg [2:0] txDataIdx; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231873.4]
  reg [31:0] _RAND_2;
  wire  _T_2; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231877.6]
  wire [2:0] _T_4; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231879.6]
  wire  txDataWrap; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231876.4]
  wire  _T_5; // @[UARTAdapter.scala 43:51:chipyard.TestHarness.ArianeConfig.fir@231883.4]
  wire  _T_6; // @[UARTAdapter.scala 43:63:chipyard.TestHarness.ArianeConfig.fir@231884.4]
  reg [9:0] txBaudCount; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231885.4]
  reg [31:0] _RAND_3;
  wire  _T_7; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231889.6]
  wire [9:0] _T_9; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231891.6]
  wire  txBaudWrap; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231888.4]
  wire  _T_10; // @[UARTAdapter.scala 44:53:chipyard.TestHarness.ArianeConfig.fir@231898.4]
  wire  _T_11; // @[UARTAdapter.scala 44:80:chipyard.TestHarness.ArianeConfig.fir@231899.4]
  wire  _T_12; // @[UARTAdapter.scala 44:65:chipyard.TestHarness.ArianeConfig.fir@231900.4]
  wire  _T_13; // @[UARTAdapter.scala 44:88:chipyard.TestHarness.ArianeConfig.fir@231901.4]
  reg [1:0] txSlackCount; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231902.4]
  reg [31:0] _RAND_4;
  wire  _T_14; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231906.6]
  wire [1:0] _T_16; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231908.6]
  wire  txSlackWrap; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231905.4]
  wire  _T_17; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231912.4]
  wire  _T_18; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231920.6]
  wire  _T_19; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231927.8]
  wire [7:0] _GEN_35; // @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
  wire [7:0] _T_20; // @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
  wire [7:0] _T_21; // @[UARTAdapter.scala 60:26:chipyard.TestHarness.ArianeConfig.fir@231931.12]
  wire  _T_24; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231945.10]
  wire  _T_26; // @[UARTAdapter.scala 69:32:chipyard.TestHarness.ArianeConfig.fir@231948.12]
  reg [1:0] rxState; // @[UARTAdapter.scala 79:24:chipyard.TestHarness.ArianeConfig.fir@231955.4]
  reg [31:0] _RAND_5;
  reg [9:0] rxBaudCount; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231956.4]
  reg [31:0] _RAND_6;
  wire  _T_27; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231960.6]
  wire [9:0] _T_29; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231962.6]
  wire  rxBaudWrap; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231959.4]
  wire  _T_30; // @[UARTAdapter.scala 83:49:chipyard.TestHarness.ArianeConfig.fir@231969.4]
  wire  _T_31; // @[UARTAdapter.scala 83:61:chipyard.TestHarness.ArianeConfig.fir@231970.4]
  wire  _T_32; // @[UARTAdapter.scala 83:84:chipyard.TestHarness.ArianeConfig.fir@231971.4]
  reg [2:0] rxDataIdx; // @[Counter.scala 29:33:chipyard.TestHarness.ArianeConfig.fir@231972.4]
  reg [31:0] _RAND_7;
  wire  _T_33; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231976.6]
  wire [2:0] _T_35; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231978.6]
  wire  rxDataWrap; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231975.4]
  wire  _T_36; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231983.4]
  wire  _T_37; // @[UARTAdapter.scala 89:24:chipyard.TestHarness.ArianeConfig.fir@231986.6]
  wire  _T_38; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231992.6]
  wire  _T_39; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@232000.8]
  wire [7:0] _T_40; // @[UARTAdapter.scala 100:42:chipyard.TestHarness.ArianeConfig.fir@232002.10]
  wire  _T_42; // @[UARTAdapter.scala 101:23:chipyard.TestHarness.ArianeConfig.fir@232005.10]
  wire  _GEN_29; // @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@232001.8]
  wire  _GEN_31; // @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231993.6]
  wire  _T_44; // @[UARTAdapter.scala 106:48:chipyard.TestHarness.ArianeConfig.fir@232011.4]
  wire  _T_45; // @[UARTAdapter.scala 106:62:chipyard.TestHarness.ArianeConfig.fir@232012.4]
  Queue_46_inTestHarness txfifo ( // @[UARTAdapter.scala 32:22:chipyard.TestHarness.ArianeConfig.fir@231863.4]
    .clock(txfifo_clock),
    .reset(txfifo_reset),
    .io_enq_ready(txfifo_io_enq_ready),
    .io_enq_valid(txfifo_io_enq_valid),
    .io_enq_bits(txfifo_io_enq_bits),
    .io_deq_ready(txfifo_io_deq_ready),
    .io_deq_valid(txfifo_io_deq_valid),
    .io_deq_bits(txfifo_io_deq_bits)
  );
  Queue_46_inTestHarness rxfifo ( // @[UARTAdapter.scala 33:22:chipyard.TestHarness.ArianeConfig.fir@231866.4]
    .clock(rxfifo_clock),
    .reset(rxfifo_reset),
    .io_enq_ready(rxfifo_io_enq_ready),
    .io_enq_valid(rxfifo_io_enq_valid),
    .io_enq_bits(rxfifo_io_enq_bits),
    .io_deq_ready(rxfifo_io_deq_ready),
    .io_deq_valid(rxfifo_io_deq_valid),
    .io_deq_bits(rxfifo_io_deq_bits)
  );
  SimUART #(.UARTNO(0)) sim ( // @[UARTAdapter.scala 108:19:chipyard.TestHarness.ArianeConfig.fir@232015.4]
    .clock(sim_clock),
    .reset(sim_reset),
    .serial_in_ready(sim_serial_in_ready),
    .serial_in_valid(sim_serial_in_valid),
    .serial_in_bits(sim_serial_in_bits),
    .serial_out_ready(sim_serial_out_ready),
    .serial_out_valid(sim_serial_out_valid),
    .serial_out_bits(sim_serial_out_bits)
  );
  assign _T = txState == 2'h2; // @[UARTAdapter.scala 41:49:chipyard.TestHarness.ArianeConfig.fir@231871.4]
  assign _T_1 = _T & txfifo_io_enq_ready; // @[UARTAdapter.scala 41:61:chipyard.TestHarness.ArianeConfig.fir@231872.4]
  assign _T_2 = txDataIdx == 3'h7; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231877.6]
  assign _T_4 = txDataIdx + 3'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231879.6]
  assign txDataWrap = _T_1 & _T_2; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231876.4]
  assign _T_5 = txState == 2'h1; // @[UARTAdapter.scala 43:51:chipyard.TestHarness.ArianeConfig.fir@231883.4]
  assign _T_6 = _T_5 & txfifo_io_enq_ready; // @[UARTAdapter.scala 43:63:chipyard.TestHarness.ArianeConfig.fir@231884.4]
  assign _T_7 = txBaudCount == 10'h363; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231889.6]
  assign _T_9 = txBaudCount + 10'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231891.6]
  assign txBaudWrap = _T_6 & _T_7; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231888.4]
  assign _T_10 = txState == 2'h0; // @[UARTAdapter.scala 44:53:chipyard.TestHarness.ArianeConfig.fir@231898.4]
  assign _T_11 = ~io_uart_txd; // @[UARTAdapter.scala 44:80:chipyard.TestHarness.ArianeConfig.fir@231899.4]
  assign _T_12 = _T_10 & _T_11; // @[UARTAdapter.scala 44:65:chipyard.TestHarness.ArianeConfig.fir@231900.4]
  assign _T_13 = _T_12 & txfifo_io_enq_ready; // @[UARTAdapter.scala 44:88:chipyard.TestHarness.ArianeConfig.fir@231901.4]
  assign _T_14 = txSlackCount == 2'h3; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231906.6]
  assign _T_16 = txSlackCount + 2'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231908.6]
  assign txSlackWrap = _T_13 & _T_14; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231905.4]
  assign _T_17 = 2'h0 == txState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231912.4]
  assign _T_18 = 2'h1 == txState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231920.6]
  assign _T_19 = 2'h2 == txState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231927.8]
  assign _GEN_35 = {{7'd0}, io_uart_txd}; // @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
  assign _T_20 = _GEN_35 << txDataIdx; // @[UARTAdapter.scala 60:41:chipyard.TestHarness.ArianeConfig.fir@231930.12]
  assign _T_21 = txData | _T_20; // @[UARTAdapter.scala 60:26:chipyard.TestHarness.ArianeConfig.fir@231931.12]
  assign _T_24 = 2'h3 == txState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231945.10]
  assign _T_26 = io_uart_txd & txfifo_io_enq_ready; // @[UARTAdapter.scala 69:32:chipyard.TestHarness.ArianeConfig.fir@231948.12]
  assign _T_27 = rxBaudCount == 10'h363; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231960.6]
  assign _T_29 = rxBaudCount + 10'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231962.6]
  assign rxBaudWrap = txfifo_io_enq_ready & _T_27; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231959.4]
  assign _T_30 = rxState == 2'h2; // @[UARTAdapter.scala 83:49:chipyard.TestHarness.ArianeConfig.fir@231969.4]
  assign _T_31 = _T_30 & txfifo_io_enq_ready; // @[UARTAdapter.scala 83:61:chipyard.TestHarness.ArianeConfig.fir@231970.4]
  assign _T_32 = _T_31 & rxBaudWrap; // @[UARTAdapter.scala 83:84:chipyard.TestHarness.ArianeConfig.fir@231971.4]
  assign _T_33 = rxDataIdx == 3'h7; // @[Counter.scala 38:24:chipyard.TestHarness.ArianeConfig.fir@231976.6]
  assign _T_35 = rxDataIdx + 3'h1; // @[Counter.scala 39:22:chipyard.TestHarness.ArianeConfig.fir@231978.6]
  assign rxDataWrap = _T_32 & _T_33; // @[Counter.scala 67:17:chipyard.TestHarness.ArianeConfig.fir@231975.4]
  assign _T_36 = 2'h0 == rxState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231983.4]
  assign _T_37 = rxBaudWrap & rxfifo_io_deq_valid; // @[UARTAdapter.scala 89:24:chipyard.TestHarness.ArianeConfig.fir@231986.6]
  assign _T_38 = 2'h1 == rxState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@231992.6]
  assign _T_39 = 2'h2 == rxState; // @[Conditional.scala 37:30:chipyard.TestHarness.ArianeConfig.fir@232000.8]
  assign _T_40 = rxfifo_io_deq_bits >> rxDataIdx; // @[UARTAdapter.scala 100:42:chipyard.TestHarness.ArianeConfig.fir@232002.10]
  assign _T_42 = rxDataWrap & rxBaudWrap; // @[UARTAdapter.scala 101:23:chipyard.TestHarness.ArianeConfig.fir@232005.10]
  assign _GEN_29 = _T_39 ? _T_40[0] : 1'h1; // @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@232001.8]
  assign _GEN_31 = _T_38 ? 1'h0 : _GEN_29; // @[Conditional.scala 39:67:chipyard.TestHarness.ArianeConfig.fir@231993.6]
  assign _T_44 = _T_30 & rxDataWrap; // @[UARTAdapter.scala 106:48:chipyard.TestHarness.ArianeConfig.fir@232011.4]
  assign _T_45 = _T_44 & rxBaudWrap; // @[UARTAdapter.scala 106:62:chipyard.TestHarness.ArianeConfig.fir@232012.4]
  assign io_uart_rxd = _T_36 | _GEN_31; // @[UARTAdapter.scala 85:15:chipyard.TestHarness.ArianeConfig.fir@231982.4 UARTAdapter.scala 88:19:chipyard.TestHarness.ArianeConfig.fir@231985.6 UARTAdapter.scala 94:19:chipyard.TestHarness.ArianeConfig.fir@231994.8 UARTAdapter.scala 100:19:chipyard.TestHarness.ArianeConfig.fir@232004.10]
  assign txfifo_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231864.4]
  assign txfifo_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231865.4]
  assign txfifo_io_enq_valid = _T_1 & _T_2; // @[UARTAdapter.scala 76:23:chipyard.TestHarness.ArianeConfig.fir@231954.4]
  assign txfifo_io_enq_bits = txData; // @[UARTAdapter.scala 75:23:chipyard.TestHarness.ArianeConfig.fir@231953.4]
  assign txfifo_io_deq_ready = sim_serial_out_ready; // @[UARTAdapter.scala 115:23:chipyard.TestHarness.ArianeConfig.fir@232024.4]
  assign rxfifo_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@231867.4]
  assign rxfifo_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@231868.4]
  assign rxfifo_io_enq_valid = sim_serial_in_valid; // @[UARTAdapter.scala 118:23:chipyard.TestHarness.ArianeConfig.fir@232026.4]
  assign rxfifo_io_enq_bits = sim_serial_in_bits; // @[UARTAdapter.scala 117:22:chipyard.TestHarness.ArianeConfig.fir@232025.4]
  assign rxfifo_io_deq_ready = _T_45 & txfifo_io_enq_ready; // @[UARTAdapter.scala 106:23:chipyard.TestHarness.ArianeConfig.fir@232014.4]
  assign sim_clock = clock; // @[UARTAdapter.scala 110:16:chipyard.TestHarness.ArianeConfig.fir@232019.4]
  assign sim_reset = reset; // @[UARTAdapter.scala 111:16:chipyard.TestHarness.ArianeConfig.fir@232021.4]
  assign sim_serial_in_ready = rxfifo_io_enq_ready; // @[UARTAdapter.scala 119:26:chipyard.TestHarness.ArianeConfig.fir@232027.4]
  assign sim_serial_out_valid = txfifo_io_deq_valid; // @[UARTAdapter.scala 114:27:chipyard.TestHarness.ArianeConfig.fir@232023.4]
  assign sim_serial_out_bits = txfifo_io_deq_bits; // @[UARTAdapter.scala 113:26:chipyard.TestHarness.ArianeConfig.fir@232022.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  txState = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  txData = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  txDataIdx = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  txBaudCount = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  txSlackCount = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  rxState = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  rxBaudCount = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rxDataIdx = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      txState <= 2'h0;
    end else if (_T_17) begin
      if (txSlackWrap) begin
        txState <= 2'h1;
      end
    end else if (_T_18) begin
      if (txBaudWrap) begin
        txState <= 2'h2;
      end
    end else if (_T_19) begin
      if (txDataWrap) begin
        if (io_uart_txd) begin
          txState <= 2'h0;
        end else begin
          txState <= 2'h3;
        end
      end else if (txfifo_io_enq_ready) begin
        txState <= 2'h1;
      end
    end else if (_T_24) begin
      if (_T_26) begin
        txState <= 2'h0;
      end
    end
    if (_T_17) begin
      if (txSlackWrap) begin
        txData <= 8'h0;
      end
    end else if (!(_T_18)) begin
      if (_T_19) begin
        if (txfifo_io_enq_ready) begin
          txData <= _T_21;
        end
      end
    end
    if (reset) begin
      txDataIdx <= 3'h0;
    end else if (_T_1) begin
      txDataIdx <= _T_4;
    end
    if (reset) begin
      txBaudCount <= 10'h0;
    end else if (_T_6) begin
      if (_T_7) begin
        txBaudCount <= 10'h0;
      end else begin
        txBaudCount <= _T_9;
      end
    end
    if (reset) begin
      txSlackCount <= 2'h0;
    end else if (_T_13) begin
      txSlackCount <= _T_16;
    end
    if (reset) begin
      rxState <= 2'h0;
    end else if (_T_36) begin
      if (_T_37) begin
        rxState <= 2'h1;
      end
    end else if (_T_38) begin
      if (rxBaudWrap) begin
        rxState <= 2'h2;
      end
    end else if (_T_39) begin
      if (_T_42) begin
        rxState <= 2'h0;
      end
    end
    if (reset) begin
      rxBaudCount <= 10'h0;
    end else if (txfifo_io_enq_ready) begin
      if (_T_27) begin
        rxBaudCount <= 10'h0;
      end else begin
        rxBaudCount <= _T_29;
      end
    end
    if (reset) begin
      rxDataIdx <= 3'h0;
    end else if (_T_32) begin
      rxDataIdx <= _T_35;
    end
  end
endmodule
module TestHarness( // @[:chipyard.TestHarness.ArianeConfig.fir@232029.2]
  input   clock, // @[:chipyard.TestHarness.ArianeConfig.fir@232030.4]
  input   reset, // @[:chipyard.TestHarness.ArianeConfig.fir@232031.4]
  output  io_success // @[:chipyard.TestHarness.ArianeConfig.fir@232032.4]
);
  wire  dut_debug_clock; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_reset; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmi_req_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmi_req_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [6:0] dut_debug_clockeddmi_dmi_req_bits_addr; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_debug_clockeddmi_dmi_req_bits_data; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_debug_clockeddmi_dmi_req_bits_op; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmi_resp_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmi_resp_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_debug_clockeddmi_dmi_resp_bits_data; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_debug_clockeddmi_dmi_resp_bits_resp; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmiClock; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_clockeddmi_dmiReset; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_ndreset; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_dmactive; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_debug_dmactiveAck; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_resetctrl_hartIsInReset_0; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_serial_in_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_serial_in_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_serial_in_bits; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_serial_out_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_serial_out_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_serial_out_bits; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_aw_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_aw_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_aw_bits_id; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_mem_axi4_aw_bits_addr; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [7:0] dut_mem_axi4_aw_bits_len; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [2:0] dut_mem_axi4_aw_bits_size; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_mem_axi4_aw_bits_burst; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_aw_bits_lock; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_aw_bits_cache; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [2:0] dut_mem_axi4_aw_bits_prot; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_aw_bits_qos; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_w_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_w_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [63:0] dut_mem_axi4_w_bits_data; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [7:0] dut_mem_axi4_w_bits_strb; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_w_bits_last; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_b_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_b_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_b_bits_id; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_mem_axi4_b_bits_resp; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_ar_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_ar_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_ar_bits_id; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [31:0] dut_mem_axi4_ar_bits_addr; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [7:0] dut_mem_axi4_ar_bits_len; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [2:0] dut_mem_axi4_ar_bits_size; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_mem_axi4_ar_bits_burst; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_ar_bits_lock; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_ar_bits_cache; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [2:0] dut_mem_axi4_ar_bits_prot; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_ar_bits_qos; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_r_ready; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_r_valid; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [3:0] dut_mem_axi4_r_bits_id; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [63:0] dut_mem_axi4_r_bits_data; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire [1:0] dut_mem_axi4_r_bits_resp; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_mem_axi4_r_bits_last; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_uart_0_txd; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_uart_0_rxd; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_clock; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  dut_reset; // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
  wire  SimSerial_clock; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_reset; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_serial_in_ready; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_serial_in_valid; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire [31:0] SimSerial_serial_in_bits; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_serial_out_ready; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_serial_out_valid; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire [31:0] SimSerial_serial_out_bits; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  SimSerial_exit; // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
  wire  mem_clock; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_reset; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_aw_ready; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_aw_valid; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [3:0] mem_io_axi4_0_aw_bits_id; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [27:0] mem_io_axi4_0_aw_bits_addr; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [7:0] mem_io_axi4_0_aw_bits_len; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [2:0] mem_io_axi4_0_aw_bits_size; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [1:0] mem_io_axi4_0_aw_bits_burst; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_w_ready; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_w_valid; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [63:0] mem_io_axi4_0_w_bits_data; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [7:0] mem_io_axi4_0_w_bits_strb; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_w_bits_last; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_b_ready; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_b_valid; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [3:0] mem_io_axi4_0_b_bits_id; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [1:0] mem_io_axi4_0_b_bits_resp; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_ar_ready; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_ar_valid; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [3:0] mem_io_axi4_0_ar_bits_id; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [27:0] mem_io_axi4_0_ar_bits_addr; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [7:0] mem_io_axi4_0_ar_bits_len; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [2:0] mem_io_axi4_0_ar_bits_size; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [1:0] mem_io_axi4_0_ar_bits_burst; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_r_ready; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_r_valid; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [3:0] mem_io_axi4_0_r_bits_id; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [63:0] mem_io_axi4_0_r_bits_data; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire [1:0] mem_io_axi4_0_r_bits_resp; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  mem_io_axi4_0_r_bits_last; // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
  wire  uart_sim_0_clock; // @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
  wire  uart_sim_0_reset; // @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
  wire  uart_sim_0_io_uart_txd; // @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
  wire  uart_sim_0_io_uart_rxd; // @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
  ChipTop dut ( // @[TestHarness.scala 14:100:chipyard.TestHarness.ArianeConfig.fir@232034.4]
    .debug_clock(dut_debug_clock),
    .debug_reset(dut_debug_reset),
    .debug_clockeddmi_dmi_req_ready(dut_debug_clockeddmi_dmi_req_ready),
    .debug_clockeddmi_dmi_req_valid(dut_debug_clockeddmi_dmi_req_valid),
    .debug_clockeddmi_dmi_req_bits_addr(dut_debug_clockeddmi_dmi_req_bits_addr),
    .debug_clockeddmi_dmi_req_bits_data(dut_debug_clockeddmi_dmi_req_bits_data),
    .debug_clockeddmi_dmi_req_bits_op(dut_debug_clockeddmi_dmi_req_bits_op),
    .debug_clockeddmi_dmi_resp_ready(dut_debug_clockeddmi_dmi_resp_ready),
    .debug_clockeddmi_dmi_resp_valid(dut_debug_clockeddmi_dmi_resp_valid),
    .debug_clockeddmi_dmi_resp_bits_data(dut_debug_clockeddmi_dmi_resp_bits_data),
    .debug_clockeddmi_dmi_resp_bits_resp(dut_debug_clockeddmi_dmi_resp_bits_resp),
    .debug_clockeddmi_dmiClock(dut_debug_clockeddmi_dmiClock),
    .debug_clockeddmi_dmiReset(dut_debug_clockeddmi_dmiReset),
    .debug_ndreset(dut_debug_ndreset),
    .debug_dmactive(dut_debug_dmactive),
    .debug_dmactiveAck(dut_debug_dmactiveAck),
    .resetctrl_hartIsInReset_0(dut_resetctrl_hartIsInReset_0),
    .serial_in_ready(dut_serial_in_ready),
    .serial_in_valid(dut_serial_in_valid),
    .serial_in_bits(dut_serial_in_bits),
    .serial_out_ready(dut_serial_out_ready),
    .serial_out_valid(dut_serial_out_valid),
    .serial_out_bits(dut_serial_out_bits),
    .mem_axi4_aw_ready(dut_mem_axi4_aw_ready),
    .mem_axi4_aw_valid(dut_mem_axi4_aw_valid),
    .mem_axi4_aw_bits_id(dut_mem_axi4_aw_bits_id),
    .mem_axi4_aw_bits_addr(dut_mem_axi4_aw_bits_addr),
    .mem_axi4_aw_bits_len(dut_mem_axi4_aw_bits_len),
    .mem_axi4_aw_bits_size(dut_mem_axi4_aw_bits_size),
    .mem_axi4_aw_bits_burst(dut_mem_axi4_aw_bits_burst),
    .mem_axi4_aw_bits_lock(dut_mem_axi4_aw_bits_lock),
    .mem_axi4_aw_bits_cache(dut_mem_axi4_aw_bits_cache),
    .mem_axi4_aw_bits_prot(dut_mem_axi4_aw_bits_prot),
    .mem_axi4_aw_bits_qos(dut_mem_axi4_aw_bits_qos),
    .mem_axi4_w_ready(dut_mem_axi4_w_ready),
    .mem_axi4_w_valid(dut_mem_axi4_w_valid),
    .mem_axi4_w_bits_data(dut_mem_axi4_w_bits_data),
    .mem_axi4_w_bits_strb(dut_mem_axi4_w_bits_strb),
    .mem_axi4_w_bits_last(dut_mem_axi4_w_bits_last),
    .mem_axi4_b_ready(dut_mem_axi4_b_ready),
    .mem_axi4_b_valid(dut_mem_axi4_b_valid),
    .mem_axi4_b_bits_id(dut_mem_axi4_b_bits_id),
    .mem_axi4_b_bits_resp(dut_mem_axi4_b_bits_resp),
    .mem_axi4_ar_ready(dut_mem_axi4_ar_ready),
    .mem_axi4_ar_valid(dut_mem_axi4_ar_valid),
    .mem_axi4_ar_bits_id(dut_mem_axi4_ar_bits_id),
    .mem_axi4_ar_bits_addr(dut_mem_axi4_ar_bits_addr),
    .mem_axi4_ar_bits_len(dut_mem_axi4_ar_bits_len),
    .mem_axi4_ar_bits_size(dut_mem_axi4_ar_bits_size),
    .mem_axi4_ar_bits_burst(dut_mem_axi4_ar_bits_burst),
    .mem_axi4_ar_bits_lock(dut_mem_axi4_ar_bits_lock),
    .mem_axi4_ar_bits_cache(dut_mem_axi4_ar_bits_cache),
    .mem_axi4_ar_bits_prot(dut_mem_axi4_ar_bits_prot),
    .mem_axi4_ar_bits_qos(dut_mem_axi4_ar_bits_qos),
    .mem_axi4_r_ready(dut_mem_axi4_r_ready),
    .mem_axi4_r_valid(dut_mem_axi4_r_valid),
    .mem_axi4_r_bits_id(dut_mem_axi4_r_bits_id),
    .mem_axi4_r_bits_data(dut_mem_axi4_r_bits_data),
    .mem_axi4_r_bits_resp(dut_mem_axi4_r_bits_resp),
    .mem_axi4_r_bits_last(dut_mem_axi4_r_bits_last),
    .uart_0_txd(dut_uart_0_txd),
    .uart_0_rxd(dut_uart_0_rxd),
    .clock(dut_clock),
    .reset(dut_reset)
  );
  SimSerial SimSerial ( // @[SerialAdapter.scala 17:23:chipyard.TestHarness.ArianeConfig.fir@232056.4]
    .clock(SimSerial_clock),
    .reset(SimSerial_reset),
    .serial_in_ready(SimSerial_serial_in_ready),
    .serial_in_valid(SimSerial_serial_in_valid),
    .serial_in_bits(SimSerial_serial_in_bits),
    .serial_out_ready(SimSerial_serial_out_ready),
    .serial_out_valid(SimSerial_serial_out_valid),
    .serial_out_bits(SimSerial_serial_out_bits),
    .exit(SimSerial_exit)
  );
  SimAXIMem_inTestHarness mem ( // @[IOBinders.scala 271:15:chipyard.TestHarness.ArianeConfig.fir@232072.4]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_axi4_0_aw_ready(mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid(mem_io_axi4_0_aw_valid),
    .io_axi4_0_aw_bits_id(mem_io_axi4_0_aw_bits_id),
    .io_axi4_0_aw_bits_addr(mem_io_axi4_0_aw_bits_addr),
    .io_axi4_0_aw_bits_len(mem_io_axi4_0_aw_bits_len),
    .io_axi4_0_aw_bits_size(mem_io_axi4_0_aw_bits_size),
    .io_axi4_0_aw_bits_burst(mem_io_axi4_0_aw_bits_burst),
    .io_axi4_0_w_ready(mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid(mem_io_axi4_0_w_valid),
    .io_axi4_0_w_bits_data(mem_io_axi4_0_w_bits_data),
    .io_axi4_0_w_bits_strb(mem_io_axi4_0_w_bits_strb),
    .io_axi4_0_w_bits_last(mem_io_axi4_0_w_bits_last),
    .io_axi4_0_b_ready(mem_io_axi4_0_b_ready),
    .io_axi4_0_b_valid(mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id(mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp(mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready(mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid(mem_io_axi4_0_ar_valid),
    .io_axi4_0_ar_bits_id(mem_io_axi4_0_ar_bits_id),
    .io_axi4_0_ar_bits_addr(mem_io_axi4_0_ar_bits_addr),
    .io_axi4_0_ar_bits_len(mem_io_axi4_0_ar_bits_len),
    .io_axi4_0_ar_bits_size(mem_io_axi4_0_ar_bits_size),
    .io_axi4_0_ar_bits_burst(mem_io_axi4_0_ar_bits_burst),
    .io_axi4_0_r_ready(mem_io_axi4_0_r_ready),
    .io_axi4_0_r_valid(mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id(mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data(mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp(mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last(mem_io_axi4_0_r_bits_last)
  );
  UARTAdapter_inTestHarness uart_sim_0 ( // @[UARTAdapter.scala 132:28:chipyard.TestHarness.ArianeConfig.fir@232076.4]
    .clock(uart_sim_0_clock),
    .reset(uart_sim_0_reset),
    .io_uart_txd(uart_sim_0_io_uart_txd),
    .io_uart_rxd(uart_sim_0_io_uart_rxd)
  );
  assign io_success = SimSerial_exit; // @[TestHarness.scala 26:14:chipyard.TestHarness.ArianeConfig.fir@232035.4 IOBinders.scala 384:39:chipyard.TestHarness.ArianeConfig.fir@232070.6]
  assign dut_debug_clock = clock; // @[Periphery.scala 308:19:chipyard.TestHarness.ArianeConfig.fir@232040.4 IOBinders.scala 345:17:chipyard.TestHarness.ArianeConfig.fir@232053.4]
  assign dut_debug_reset = 1'h1; // @[Periphery.scala 309:19:chipyard.TestHarness.ArianeConfig.fir@232041.4]
  assign dut_debug_clockeddmi_dmi_req_valid = 1'h0; // @[Periphery.scala 323:25:chipyard.TestHarness.ArianeConfig.fir@232042.4]
  assign dut_debug_clockeddmi_dmi_req_bits_addr = 7'h0;
  assign dut_debug_clockeddmi_dmi_req_bits_data = 32'h0;
  assign dut_debug_clockeddmi_dmi_req_bits_op = 2'h0;
  assign dut_debug_clockeddmi_dmi_resp_ready = 1'h1; // @[Periphery.scala 324:26:chipyard.TestHarness.ArianeConfig.fir@232043.4]
  assign dut_debug_clockeddmi_dmiClock = clock; // @[Periphery.scala 325:20:chipyard.TestHarness.ArianeConfig.fir@232045.4 IOBinders.scala 343:85:chipyard.TestHarness.ArianeConfig.fir@232051.4]
  assign dut_debug_clockeddmi_dmiReset = 1'h1; // @[Periphery.scala 326:20:chipyard.TestHarness.ArianeConfig.fir@232047.4]
  assign dut_debug_dmactiveAck = 1'h0;
  assign dut_resetctrl_hartIsInReset_0 = 1'h0; // @[Periphery.scala 306:59:chipyard.TestHarness.ArianeConfig.fir@232038.4]
  assign dut_serial_in_valid = SimSerial_serial_in_valid; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232067.4]
  assign dut_serial_in_bits = SimSerial_serial_in_bits; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232066.4]
  assign dut_serial_out_ready = SimSerial_serial_out_ready; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232065.4]
  assign dut_mem_axi4_aw_ready = mem_io_axi4_0_aw_ready; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_w_ready = mem_io_axi4_0_w_ready; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_b_valid = mem_io_axi4_0_b_valid; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_b_bits_id = mem_io_axi4_0_b_bits_id; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_b_bits_resp = mem_io_axi4_0_b_bits_resp; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_ar_ready = mem_io_axi4_0_ar_ready; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_r_valid = mem_io_axi4_0_r_valid; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_r_bits_id = mem_io_axi4_0_r_bits_id; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_r_bits_data = mem_io_axi4_0_r_bits_data; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_r_bits_resp = mem_io_axi4_0_r_bits_resp; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_mem_axi4_r_bits_last = mem_io_axi4_0_r_bits_last; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign dut_uart_0_rxd = uart_sim_0_io_uart_rxd; // @[UARTAdapter.scala 135:18:chipyard.TestHarness.ArianeConfig.fir@232080.4]
  assign dut_clock = clock; // @[ChipTop.scala 111:11:chipyard.TestHarness.ArianeConfig.fir@232081.4]
  assign dut_reset = reset; // @[ChipTop.scala 114:11:chipyard.TestHarness.ArianeConfig.fir@232082.4]
  assign SimSerial_clock = clock; // @[SerialAdapter.scala 18:20:chipyard.TestHarness.ArianeConfig.fir@232061.4]
  assign SimSerial_reset = reset; // @[SerialAdapter.scala 19:20:chipyard.TestHarness.ArianeConfig.fir@232062.4]
  assign SimSerial_serial_in_ready = dut_serial_in_ready; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232068.4]
  assign SimSerial_serial_out_valid = dut_serial_out_valid; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232064.4]
  assign SimSerial_serial_out_bits = dut_serial_out_bits; // @[SerialAdapter.scala 20:21:chipyard.TestHarness.ArianeConfig.fir@232063.4]
  assign mem_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@232073.4]
  assign mem_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@232074.4]
  assign mem_io_axi4_0_aw_valid = dut_mem_axi4_aw_valid; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_aw_bits_id = dut_mem_axi4_aw_bits_id; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_aw_bits_addr = dut_mem_axi4_aw_bits_addr[27:0]; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_aw_bits_len = dut_mem_axi4_aw_bits_len; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_aw_bits_size = dut_mem_axi4_aw_bits_size; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_aw_bits_burst = dut_mem_axi4_aw_bits_burst; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_w_valid = dut_mem_axi4_w_valid; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_w_bits_data = dut_mem_axi4_w_bits_data; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_w_bits_strb = dut_mem_axi4_w_bits_strb; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_w_bits_last = dut_mem_axi4_w_bits_last; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_b_ready = dut_mem_axi4_b_ready; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_valid = dut_mem_axi4_ar_valid; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_bits_id = dut_mem_axi4_ar_bits_id; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_bits_addr = dut_mem_axi4_ar_bits_addr[27:0]; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_bits_len = dut_mem_axi4_ar_bits_len; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_bits_size = dut_mem_axi4_ar_bits_size; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_ar_bits_burst = dut_mem_axi4_ar_bits_burst; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign mem_io_axi4_0_r_ready = dut_mem_axi4_r_ready; // @[IOBinders.scala 272:26:chipyard.TestHarness.ArianeConfig.fir@232075.4]
  assign uart_sim_0_clock = clock; // @[:chipyard.TestHarness.ArianeConfig.fir@232077.4]
  assign uart_sim_0_reset = reset; // @[:chipyard.TestHarness.ArianeConfig.fir@232078.4]
  assign uart_sim_0_io_uart_txd = dut_uart_0_txd; // @[UARTAdapter.scala 134:28:chipyard.TestHarness.ArianeConfig.fir@232079.4]
endmodule
module mem_inTestHarness(
  input  [24:0] R0_addr,
  input         R0_en,
  input         R0_clk,
  output [7:0]  R0_data_0,
  output [7:0]  R0_data_1,
  output [7:0]  R0_data_2,
  output [7:0]  R0_data_3,
  output [7:0]  R0_data_4,
  output [7:0]  R0_data_5,
  output [7:0]  R0_data_6,
  output [7:0]  R0_data_7,
  input  [24:0] W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [7:0]  W0_data_0,
  input  [7:0]  W0_data_1,
  input  [7:0]  W0_data_2,
  input  [7:0]  W0_data_3,
  input  [7:0]  W0_data_4,
  input  [7:0]  W0_data_5,
  input  [7:0]  W0_data_6,
  input  [7:0]  W0_data_7,
  input         W0_mask_0,
  input         W0_mask_1,
  input         W0_mask_2,
  input         W0_mask_3,
  input         W0_mask_4,
  input         W0_mask_5,
  input         W0_mask_6,
  input         W0_mask_7
);
  wire [24:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [63:0] mem_ext_R0_data;
  wire [24:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [63:0] mem_ext_W0_data;
  wire [7:0] mem_ext_W0_mask;
  wire [31:0] _GEN_4;
  wire [31:0] _GEN_5;
  wire [3:0] _GEN_10;
  wire [3:0] _GEN_11;
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data),
    .W0_mask(mem_ext_W0_mask)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = R0_en;
  assign mem_ext_R0_addr = R0_addr;
  assign R0_data_0 = mem_ext_R0_data[7:0];
  assign R0_data_1 = mem_ext_R0_data[15:8];
  assign R0_data_2 = mem_ext_R0_data[23:16];
  assign R0_data_3 = mem_ext_R0_data[31:24];
  assign R0_data_4 = mem_ext_R0_data[39:32];
  assign R0_data_5 = mem_ext_R0_data[47:40];
  assign R0_data_6 = mem_ext_R0_data[55:48];
  assign R0_data_7 = mem_ext_R0_data[63:56];
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = W0_en;
  assign mem_ext_W0_addr = W0_addr;
  assign _GEN_4 = {W0_data_7,W0_data_6,W0_data_5,W0_data_4};
  assign _GEN_5 = {W0_data_3,W0_data_2,W0_data_1,W0_data_0};
  assign mem_ext_W0_data = {_GEN_4,_GEN_5};
  assign _GEN_10 = {W0_mask_7,W0_mask_6,W0_mask_5,W0_mask_4};
  assign _GEN_11 = {W0_mask_3,W0_mask_2,W0_mask_1,W0_mask_0};
  assign mem_ext_W0_mask = {_GEN_10,_GEN_11};
endmodule
