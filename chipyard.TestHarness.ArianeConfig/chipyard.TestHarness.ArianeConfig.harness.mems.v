module mem_ext( // @[:anonymous source@2.2]
  input  [24:0] W0_addr, // @[:anonymous source@3.4]
  input         W0_clk, // @[:anonymous source@4.4]
  input  [63:0] W0_data, // @[:anonymous source@5.4]
  input         W0_en, // @[:anonymous source@6.4]
  input  [7:0]  W0_mask, // @[:anonymous source@7.4]
  input  [24:0] R0_addr, // @[:anonymous source@8.4]
  input         R0_clk, // @[:anonymous source@9.4]
  output [63:0] R0_data, // @[:anonymous source@10.4]
  input         R0_en // @[:anonymous source@11.4]
);
  wire [24:0] mem_0_0_W0_addr; // @[:anonymous source@13.4]
  wire  mem_0_0_W0_clk; // @[:anonymous source@13.4]
  wire [7:0] mem_0_0_W0_data; // @[:anonymous source@13.4]
  wire  mem_0_0_W0_en; // @[:anonymous source@13.4]
  wire  mem_0_0_W0_mask; // @[:anonymous source@13.4]
  wire [24:0] mem_0_0_R0_addr; // @[:anonymous source@13.4]
  wire  mem_0_0_R0_clk; // @[:anonymous source@13.4]
  wire [7:0] mem_0_0_R0_data; // @[:anonymous source@13.4]
  wire  mem_0_0_R0_en; // @[:anonymous source@13.4]
  wire [24:0] mem_0_1_W0_addr; // @[:anonymous source@14.4]
  wire  mem_0_1_W0_clk; // @[:anonymous source@14.4]
  wire [7:0] mem_0_1_W0_data; // @[:anonymous source@14.4]
  wire  mem_0_1_W0_en; // @[:anonymous source@14.4]
  wire  mem_0_1_W0_mask; // @[:anonymous source@14.4]
  wire [24:0] mem_0_1_R0_addr; // @[:anonymous source@14.4]
  wire  mem_0_1_R0_clk; // @[:anonymous source@14.4]
  wire [7:0] mem_0_1_R0_data; // @[:anonymous source@14.4]
  wire  mem_0_1_R0_en; // @[:anonymous source@14.4]
  wire [24:0] mem_0_2_W0_addr; // @[:anonymous source@15.4]
  wire  mem_0_2_W0_clk; // @[:anonymous source@15.4]
  wire [7:0] mem_0_2_W0_data; // @[:anonymous source@15.4]
  wire  mem_0_2_W0_en; // @[:anonymous source@15.4]
  wire  mem_0_2_W0_mask; // @[:anonymous source@15.4]
  wire [24:0] mem_0_2_R0_addr; // @[:anonymous source@15.4]
  wire  mem_0_2_R0_clk; // @[:anonymous source@15.4]
  wire [7:0] mem_0_2_R0_data; // @[:anonymous source@15.4]
  wire  mem_0_2_R0_en; // @[:anonymous source@15.4]
  wire [24:0] mem_0_3_W0_addr; // @[:anonymous source@16.4]
  wire  mem_0_3_W0_clk; // @[:anonymous source@16.4]
  wire [7:0] mem_0_3_W0_data; // @[:anonymous source@16.4]
  wire  mem_0_3_W0_en; // @[:anonymous source@16.4]
  wire  mem_0_3_W0_mask; // @[:anonymous source@16.4]
  wire [24:0] mem_0_3_R0_addr; // @[:anonymous source@16.4]
  wire  mem_0_3_R0_clk; // @[:anonymous source@16.4]
  wire [7:0] mem_0_3_R0_data; // @[:anonymous source@16.4]
  wire  mem_0_3_R0_en; // @[:anonymous source@16.4]
  wire [24:0] mem_0_4_W0_addr; // @[:anonymous source@17.4]
  wire  mem_0_4_W0_clk; // @[:anonymous source@17.4]
  wire [7:0] mem_0_4_W0_data; // @[:anonymous source@17.4]
  wire  mem_0_4_W0_en; // @[:anonymous source@17.4]
  wire  mem_0_4_W0_mask; // @[:anonymous source@17.4]
  wire [24:0] mem_0_4_R0_addr; // @[:anonymous source@17.4]
  wire  mem_0_4_R0_clk; // @[:anonymous source@17.4]
  wire [7:0] mem_0_4_R0_data; // @[:anonymous source@17.4]
  wire  mem_0_4_R0_en; // @[:anonymous source@17.4]
  wire [24:0] mem_0_5_W0_addr; // @[:anonymous source@18.4]
  wire  mem_0_5_W0_clk; // @[:anonymous source@18.4]
  wire [7:0] mem_0_5_W0_data; // @[:anonymous source@18.4]
  wire  mem_0_5_W0_en; // @[:anonymous source@18.4]
  wire  mem_0_5_W0_mask; // @[:anonymous source@18.4]
  wire [24:0] mem_0_5_R0_addr; // @[:anonymous source@18.4]
  wire  mem_0_5_R0_clk; // @[:anonymous source@18.4]
  wire [7:0] mem_0_5_R0_data; // @[:anonymous source@18.4]
  wire  mem_0_5_R0_en; // @[:anonymous source@18.4]
  wire [24:0] mem_0_6_W0_addr; // @[:anonymous source@19.4]
  wire  mem_0_6_W0_clk; // @[:anonymous source@19.4]
  wire [7:0] mem_0_6_W0_data; // @[:anonymous source@19.4]
  wire  mem_0_6_W0_en; // @[:anonymous source@19.4]
  wire  mem_0_6_W0_mask; // @[:anonymous source@19.4]
  wire [24:0] mem_0_6_R0_addr; // @[:anonymous source@19.4]
  wire  mem_0_6_R0_clk; // @[:anonymous source@19.4]
  wire [7:0] mem_0_6_R0_data; // @[:anonymous source@19.4]
  wire  mem_0_6_R0_en; // @[:anonymous source@19.4]
  wire [24:0] mem_0_7_W0_addr; // @[:anonymous source@20.4]
  wire  mem_0_7_W0_clk; // @[:anonymous source@20.4]
  wire [7:0] mem_0_7_W0_data; // @[:anonymous source@20.4]
  wire  mem_0_7_W0_en; // @[:anonymous source@20.4]
  wire  mem_0_7_W0_mask; // @[:anonymous source@20.4]
  wire [24:0] mem_0_7_R0_addr; // @[:anonymous source@20.4]
  wire  mem_0_7_R0_clk; // @[:anonymous source@20.4]
  wire [7:0] mem_0_7_R0_data; // @[:anonymous source@20.4]
  wire  mem_0_7_R0_en; // @[:anonymous source@20.4]
  wire [7:0] R0_data_0_0; // @[:anonymous source@63.4]
  wire [7:0] R0_data_0_1; // @[:anonymous source@67.4]
  wire [7:0] R0_data_0_2; // @[:anonymous source@71.4]
  wire [7:0] R0_data_0_3; // @[:anonymous source@75.4]
  wire [7:0] R0_data_0_4; // @[:anonymous source@79.4]
  wire [7:0] R0_data_0_5; // @[:anonymous source@83.4]
  wire [7:0] R0_data_0_6; // @[:anonymous source@87.4]
  wire [7:0] R0_data_0_7; // @[:anonymous source@91.4]
  wire [15:0] _GEN_0; // @[:anonymous source@93.4]
  wire [23:0] _GEN_1; // @[:anonymous source@93.4]
  wire [31:0] _GEN_2; // @[:anonymous source@93.4]
  wire [39:0] _GEN_3; // @[:anonymous source@93.4]
  wire [47:0] _GEN_4; // @[:anonymous source@93.4]
  wire [55:0] _GEN_5; // @[:anonymous source@93.4]
  wire [63:0] R0_data_0; // @[:anonymous source@93.4]
  wire [15:0] _GEN_6; // @[:anonymous source@94.4]
  wire [23:0] _GEN_7; // @[:anonymous source@94.4]
  wire [31:0] _GEN_8; // @[:anonymous source@94.4]
  wire [39:0] _GEN_9; // @[:anonymous source@94.4]
  wire [47:0] _GEN_10; // @[:anonymous source@94.4]
  wire [55:0] _GEN_11; // @[:anonymous source@94.4]
  split_mem_ext mem_0_0 ( // @[:anonymous source@13.4]
    .W0_addr(mem_0_0_W0_addr),
    .W0_clk(mem_0_0_W0_clk),
    .W0_data(mem_0_0_W0_data),
    .W0_en(mem_0_0_W0_en),
    .W0_mask(mem_0_0_W0_mask),
    .R0_addr(mem_0_0_R0_addr),
    .R0_clk(mem_0_0_R0_clk),
    .R0_data(mem_0_0_R0_data),
    .R0_en(mem_0_0_R0_en)
  );
  split_mem_ext mem_0_1 ( // @[:anonymous source@14.4]
    .W0_addr(mem_0_1_W0_addr),
    .W0_clk(mem_0_1_W0_clk),
    .W0_data(mem_0_1_W0_data),
    .W0_en(mem_0_1_W0_en),
    .W0_mask(mem_0_1_W0_mask),
    .R0_addr(mem_0_1_R0_addr),
    .R0_clk(mem_0_1_R0_clk),
    .R0_data(mem_0_1_R0_data),
    .R0_en(mem_0_1_R0_en)
  );
  split_mem_ext mem_0_2 ( // @[:anonymous source@15.4]
    .W0_addr(mem_0_2_W0_addr),
    .W0_clk(mem_0_2_W0_clk),
    .W0_data(mem_0_2_W0_data),
    .W0_en(mem_0_2_W0_en),
    .W0_mask(mem_0_2_W0_mask),
    .R0_addr(mem_0_2_R0_addr),
    .R0_clk(mem_0_2_R0_clk),
    .R0_data(mem_0_2_R0_data),
    .R0_en(mem_0_2_R0_en)
  );
  split_mem_ext mem_0_3 ( // @[:anonymous source@16.4]
    .W0_addr(mem_0_3_W0_addr),
    .W0_clk(mem_0_3_W0_clk),
    .W0_data(mem_0_3_W0_data),
    .W0_en(mem_0_3_W0_en),
    .W0_mask(mem_0_3_W0_mask),
    .R0_addr(mem_0_3_R0_addr),
    .R0_clk(mem_0_3_R0_clk),
    .R0_data(mem_0_3_R0_data),
    .R0_en(mem_0_3_R0_en)
  );
  split_mem_ext mem_0_4 ( // @[:anonymous source@17.4]
    .W0_addr(mem_0_4_W0_addr),
    .W0_clk(mem_0_4_W0_clk),
    .W0_data(mem_0_4_W0_data),
    .W0_en(mem_0_4_W0_en),
    .W0_mask(mem_0_4_W0_mask),
    .R0_addr(mem_0_4_R0_addr),
    .R0_clk(mem_0_4_R0_clk),
    .R0_data(mem_0_4_R0_data),
    .R0_en(mem_0_4_R0_en)
  );
  split_mem_ext mem_0_5 ( // @[:anonymous source@18.4]
    .W0_addr(mem_0_5_W0_addr),
    .W0_clk(mem_0_5_W0_clk),
    .W0_data(mem_0_5_W0_data),
    .W0_en(mem_0_5_W0_en),
    .W0_mask(mem_0_5_W0_mask),
    .R0_addr(mem_0_5_R0_addr),
    .R0_clk(mem_0_5_R0_clk),
    .R0_data(mem_0_5_R0_data),
    .R0_en(mem_0_5_R0_en)
  );
  split_mem_ext mem_0_6 ( // @[:anonymous source@19.4]
    .W0_addr(mem_0_6_W0_addr),
    .W0_clk(mem_0_6_W0_clk),
    .W0_data(mem_0_6_W0_data),
    .W0_en(mem_0_6_W0_en),
    .W0_mask(mem_0_6_W0_mask),
    .R0_addr(mem_0_6_R0_addr),
    .R0_clk(mem_0_6_R0_clk),
    .R0_data(mem_0_6_R0_data),
    .R0_en(mem_0_6_R0_en)
  );
  split_mem_ext mem_0_7 ( // @[:anonymous source@20.4]
    .W0_addr(mem_0_7_W0_addr),
    .W0_clk(mem_0_7_W0_clk),
    .W0_data(mem_0_7_W0_data),
    .W0_en(mem_0_7_W0_en),
    .W0_mask(mem_0_7_W0_mask),
    .R0_addr(mem_0_7_R0_addr),
    .R0_clk(mem_0_7_R0_clk),
    .R0_data(mem_0_7_R0_data),
    .R0_en(mem_0_7_R0_en)
  );
  assign R0_data_0_0 = mem_0_0_R0_data; // @[:anonymous source@63.4]
  assign R0_data_0_1 = mem_0_1_R0_data; // @[:anonymous source@67.4]
  assign R0_data_0_2 = mem_0_2_R0_data; // @[:anonymous source@71.4]
  assign R0_data_0_3 = mem_0_3_R0_data; // @[:anonymous source@75.4]
  assign R0_data_0_4 = mem_0_4_R0_data; // @[:anonymous source@79.4]
  assign R0_data_0_5 = mem_0_5_R0_data; // @[:anonymous source@83.4]
  assign R0_data_0_6 = mem_0_6_R0_data; // @[:anonymous source@87.4]
  assign R0_data_0_7 = mem_0_7_R0_data; // @[:anonymous source@91.4]
  assign _GEN_0 = {R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_1 = {R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_2 = {R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_3 = {R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_4 = {R0_data_0_5,R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_5 = {R0_data_0_6,R0_data_0_5,R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign R0_data_0 = {R0_data_0_7,R0_data_0_6,R0_data_0_5,R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@93.4]
  assign _GEN_6 = {R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign _GEN_7 = {R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign _GEN_8 = {R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign _GEN_9 = {R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign _GEN_10 = {R0_data_0_5,R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign _GEN_11 = {R0_data_0_6,R0_data_0_5,R0_data_0_4,R0_data_0_3,R0_data_0_2,R0_data_0_1,R0_data_0_0}; // @[:anonymous source@94.4]
  assign R0_data = {R0_data_0_7,_GEN_5}; // @[:anonymous source@94.4]
  assign mem_0_0_W0_addr = W0_addr; // @[:anonymous source@22.4]
  assign mem_0_0_W0_clk = W0_clk; // @[:anonymous source@21.4]
  assign mem_0_0_W0_data = W0_data[7:0]; // @[:anonymous source@23.4]
  assign mem_0_0_W0_en = W0_en; // @[:anonymous source@25.4]
  assign mem_0_0_W0_mask = W0_mask[0]; // @[:anonymous source@24.4]
  assign mem_0_0_R0_addr = R0_addr; // @[:anonymous source@62.4]
  assign mem_0_0_R0_clk = R0_clk; // @[:anonymous source@61.4]
  assign mem_0_0_R0_en = R0_en; // @[:anonymous source@64.4]
  assign mem_0_1_W0_addr = W0_addr; // @[:anonymous source@27.4]
  assign mem_0_1_W0_clk = W0_clk; // @[:anonymous source@26.4]
  assign mem_0_1_W0_data = W0_data[15:8]; // @[:anonymous source@28.4]
  assign mem_0_1_W0_en = W0_en; // @[:anonymous source@30.4]
  assign mem_0_1_W0_mask = W0_mask[1]; // @[:anonymous source@29.4]
  assign mem_0_1_R0_addr = R0_addr; // @[:anonymous source@66.4]
  assign mem_0_1_R0_clk = R0_clk; // @[:anonymous source@65.4]
  assign mem_0_1_R0_en = R0_en; // @[:anonymous source@68.4]
  assign mem_0_2_W0_addr = W0_addr; // @[:anonymous source@32.4]
  assign mem_0_2_W0_clk = W0_clk; // @[:anonymous source@31.4]
  assign mem_0_2_W0_data = W0_data[23:16]; // @[:anonymous source@33.4]
  assign mem_0_2_W0_en = W0_en; // @[:anonymous source@35.4]
  assign mem_0_2_W0_mask = W0_mask[2]; // @[:anonymous source@34.4]
  assign mem_0_2_R0_addr = R0_addr; // @[:anonymous source@70.4]
  assign mem_0_2_R0_clk = R0_clk; // @[:anonymous source@69.4]
  assign mem_0_2_R0_en = R0_en; // @[:anonymous source@72.4]
  assign mem_0_3_W0_addr = W0_addr; // @[:anonymous source@37.4]
  assign mem_0_3_W0_clk = W0_clk; // @[:anonymous source@36.4]
  assign mem_0_3_W0_data = W0_data[31:24]; // @[:anonymous source@38.4]
  assign mem_0_3_W0_en = W0_en; // @[:anonymous source@40.4]
  assign mem_0_3_W0_mask = W0_mask[3]; // @[:anonymous source@39.4]
  assign mem_0_3_R0_addr = R0_addr; // @[:anonymous source@74.4]
  assign mem_0_3_R0_clk = R0_clk; // @[:anonymous source@73.4]
  assign mem_0_3_R0_en = R0_en; // @[:anonymous source@76.4]
  assign mem_0_4_W0_addr = W0_addr; // @[:anonymous source@42.4]
  assign mem_0_4_W0_clk = W0_clk; // @[:anonymous source@41.4]
  assign mem_0_4_W0_data = W0_data[39:32]; // @[:anonymous source@43.4]
  assign mem_0_4_W0_en = W0_en; // @[:anonymous source@45.4]
  assign mem_0_4_W0_mask = W0_mask[4]; // @[:anonymous source@44.4]
  assign mem_0_4_R0_addr = R0_addr; // @[:anonymous source@78.4]
  assign mem_0_4_R0_clk = R0_clk; // @[:anonymous source@77.4]
  assign mem_0_4_R0_en = R0_en; // @[:anonymous source@80.4]
  assign mem_0_5_W0_addr = W0_addr; // @[:anonymous source@47.4]
  assign mem_0_5_W0_clk = W0_clk; // @[:anonymous source@46.4]
  assign mem_0_5_W0_data = W0_data[47:40]; // @[:anonymous source@48.4]
  assign mem_0_5_W0_en = W0_en; // @[:anonymous source@50.4]
  assign mem_0_5_W0_mask = W0_mask[5]; // @[:anonymous source@49.4]
  assign mem_0_5_R0_addr = R0_addr; // @[:anonymous source@82.4]
  assign mem_0_5_R0_clk = R0_clk; // @[:anonymous source@81.4]
  assign mem_0_5_R0_en = R0_en; // @[:anonymous source@84.4]
  assign mem_0_6_W0_addr = W0_addr; // @[:anonymous source@52.4]
  assign mem_0_6_W0_clk = W0_clk; // @[:anonymous source@51.4]
  assign mem_0_6_W0_data = W0_data[55:48]; // @[:anonymous source@53.4]
  assign mem_0_6_W0_en = W0_en; // @[:anonymous source@55.4]
  assign mem_0_6_W0_mask = W0_mask[6]; // @[:anonymous source@54.4]
  assign mem_0_6_R0_addr = R0_addr; // @[:anonymous source@86.4]
  assign mem_0_6_R0_clk = R0_clk; // @[:anonymous source@85.4]
  assign mem_0_6_R0_en = R0_en; // @[:anonymous source@88.4]
  assign mem_0_7_W0_addr = W0_addr; // @[:anonymous source@57.4]
  assign mem_0_7_W0_clk = W0_clk; // @[:anonymous source@56.4]
  assign mem_0_7_W0_data = W0_data[63:56]; // @[:anonymous source@58.4]
  assign mem_0_7_W0_en = W0_en; // @[:anonymous source@60.4]
  assign mem_0_7_W0_mask = W0_mask[7]; // @[:anonymous source@59.4]
  assign mem_0_7_R0_addr = R0_addr; // @[:anonymous source@90.4]
  assign mem_0_7_R0_clk = R0_clk; // @[:anonymous source@89.4]
  assign mem_0_7_R0_en = R0_en; // @[:anonymous source@92.4]
endmodule
module split_mem_ext( // @[:anonymous source@96.2]
  input  [24:0] W0_addr, // @[:anonymous source@97.4]
  input         W0_clk, // @[:anonymous source@98.4]
  input  [7:0]  W0_data, // @[:anonymous source@99.4]
  input         W0_en, // @[:anonymous source@100.4]
  input         W0_mask, // @[:anonymous source@101.4]
  input  [24:0] R0_addr, // @[:anonymous source@102.4]
  input         R0_clk, // @[:anonymous source@103.4]
  output [7:0]  R0_data, // @[:anonymous source@104.4]
  input         R0_en // @[:anonymous source@105.4]
);
  reg [7:0] ram [0:33554431]; // @[:anonymous source@107.4]
  reg [31:0] _RAND_0;
  wire [7:0] ram_R_0_data; // @[:anonymous source@107.4]
  wire [24:0] ram_R_0_addr; // @[:anonymous source@107.4]
  wire [7:0] ram_W_0_data; // @[:anonymous source@107.4]
  wire [24:0] ram_W_0_addr; // @[:anonymous source@107.4]
  wire  ram_W_0_mask; // @[:anonymous source@107.4]
  wire  ram_W_0_en; // @[:anonymous source@107.4]
  reg  ram_R_0_en_pipe_0;
  reg [31:0] _RAND_1;
  reg [24:0] ram_R_0_addr_pipe_0;
  reg [31:0] _RAND_2;
  assign ram_R_0_addr = ram_R_0_addr_pipe_0;
  assign ram_R_0_data = ram[ram_R_0_addr]; // @[:anonymous source@107.4]
  assign ram_W_0_data = W0_data;
  assign ram_W_0_addr = W0_addr;
  assign ram_W_0_mask = W0_mask;
  assign ram_W_0_en = W0_en;
  assign R0_data = ram_R_0_data; // @[:anonymous source@118.4]
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
  for (initvar = 0; initvar < 33554432; initvar = initvar+1)
    ram[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_R_0_en_pipe_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ram_R_0_addr_pipe_0 = _RAND_2[24:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge W0_clk) begin
    if(ram_W_0_en & ram_W_0_mask) begin
      ram[ram_W_0_addr] <= ram_W_0_data; // @[:anonymous source@107.4]
    end
  end
  always @(posedge R0_clk) begin
    ram_R_0_en_pipe_0 <= R0_en;
    if (R0_en) begin
      ram_R_0_addr_pipe_0 <= R0_addr;
    end
  end
endmodule
