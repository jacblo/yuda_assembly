// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Sun Jun 16 18:19:51 2024
// Host        : BSERVER05 running 64-bit Linux Mint 21.3
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/y4/Documents/school/cyber-studies/final_project/yuda_assembly/hardware/yuda_assembly01/yuda_assembly01.sim/sim_1/synth/timing/xsim/register_file_tb_time_synth.v
// Design      : register_file
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module register_file
   (clk,
    read1,
    read2,
    writeReg,
    \writeData[0] ,
    \writeData[1] ,
    \writeData[2] ,
    RegWrite,
    \Data1[0] ,
    \Data1[1] ,
    \Data1[2] ,
    \Data2[0] ,
    \Data2[1] ,
    \Data2[2] ,
    \AX[0] ,
    \AX[1] ,
    \AX[2] ,
    reset,
    newIP,
    WriteIP,
    IP,
    running);
  input clk;
  input [1:0]read1;
  input [1:0]read2;
  input [1:0]writeReg;
  input [6:0]\writeData[0] ;
  input [6:0]\writeData[1] ;
  input [6:0]\writeData[2] ;
  input RegWrite;
  output [6:0]\Data1[0] ;
  output [6:0]\Data1[1] ;
  output [6:0]\Data1[2] ;
  output [6:0]\Data2[0] ;
  output [6:0]\Data2[1] ;
  output [6:0]\Data2[2] ;
  output [6:0]\AX[0] ;
  output [6:0]\AX[1] ;
  output [6:0]\AX[2] ;
  input reset;
  input [6:0]newIP;
  input WriteIP;
  output [6:0]IP;
  output running;

  wire [6:0]\AX[0] ;
  wire [6:0]\AX[0]_OBUF ;
  wire [6:0]\AX[1] ;
  wire [6:0]\AX[1]_OBUF ;
  wire [6:0]\AX[2] ;
  wire [6:0]\AX[2]_OBUF ;
  wire Data1;
  wire [6:0]\Data1[0] ;
  wire [6:0]\Data1[0]_OBUF ;
  wire [6:0]\Data1[1] ;
  wire [6:0]\Data1[1]_OBUF ;
  wire [6:0]\Data1[2] ;
  wire [6:0]\Data1[2]_OBUF ;
  wire \Data1_reg[0][0]_i_1_n_0 ;
  wire \Data1_reg[0][1]_i_1_n_0 ;
  wire \Data1_reg[0][2]_i_1_n_0 ;
  wire \Data1_reg[0][3]_i_1_n_0 ;
  wire \Data1_reg[0][4]_i_1_n_0 ;
  wire \Data1_reg[0][5]_i_1_n_0 ;
  wire \Data1_reg[0][6]_i_1_n_0 ;
  wire \Data1_reg[1][0]_i_1_n_0 ;
  wire \Data1_reg[1][1]_i_1_n_0 ;
  wire \Data1_reg[1][2]_i_1_n_0 ;
  wire \Data1_reg[1][3]_i_1_n_0 ;
  wire \Data1_reg[1][4]_i_1_n_0 ;
  wire \Data1_reg[1][5]_i_1_n_0 ;
  wire \Data1_reg[1][6]_i_1_n_0 ;
  wire \Data1_reg[2][0]_i_1_n_0 ;
  wire \Data1_reg[2][1]_i_1_n_0 ;
  wire \Data1_reg[2][2]_i_1_n_0 ;
  wire \Data1_reg[2][3]_i_1_n_0 ;
  wire \Data1_reg[2][4]_i_1_n_0 ;
  wire \Data1_reg[2][5]_i_1_n_0 ;
  wire \Data1_reg[2][6]_i_1_n_0 ;
  wire Data2;
  wire [6:0]\Data2[0] ;
  wire [6:0]\Data2[0]_OBUF ;
  wire [6:0]\Data2[1] ;
  wire [6:0]\Data2[1]_OBUF ;
  wire [6:0]\Data2[2] ;
  wire [6:0]\Data2[2]_OBUF ;
  wire \Data2_reg[0][0]_i_1_n_0 ;
  wire \Data2_reg[0][1]_i_1_n_0 ;
  wire \Data2_reg[0][2]_i_1_n_0 ;
  wire \Data2_reg[0][3]_i_1_n_0 ;
  wire \Data2_reg[0][4]_i_1_n_0 ;
  wire \Data2_reg[0][5]_i_1_n_0 ;
  wire \Data2_reg[0][6]_i_1_n_0 ;
  wire \Data2_reg[1][0]_i_1_n_0 ;
  wire \Data2_reg[1][1]_i_1_n_0 ;
  wire \Data2_reg[1][2]_i_1_n_0 ;
  wire \Data2_reg[1][3]_i_1_n_0 ;
  wire \Data2_reg[1][4]_i_1_n_0 ;
  wire \Data2_reg[1][5]_i_1_n_0 ;
  wire \Data2_reg[1][6]_i_1_n_0 ;
  wire \Data2_reg[2][0]_i_1_n_0 ;
  wire \Data2_reg[2][1]_i_1_n_0 ;
  wire \Data2_reg[2][2]_i_1_n_0 ;
  wire \Data2_reg[2][3]_i_1_n_0 ;
  wire \Data2_reg[2][4]_i_1_n_0 ;
  wire \Data2_reg[2][5]_i_1_n_0 ;
  wire \Data2_reg[2][6]_i_1_n_0 ;
  wire [6:0]IP;
  wire [6:0]IP_OBUF;
  wire \IP_reg[0]_i_1_n_0 ;
  wire \IP_reg[1]_i_1_n_0 ;
  wire \IP_reg[1]_i_2_n_0 ;
  wire \IP_reg[2]_i_1_n_0 ;
  wire \IP_reg[2]_i_2_n_0 ;
  wire \IP_reg[3]_i_1_n_0 ;
  wire \IP_reg[3]_i_2_n_0 ;
  wire \IP_reg[4]_i_1_n_0 ;
  wire \IP_reg[4]_i_2_n_0 ;
  wire \IP_reg[5]_i_1_n_0 ;
  wire \IP_reg[5]_i_2_n_0 ;
  wire \IP_reg[6]_i_1_n_0 ;
  wire \IP_reg[6]_i_2_n_0 ;
  wire \IP_reg[6]_i_3_n_0 ;
  wire RegWrite;
  wire RegWrite_IBUF;
  wire WriteIP;
  wire WriteIP_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:0]newIP;
  wire [6:0]newIP_IBUF;
  wire [1:0]read1;
  wire [1:0]read1_IBUF;
  wire [1:0]read2;
  wire [1:0]read2_IBUF;
  wire \registers[0][0][6]_i_1_n_0 ;
  wire \registers[1][0][6]_i_1_n_0 ;
  wire \registers_reg[0][0][0]_i_1_n_0 ;
  wire \registers_reg[0][0][1]_i_1_n_0 ;
  wire \registers_reg[0][0][2]_i_1_n_0 ;
  wire \registers_reg[0][0][3]_i_1_n_0 ;
  wire \registers_reg[0][0][4]_i_1_n_0 ;
  wire \registers_reg[0][0][5]_i_1_n_0 ;
  wire \registers_reg[0][0][6]_i_2_n_0 ;
  wire \registers_reg[0][1][0]_i_1_n_0 ;
  wire \registers_reg[0][1][1]_i_1_n_0 ;
  wire \registers_reg[0][1][2]_i_1_n_0 ;
  wire \registers_reg[0][1][3]_i_1_n_0 ;
  wire \registers_reg[0][1][4]_i_1_n_0 ;
  wire \registers_reg[0][1][5]_i_1_n_0 ;
  wire \registers_reg[0][1][6]_i_1_n_0 ;
  wire \registers_reg[0][2][0]_i_1_n_0 ;
  wire \registers_reg[0][2][1]_i_1_n_0 ;
  wire \registers_reg[0][2][2]_i_1_n_0 ;
  wire \registers_reg[0][2][3]_i_1_n_0 ;
  wire \registers_reg[0][2][4]_i_1_n_0 ;
  wire \registers_reg[0][2][5]_i_1_n_0 ;
  wire \registers_reg[0][2][6]_i_1_n_0 ;
  wire [6:0]\registers_reg[1][2] ;
  wire \registers_reg_n_0_[1][0][0] ;
  wire \registers_reg_n_0_[1][0][1] ;
  wire \registers_reg_n_0_[1][0][2] ;
  wire \registers_reg_n_0_[1][0][3] ;
  wire \registers_reg_n_0_[1][0][4] ;
  wire \registers_reg_n_0_[1][0][5] ;
  wire \registers_reg_n_0_[1][0][6] ;
  wire \registers_reg_n_0_[1][1][0] ;
  wire \registers_reg_n_0_[1][1][1] ;
  wire \registers_reg_n_0_[1][1][2] ;
  wire \registers_reg_n_0_[1][1][3] ;
  wire \registers_reg_n_0_[1][1][4] ;
  wire \registers_reg_n_0_[1][1][5] ;
  wire \registers_reg_n_0_[1][1][6] ;
  wire reset;
  wire reset_IBUF;
  wire running;
  wire running_OBUF;
  wire running_i_1_n_0;
  wire running_i_2_n_0;
  wire running_i_3_n_0;
  wire running_i_4_n_0;
  wire running_i_5_n_0;
  wire running_i_6_n_0;
  wire [6:0]\writeData[0] ;
  wire [6:0]\writeData[1] ;
  wire [6:0]\writeData[2] ;
  wire [1:0]writeReg;
  wire [1:0]writeReg_IBUF;

