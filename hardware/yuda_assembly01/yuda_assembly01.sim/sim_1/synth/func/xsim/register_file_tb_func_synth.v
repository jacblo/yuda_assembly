// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Sun Jun  2 18:33:01 2024
// Host        : BSERVER05 running 64-bit Linux Mint 21.3
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/y4/Documents/school/cyber-studies/final_project/yuda_assembly/hardware/yuda_assembly01/yuda_assembly01.sim/sim_1/synth/func/xsim/register_file_tb_func_synth.v
// Design      : register_file
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  input [6:0]newIP;
  input WriteIP;
  output [6:0]IP;
  output running;

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
  wire \IP_reg[4]_i_2_n_0 ;
  wire \IP_reg[6]_i_2_n_0 ;
  wire RegWrite;
  wire RegWrite_IBUF;
  wire WriteIP;
  wire WriteIP_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [6:0]newIP;
  wire [6:0]newIP_IBUF;
  wire [6:0]p_0_in;
  wire [1:0]read1;
  wire [1:0]read1_IBUF;
  wire [1:0]read2;
  wire [1:0]read2_IBUF;
  wire registers;
  wire \registers[1][0][6]_i_1_n_0 ;
  wire \registers_reg[1][0][0]_i_1_n_0 ;
  wire \registers_reg[1][0][1]_i_1_n_0 ;
  wire \registers_reg[1][0][2]_i_1_n_0 ;
  wire \registers_reg[1][0][3]_i_1_n_0 ;
  wire \registers_reg[1][0][4]_i_1_n_0 ;
  wire \registers_reg[1][0][5]_i_1_n_0 ;
  wire \registers_reg[1][0][6]_i_2_n_0 ;
  wire \registers_reg[1][1][0]_i_1_n_0 ;
  wire \registers_reg[1][1][1]_i_1_n_0 ;
  wire \registers_reg[1][1][2]_i_1_n_0 ;
  wire \registers_reg[1][1][3]_i_1_n_0 ;
  wire \registers_reg[1][1][4]_i_1_n_0 ;
  wire \registers_reg[1][1][5]_i_1_n_0 ;
  wire \registers_reg[1][1][6]_i_1_n_0 ;
  wire \registers_reg[1][2][0]_i_1_n_0 ;
  wire \registers_reg[1][2][1]_i_1_n_0 ;
  wire \registers_reg[1][2][2]_i_1_n_0 ;
  wire \registers_reg[1][2][3]_i_1_n_0 ;
  wire \registers_reg[1][2][4]_i_1_n_0 ;
  wire \registers_reg[1][2][5]_i_1_n_0 ;
  wire \registers_reg[1][2][6]_i_1_n_0 ;
  wire \registers_reg_n_0_[0][0][0] ;
  wire \registers_reg_n_0_[0][0][1] ;
  wire \registers_reg_n_0_[0][0][2] ;
  wire \registers_reg_n_0_[0][0][3] ;
  wire \registers_reg_n_0_[0][0][4] ;
  wire \registers_reg_n_0_[0][0][5] ;
  wire \registers_reg_n_0_[0][0][6] ;
  wire \registers_reg_n_0_[0][1][0] ;
  wire \registers_reg_n_0_[0][1][1] ;
  wire \registers_reg_n_0_[0][1][2] ;
  wire \registers_reg_n_0_[0][1][3] ;
  wire \registers_reg_n_0_[0][1][4] ;
  wire \registers_reg_n_0_[0][1][5] ;
  wire \registers_reg_n_0_[0][1][6] ;
  wire \registers_reg_n_0_[0][2][0] ;
  wire \registers_reg_n_0_[0][2][1] ;
  wire \registers_reg_n_0_[0][2][2] ;
  wire \registers_reg_n_0_[0][2][3] ;
  wire \registers_reg_n_0_[0][2][4] ;
  wire \registers_reg_n_0_[0][2][5] ;
  wire \registers_reg_n_0_[0][2][6] ;
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
  wire \registers_reg_n_0_[1][2][0] ;
  wire \registers_reg_n_0_[1][2][1] ;
  wire \registers_reg_n_0_[1][2][2] ;
  wire \registers_reg_n_0_[1][2][3] ;
  wire \registers_reg_n_0_[1][2][4] ;
  wire \registers_reg_n_0_[1][2][5] ;
  wire \registers_reg_n_0_[1][2][6] ;
  wire running;
  wire [6:0]\writeData[0] ;
  wire [6:0]\writeData[1] ;
  wire [6:0]\writeData[2] ;
  wire [1:0]writeReg;
  wire [1:0]writeReg_IBUF;

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
    .INIT(16'h00E2)) 
    \Data1_reg[0][0]_i_1 
       (.I0(\registers_reg_n_0_[0][0][0] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][0] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][1]_i_1 
       (.I0(\registers_reg_n_0_[0][0][1] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][1] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][2]_i_1 
       (.I0(\registers_reg_n_0_[0][0][2] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][2] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][3]_i_1 
       (.I0(\registers_reg_n_0_[0][0][3] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][3] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][4]_i_1 
       (.I0(\registers_reg_n_0_[0][0][4] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][4] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][5]_i_1 
       (.I0(\registers_reg_n_0_[0][0][5] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][5] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[0][6]_i_1 
       (.I0(\registers_reg_n_0_[0][0][6] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][6] ),
        .I3(read1_IBUF[1]),
        .O(\Data1_reg[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data1_reg[0][6]_i_2 
       (.I0(read1_IBUF[1]),
        .I1(read1_IBUF[0]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][0]_i_1 
       (.I0(\registers_reg_n_0_[0][1][0] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][0] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][1]_i_1 
       (.I0(\registers_reg_n_0_[0][1][1] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][1] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][2]_i_1 
       (.I0(\registers_reg_n_0_[0][1][2] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][2] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][3]_i_1 
       (.I0(\registers_reg_n_0_[0][1][3] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][3] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][4]_i_1 
       (.I0(\registers_reg_n_0_[0][1][4] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][4] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][5]_i_1 
       (.I0(\registers_reg_n_0_[0][1][5] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][5] ),
        .I3(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data1_reg[1][6]_i_1 
       (.I0(\registers_reg_n_0_[0][1][6] ),
        .I1(read1_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][6] ),
        .I3(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][0]_i_1 
       (.I0(IP_OBUF[0]),
        .I1(\registers_reg_n_0_[1][2][0] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][0] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][1]_i_1 
       (.I0(IP_OBUF[1]),
        .I1(\registers_reg_n_0_[1][2][1] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][1] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][2]_i_1 
       (.I0(IP_OBUF[2]),
        .I1(\registers_reg_n_0_[1][2][2] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][2] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][3]_i_1 
       (.I0(IP_OBUF[3]),
        .I1(\registers_reg_n_0_[1][2][3] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][3] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][4]_i_1 
       (.I0(IP_OBUF[4]),
        .I1(\registers_reg_n_0_[1][2][4] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][4] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][5]_i_1 
       (.I0(IP_OBUF[5]),
        .I1(\registers_reg_n_0_[1][2][5] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][5] ),
        .I4(read1_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data1_reg[2][6]_i_1 
       (.I0(IP_OBUF[6]),
        .I1(\registers_reg_n_0_[1][2][6] ),
        .I2(read1_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][6] ),
        .I4(read1_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][0]_i_1 
       (.I0(\registers_reg_n_0_[0][0][0] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][0] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][1]_i_1 
       (.I0(\registers_reg_n_0_[0][0][1] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][1] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][2]_i_1 
       (.I0(\registers_reg_n_0_[0][0][2] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][2] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][3]_i_1 
       (.I0(\registers_reg_n_0_[0][0][3] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][3] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][4]_i_1 
       (.I0(\registers_reg_n_0_[0][0][4] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][4] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][5]_i_1 
       (.I0(\registers_reg_n_0_[0][0][5] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][5] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[0][6]_i_1 
       (.I0(\registers_reg_n_0_[0][0][6] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][0][6] ),
        .I3(read2_IBUF[1]),
        .O(\Data2_reg[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data2_reg[0][6]_i_2 
       (.I0(read2_IBUF[1]),
        .I1(read2_IBUF[0]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][0]_i_1 
       (.I0(\registers_reg_n_0_[0][1][0] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][0] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][1]_i_1 
       (.I0(\registers_reg_n_0_[0][1][1] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][1] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][2]_i_1 
       (.I0(\registers_reg_n_0_[0][1][2] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][2] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][3]_i_1 
       (.I0(\registers_reg_n_0_[0][1][3] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][3] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][4]_i_1 
       (.I0(\registers_reg_n_0_[0][1][4] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][4] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][5]_i_1 
       (.I0(\registers_reg_n_0_[0][1][5] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][5] ),
        .I3(read2_IBUF[1]),
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
    .INIT(16'h00E2)) 
    \Data2_reg[1][6]_i_1 
       (.I0(\registers_reg_n_0_[0][1][6] ),
        .I1(read2_IBUF[0]),
        .I2(\registers_reg_n_0_[1][1][6] ),
        .I3(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][0]_i_1 
       (.I0(IP_OBUF[0]),
        .I1(\registers_reg_n_0_[1][2][0] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][0] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][1]_i_1 
       (.I0(IP_OBUF[1]),
        .I1(\registers_reg_n_0_[1][2][1] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][1] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][2]_i_1 
       (.I0(IP_OBUF[2]),
        .I1(\registers_reg_n_0_[1][2][2] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][2] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][3]_i_1 
       (.I0(IP_OBUF[3]),
        .I1(\registers_reg_n_0_[1][2][3] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][3] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][4]_i_1 
       (.I0(IP_OBUF[4]),
        .I1(\registers_reg_n_0_[1][2][4] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][4] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][5]_i_1 
       (.I0(IP_OBUF[5]),
        .I1(\registers_reg_n_0_[1][2][5] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][5] ),
        .I4(read2_IBUF[1]),
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
    .INIT(32'hAAAACFC0)) 
    \Data2_reg[2][6]_i_1 
       (.I0(IP_OBUF[6]),
        .I1(\registers_reg_n_0_[1][2][6] ),
        .I2(read2_IBUF[0]),
        .I3(\registers_reg_n_0_[0][2][6] ),
        .I4(read2_IBUF[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \IP_reg[0]_i_1 
       (.I0(newIP_IBUF[0]),
        .I1(WriteIP_IBUF),
        .I2(IP_OBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \IP_reg[1]_i_1 
       (.I0(newIP_IBUF[1]),
        .I1(WriteIP_IBUF),
        .I2(IP_OBUF[0]),
        .I3(IP_OBUF[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \IP_reg[2]_i_1 
       (.I0(newIP_IBUF[2]),
        .I1(WriteIP_IBUF),
        .I2(IP_OBUF[0]),
        .I3(IP_OBUF[1]),
        .I4(IP_OBUF[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \IP_reg[3]_i_1 
       (.I0(newIP_IBUF[3]),
        .I1(WriteIP_IBUF),
        .I2(IP_OBUF[1]),
        .I3(IP_OBUF[0]),
        .I4(IP_OBUF[2]),
        .I5(IP_OBUF[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \IP_reg[4]_i_1 
       (.I0(newIP_IBUF[4]),
        .I1(WriteIP_IBUF),
        .I2(\IP_reg[4]_i_2_n_0 ),
        .I3(IP_OBUF[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \IP_reg[4]_i_2 
       (.I0(IP_OBUF[3]),
        .I1(IP_OBUF[1]),
        .I2(IP_OBUF[0]),
        .I3(IP_OBUF[2]),
        .O(\IP_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \IP_reg[5]_i_1 
       (.I0(newIP_IBUF[5]),
        .I1(WriteIP_IBUF),
        .I2(\IP_reg[6]_i_2_n_0 ),
        .I3(IP_OBUF[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \IP_reg[6]_i_1 
       (.I0(newIP_IBUF[6]),
        .I1(WriteIP_IBUF),
        .I2(\IP_reg[6]_i_2_n_0 ),
        .I3(IP_OBUF[5]),
        .I4(IP_OBUF[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \IP_reg[6]_i_2 
       (.I0(IP_OBUF[4]),
        .I1(IP_OBUF[2]),
        .I2(IP_OBUF[0]),
        .I3(IP_OBUF[1]),
        .I4(IP_OBUF[3]),
        .O(\IP_reg[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(IP_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(IP_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(IP_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(IP_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(IP_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(IP_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IP_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(IP_OBUF[6]),
        .R(1'b0));
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
    .INIT(8'h02)) 
    \registers[0][0][6]_i_1 
       (.I0(RegWrite_IBUF),
        .I1(writeReg_IBUF[0]),
        .I2(writeReg_IBUF[1]),
        .O(registers));
  LUT3 #(
    .INIT(8'h20)) 
    \registers[1][0][6]_i_1 
       (.I0(RegWrite_IBUF),
        .I1(writeReg_IBUF[1]),
        .I2(writeReg_IBUF[0]),
        .O(\registers[1][0][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][0][6]_i_2_n_0 ),
        .Q(\registers_reg_n_0_[0][0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][1][6]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][1][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[0][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(registers),
        .D(\registers_reg[1][2][6]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[0][2][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][0] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][0]_i_1 
       (.I(\writeData[0] [0]),
        .O(\registers_reg[1][0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][1] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][1]_i_1 
       (.I(\writeData[0] [1]),
        .O(\registers_reg[1][0][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][2] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][2]_i_1 
       (.I(\writeData[0] [2]),
        .O(\registers_reg[1][0][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][3] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][3]_i_1 
       (.I(\writeData[0] [3]),
        .O(\registers_reg[1][0][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][4] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][4]_i_1 
       (.I(\writeData[0] [4]),
        .O(\registers_reg[1][0][4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][0][5] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][5]_i_1 
       (.I(\writeData[0] [5]),
        .O(\registers_reg[1][0][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][0][6]_i_2_n_0 ),
        .Q(\registers_reg_n_0_[1][0][6] ),
        .R(1'b0));
  IBUF \registers_reg[1][0][6]_i_2 
       (.I(\writeData[0] [6]),
        .O(\registers_reg[1][0][6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][0] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][0]_i_1 
       (.I(\writeData[1] [0]),
        .O(\registers_reg[1][1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][1] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][1]_i_1 
       (.I(\writeData[1] [1]),
        .O(\registers_reg[1][1][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][2] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][2]_i_1 
       (.I(\writeData[1] [2]),
        .O(\registers_reg[1][1][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][3] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][3]_i_1 
       (.I(\writeData[1] [3]),
        .O(\registers_reg[1][1][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][4] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][4]_i_1 
       (.I(\writeData[1] [4]),
        .O(\registers_reg[1][1][4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][5] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][5]_i_1 
       (.I(\writeData[1] [5]),
        .O(\registers_reg[1][1][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][1][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][1][6]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][1][6] ),
        .R(1'b0));
  IBUF \registers_reg[1][1][6]_i_1 
       (.I(\writeData[1] [6]),
        .O(\registers_reg[1][1][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][0]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][0] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][0]_i_1 
       (.I(\writeData[2] [0]),
        .O(\registers_reg[1][2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][1]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][1] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][1]_i_1 
       (.I(\writeData[2] [1]),
        .O(\registers_reg[1][2][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][2]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][2] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][2]_i_1 
       (.I(\writeData[2] [2]),
        .O(\registers_reg[1][2][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][3]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][3] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][3]_i_1 
       (.I(\writeData[2] [3]),
        .O(\registers_reg[1][2][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][4] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][4]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][4] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][4]_i_1 
       (.I(\writeData[2] [4]),
        .O(\registers_reg[1][2][4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][5] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][5]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][5] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][5]_i_1 
       (.I(\writeData[2] [5]),
        .O(\registers_reg[1][2][5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \registers_reg[1][2][6] 
       (.C(clk_IBUF_BUFG),
        .CE(\registers[1][0][6]_i_1_n_0 ),
        .D(\registers_reg[1][2][6]_i_1_n_0 ),
        .Q(\registers_reg_n_0_[1][2][6] ),
        .R(1'b0));
  IBUF \registers_reg[1][2][6]_i_1 
       (.I(\writeData[2] [6]),
        .O(\registers_reg[1][2][6]_i_1_n_0 ));
  OBUF running_OBUF_inst
       (.I(1'b1),
        .O(running));
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
