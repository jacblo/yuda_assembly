// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Mon Jun 24 00:25:22 2024
// Host        : BSERVER05 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode synth_stub
//               /home/y4/Documents/school/cyber-studies/final_project/yuda_assembly/hardware/yuda_assembly01/yuda_assembly01.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_50Mhz, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1" */
/* synthesis syn_force_seq_prim="clk_50Mhz" */;
  output clk_50Mhz /* synthesis syn_isclock = 1 */;
  input clk_in1;
endmodule