initial begin
 $sdf_annotate("register_file_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \AX[0][0]_INST_0 
       (.I(\AX[0]_OBUF [0]),
        .O(\AX[0] [0]));
  OBUF \AX[0][1]_INST_0 
       (.I(\AX[0]_OBUF [1]),
        .O(\AX[0] [1]));
  OBUF \AX[0][2]_INST_0 
       (.I(\AX[0]_OBUF [2]),
        .O(\AX[0] [2]));
  OBUF \AX[0][3]_INST_0 
       (.I(\AX[0]_OBUF [3]),
        .O(\AX[0] [3]));
  OBUF \AX[0][4]_INST_0 
       (.I(\AX[0]_OBUF [4]),
        .O(\AX[0] [4]));
  OBUF \AX[0][5]_INST_0 
       (.I(\AX[0]_OBUF [5]),
        .O(\AX[0] [5]));
  OBUF \AX[0][6]_INST_0 
       (.I(\AX[0]_OBUF [6]),
        .O(\AX[0] [6]));
  OBUF \AX[1][0]_INST_0 
       (.I(\AX[1]_OBUF [0]),
        .O(\AX[1] [0]));
  OBUF \AX[1][1]_INST_0 
       (.I(\AX[1]_OBUF [1]),
        .O(\AX[1] [1]));
  OBUF \AX[1][2]_INST_0 
       (.I(\AX[1]_OBUF [2]),
        .O(\AX[1] [2]));
  OBUF \AX[1][3]_INST_0 
       (.I(\AX[1]_OBUF [3]),
        .O(\AX[1] [3]));
  OBUF \AX[1][4]_INST_0 
       (.I(\AX[1]_OBUF [4]),
        .O(\AX[1] [4]));
  OBUF \AX[1][5]_INST_0 
       (.I(\AX[1]_OBUF [5]),
        .O(\AX[1] [5]));
  OBUF \AX[1][6]_INST_0 
       (.I(\AX[1]_OBUF [6]),
        .O(\AX[1] [6]));
  OBUF \AX[2][0]_INST_0 
       (.I(\AX[2]_OBUF [0]),
        .O(\AX[2] [0]));
  OBUF \AX[2][1]_INST_0 
       (.I(\AX[2]_OBUF [1]),
        .O(\AX[2] [1]));
  OBUF \AX[2][2]_INST_0 
       (.I(\AX[2]_OBUF [2]),
        .O(\AX[2] [2]));
  OBUF \AX[2][3]_INST_0 
       (.I(\AX[2]_OBUF [3]),
        .O(\AX[2] [3]));
  OBUF \AX[2][4]_INST_0 
       (.I(\AX[2]_OBUF [4]),
        .O(\AX[2] [4]));
  OBUF \AX[2][5]_INST_0 
       (.I(\AX[2]_OBUF [5]),
        .O(\AX[2] [5]));
  OBUF \AX[2][6]_INST_0 
       (.I(\AX[2]_OBUF [6]),
        .O(\AX[2] [6]));
  OBUF \Data1[0][0]_INST_0 
       (.I(\Data1[0]_OBUF [0]),
        .O(\Data1[0] [0]));
  OBUF \Data1[0][1]_INST_0 
       (.I(\Data1[0]_OBUF [1]),
        .O(\Data1[0] [1]));
  OBUF \Data1[0][2]_INST_0 
       (.I(\Data1[0]_OBUF [2]),
        .O(\Data1[0] [2]));
  OBUF \Data1[0][3]_INST_0 
       (.I(\Data1[0]_OBUF [3]),
        .O(\Data1[0] [3]));
  OBUF \Data1[0][4]_INST_0 
       (.I(\Data1[0]_OBUF [4]),
        .O(\Data1[0] [4]));
  OBUF \Data1[0][5]_INST_0 
       (.I(\Data1[0]_OBUF [5]),
        .O(\Data1[0] [5]));
  OBUF \Data1[0][6]_INST_0 
       (.I(\Data1[0]_OBUF [6]),
        .O(\Data1[0] [6]));
  OBUF \Data1[1][0]_INST_0 
       (.I(\Data1[1]_OBUF [0]),
        .O(\Data1[1] [0]));
  OBUF \Data1[1][1]_INST_0 
       (.I(\Data1[1]_OBUF [1]),
        .O(\Data1[1] [1]));
  OBUF \Data1[1][2]_INST_0 
       (.I(\Data1[1]_OBUF [2]),
        .O(\Data1[1] [2]));
  OBUF \Data1[1][3]_INST_0 
       (.I(\Data1[1]_OBUF [3]),
        .O(\Data1[1] [3]));
  OBUF \Data1[1][4]_INST_0 
       (.I(\Data1[1]_OBUF [4]),
        .O(\Data1[1] [4]));
  OBUF \Data1[1][5]_INST_0 
       (.I(\Data1[1]_OBUF [5]),
        .O(\Data1[1] [5]));
  OBUF \Data1[1][6]_INST_0 
       (.I(\Data1[1]_OBUF [6]),
        .O(\Data1[1] [6]));
  OBUF \Data1[2][0]_INST_0 
       (.I(\Data1[2]_OBUF [0]),
        .O(\Data1[2] [0]));
  OBUF \Data1[2][1]_INST_0 
       (.I(\Data1[2]_OBUF [1]),
        .O(\Data1[2] [1]));
  OBUF \Data1[2][2]_INST_0 
       (.I(\Data1[2]_OBUF [2]),
        .O(\Data1[2] [2]));
  OBUF \Data1[2][3]_INST_0 
       (.I(\Data1[2]_OBUF [3]),
        .O(\Data1[2] [3]));
  OBUF \Data1[2][4]_INST_0 
       (.I(\Data1[2]_OBUF [4]),
        .O(\Data1[2] [4]));
  OBUF \Data1[2][5]_INST_0 
       (.I(\Data1[2]_OBUF [5]),
        .O(\Data1[2] [5]));
  OBUF \Data1[2][6]_INST_0 
       (.I(\Data1[2]_OBUF [6]),
        .O(\Data1[2] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][0] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][0]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [0]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][0]_i_1 
       (.I0(\AX[0]_OBUF [0]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][0] ),
        .O(\Data1_reg[0][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][1] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][1]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][1]_i_1 
       (.I0(\AX[0]_OBUF [1]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][1] ),
        .O(\Data1_reg[0][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][2] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][2]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [2]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][2]_i_1 
       (.I0(\AX[0]_OBUF [2]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][2] ),
        .O(\Data1_reg[0][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][3] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][3]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [3]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][3]_i_1 
       (.I0(\AX[0]_OBUF [3]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][3] ),
        .O(\Data1_reg[0][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][4] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][4]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [4]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][4]_i_1 
       (.I0(\AX[0]_OBUF [4]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][4] ),
        .O(\Data1_reg[0][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][5] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][5]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [5]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][5]_i_1 
       (.I0(\AX[0]_OBUF [5]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][5] ),
        .O(\Data1_reg[0][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[0][6] 
       (.CLR(1'b0),
        .D(\Data1_reg[0][6]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[0]_OBUF [6]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[0][6]_i_1 
       (.I0(\AX[0]_OBUF [6]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][6] ),
        .O(\Data1_reg[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data1_reg[0][6]_i_2 
       (.I0(read1_IBUF[0]),
        .I1(read1_IBUF[1]),
        .O(Data1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][0] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][0]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [0]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][0]_i_1 
       (.I0(\AX[1]_OBUF [0]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][0] ),
        .O(\Data1_reg[1][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][1] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][1]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][1]_i_1 
       (.I0(\AX[1]_OBUF [1]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][1] ),
        .O(\Data1_reg[1][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][2] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][2]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [2]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][2]_i_1 
       (.I0(\AX[1]_OBUF [2]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][2] ),
        .O(\Data1_reg[1][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][3] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][3]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [3]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][3]_i_1 
       (.I0(\AX[1]_OBUF [3]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][3] ),
        .O(\Data1_reg[1][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][4] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][4]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [4]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][4]_i_1 
       (.I0(\AX[1]_OBUF [4]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][4] ),
        .O(\Data1_reg[1][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][5] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][5]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [5]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][5]_i_1 
       (.I0(\AX[1]_OBUF [5]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][5] ),
        .O(\Data1_reg[1][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[1][6] 
       (.CLR(1'b0),
        .D(\Data1_reg[1][6]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[1]_OBUF [6]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data1_reg[1][6]_i_1 
       (.I0(\AX[1]_OBUF [6]),
        .I1(read1_IBUF[1]),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][6] ),
        .O(\Data1_reg[1][6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][0] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][0]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][0]_i_1 
       (.I0(\AX[2]_OBUF [0]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[0]),
        .I3(\registers_reg[1][2] [0]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][1] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][1]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [1]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][1]_i_1 
       (.I0(\AX[2]_OBUF [1]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[1]),
        .I3(\registers_reg[1][2] [1]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][2] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][2]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [2]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][2]_i_1 
       (.I0(\AX[2]_OBUF [2]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[2]),
        .I3(\registers_reg[1][2] [2]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][3] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][3]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [3]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][3]_i_1 
       (.I0(\AX[2]_OBUF [3]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[3]),
        .I3(\registers_reg[1][2] [3]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][4] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][4]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [4]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][4]_i_1 
       (.I0(\AX[2]_OBUF [4]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[4]),
        .I3(\registers_reg[1][2] [4]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][5] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][5]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [5]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][5]_i_1 
       (.I0(\AX[2]_OBUF [5]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[5]),
        .I3(\registers_reg[1][2] [5]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data1_reg[2][6] 
       (.CLR(1'b0),
        .D(\Data1_reg[2][6]_i_1_n_0 ),
        .G(Data1),
        .GE(1'b1),
        .Q(\Data1[2]_OBUF [6]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data1_reg[2][6]_i_1 
       (.I0(\AX[2]_OBUF [6]),
        .I1(read1_IBUF[1]),
        .I2(IP_OBUF[6]),
        .I3(\registers_reg[1][2] [6]),
        .I4(read1_IBUF[0]),
        .O(\Data1_reg[2][6]_i_1_n_0 ));
  OBUF \Data2[0][0]_INST_0 
       (.I(\Data2[0]_OBUF [0]),
        .O(\Data2[0] [0]));
  OBUF \Data2[0][1]_INST_0 
       (.I(\Data2[0]_OBUF [1]),
        .O(\Data2[0] [1]));
  OBUF \Data2[0][2]_INST_0 
       (.I(\Data2[0]_OBUF [2]),
        .O(\Data2[0] [2]));
  OBUF \Data2[0][3]_INST_0 
       (.I(\Data2[0]_OBUF [3]),
        .O(\Data2[0] [3]));
  OBUF \Data2[0][4]_INST_0 
       (.I(\Data2[0]_OBUF [4]),
        .O(\Data2[0] [4]));
  OBUF \Data2[0][5]_INST_0 
       (.I(\Data2[0]_OBUF [5]),
        .O(\Data2[0] [5]));
  OBUF \Data2[0][6]_INST_0 
       (.I(\Data2[0]_OBUF [6]),
        .O(\Data2[0] [6]));
  OBUF \Data2[1][0]_INST_0 
       (.I(\Data2[1]_OBUF [0]),
        .O(\Data2[1] [0]));
  OBUF \Data2[1][1]_INST_0 
       (.I(\Data2[1]_OBUF [1]),
        .O(\Data2[1] [1]));
  OBUF \Data2[1][2]_INST_0 
       (.I(\Data2[1]_OBUF [2]),
        .O(\Data2[1] [2]));
  OBUF \Data2[1][3]_INST_0 
       (.I(\Data2[1]_OBUF [3]),
        .O(\Data2[1] [3]));
  OBUF \Data2[1][4]_INST_0 
       (.I(\Data2[1]_OBUF [4]),
        .O(\Data2[1] [4]));
  OBUF \Data2[1][5]_INST_0 
       (.I(\Data2[1]_OBUF [5]),
        .O(\Data2[1] [5]));
  OBUF \Data2[1][6]_INST_0 
       (.I(\Data2[1]_OBUF [6]),
        .O(\Data2[1] [6]));
  OBUF \Data2[2][0]_INST_0 
       (.I(\Data2[2]_OBUF [0]),
        .O(\Data2[2] [0]));
  OBUF \Data2[2][1]_INST_0 
       (.I(\Data2[2]_OBUF [1]),
        .O(\Data2[2] [1]));
  OBUF \Data2[2][2]_INST_0 
       (.I(\Data2[2]_OBUF [2]),
        .O(\Data2[2] [2]));
  OBUF \Data2[2][3]_INST_0 
       (.I(\Data2[2]_OBUF [3]),
        .O(\Data2[2] [3]));
  OBUF \Data2[2][4]_INST_0 
       (.I(\Data2[2]_OBUF [4]),
        .O(\Data2[2] [4]));
  OBUF \Data2[2][5]_INST_0 
       (.I(\Data2[2]_OBUF [5]),
        .O(\Data2[2] [5]));
  OBUF \Data2[2][6]_INST_0 
       (.I(\Data2[2]_OBUF [6]),
        .O(\Data2[2] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][0] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][0]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [0]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][0]_i_1 
       (.I0(\AX[0]_OBUF [0]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][0] ),
        .O(\Data2_reg[0][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][1] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][1]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][1]_i_1 
       (.I0(\AX[0]_OBUF [1]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][1] ),
        .O(\Data2_reg[0][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][2] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][2]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [2]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][2]_i_1 
       (.I0(\AX[0]_OBUF [2]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][2] ),
        .O(\Data2_reg[0][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][3] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][3]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [3]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][3]_i_1 
       (.I0(\AX[0]_OBUF [3]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][3] ),
        .O(\Data2_reg[0][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][4] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][4]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [4]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][4]_i_1 
       (.I0(\AX[0]_OBUF [4]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][4] ),
        .O(\Data2_reg[0][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][5] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][5]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [5]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][5]_i_1 
       (.I0(\AX[0]_OBUF [5]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][5] ),
        .O(\Data2_reg[0][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[0][6] 
       (.CLR(1'b0),
        .D(\Data2_reg[0][6]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[0]_OBUF [6]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[0][6]_i_1 
       (.I0(\AX[0]_OBUF [6]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][0][6] ),
        .O(\Data2_reg[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data2_reg[0][6]_i_2 
       (.I0(read2_IBUF[0]),
        .I1(read2_IBUF[1]),
        .O(Data2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][0] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][0]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [0]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][0]_i_1 
       (.I0(\AX[1]_OBUF [0]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][0] ),
        .O(\Data2_reg[1][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][1] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][1]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][1]_i_1 
       (.I0(\AX[1]_OBUF [1]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][1] ),
        .O(\Data2_reg[1][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][2] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][2]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [2]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][2]_i_1 
       (.I0(\AX[1]_OBUF [2]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][2] ),
        .O(\Data2_reg[1][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][3] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][3]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [3]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][3]_i_1 
       (.I0(\AX[1]_OBUF [3]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][3] ),
        .O(\Data2_reg[1][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][4] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][4]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [4]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][4]_i_1 
       (.I0(\AX[1]_OBUF [4]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][4] ),
        .O(\Data2_reg[1][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][5] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][5]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [5]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][5]_i_1 
       (.I0(\AX[1]_OBUF [5]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][5] ),
        .O(\Data2_reg[1][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[1][6] 
       (.CLR(1'b0),
        .D(\Data2_reg[1][6]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[1]_OBUF [6]));
  LUT4 #(
    .INIT(16'h3202)) 
    \Data2_reg[1][6]_i_1 
       (.I0(\AX[1]_OBUF [6]),
        .I1(read2_IBUF[1]),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[1][1][6] ),
        .O(\Data2_reg[1][6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][0] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][0]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][0]_i_1 
       (.I0(\AX[2]_OBUF [0]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[0]),
        .I3(\registers_reg[1][2] [0]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][1] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][1]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [1]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][1]_i_1 
       (.I0(\AX[2]_OBUF [1]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[1]),
        .I3(\registers_reg[1][2] [1]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][2] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][2]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [2]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][2]_i_1 
       (.I0(\AX[2]_OBUF [2]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[2]),
        .I3(\registers_reg[1][2] [2]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][3] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][3]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [3]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][3]_i_1 
       (.I0(\AX[2]_OBUF [3]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[3]),
        .I3(\registers_reg[1][2] [3]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][4] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][4]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [4]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][4]_i_1 
       (.I0(\AX[2]_OBUF [4]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[4]),
        .I3(\registers_reg[1][2] [4]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][5] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][5]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [5]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][5]_i_1 
       (.I0(\AX[2]_OBUF [5]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[5]),
        .I3(\registers_reg[1][2] [5]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data2_reg[2][6] 
       (.CLR(1'b0),
        .D(\Data2_reg[2][6]_i_1_n_0 ),
        .G(Data2),
        .GE(1'b1),
        .Q(\Data2[2]_OBUF [6]));
  LUT5 #(
    .INIT(32'hF3C0E2E2)) 
    \Data2_reg[2][6]_i_1 
       (.I0(\AX[2]_OBUF [6]),
        .I1(read2_IBUF[1]),
        .I2(IP_OBUF[6]),
        .I3(\registers_reg[1][2] [6]),
        .I4(read2_IBUF[0]),
        .O(\Data2_reg[2][6]_i_1_n_0 ));
  OBUF \IP_OBUF[0]_inst 
       (.I(IP_OBUF[0]),
        .O(IP[0]));
  OBUF \IP_OBUF[1]_inst 
       (.I(IP_OBUF[1]),
        .O(IP[1]));
  OBUF \IP_OBUF[2]_inst 
       (.I(IP_OBUF[2]),
        .O(IP[2]));
  OBUF \IP_OBUF[3]_inst 
       (.I(IP_OBUF[3]),
        .O(IP[3]));
  OBUF \IP_OBUF[4]_inst 
       (.I(IP_OBUF[4]),
        .O(IP[4]));
  OBUF \IP_OBUF[5]_inst 
       (.I(IP_OBUF[5]),
        .O(IP[5]));
  OBUF \IP_OBUF[6]_inst 
       (.I(IP_OBUF[6]),
        .O(IP[6]));
  LUT6 #(
    .INIT(64'hECEFEFEC20232320)) 
    \IP_reg[0]_i_1 
       (.I0(newIP_IBUF[0]),
        .I1(\IP_reg[6]_i_2_n_0 ),
        .I2(WriteIP_IBUF),
        .I3(IP_OBUF[0]),
        .I4(running_OBUF),
        .I5(\registers_reg[0][2][0]_i_1_n_0 ),
        .O(\IP_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFECECEF23202023)) 
    \IP_reg[1]_i_1 
       (.I0(newIP_IBUF[1]),
        .I1(\IP_reg[6]_i_2_n_0 ),
        .I2(WriteIP_IBUF),
        .I3(\IP_reg[1]_i_2_n_0 ),
        .I4(IP_OBUF[1]),
        .I5(\registers_reg[0][2][1]_i_1_n_0 ),
        .O(\IP_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP_reg[1]_i_2 
       (.I0(running_OBUF),
        .I1(IP_OBUF[0]),
        .O(\IP_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0990000F099)) 
    \IP_reg[2]_i_1 
       (.I0(\IP_reg[2]_i_2_n_0 ),
        .I1(IP_OBUF[2]),
        .I2(newIP_IBUF[2]),
        .I3(WriteIP_IBUF),
        .I4(\IP_reg[6]_i_2_n_0 ),
        .I5(\registers_reg[0][2][2]_i_1_n_0 ),
        .O(\IP_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \IP_reg[2]_i_2 
       (.I0(IP_OBUF[0]),
        .I1(running_OBUF),
        .I2(IP_OBUF[1]),
        .O(\IP_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0990000F099)) 
    \IP_reg[3]_i_1 
       (.I0(IP_OBUF[3]),
        .I1(\IP_reg[3]_i_2_n_0 ),
        .I2(newIP_IBUF[3]),
        .I3(WriteIP_IBUF),
        .I4(\IP_reg[6]_i_2_n_0 ),
        .I5(\registers_reg[0][2][3]_i_1_n_0 ),
        .O(\IP_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \IP_reg[3]_i_2 
       (.I0(IP_OBUF[1]),
        .I1(running_OBUF),
        .I2(IP_OBUF[0]),
        .I3(IP_OBUF[2]),
        .O(\IP_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0990000F099)) 
    \IP_reg[4]_i_1 
       (.I0(IP_OBUF[4]),
        .I1(\IP_reg[4]_i_2_n_0 ),
        .I2(newIP_IBUF[4]),
        .I3(WriteIP_IBUF),
        .I4(\IP_reg[6]_i_2_n_0 ),
        .I5(\registers_reg[0][2][4]_i_1_n_0 ),
        .O(\IP_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \IP_reg[4]_i_2 
       (.I0(IP_OBUF[2]),
        .I1(IP_OBUF[0]),
        .I2(running_OBUF),
        .I3(IP_OBUF[1]),
        .I4(IP_OBUF[3]),
        .O(\IP_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0990000F099)) 
    \IP_reg[5]_i_1 
       (.I0(IP_OBUF[5]),
        .I1(\IP_reg[5]_i_2_n_0 ),
        .I2(newIP_IBUF[5]),
        .I3(WriteIP_IBUF),
        .I4(\IP_reg[6]_i_2_n_0 ),
        .I5(\registers_reg[0][2][5]_i_1_n_0 ),
        .O(\IP_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \IP_reg[5]_i_2 
       (.I0(IP_OBUF[3]),
        .I1(IP_OBUF[1]),
        .I2(running_OBUF),
        .I3(IP_OBUF[0]),
        .I4(IP_OBUF[2]),
        .I5(IP_OBUF[4]),
        .O(\IP_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD0DF808F808FD0D)) 
    \IP_reg[6]_i_1 
       (.I0(WriteIP_IBUF),
        .I1(newIP_IBUF[6]),
        .I2(\IP_reg[6]_i_2_n_0 ),
        .I3(\registers_reg[0][2][6]_i_1_n_0 ),
        .I4(\IP_reg[6]_i_3_n_0 ),
        .I5(IP_OBUF[6]),
        .O(\IP_reg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \IP_reg[6]_i_2 
       (.I0(writeReg_IBUF[1]),
        .I1(RegWrite_IBUF),
        .I2(writeReg_IBUF[0]),
        .O(\IP_reg[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \IP_reg[6]_i_3 
       (.I0(\IP_reg[5]_i_2_n_0 ),
        .I1(IP_OBUF[5]),
        .O(\IP_reg[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[0]_i_1_n_0 ),
        .Q(IP_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[1]_i_1_n_0 ),
        .Q(IP_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[2]_i_1_n_0 ),
        .Q(IP_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[3]_i_1_n_0 ),
        .Q(IP_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[4]_i_1_n_0 ),
        .Q(IP_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[5]_i_1_n_0 ),
        .Q(IP_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \IP_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\IP_reg[6]_i_1_n_0 ),
        .Q(IP_OBUF[6]));
  IBUF RegWrite_IBUF_inst
       (.I(RegWrite),
        .O(RegWrite_IBUF));
  IBUF WriteIP_IBUF_inst
       (.I(WriteIP),
        .O(WriteIP_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \newIP_IBUF[0]_inst 
       (.I(newIP[0]),
        .O(newIP_IBUF[0]));
  IBUF \newIP_IBUF[1]_inst 
       (.I(newIP[1]),
        .O(newIP_IBUF[1]));
  IBUF \newIP_IBUF[2]_inst 
       (.I(newIP[2]),
        .O(newIP_IBUF[2]));
  IBUF \newIP_IBUF[3]_inst 
       (.I(newIP[3]),
        .O(newIP_IBUF[3]));
  IBUF \newIP_IBUF[4]_inst 
       (.I(newIP[4]),
        .O(newIP_IBUF[4]));
  IBUF \newIP_IBUF[5]_inst 
       (.I(newIP[5]),
        .O(newIP_IBUF[5]));
  IBUF \newIP_IBUF[6]_inst 
       (.I(newIP[6]),
        .O(newIP_IBUF[6]));
  IBUF \read1_IBUF[0]_inst 
       (.I(read1[0]),
        .O(read1_IBUF[0]));
  IBUF \read1_IBUF[1]_inst 
       (.I(read1[1]),
        .O(read1_IBUF[1]));
  IBUF \read2_IBUF[0]_inst 
       (.I(read2[0]),
        .O(read2_IBUF[0]));
  IBUF \read2_IBUF[1]_inst 
       (.I(read2[1]),
        .O(read2_IBUF[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \registers[0][0][6]_i_1 
       (.I0(writeReg_IBUF[1]),
        .I1(RegWrite_IBUF),
        .I2(writeReg_IBUF[0]),
        .O(\registers[0][0][6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \registers[1][0][6]_i_1 
       (.I0(writeReg_IBUF[1]),
        .I1(writeReg_IBUF[0]),
        .I2(RegWrite_IBUF),
        .O(\registers[1][0][6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][0]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [0]));
  IBUF \registers_reg[0][0][0]_i_1 
       (.I(\writeData[0] [0]),
        .O(\registers_reg[0][0][0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][1]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [1]));
  IBUF \registers_reg[0][0][1]_i_1 
       (.I(\writeData[0] [1]),
        .O(\registers_reg[0][0][1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][2]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [2]));
  IBUF \registers_reg[0][0][2]_i_1 
       (.I(\writeData[0] [2]),
        .O(\registers_reg[0][0][2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][3]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [3]));
  IBUF \registers_reg[0][0][3]_i_1 
       (.I(\writeData[0] [3]),
        .O(\registers_reg[0][0][3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][4]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [4]));
  IBUF \registers_reg[0][0][4]_i_1 
       (.I(\writeData[0] [4]),
        .O(\registers_reg[0][0][4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][5]_i_1_n_0 ),
        .Q(\AX[0]_OBUF [5]));
  IBUF \registers_reg[0][0][5]_i_1 
       (.I(\writeData[0] [5]),
        .O(\registers_reg[0][0][5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][6]_i_2_n_0 ),
        .Q(\AX[0]_OBUF [6]));
  IBUF \registers_reg[0][0][6]_i_2 
       (.I(\writeData[0] [6]),
        .O(\registers_reg[0][0][6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][0]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [0]));
  IBUF \registers_reg[0][1][0]_i_1 
       (.I(\writeData[1] [0]),
        .O(\registers_reg[0][1][0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][1]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [1]));
  IBUF \registers_reg[0][1][1]_i_1 
       (.I(\writeData[1] [1]),
        .O(\registers_reg[0][1][1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][2]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [2]));
  IBUF \registers_reg[0][1][2]_i_1 
       (.I(\writeData[1] [2]),
        .O(\registers_reg[0][1][2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][3]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [3]));
  IBUF \registers_reg[0][1][3]_i_1 
       (.I(\writeData[1] [3]),
        .O(\registers_reg[0][1][3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][4]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [4]));
  IBUF \registers_reg[0][1][4]_i_1 
       (.I(\writeData[1] [4]),
        .O(\registers_reg[0][1][4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][5]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [5]));
  IBUF \registers_reg[0][1][5]_i_1 
       (.I(\writeData[1] [5]),
        .O(\registers_reg[0][1][5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][6]_i_1_n_0 ),
        .Q(\AX[1]_OBUF [6]));
  IBUF \registers_reg[0][1][6]_i_1 
       (.I(\writeData[1] [6]),
        .O(\registers_reg[0][1][6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][0]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [0]));
  IBUF \registers_reg[0][2][0]_i_1 
       (.I(\writeData[2] [0]),
        .O(\registers_reg[0][2][0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][1]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [1]));
  IBUF \registers_reg[0][2][1]_i_1 
       (.I(\writeData[2] [1]),
        .O(\registers_reg[0][2][1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][2]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [2]));
  IBUF \registers_reg[0][2][2]_i_1 
       (.I(\writeData[2] [2]),
        .O(\registers_reg[0][2][2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][3]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [3]));
  IBUF \registers_reg[0][2][3]_i_1 
       (.I(\writeData[2] [3]),
        .O(\registers_reg[0][2][3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][4]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [4]));
  IBUF \registers_reg[0][2][4]_i_1 
       (.I(\writeData[2] [4]),
        .O(\registers_reg[0][2][4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][5]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [5]));
  IBUF \registers_reg[0][2][5]_i_1 
       (.I(\writeData[2] [5]),
        .O(\registers_reg[0][2][5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[0][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][6]_i_1_n_0 ),
        .Q(\AX[2]_OBUF [6]));
  IBUF \registers_reg[0][2][6]_i_1 
       (.I(\writeData[2] [6]),
        .O(\registers_reg[0][2][6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][0][6]_i_2_n_0 ),
        .Q(\registers_reg_n_0_[1][0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][1][6]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][0]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][1]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][2]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][3]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][4]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][5]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\registers_reg[0][2][6]_i_1_n_0 ),
        .Q(\registers_reg[1][2] [6]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF running_OBUF_inst
       (.I(running_OBUF),
        .O(running));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB8B88)) 
    running_i_1
       (.I0(running_OBUF),
        .I1(reset_IBUF),
        .I2(running_i_2_n_0),
        .I3(running_i_3_n_0),
        .I4(running_i_4_n_0),
        .I5(running_i_5_n_0),
        .O(running_i_1_n_0));
  LUT6 #(
    .INIT(64'h8808888888888088)) 
    running_i_2
       (.I0(IP_OBUF[5]),
        .I1(IP_OBUF[6]),
        .I2(IP_OBUF[2]),
        .I3(\IP_reg[2]_i_2_n_0 ),
        .I4(IP_OBUF[4]),
        .I5(IP_OBUF[3]),
        .O(running_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    running_i_3
       (.I0(WriteIP_IBUF),
        .I1(writeReg_IBUF[0]),
        .I2(RegWrite_IBUF),
        .I3(writeReg_IBUF[1]),
        .O(running_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    running_i_4
       (.I0(newIP_IBUF[2]),
        .I1(newIP_IBUF[3]),
        .I2(newIP_IBUF[4]),
        .I3(newIP_IBUF[6]),
        .I4(newIP_IBUF[5]),
        .I5(running_i_6_n_0),
        .O(running_i_4_n_0));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2A2AAA)) 
    running_i_5
       (.I0(\IP_reg[6]_i_2_n_0 ),
        .I1(\registers_reg[0][2][6]_i_1_n_0 ),
        .I2(\registers_reg[0][2][5]_i_1_n_0 ),
        .I3(\registers_reg[0][2][2]_i_1_n_0 ),
        .I4(\registers_reg[0][2][3]_i_1_n_0 ),
        .I5(\registers_reg[0][2][4]_i_1_n_0 ),
        .O(running_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    running_i_6
       (.I0(writeReg_IBUF[0]),
        .I1(RegWrite_IBUF),
        .I2(writeReg_IBUF[1]),
        .I3(WriteIP_IBUF),
        .O(running_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    running_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(running_i_1_n_0),
        .Q(running_OBUF),
        .R(1'b0));
  IBUF \writeReg_IBUF[0]_inst 
       (.I(writeReg[0]),
        .O(writeReg_IBUF[0]));
  IBUF \writeReg_IBUF[1]_inst 
       (.I(writeReg[1]),
        .O(writeReg_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
