// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Thu Jun 13 20:31:48 2024
// Host        : BSERVER05 running 64-bit Linux Mint 21.3
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/y4/Documents/school/cyber-studies/final_project/yuda_assembly/hardware/yuda_assembly01/yuda_assembly01.sim/sim_1/synth/timing/xsim/ALU_tb_time_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ALU
   (control_operation,
    \A[0] ,
    \A[1] ,
    \A[2] ,
    \B[0] ,
    \B[1] ,
    \B[2] ,
    \out[0] ,
    \out[1] ,
    \out[2] ,
    \cmp_flags[0] ,
    \cmp_flags[1] );
  input [1:0]control_operation;
  input [6:0]\A[0] ;
  input [6:0]\A[1] ;
  input [6:0]\A[2] ;
  input [6:0]\B[0] ;
  input [6:0]\B[1] ;
  input [6:0]\B[2] ;
  output [6:0]\out[0] ;
  output [6:0]\out[1] ;
  output [6:0]\out[2] ;
  output \cmp_flags[0] ;
  output \cmp_flags[1] ;

  wire [6:0]\A[0] ;
  wire [6:0]\A[1] ;
  wire [6:0]\A[2] ;
  wire [6:0]\B[0] ;
  wire [6:0]\B[1] ;
  wire [6:0]\B[2] ;
  wire add_n_0;
  wire add_n_15;
  wire \cmp_flags[0] ;
  wire \cmp_flags[1] ;
  wire [1:0]control_operation;
  wire [1:0]control_operation_IBUF;
  wire [6:0]\out[0] ;
  wire \out[0][0]_INST_0_i_2_n_0 ;
  wire \out[0][1]_INST_0_i_2_n_0 ;
  wire \out[0][2]_INST_0_i_3_n_0 ;
  wire \out[0][3]_INST_0_i_11_n_0 ;
  wire \out[0][3]_INST_0_i_12_n_0 ;
  wire \out[0][3]_INST_0_i_14_n_0 ;
  wire \out[0][3]_INST_0_i_17_n_0 ;
  wire \out[0][3]_INST_0_i_19_n_0 ;
  wire \out[0][3]_INST_0_i_2_n_0 ;
  wire \out[0][4]_INST_0_i_3_n_0 ;
  wire \out[0][5]_INST_0_i_2_n_0 ;
  wire \out[0][6]_INST_0_i_10_n_0 ;
  wire \out[0][6]_INST_0_i_13_n_0 ;
  wire \out[0][6]_INST_0_i_14_n_0 ;
  wire \out[0][6]_INST_0_i_16_n_0 ;
  wire \out[0][6]_INST_0_i_18_n_0 ;
  wire \out[0][6]_INST_0_i_2_n_0 ;
  wire [6:0]\out[0]_OBUF ;
  wire [6:0]\out[1] ;
  wire \out[1][0]_INST_0_i_2_n_0 ;
  wire \out[1][1]_INST_0_i_2_n_0 ;
  wire \out[1][2]_INST_0_i_3_n_0 ;
  wire \out[1][3]_INST_0_i_2_n_0 ;
  wire \out[1][4]_INST_0_i_12_n_0 ;
  wire \out[1][4]_INST_0_i_13_n_0 ;
  wire \out[1][4]_INST_0_i_15_n_0 ;
  wire \out[1][4]_INST_0_i_18_n_0 ;
  wire \out[1][4]_INST_0_i_20_n_0 ;
  wire \out[1][5]_INST_0_i_2_n_0 ;
  wire \out[1][6]_INST_0_i_11_n_0 ;
  wire \out[1][6]_INST_0_i_14_n_0 ;
  wire \out[1][6]_INST_0_i_2_n_0 ;
  wire \out[1][6]_INST_0_i_5_n_0 ;
  wire [6:0]\out[1]_OBUF ;
  wire [6:0]\out[2] ;
  wire \out[2][0]_INST_0_i_2_n_0 ;
  wire \out[2][1]_INST_0_i_2_n_0 ;
  wire \out[2][2]_INST_0_i_3_n_0 ;
  wire \out[2][3]_INST_0_i_2_n_0 ;
  wire \out[2][4]_INST_0_i_12_n_0 ;
  wire \out[2][4]_INST_0_i_13_n_0 ;
  wire \out[2][5]_INST_0_i_2_n_0 ;
  wire \out[2][6]_INST_0_i_12_n_0 ;
  wire \out[2][6]_INST_0_i_15_n_0 ;
  wire \out[2][6]_INST_0_i_2_n_0 ;
  wire \out[2][6]_INST_0_i_5_n_0 ;
  wire [6:0]\out[2]_OBUF ;

initial begin
 $sdf_annotate("ALU_tb_time_synth.sdf",,,,"tool_control");
end
  adder add
       (.\A[0][6] (add_n_15),
        .\cmp_flags[0] (\out[0][6]_INST_0_i_2_n_0 ),
        .\cmp_flags[1]_INST_0_i_6_0 (add_n_0),
        .\cmp_flags[1]_INST_0_i_6_1 (\out[2][6]_INST_0_i_5_n_0 ),
        .\cmp_flags[1]_INST_0_i_6_2 (\out[1][6]_INST_0_i_5_n_0 ),
        .control_operation_IBUF(control_operation_IBUF),
        .\out[0][0] (\out[0][0]_INST_0_i_2_n_0 ),
        .\out[0][1] (\out[0][1]_INST_0_i_2_n_0 ),
        .\out[0][2] (\out[0][2]_INST_0_i_3_n_0 ),
        .\out[0][3] (\out[0][3]_INST_0_i_2_n_0 ),
        .\out[0][3]_INST_0_i_15_0 (\out[0][6]_INST_0_i_14_n_0 ),
        .\out[0][3]_INST_0_i_15_1 (\out[0][6]_INST_0_i_18_n_0 ),
        .\out[0][4] (\out[0][4]_INST_0_i_3_n_0 ),
        .\out[0][5] (\out[0][5]_INST_0_i_2_n_0 ),
        .\out[0][6]_INST_0_i_6_0 (\out[0][6]_INST_0_i_16_n_0 ),
        .\out[0][6]_INST_0_i_8_0 (\out[0][3]_INST_0_i_17_n_0 ),
        .\out[0][6]_INST_0_i_8_1 (\out[0][3]_INST_0_i_14_n_0 ),
        .\out[0][6]_INST_0_i_8_2 (\out[0][6]_INST_0_i_10_n_0 ),
        .\out[0][6]_INST_0_i_8_3 (\out[0][6]_INST_0_i_13_n_0 ),
        .\out[0]_OBUF (\out[0]_OBUF ),
        .\out[1][0] (\out[1][0]_INST_0_i_2_n_0 ),
        .\out[1][1] (\out[1][1]_INST_0_i_2_n_0 ),
        .\out[1][2] (\out[1][2]_INST_0_i_3_n_0 ),
        .\out[1][3] (\out[1][3]_INST_0_i_2_n_0 ),
        .\out[1][4]_INST_0_i_16_0 (\out[0][3]_INST_0_i_12_n_0 ),
        .\out[1][4]_INST_0_i_16_1 (\out[0][3]_INST_0_i_11_n_0 ),
        .\out[1][4]_INST_0_i_17_0 (\out[1][4]_INST_0_i_18_n_0 ),
        .\out[1][4]_INST_0_i_17_1 (\out[1][4]_INST_0_i_15_n_0 ),
        .\out[1][4]_INST_0_i_7_0 (\out[1][6]_INST_0_i_11_n_0 ),
        .\out[1][4]_INST_0_i_7_1 (\out[1][6]_INST_0_i_14_n_0 ),
        .\out[1][5] (\out[1][5]_INST_0_i_2_n_0 ),
        .\out[1][6] (\out[1][6]_INST_0_i_2_n_0 ),
        .\out[1][6]_INST_0_i_8_0 (\out[0][3]_INST_0_i_19_n_0 ),
        .\out[1]_OBUF (\out[1]_OBUF ),
        .\out[2][0] (\out[2][0]_INST_0_i_2_n_0 ),
        .\out[2][1] (\out[2][1]_INST_0_i_2_n_0 ),
        .\out[2][2] (\out[2][2]_INST_0_i_3_n_0 ),
        .\out[2][3] (\out[2][3]_INST_0_i_2_n_0 ),
        .\out[2][4]_INST_0_i_10_0 (\out[1][4]_INST_0_i_12_n_0 ),
        .\out[2][4]_INST_0_i_10_1 (\out[1][4]_INST_0_i_13_n_0 ),
        .\out[2][4]_INST_0_i_11_0 (\out[2][4]_INST_0_i_13_n_0 ),
        .\out[2][4]_INST_0_i_11_1 (\out[2][4]_INST_0_i_12_n_0 ),
        .\out[2][4]_INST_0_i_6_0 (\out[2][6]_INST_0_i_12_n_0 ),
        .\out[2][4]_INST_0_i_6_1 (\out[2][6]_INST_0_i_15_n_0 ),
        .\out[2][5] (\out[2][5]_INST_0_i_2_n_0 ),
        .\out[2][6] (\out[2][6]_INST_0_i_2_n_0 ),
        .\out[2][6]_INST_0_i_8_0 (\out[1][4]_INST_0_i_20_n_0 ),
        .\out[2]_OBUF (\out[2]_OBUF ));
  OBUF \cmp_flags[0]_INST_0 
       (.I(add_n_15),
        .O(\cmp_flags[0] ));
  OBUF \cmp_flags[1]_INST_0 
       (.I(add_n_0),
        .O(\cmp_flags[1] ));
  IBUF \control_operation_IBUF[0]_inst 
       (.I(control_operation[0]),
        .O(control_operation_IBUF[0]));
  IBUF \control_operation_IBUF[1]_inst 
       (.I(control_operation[1]),
        .O(control_operation_IBUF[1]));
  OBUF \out[0][0]_INST_0 
       (.I(\out[0]_OBUF [0]),
        .O(\out[0] [0]));
  IBUF \out[0][0]_INST_0_i_2 
       (.I(\A[0] [0]),
        .O(\out[0][0]_INST_0_i_2_n_0 ));
  OBUF \out[0][1]_INST_0 
       (.I(\out[0]_OBUF [1]),
        .O(\out[0] [1]));
  IBUF \out[0][1]_INST_0_i_2 
       (.I(\A[0] [1]),
        .O(\out[0][1]_INST_0_i_2_n_0 ));
  OBUF \out[0][2]_INST_0 
       (.I(\out[0]_OBUF [2]),
        .O(\out[0] [2]));
  IBUF \out[0][2]_INST_0_i_3 
       (.I(\A[0] [2]),
        .O(\out[0][2]_INST_0_i_3_n_0 ));
  OBUF \out[0][3]_INST_0 
       (.I(\out[0]_OBUF [3]),
        .O(\out[0] [3]));
  IBUF \out[0][3]_INST_0_i_11 
       (.I(\B[1] [6]),
        .O(\out[0][3]_INST_0_i_11_n_0 ));
  IBUF \out[0][3]_INST_0_i_12 
       (.I(\B[1] [5]),
        .O(\out[0][3]_INST_0_i_12_n_0 ));
  IBUF \out[0][3]_INST_0_i_14 
       (.I(\B[0] [0]),
        .O(\out[0][3]_INST_0_i_14_n_0 ));
  IBUF \out[0][3]_INST_0_i_17 
       (.I(\B[0] [1]),
        .O(\out[0][3]_INST_0_i_17_n_0 ));
  IBUF \out[0][3]_INST_0_i_19 
       (.I(\B[1] [2]),
        .O(\out[0][3]_INST_0_i_19_n_0 ));
  IBUF \out[0][3]_INST_0_i_2 
       (.I(\A[0] [3]),
        .O(\out[0][3]_INST_0_i_2_n_0 ));
  OBUF \out[0][4]_INST_0 
       (.I(\out[0]_OBUF [4]),
        .O(\out[0] [4]));
  IBUF \out[0][4]_INST_0_i_3 
       (.I(\A[0] [4]),
        .O(\out[0][4]_INST_0_i_3_n_0 ));
  OBUF \out[0][5]_INST_0 
       (.I(\out[0]_OBUF [5]),
        .O(\out[0] [5]));
  IBUF \out[0][5]_INST_0_i_2 
       (.I(\A[0] [5]),
        .O(\out[0][5]_INST_0_i_2_n_0 ));
  OBUF \out[0][6]_INST_0 
       (.I(\out[0]_OBUF [6]),
        .O(\out[0] [6]));
  IBUF \out[0][6]_INST_0_i_10 
       (.I(\B[0] [4]),
        .O(\out[0][6]_INST_0_i_10_n_0 ));
  IBUF \out[0][6]_INST_0_i_13 
       (.I(\B[0] [3]),
        .O(\out[0][6]_INST_0_i_13_n_0 ));
  IBUF \out[0][6]_INST_0_i_14 
       (.I(\B[0] [5]),
        .O(\out[0][6]_INST_0_i_14_n_0 ));
  IBUF \out[0][6]_INST_0_i_16 
       (.I(\B[0] [2]),
        .O(\out[0][6]_INST_0_i_16_n_0 ));
  IBUF \out[0][6]_INST_0_i_18 
       (.I(\B[0] [6]),
        .O(\out[0][6]_INST_0_i_18_n_0 ));
  IBUF \out[0][6]_INST_0_i_2 
       (.I(\A[0] [6]),
        .O(\out[0][6]_INST_0_i_2_n_0 ));
  OBUF \out[1][0]_INST_0 
       (.I(\out[1]_OBUF [0]),
        .O(\out[1] [0]));
  IBUF \out[1][0]_INST_0_i_2 
       (.I(\A[1] [0]),
        .O(\out[1][0]_INST_0_i_2_n_0 ));
  OBUF \out[1][1]_INST_0 
       (.I(\out[1]_OBUF [1]),
        .O(\out[1] [1]));
  IBUF \out[1][1]_INST_0_i_2 
       (.I(\A[1] [1]),
        .O(\out[1][1]_INST_0_i_2_n_0 ));
  OBUF \out[1][2]_INST_0 
       (.I(\out[1]_OBUF [2]),
        .O(\out[1] [2]));
  IBUF \out[1][2]_INST_0_i_3 
       (.I(\A[1] [2]),
        .O(\out[1][2]_INST_0_i_3_n_0 ));
  OBUF \out[1][3]_INST_0 
       (.I(\out[1]_OBUF [3]),
        .O(\out[1] [3]));
  IBUF \out[1][3]_INST_0_i_2 
       (.I(\A[1] [3]),
        .O(\out[1][3]_INST_0_i_2_n_0 ));
  OBUF \out[1][4]_INST_0 
       (.I(\out[1]_OBUF [4]),
        .O(\out[1] [4]));
  IBUF \out[1][4]_INST_0_i_12 
       (.I(\B[2] [6]),
        .O(\out[1][4]_INST_0_i_12_n_0 ));
  IBUF \out[1][4]_INST_0_i_13 
       (.I(\B[2] [5]),
        .O(\out[1][4]_INST_0_i_13_n_0 ));
  IBUF \out[1][4]_INST_0_i_15 
       (.I(\B[1] [0]),
        .O(\out[1][4]_INST_0_i_15_n_0 ));
  IBUF \out[1][4]_INST_0_i_18 
       (.I(\B[1] [1]),
        .O(\out[1][4]_INST_0_i_18_n_0 ));
  IBUF \out[1][4]_INST_0_i_20 
       (.I(\B[2] [2]),
        .O(\out[1][4]_INST_0_i_20_n_0 ));
  OBUF \out[1][5]_INST_0 
       (.I(\out[1]_OBUF [5]),
        .O(\out[1] [5]));
  IBUF \out[1][5]_INST_0_i_2 
       (.I(\A[1] [5]),
        .O(\out[1][5]_INST_0_i_2_n_0 ));
  OBUF \out[1][6]_INST_0 
       (.I(\out[1]_OBUF [6]),
        .O(\out[1] [6]));
  IBUF \out[1][6]_INST_0_i_11 
       (.I(\B[1] [4]),
        .O(\out[1][6]_INST_0_i_11_n_0 ));
  IBUF \out[1][6]_INST_0_i_14 
       (.I(\B[1] [3]),
        .O(\out[1][6]_INST_0_i_14_n_0 ));
  IBUF \out[1][6]_INST_0_i_2 
       (.I(\A[1] [6]),
        .O(\out[1][6]_INST_0_i_2_n_0 ));
  IBUF \out[1][6]_INST_0_i_5 
       (.I(\A[1] [4]),
        .O(\out[1][6]_INST_0_i_5_n_0 ));
  OBUF \out[2][0]_INST_0 
       (.I(\out[2]_OBUF [0]),
        .O(\out[2] [0]));
  IBUF \out[2][0]_INST_0_i_2 
       (.I(\A[2] [0]),
        .O(\out[2][0]_INST_0_i_2_n_0 ));
  OBUF \out[2][1]_INST_0 
       (.I(\out[2]_OBUF [1]),
        .O(\out[2] [1]));
  IBUF \out[2][1]_INST_0_i_2 
       (.I(\A[2] [1]),
        .O(\out[2][1]_INST_0_i_2_n_0 ));
  OBUF \out[2][2]_INST_0 
       (.I(\out[2]_OBUF [2]),
        .O(\out[2] [2]));
  IBUF \out[2][2]_INST_0_i_3 
       (.I(\A[2] [2]),
        .O(\out[2][2]_INST_0_i_3_n_0 ));
  OBUF \out[2][3]_INST_0 
       (.I(\out[2]_OBUF [3]),
        .O(\out[2] [3]));
  IBUF \out[2][3]_INST_0_i_2 
       (.I(\A[2] [3]),
        .O(\out[2][3]_INST_0_i_2_n_0 ));
  OBUF \out[2][4]_INST_0 
       (.I(\out[2]_OBUF [4]),
        .O(\out[2] [4]));
  IBUF \out[2][4]_INST_0_i_12 
       (.I(\B[2] [1]),
        .O(\out[2][4]_INST_0_i_12_n_0 ));
  IBUF \out[2][4]_INST_0_i_13 
       (.I(\B[2] [0]),
        .O(\out[2][4]_INST_0_i_13_n_0 ));
  OBUF \out[2][5]_INST_0 
       (.I(\out[2]_OBUF [5]),
        .O(\out[2] [5]));
  IBUF \out[2][5]_INST_0_i_2 
       (.I(\A[2] [5]),
        .O(\out[2][5]_INST_0_i_2_n_0 ));
  OBUF \out[2][6]_INST_0 
       (.I(\out[2]_OBUF [6]),
        .O(\out[2] [6]));
  IBUF \out[2][6]_INST_0_i_12 
       (.I(\B[2] [4]),
        .O(\out[2][6]_INST_0_i_12_n_0 ));
  IBUF \out[2][6]_INST_0_i_15 
       (.I(\B[2] [3]),
        .O(\out[2][6]_INST_0_i_15_n_0 ));
  IBUF \out[2][6]_INST_0_i_2 
       (.I(\A[2] [6]),
        .O(\out[2][6]_INST_0_i_2_n_0 ));
  IBUF \out[2][6]_INST_0_i_5 
       (.I(\A[2] [4]),
        .O(\out[2][6]_INST_0_i_5_n_0 ));
endmodule

module adder
   (\cmp_flags[1]_INST_0_i_6_0 ,
    \out[1]_OBUF ,
    \out[2]_OBUF ,
    \A[0][6] ,
    \out[0]_OBUF ,
    \out[2][0] ,
    \out[2][4]_INST_0_i_11_0 ,
    \out[2][1] ,
    \out[2][4]_INST_0_i_11_1 ,
    control_operation_IBUF,
    \out[2][2] ,
    \out[2][3] ,
    \cmp_flags[1]_INST_0_i_6_1 ,
    \out[2][4]_INST_0_i_6_0 ,
    \out[2][4]_INST_0_i_6_1 ,
    \out[2][5] ,
    \out[2][6] ,
    \out[2][4]_INST_0_i_10_0 ,
    \out[2][4]_INST_0_i_10_1 ,
    \out[1][0] ,
    \out[1][1] ,
    \out[1][4]_INST_0_i_17_0 ,
    \out[1][4]_INST_0_i_17_1 ,
    \out[1][2] ,
    \out[1][3] ,
    \cmp_flags[1]_INST_0_i_6_2 ,
    \out[1][4]_INST_0_i_7_0 ,
    \out[1][4]_INST_0_i_7_1 ,
    \out[1][5] ,
    \out[1][6] ,
    \out[0][0] ,
    \out[0][1] ,
    \out[0][6]_INST_0_i_8_0 ,
    \out[0][6]_INST_0_i_8_1 ,
    \out[0][2] ,
    \out[0][3] ,
    \out[0][4] ,
    \out[0][6]_INST_0_i_8_2 ,
    \out[0][6]_INST_0_i_8_3 ,
    \out[0][5] ,
    \cmp_flags[0] ,
    \out[0][3]_INST_0_i_15_0 ,
    \out[0][6]_INST_0_i_6_0 ,
    \out[0][3]_INST_0_i_15_1 ,
    \out[1][6]_INST_0_i_8_0 ,
    \out[1][4]_INST_0_i_16_0 ,
    \out[1][4]_INST_0_i_16_1 ,
    \out[2][6]_INST_0_i_8_0 );
  output \cmp_flags[1]_INST_0_i_6_0 ;
  output [6:0]\out[1]_OBUF ;
  output [6:0]\out[2]_OBUF ;
  output \A[0][6] ;
  output [6:0]\out[0]_OBUF ;
  input \out[2][0] ;
  input \out[2][4]_INST_0_i_11_0 ;
  input \out[2][1] ;
  input \out[2][4]_INST_0_i_11_1 ;
  input [1:0]control_operation_IBUF;
  input \out[2][2] ;
  input \out[2][3] ;
  input \cmp_flags[1]_INST_0_i_6_1 ;
  input \out[2][4]_INST_0_i_6_0 ;
  input \out[2][4]_INST_0_i_6_1 ;
  input \out[2][5] ;
  input \out[2][6] ;
  input \out[2][4]_INST_0_i_10_0 ;
  input \out[2][4]_INST_0_i_10_1 ;
  input \out[1][0] ;
  input \out[1][1] ;
  input \out[1][4]_INST_0_i_17_0 ;
  input \out[1][4]_INST_0_i_17_1 ;
  input \out[1][2] ;
  input \out[1][3] ;
  input \cmp_flags[1]_INST_0_i_6_2 ;
  input \out[1][4]_INST_0_i_7_0 ;
  input \out[1][4]_INST_0_i_7_1 ;
  input \out[1][5] ;
  input \out[1][6] ;
  input \out[0][0] ;
  input \out[0][1] ;
  input \out[0][6]_INST_0_i_8_0 ;
  input \out[0][6]_INST_0_i_8_1 ;
  input \out[0][2] ;
  input \out[0][3] ;
  input \out[0][4] ;
  input \out[0][6]_INST_0_i_8_2 ;
  input \out[0][6]_INST_0_i_8_3 ;
  input \out[0][5] ;
  input \cmp_flags[0] ;
  input \out[0][3]_INST_0_i_15_0 ;
  input \out[0][6]_INST_0_i_6_0 ;
  input \out[0][3]_INST_0_i_15_1 ;
  input \out[1][6]_INST_0_i_8_0 ;
  input \out[1][4]_INST_0_i_16_0 ;
  input \out[1][4]_INST_0_i_16_1 ;
  input \out[2][6]_INST_0_i_8_0 ;

  wire \A[0][6] ;
  wire [6:0]\adder_B[0] ;
  wire [6:0]\adder_B[1] ;
  wire [5:2]\adder_B[2] ;
  wire \cmp_flags[0] ;
  wire \cmp_flags[0]_INST_0_i_2_n_0 ;
  wire \cmp_flags[0]_INST_0_i_3_n_0 ;
  wire \cmp_flags[0]_INST_0_i_4_n_0 ;
  wire \cmp_flags[0]_INST_0_i_5_n_0 ;
  wire \cmp_flags[0]_INST_0_i_6_n_0 ;
  wire \cmp_flags[0]_INST_0_i_7_n_0 ;
  wire \cmp_flags[1]_INST_0_i_10_n_0 ;
  wire \cmp_flags[1]_INST_0_i_11_n_0 ;
  wire \cmp_flags[1]_INST_0_i_12_n_0 ;
  wire \cmp_flags[1]_INST_0_i_13_n_0 ;
  wire \cmp_flags[1]_INST_0_i_2_n_0 ;
  wire \cmp_flags[1]_INST_0_i_3_n_0 ;
  wire \cmp_flags[1]_INST_0_i_4_n_0 ;
  wire \cmp_flags[1]_INST_0_i_5_n_0 ;
  wire \cmp_flags[1]_INST_0_i_6_0 ;
  wire \cmp_flags[1]_INST_0_i_6_1 ;
  wire \cmp_flags[1]_INST_0_i_6_2 ;
  wire \cmp_flags[1]_INST_0_i_6_n_0 ;
  wire \cmp_flags[1]_INST_0_i_7_n_0 ;
  wire \cmp_flags[1]_INST_0_i_8_n_0 ;
  wire \cmp_flags[1]_INST_0_i_9_n_0 ;
  wire [1:0]control_operation_IBUF;
  wire \out[0][0] ;
  wire \out[0][1] ;
  wire \out[0][2] ;
  wire \out[0][2]_INST_0_i_2_n_0 ;
  wire \out[0][3] ;
  wire \out[0][3]_INST_0_i_10_n_0 ;
  wire \out[0][3]_INST_0_i_13_n_0 ;
  wire \out[0][3]_INST_0_i_15_0 ;
  wire \out[0][3]_INST_0_i_15_1 ;
  wire \out[0][3]_INST_0_i_18_n_0 ;
  wire \out[0][3]_INST_0_i_20_n_0 ;
  wire \out[0][3]_INST_0_i_3_n_0 ;
  wire \out[0][3]_INST_0_i_3_n_1 ;
  wire \out[0][3]_INST_0_i_3_n_2 ;
  wire \out[0][3]_INST_0_i_3_n_3 ;
  wire \out[0][3]_INST_0_i_3_n_4 ;
  wire \out[0][3]_INST_0_i_3_n_5 ;
  wire \out[0][3]_INST_0_i_3_n_6 ;
  wire \out[0][3]_INST_0_i_3_n_7 ;
  wire \out[0][3]_INST_0_i_4_n_0 ;
  wire \out[0][3]_INST_0_i_6_n_0 ;
  wire \out[0][3]_INST_0_i_7_n_0 ;
  wire \out[0][3]_INST_0_i_8_n_0 ;
  wire \out[0][3]_INST_0_i_9_n_0 ;
  wire \out[0][4] ;
  wire \out[0][4]_INST_0_i_2_n_0 ;
  wire \out[0][4]_INST_0_i_4_n_0 ;
  wire \out[0][5] ;
  wire \out[0][6]_INST_0_i_11_n_0 ;
  wire \out[0][6]_INST_0_i_12_n_0 ;
  wire \out[0][6]_INST_0_i_15_n_0 ;
  wire \out[0][6]_INST_0_i_17_n_0 ;
  wire \out[0][6]_INST_0_i_3_n_0 ;
  wire \out[0][6]_INST_0_i_3_n_2 ;
  wire \out[0][6]_INST_0_i_3_n_3 ;
  wire \out[0][6]_INST_0_i_3_n_5 ;
  wire \out[0][6]_INST_0_i_3_n_6 ;
  wire \out[0][6]_INST_0_i_3_n_7 ;
  wire \out[0][6]_INST_0_i_4_n_0 ;
  wire \out[0][6]_INST_0_i_5_n_0 ;
  wire \out[0][6]_INST_0_i_6_0 ;
  wire \out[0][6]_INST_0_i_6_n_0 ;
  wire \out[0][6]_INST_0_i_7_n_0 ;
  wire \out[0][6]_INST_0_i_8_0 ;
  wire \out[0][6]_INST_0_i_8_1 ;
  wire \out[0][6]_INST_0_i_8_2 ;
  wire \out[0][6]_INST_0_i_8_3 ;
  wire [6:0]\out[0]_OBUF ;
  wire \out[1][0] ;
  wire \out[1][1] ;
  wire \out[1][2] ;
  wire \out[1][2]_INST_0_i_2_n_0 ;
  wire \out[1][2]_INST_0_i_4_n_0 ;
  wire \out[1][3] ;
  wire \out[1][3]_INST_0_i_3_n_0 ;
  wire \out[1][4]_INST_0_i_10_n_0 ;
  wire \out[1][4]_INST_0_i_11_n_0 ;
  wire \out[1][4]_INST_0_i_14_n_0 ;
  wire \out[1][4]_INST_0_i_16_0 ;
  wire \out[1][4]_INST_0_i_16_1 ;
  wire \out[1][4]_INST_0_i_17_0 ;
  wire \out[1][4]_INST_0_i_17_1 ;
  wire \out[1][4]_INST_0_i_19_n_0 ;
  wire \out[1][4]_INST_0_i_21_n_0 ;
  wire \out[1][4]_INST_0_i_2_n_0 ;
  wire \out[1][4]_INST_0_i_3_n_0 ;
  wire \out[1][4]_INST_0_i_3_n_1 ;
  wire \out[1][4]_INST_0_i_3_n_2 ;
  wire \out[1][4]_INST_0_i_3_n_3 ;
  wire \out[1][4]_INST_0_i_3_n_4 ;
  wire \out[1][4]_INST_0_i_3_n_5 ;
  wire \out[1][4]_INST_0_i_3_n_6 ;
  wire \out[1][4]_INST_0_i_3_n_7 ;
  wire \out[1][4]_INST_0_i_4_n_0 ;
  wire \out[1][4]_INST_0_i_5_n_0 ;
  wire \out[1][4]_INST_0_i_7_0 ;
  wire \out[1][4]_INST_0_i_7_1 ;
  wire \out[1][4]_INST_0_i_7_n_0 ;
  wire \out[1][4]_INST_0_i_8_n_0 ;
  wire \out[1][4]_INST_0_i_9_n_0 ;
  wire \out[1][5] ;
  wire \out[1][6] ;
  wire \out[1][6]_INST_0_i_12_n_0 ;
  wire \out[1][6]_INST_0_i_13_n_0 ;
  wire \out[1][6]_INST_0_i_15_n_0 ;
  wire \out[1][6]_INST_0_i_3_n_0 ;
  wire \out[1][6]_INST_0_i_3_n_2 ;
  wire \out[1][6]_INST_0_i_3_n_3 ;
  wire \out[1][6]_INST_0_i_3_n_5 ;
  wire \out[1][6]_INST_0_i_3_n_6 ;
  wire \out[1][6]_INST_0_i_3_n_7 ;
  wire \out[1][6]_INST_0_i_4_n_0 ;
  wire \out[1][6]_INST_0_i_6_n_0 ;
  wire \out[1][6]_INST_0_i_7_n_0 ;
  wire \out[1][6]_INST_0_i_8_0 ;
  wire \out[1][6]_INST_0_i_8_n_0 ;
  wire [6:0]\out[1]_OBUF ;
  wire \out[2][0] ;
  wire \out[2][1] ;
  wire \out[2][2] ;
  wire \out[2][2]_INST_0_i_2_n_0 ;
  wire \out[2][2]_INST_0_i_4_n_0 ;
  wire \out[2][3] ;
  wire \out[2][3]_INST_0_i_3_n_0 ;
  wire \out[2][4]_INST_0_i_10_0 ;
  wire \out[2][4]_INST_0_i_10_1 ;
  wire \out[2][4]_INST_0_i_11_0 ;
  wire \out[2][4]_INST_0_i_11_1 ;
  wire \out[2][4]_INST_0_i_14_n_0 ;
  wire \out[2][4]_INST_0_i_2_n_0 ;
  wire \out[2][4]_INST_0_i_3_n_0 ;
  wire \out[2][4]_INST_0_i_3_n_1 ;
  wire \out[2][4]_INST_0_i_3_n_2 ;
  wire \out[2][4]_INST_0_i_3_n_3 ;
  wire \out[2][4]_INST_0_i_3_n_4 ;
  wire \out[2][4]_INST_0_i_3_n_5 ;
  wire \out[2][4]_INST_0_i_3_n_6 ;
  wire \out[2][4]_INST_0_i_3_n_7 ;
  wire \out[2][4]_INST_0_i_4_n_0 ;
  wire \out[2][4]_INST_0_i_5_n_0 ;
  wire \out[2][4]_INST_0_i_6_0 ;
  wire \out[2][4]_INST_0_i_6_1 ;
  wire \out[2][4]_INST_0_i_6_n_0 ;
  wire \out[2][4]_INST_0_i_7_n_0 ;
  wire \out[2][4]_INST_0_i_8_n_0 ;
  wire \out[2][4]_INST_0_i_9_n_0 ;
  wire \out[2][5] ;
  wire \out[2][6] ;
  wire \out[2][6]_INST_0_i_10_n_0 ;
  wire \out[2][6]_INST_0_i_13_n_0 ;
  wire \out[2][6]_INST_0_i_14_n_0 ;
  wire \out[2][6]_INST_0_i_16_n_0 ;
  wire \out[2][6]_INST_0_i_3_n_0 ;
  wire \out[2][6]_INST_0_i_3_n_2 ;
  wire \out[2][6]_INST_0_i_3_n_3 ;
  wire \out[2][6]_INST_0_i_3_n_5 ;
  wire \out[2][6]_INST_0_i_3_n_6 ;
  wire \out[2][6]_INST_0_i_3_n_7 ;
  wire \out[2][6]_INST_0_i_4_n_0 ;
  wire \out[2][6]_INST_0_i_6_n_0 ;
  wire \out[2][6]_INST_0_i_7_n_0 ;
  wire \out[2][6]_INST_0_i_8_0 ;
  wire \out[2][6]_INST_0_i_8_n_0 ;
  wire \out[2][6]_INST_0_i_9_n_0 ;
  wire [6:0]\out[2]_OBUF ;
  wire [2:2]\NLW_out[0][6]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_out[0][6]_INST_0_i_3_O_UNCONNECTED ;
  wire [2:2]\NLW_out[1][6]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_out[1][6]_INST_0_i_3_O_UNCONNECTED ;
  wire [2:2]\NLW_out[2][6]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_out[2][6]_INST_0_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE222)) 
    \cmp_flags[0]_INST_0_i_1 
       (.I0(\cmp_flags[0] ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][6]_INST_0_i_3_n_0 ),
        .I3(\out[0][6]_INST_0_i_3_n_6 ),
        .I4(\cmp_flags[0]_INST_0_i_2_n_0 ),
        .I5(\cmp_flags[0]_INST_0_i_3_n_0 ),
        .O(\A[0][6] ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \cmp_flags[0]_INST_0_i_2 
       (.I0(\cmp_flags[0]_INST_0_i_4_n_0 ),
        .I1(\cmp_flags[0]_INST_0_i_5_n_0 ),
        .I2(\out[0][5] ),
        .I3(\out[0][4] ),
        .I4(control_operation_IBUF[0]),
        .O(\cmp_flags[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF088808080)) 
    \cmp_flags[0]_INST_0_i_3 
       (.I0(\cmp_flags[0]_INST_0_i_6_n_0 ),
        .I1(\out[0][6]_INST_0_i_3_n_7 ),
        .I2(\out[0][3]_INST_0_i_3_n_4 ),
        .I3(\out[0][3]_INST_0_i_3_n_5 ),
        .I4(\out[0][3]_INST_0_i_3_n_6 ),
        .I5(\cmp_flags[0]_INST_0_i_7_n_0 ),
        .O(\cmp_flags[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808080888)) 
    \cmp_flags[0]_INST_0_i_4 
       (.I0(\out[0][6]_INST_0_i_3_n_5 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][6]_INST_0_i_3_n_6 ),
        .I3(\out[0][3]_INST_0_i_3_n_4 ),
        .I4(\out[0][3]_INST_0_i_3_n_5 ),
        .I5(\out[0][6]_INST_0_i_3_n_7 ),
        .O(\cmp_flags[0]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cmp_flags[0]_INST_0_i_5 
       (.I0(\out[0][3] ),
        .I1(\out[0][2] ),
        .I2(\out[0][1] ),
        .O(\cmp_flags[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmp_flags[0]_INST_0_i_6 
       (.I0(\out[0][6]_INST_0_i_3_n_0 ),
        .I1(control_operation_IBUF[0]),
        .O(\cmp_flags[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cmp_flags[0]_INST_0_i_7 
       (.I0(control_operation_IBUF[0]),
        .I1(\out[0][6]_INST_0_i_3_n_7 ),
        .I2(\out[0][6]_INST_0_i_3_n_6 ),
        .I3(\out[0][6]_INST_0_i_3_n_5 ),
        .O(\cmp_flags[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAA0000)) 
    \cmp_flags[1]_INST_0_i_1 
       (.I0(\cmp_flags[1]_INST_0_i_2_n_0 ),
        .I1(\cmp_flags[1]_INST_0_i_3_n_0 ),
        .I2(\cmp_flags[1]_INST_0_i_4_n_0 ),
        .I3(\out[0][3]_INST_0_i_3_n_5 ),
        .I4(\cmp_flags[1]_INST_0_i_5_n_0 ),
        .I5(\cmp_flags[1]_INST_0_i_6_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_6_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000001)) 
    \cmp_flags[1]_INST_0_i_10 
       (.I0(\out[1][4]_INST_0_i_3_n_4 ),
        .I1(\out[1][6]_INST_0_i_3_n_7 ),
        .I2(\out[1][4]_INST_0_i_3_n_5 ),
        .I3(\out[1][6]_INST_0_i_3_n_5 ),
        .I4(\out[1][6]_INST_0_i_3_n_6 ),
        .O(\cmp_flags[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp_flags[1]_INST_0_i_11 
       (.I0(\out[0][4] ),
        .I1(\out[0][5] ),
        .I2(\out[1][6] ),
        .I3(\out[0][0] ),
        .I4(control_operation_IBUF[0]),
        .I5(\cmp_flags[0] ),
        .O(\cmp_flags[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp_flags[1]_INST_0_i_12 
       (.I0(\out[2][3] ),
        .I1(\cmp_flags[1]_INST_0_i_6_1 ),
        .I2(\out[2][1] ),
        .I3(\out[2][2] ),
        .I4(\out[2][6] ),
        .I5(\out[2][5] ),
        .O(\cmp_flags[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp_flags[1]_INST_0_i_13 
       (.I0(\out[1][2] ),
        .I1(\out[1][3] ),
        .I2(\out[1][0] ),
        .I3(\out[1][1] ),
        .I4(\out[1][5] ),
        .I5(\cmp_flags[1]_INST_0_i_6_2 ),
        .O(\cmp_flags[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \cmp_flags[1]_INST_0_i_2 
       (.I0(\out[0][6]_INST_0_i_4_n_0 ),
        .I1(\cmp_flags[1]_INST_0_i_7_n_0 ),
        .I2(\cmp_flags[1]_INST_0_i_8_n_0 ),
        .I3(\cmp_flags[1]_INST_0_i_9_n_0 ),
        .I4(\out[0][6]_INST_0_i_3_n_5 ),
        .I5(\out[0][6]_INST_0_i_3_n_6 ),
        .O(\cmp_flags[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \cmp_flags[1]_INST_0_i_3 
       (.I0(\out[0][6]_INST_0_i_3_n_7 ),
        .I1(\out[0][3]_INST_0_i_3_n_4 ),
        .I2(\out[0][6]_INST_0_i_3_n_5 ),
        .I3(\out[0][6]_INST_0_i_3_n_6 ),
        .O(\cmp_flags[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \cmp_flags[1]_INST_0_i_4 
       (.I0(\cmp_flags[1]_INST_0_i_7_n_0 ),
        .I1(\out[1][4]_INST_0_i_3_n_6 ),
        .I2(\out[1][4]_INST_0_i_3_n_7 ),
        .I3(\out[0][3]_INST_0_i_3_n_6 ),
        .I4(\out[0][3]_INST_0_i_3_n_7 ),
        .I5(\cmp_flags[1]_INST_0_i_9_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008100000000)) 
    \cmp_flags[1]_INST_0_i_5 
       (.I0(\out[2][6]_INST_0_i_3_n_6 ),
        .I1(\out[2][6]_INST_0_i_3_n_5 ),
        .I2(\out[2][4]_INST_0_i_3_n_5 ),
        .I3(\out[2][6]_INST_0_i_3_n_7 ),
        .I4(\out[2][4]_INST_0_i_3_n_4 ),
        .I5(\cmp_flags[1]_INST_0_i_10_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cmp_flags[1]_INST_0_i_6 
       (.I0(\cmp_flags[1]_INST_0_i_11_n_0 ),
        .I1(\cmp_flags[1]_INST_0_i_12_n_0 ),
        .I2(\cmp_flags[1]_INST_0_i_13_n_0 ),
        .I3(\cmp_flags[0]_INST_0_i_5_n_0 ),
        .I4(\out[2][0] ),
        .O(\cmp_flags[1]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmp_flags[1]_INST_0_i_7 
       (.I0(\out[2][6]_INST_0_i_3_n_0 ),
        .I1(\out[2][4]_INST_0_i_3_n_6 ),
        .I2(\out[2][4]_INST_0_i_3_n_7 ),
        .I3(\out[1][6]_INST_0_i_3_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmp_flags[1]_INST_0_i_8 
       (.I0(\out[1][4]_INST_0_i_3_n_6 ),
        .I1(\out[1][4]_INST_0_i_3_n_7 ),
        .I2(\out[0][3]_INST_0_i_3_n_6 ),
        .I3(\out[0][3]_INST_0_i_3_n_7 ),
        .O(\cmp_flags[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmp_flags[1]_INST_0_i_9 
       (.I0(control_operation_IBUF[0]),
        .I1(\out[0][6]_INST_0_i_3_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0][0]_INST_0_i_1 
       (.I0(\out[0][3]_INST_0_i_3_n_7 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][0] ),
        .O(\out[0]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0][1]_INST_0_i_1 
       (.I0(\out[0][3]_INST_0_i_3_n_6 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][1] ),
        .O(\out[0]_OBUF [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAFAAEEEE)) 
    \out[0][2]_INST_0_i_1 
       (.I0(\out[0][2]_INST_0_i_2_n_0 ),
        .I1(\out[0][2] ),
        .I2(\out[0][6]_INST_0_i_4_n_0 ),
        .I3(\out[0][6]_INST_0_i_3_n_0 ),
        .I4(control_operation_IBUF[0]),
        .O(\out[0]_OBUF [2]));
  LUT6 #(
    .INIT(64'h0FF0F00E00000000)) 
    \out[0][2]_INST_0_i_2 
       (.I0(\out[0][3]_INST_0_i_3_n_4 ),
        .I1(\out[0][6]_INST_0_i_3_n_7 ),
        .I2(\out[0][3]_INST_0_i_3_n_5 ),
        .I3(\out[0][4]_INST_0_i_2_n_0 ),
        .I4(\out[0][6]_INST_0_i_3_n_0 ),
        .I5(control_operation_IBUF[0]),
        .O(\out[0][2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2EE22222)) 
    \out[0][3]_INST_0_i_1 
       (.I0(\out[0][3] ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][6]_INST_0_i_3_n_0 ),
        .I3(\out[0][4]_INST_0_i_2_n_0 ),
        .I4(\out[0][3]_INST_0_i_3_n_4 ),
        .I5(\out[0][3]_INST_0_i_4_n_0 ),
        .O(\out[0]_OBUF [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[0][3]_INST_0_i_10 
       (.I0(\out[1][4]_INST_0_i_7_0 ),
        .I1(\out[1][4]_INST_0_i_7_1 ),
        .I2(\out[1][6]_INST_0_i_8_0 ),
        .O(\out[0][3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFBFFE)) 
    \out[0][3]_INST_0_i_13 
       (.I0(\out[1][4]_INST_0_i_17_1 ),
        .I1(\out[1][4]_INST_0_i_11_n_0 ),
        .I2(\out[2][4]_INST_0_i_10_0 ),
        .I3(\out[2][4]_INST_0_i_10_1 ),
        .I4(\out[1][4]_INST_0_i_14_n_0 ),
        .I5(\out[1][4]_INST_0_i_17_0 ),
        .O(\out[0][3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7171FFFF8E8C0000)) 
    \out[0][3]_INST_0_i_15 
       (.I0(\out[0][6]_INST_0_i_15_n_0 ),
        .I1(\out[0][6]_INST_0_i_6_0 ),
        .I2(\out[0][3]_INST_0_i_20_n_0 ),
        .I3(\out[0][6]_INST_0_i_8_2 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[0][6]_INST_0_i_8_3 ),
        .O(\adder_B[0] [3]));
  LUT6 #(
    .INIT(64'h3F84F30CF30CF308)) 
    \out[0][3]_INST_0_i_16 
       (.I0(\out[0][6]_INST_0_i_17_n_0 ),
        .I1(control_operation_IBUF[1]),
        .I2(\out[0][6]_INST_0_i_15_n_0 ),
        .I3(\out[0][6]_INST_0_i_6_0 ),
        .I4(\out[0][3]_INST_0_i_15_0 ),
        .I5(\out[0][3]_INST_0_i_15_1 ),
        .O(\adder_B[0] [2]));
  LUT6 #(
    .INIT(64'h01FFFFFF01FFFFFE)) 
    \out[0][3]_INST_0_i_18 
       (.I0(\out[1][4]_INST_0_i_7_0 ),
        .I1(\out[1][4]_INST_0_i_7_1 ),
        .I2(\out[1][6]_INST_0_i_8_0 ),
        .I3(\out[1][4]_INST_0_i_16_1 ),
        .I4(\out[1][4]_INST_0_i_16_0 ),
        .I5(\out[0][3]_INST_0_i_13_n_0 ),
        .O(\out[0][3]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out[0][3]_INST_0_i_20 
       (.I0(\out[0][3]_INST_0_i_15_0 ),
        .I1(\out[0][3]_INST_0_i_15_1 ),
        .O(\out[0][3]_INST_0_i_20_n_0 ));
  CARRY4 \out[0][3]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\out[0][3]_INST_0_i_3_n_0 ,\out[0][3]_INST_0_i_3_n_1 ,\out[0][3]_INST_0_i_3_n_2 ,\out[0][3]_INST_0_i_3_n_3 }),
        .CYINIT(\adder_B[0] [0]),
        .DI({\out[0][3] ,\out[0][2] ,\out[0][1] ,\out[0][0] }),
        .O({\out[0][3]_INST_0_i_3_n_4 ,\out[0][3]_INST_0_i_3_n_5 ,\out[0][3]_INST_0_i_3_n_6 ,\out[0][3]_INST_0_i_3_n_7 }),
        .S({\out[0][3]_INST_0_i_6_n_0 ,\out[0][3]_INST_0_i_7_n_0 ,\out[0][3]_INST_0_i_8_n_0 ,\out[0][3]_INST_0_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hAA000088AA000028)) 
    \out[0][3]_INST_0_i_4 
       (.I0(control_operation_IBUF[0]),
        .I1(\out[0][6]_INST_0_i_3_n_0 ),
        .I2(\out[0][6]_INST_0_i_3_n_7 ),
        .I3(\out[0][3]_INST_0_i_3_n_5 ),
        .I4(\out[0][3]_INST_0_i_3_n_4 ),
        .I5(\out[0][4]_INST_0_i_2_n_0 ),
        .O(\out[0][3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD555D5572AAA2AA8)) 
    \out[0][3]_INST_0_i_5 
       (.I0(control_operation_IBUF[1]),
        .I1(\out[0][3]_INST_0_i_10_n_0 ),
        .I2(\out[1][4]_INST_0_i_16_1 ),
        .I3(\out[1][4]_INST_0_i_16_0 ),
        .I4(\out[0][3]_INST_0_i_13_n_0 ),
        .I5(\out[0][6]_INST_0_i_8_1 ),
        .O(\adder_B[0] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0][3]_INST_0_i_6 
       (.I0(\out[0][3] ),
        .I1(\adder_B[0] [3]),
        .O(\out[0][3]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0][3]_INST_0_i_7 
       (.I0(\out[0][2] ),
        .I1(\adder_B[0] [2]),
        .O(\out[0][3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h99966666)) 
    \out[0][3]_INST_0_i_8 
       (.I0(\out[0][1] ),
        .I1(\out[0][6]_INST_0_i_8_0 ),
        .I2(\out[0][6]_INST_0_i_8_1 ),
        .I3(\out[0][3]_INST_0_i_18_n_0 ),
        .I4(control_operation_IBUF[1]),
        .O(\out[0][3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969696969696966)) 
    \out[0][3]_INST_0_i_9 
       (.I0(\out[0][0] ),
        .I1(\out[1][6]_INST_0_i_3_n_0 ),
        .I2(\out[1][2]_INST_0_i_2_n_0 ),
        .I3(\out[1][4]_INST_0_i_3_n_5 ),
        .I4(\out[1][4]_INST_0_i_3_n_4 ),
        .I5(\out[1][6]_INST_0_i_3_n_7 ),
        .O(\out[0][3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF50FFA00CCCCCCCC)) 
    \out[0][4]_INST_0_i_1 
       (.I0(\out[0][4]_INST_0_i_2_n_0 ),
        .I1(\out[0][4] ),
        .I2(\out[0][4]_INST_0_i_4_n_0 ),
        .I3(\out[0][6]_INST_0_i_3_n_7 ),
        .I4(\out[0][6]_INST_0_i_3_n_0 ),
        .I5(control_operation_IBUF[0]),
        .O(\out[0]_OBUF [4]));
  LUT2 #(
    .INIT(4'h7)) 
    \out[0][4]_INST_0_i_2 
       (.I0(\out[0][6]_INST_0_i_3_n_6 ),
        .I1(\out[0][6]_INST_0_i_3_n_5 ),
        .O(\out[0][4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[0][4]_INST_0_i_4 
       (.I0(\out[0][3]_INST_0_i_3_n_5 ),
        .I1(\out[0][3]_INST_0_i_3_n_4 ),
        .O(\out[0][4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE22EE22E22EE22)) 
    \out[0][5]_INST_0_i_1 
       (.I0(\out[0][5] ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][6]_INST_0_i_4_n_0 ),
        .I3(\out[0][6]_INST_0_i_3_n_6 ),
        .I4(\out[0][6]_INST_0_i_3_n_5 ),
        .I5(\out[0][6]_INST_0_i_3_n_0 ),
        .O(\out[0]_OBUF [5]));
  LUT6 #(
    .INIT(64'hCFFFAAAAC000AAAA)) 
    \out[0][6]_INST_0_i_1 
       (.I0(\cmp_flags[0] ),
        .I1(\out[0][6]_INST_0_i_3_n_0 ),
        .I2(\out[0][6]_INST_0_i_4_n_0 ),
        .I3(\out[0][6]_INST_0_i_3_n_6 ),
        .I4(control_operation_IBUF[0]),
        .I5(\out[0][6]_INST_0_i_3_n_5 ),
        .O(\out[0]_OBUF [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \out[0][6]_INST_0_i_11 
       (.I0(\out[0][3]_INST_0_i_15_0 ),
        .I1(\out[0][3]_INST_0_i_15_1 ),
        .I2(\out[0][6]_INST_0_i_6_0 ),
        .I3(\out[0][6]_INST_0_i_15_n_0 ),
        .O(\out[0][6]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \out[0][6]_INST_0_i_12 
       (.I0(\out[0][3]_INST_0_i_15_0 ),
        .I1(\out[0][3]_INST_0_i_15_1 ),
        .I2(\out[0][6]_INST_0_i_6_0 ),
        .I3(\out[0][6]_INST_0_i_15_n_0 ),
        .O(\out[0][6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFBFFE)) 
    \out[0][6]_INST_0_i_15 
       (.I0(\out[0][6]_INST_0_i_8_1 ),
        .I1(\out[0][3]_INST_0_i_10_n_0 ),
        .I2(\out[1][4]_INST_0_i_16_1 ),
        .I3(\out[1][4]_INST_0_i_16_0 ),
        .I4(\out[0][3]_INST_0_i_13_n_0 ),
        .I5(\out[0][6]_INST_0_i_8_0 ),
        .O(\out[0][6]_INST_0_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out[0][6]_INST_0_i_17 
       (.I0(\out[0][6]_INST_0_i_8_3 ),
        .I1(\out[0][6]_INST_0_i_8_2 ),
        .O(\out[0][6]_INST_0_i_17_n_0 ));
  CARRY4 \out[0][6]_INST_0_i_3 
       (.CI(\out[0][3]_INST_0_i_3_n_0 ),
        .CO({\out[0][6]_INST_0_i_3_n_0 ,\NLW_out[0][6]_INST_0_i_3_CO_UNCONNECTED [2],\out[0][6]_INST_0_i_3_n_2 ,\out[0][6]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cmp_flags[0] ,\out[0][5] ,\out[0][4] }),
        .O({\NLW_out[0][6]_INST_0_i_3_O_UNCONNECTED [3],\out[0][6]_INST_0_i_3_n_5 ,\out[0][6]_INST_0_i_3_n_6 ,\out[0][6]_INST_0_i_3_n_7 }),
        .S({1'b1,\out[0][6]_INST_0_i_5_n_0 ,\out[0][6]_INST_0_i_6_n_0 ,\out[0][6]_INST_0_i_7_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[0][6]_INST_0_i_4 
       (.I0(\out[0][3]_INST_0_i_3_n_4 ),
        .I1(\out[0][3]_INST_0_i_3_n_5 ),
        .I2(\out[0][6]_INST_0_i_3_n_7 ),
        .O(\out[0][6]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0][6]_INST_0_i_5 
       (.I0(\cmp_flags[0] ),
        .I1(\adder_B[0] [6]),
        .O(\out[0][6]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0][6]_INST_0_i_6 
       (.I0(\out[0][5] ),
        .I1(\adder_B[0] [5]),
        .O(\out[0][6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h96969696566696A6)) 
    \out[0][6]_INST_0_i_7 
       (.I0(\out[0][4] ),
        .I1(\out[0][6]_INST_0_i_8_2 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[0][6]_INST_0_i_11_n_0 ),
        .I4(\out[0][6]_INST_0_i_12_n_0 ),
        .I5(\out[0][6]_INST_0_i_8_3 ),
        .O(\out[0][6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF557E0000)) 
    \out[0][6]_INST_0_i_8 
       (.I0(\out[0][3]_INST_0_i_15_0 ),
        .I1(\out[0][6]_INST_0_i_15_n_0 ),
        .I2(\out[0][6]_INST_0_i_6_0 ),
        .I3(\out[0][6]_INST_0_i_17_n_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[0][3]_INST_0_i_15_1 ),
        .O(\adder_B[0] [6]));
  LUT6 #(
    .INIT(64'h3230FFFF050E0000)) 
    \out[0][6]_INST_0_i_9 
       (.I0(\out[0][6]_INST_0_i_15_n_0 ),
        .I1(\out[0][3]_INST_0_i_15_1 ),
        .I2(\out[0][6]_INST_0_i_17_n_0 ),
        .I3(\out[0][6]_INST_0_i_6_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[0][3]_INST_0_i_15_0 ),
        .O(\adder_B[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[1][0]_INST_0_i_1 
       (.I0(\out[1][4]_INST_0_i_3_n_7 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][0] ),
        .O(\out[1]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[1][1]_INST_0_i_1 
       (.I0(\out[1][4]_INST_0_i_3_n_6 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][1] ),
        .O(\out[1]_OBUF [1]));
  LUT6 #(
    .INIT(64'h55AFAA50CCCCCCCC)) 
    \out[1][2]_INST_0_i_1 
       (.I0(\out[1][2]_INST_0_i_2_n_0 ),
        .I1(\out[1][2] ),
        .I2(\out[1][2]_INST_0_i_4_n_0 ),
        .I3(\out[1][4]_INST_0_i_3_n_5 ),
        .I4(\out[1][6]_INST_0_i_3_n_0 ),
        .I5(control_operation_IBUF[0]),
        .O(\out[1]_OBUF [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \out[1][2]_INST_0_i_2 
       (.I0(\out[1][6]_INST_0_i_3_n_6 ),
        .I1(\out[1][6]_INST_0_i_3_n_5 ),
        .O(\out[1][2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[1][2]_INST_0_i_4 
       (.I0(\out[1][4]_INST_0_i_3_n_4 ),
        .I1(\out[1][6]_INST_0_i_3_n_7 ),
        .O(\out[1][2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEEAAEE)) 
    \out[1][3]_INST_0_i_1 
       (.I0(\out[1][4]_INST_0_i_5_n_0 ),
        .I1(\out[1][3] ),
        .I2(\out[1][4]_INST_0_i_4_n_0 ),
        .I3(control_operation_IBUF[0]),
        .I4(\out[1][4]_INST_0_i_3_n_4 ),
        .I5(\out[1][3]_INST_0_i_3_n_0 ),
        .O(\out[1]_OBUF [3]));
  LUT6 #(
    .INIT(64'h0F00000030000200)) 
    \out[1][3]_INST_0_i_3 
       (.I0(\out[1][6]_INST_0_i_3_n_7 ),
        .I1(\out[1][4]_INST_0_i_3_n_5 ),
        .I2(\out[1][2]_INST_0_i_2_n_0 ),
        .I3(control_operation_IBUF[0]),
        .I4(\out[1][6]_INST_0_i_3_n_0 ),
        .I5(\out[1][4]_INST_0_i_3_n_4 ),
        .O(\out[1][3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \out[1][4]_INST_0_i_1 
       (.I0(\out[1][4]_INST_0_i_2_n_0 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][6]_INST_0_i_3_n_7 ),
        .I3(\out[1][4]_INST_0_i_3_n_4 ),
        .I4(\out[1][4]_INST_0_i_4_n_0 ),
        .I5(\out[1][4]_INST_0_i_5_n_0 ),
        .O(\out[1]_OBUF [4]));
  LUT6 #(
    .INIT(64'h6969696969696966)) 
    \out[1][4]_INST_0_i_10 
       (.I0(\out[1][0] ),
        .I1(\out[2][6]_INST_0_i_3_n_0 ),
        .I2(\out[2][2]_INST_0_i_2_n_0 ),
        .I3(\out[2][4]_INST_0_i_3_n_5 ),
        .I4(\out[2][4]_INST_0_i_3_n_4 ),
        .I5(\out[2][6]_INST_0_i_3_n_7 ),
        .O(\out[1][4]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[1][4]_INST_0_i_11 
       (.I0(\out[2][4]_INST_0_i_6_0 ),
        .I1(\out[2][4]_INST_0_i_6_1 ),
        .I2(\out[2][6]_INST_0_i_8_0 ),
        .O(\out[1][4]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out[1][4]_INST_0_i_14 
       (.I0(\out[2][4]_INST_0_i_11_0 ),
        .I1(\out[2][4]_INST_0_i_11_1 ),
        .O(\out[1][4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7171FFFF8E8C0000)) 
    \out[1][4]_INST_0_i_16 
       (.I0(\out[0][3]_INST_0_i_13_n_0 ),
        .I1(\out[1][6]_INST_0_i_8_0 ),
        .I2(\out[1][4]_INST_0_i_21_n_0 ),
        .I3(\out[1][4]_INST_0_i_7_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[1][4]_INST_0_i_7_1 ),
        .O(\adder_B[1] [3]));
  LUT6 #(
    .INIT(64'h6AA6A6A62EA6A6A2)) 
    \out[1][4]_INST_0_i_17 
       (.I0(\out[1][6]_INST_0_i_8_0 ),
        .I1(control_operation_IBUF[1]),
        .I2(\out[0][3]_INST_0_i_13_n_0 ),
        .I3(\out[1][4]_INST_0_i_16_0 ),
        .I4(\out[1][4]_INST_0_i_16_1 ),
        .I5(\out[1][6]_INST_0_i_15_n_0 ),
        .O(\adder_B[1] [2]));
  LUT6 #(
    .INIT(64'h01FFFFFF01FFFFFE)) 
    \out[1][4]_INST_0_i_19 
       (.I0(\out[2][4]_INST_0_i_6_0 ),
        .I1(\out[2][4]_INST_0_i_6_1 ),
        .I2(\out[2][6]_INST_0_i_8_0 ),
        .I3(\out[2][4]_INST_0_i_10_0 ),
        .I4(\out[2][4]_INST_0_i_10_1 ),
        .I5(\out[1][4]_INST_0_i_14_n_0 ),
        .O(\out[1][4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0003AAAA0000AAAA)) 
    \out[1][4]_INST_0_i_2 
       (.I0(\cmp_flags[1]_INST_0_i_6_2 ),
        .I1(\out[1][2]_INST_0_i_2_n_0 ),
        .I2(\out[1][4]_INST_0_i_3_n_4 ),
        .I3(\out[1][4]_INST_0_i_3_n_5 ),
        .I4(control_operation_IBUF[0]),
        .I5(\out[1][6]_INST_0_i_3_n_0 ),
        .O(\out[1][4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \out[1][4]_INST_0_i_21 
       (.I0(\out[1][4]_INST_0_i_16_0 ),
        .I1(\out[1][4]_INST_0_i_16_1 ),
        .O(\out[1][4]_INST_0_i_21_n_0 ));
  CARRY4 \out[1][4]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\out[1][4]_INST_0_i_3_n_0 ,\out[1][4]_INST_0_i_3_n_1 ,\out[1][4]_INST_0_i_3_n_2 ,\out[1][4]_INST_0_i_3_n_3 }),
        .CYINIT(\adder_B[1] [0]),
        .DI({\out[1][3] ,\out[1][2] ,\out[1][1] ,\out[1][0] }),
        .O({\out[1][4]_INST_0_i_3_n_4 ,\out[1][4]_INST_0_i_3_n_5 ,\out[1][4]_INST_0_i_3_n_6 ,\out[1][4]_INST_0_i_3_n_7 }),
        .S({\out[1][4]_INST_0_i_7_n_0 ,\out[1][4]_INST_0_i_8_n_0 ,\out[1][4]_INST_0_i_9_n_0 ,\out[1][4]_INST_0_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF15)) 
    \out[1][4]_INST_0_i_4 
       (.I0(\out[1][6]_INST_0_i_3_n_0 ),
        .I1(\out[1][6]_INST_0_i_3_n_6 ),
        .I2(\out[1][6]_INST_0_i_3_n_5 ),
        .I3(\out[1][4]_INST_0_i_3_n_5 ),
        .O(\out[1][4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \out[1][4]_INST_0_i_5 
       (.I0(control_operation_IBUF[0]),
        .I1(\out[1][6]_INST_0_i_3_n_0 ),
        .I2(\out[1][4]_INST_0_i_3_n_5 ),
        .I3(\out[1][4]_INST_0_i_3_n_4 ),
        .I4(\out[1][6]_INST_0_i_3_n_7 ),
        .O(\out[1][4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD555D5572AAA2AA8)) 
    \out[1][4]_INST_0_i_6 
       (.I0(control_operation_IBUF[1]),
        .I1(\out[1][4]_INST_0_i_11_n_0 ),
        .I2(\out[2][4]_INST_0_i_10_0 ),
        .I3(\out[2][4]_INST_0_i_10_1 ),
        .I4(\out[1][4]_INST_0_i_14_n_0 ),
        .I5(\out[1][4]_INST_0_i_17_1 ),
        .O(\adder_B[1] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \out[1][4]_INST_0_i_7 
       (.I0(\out[1][3] ),
        .I1(\adder_B[1] [3]),
        .O(\out[1][4]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[1][4]_INST_0_i_8 
       (.I0(\out[1][2] ),
        .I1(\adder_B[1] [2]),
        .O(\out[1][4]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h99966666)) 
    \out[1][4]_INST_0_i_9 
       (.I0(\out[1][1] ),
        .I1(\out[1][4]_INST_0_i_17_0 ),
        .I2(\out[1][4]_INST_0_i_17_1 ),
        .I3(\out[1][4]_INST_0_i_19_n_0 ),
        .I4(control_operation_IBUF[1]),
        .O(\out[1][4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEE22EE22E22EE22)) 
    \out[1][5]_INST_0_i_1 
       (.I0(\out[1][5] ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][6]_INST_0_i_4_n_0 ),
        .I3(\out[1][6]_INST_0_i_3_n_6 ),
        .I4(\out[1][6]_INST_0_i_3_n_5 ),
        .I5(\out[1][6]_INST_0_i_3_n_0 ),
        .O(\out[1]_OBUF [5]));
  LUT6 #(
    .INIT(64'hCFFFAAAAC000AAAA)) 
    \out[1][6]_INST_0_i_1 
       (.I0(\out[1][6] ),
        .I1(\out[1][6]_INST_0_i_3_n_0 ),
        .I2(\out[1][6]_INST_0_i_4_n_0 ),
        .I3(\out[1][6]_INST_0_i_3_n_6 ),
        .I4(control_operation_IBUF[0]),
        .I5(\out[1][6]_INST_0_i_3_n_5 ),
        .O(\out[1]_OBUF [6]));
  LUT6 #(
    .INIT(64'h5F4F00304F4F3020)) 
    \out[1][6]_INST_0_i_10 
       (.I0(\out[1][4]_INST_0_i_16_1 ),
        .I1(\out[1][6]_INST_0_i_15_n_0 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[1][6]_INST_0_i_8_0 ),
        .I4(\out[1][4]_INST_0_i_16_0 ),
        .I5(\out[0][3]_INST_0_i_13_n_0 ),
        .O(\adder_B[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \out[1][6]_INST_0_i_12 
       (.I0(\out[1][4]_INST_0_i_16_0 ),
        .I1(\out[1][4]_INST_0_i_16_1 ),
        .I2(\out[1][6]_INST_0_i_8_0 ),
        .I3(\out[0][3]_INST_0_i_13_n_0 ),
        .O(\out[1][6]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    \out[1][6]_INST_0_i_13 
       (.I0(\out[1][4]_INST_0_i_16_0 ),
        .I1(\out[1][4]_INST_0_i_16_1 ),
        .I2(\out[1][6]_INST_0_i_8_0 ),
        .I3(\out[0][3]_INST_0_i_13_n_0 ),
        .O(\out[1][6]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[1][6]_INST_0_i_15 
       (.I0(\out[1][4]_INST_0_i_7_1 ),
        .I1(\out[1][4]_INST_0_i_7_0 ),
        .O(\out[1][6]_INST_0_i_15_n_0 ));
  CARRY4 \out[1][6]_INST_0_i_3 
       (.CI(\out[1][4]_INST_0_i_3_n_0 ),
        .CO({\out[1][6]_INST_0_i_3_n_0 ,\NLW_out[1][6]_INST_0_i_3_CO_UNCONNECTED [2],\out[1][6]_INST_0_i_3_n_2 ,\out[1][6]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\out[1][6] ,\out[1][5] ,\cmp_flags[1]_INST_0_i_6_2 }),
        .O({\NLW_out[1][6]_INST_0_i_3_O_UNCONNECTED [3],\out[1][6]_INST_0_i_3_n_5 ,\out[1][6]_INST_0_i_3_n_6 ,\out[1][6]_INST_0_i_3_n_7 }),
        .S({1'b1,\out[1][6]_INST_0_i_6_n_0 ,\out[1][6]_INST_0_i_7_n_0 ,\out[1][6]_INST_0_i_8_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[1][6]_INST_0_i_4 
       (.I0(\out[1][6]_INST_0_i_3_n_7 ),
        .I1(\out[1][4]_INST_0_i_3_n_4 ),
        .I2(\out[1][4]_INST_0_i_3_n_5 ),
        .O(\out[1][6]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[1][6]_INST_0_i_6 
       (.I0(\out[1][6] ),
        .I1(\adder_B[1] [6]),
        .O(\out[1][6]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[1][6]_INST_0_i_7 
       (.I0(\out[1][5] ),
        .I1(\adder_B[1] [5]),
        .O(\out[1][6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h96969696566696A6)) 
    \out[1][6]_INST_0_i_8 
       (.I0(\cmp_flags[1]_INST_0_i_6_2 ),
        .I1(\out[1][4]_INST_0_i_7_0 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[1][6]_INST_0_i_12_n_0 ),
        .I4(\out[1][6]_INST_0_i_13_n_0 ),
        .I5(\out[1][4]_INST_0_i_7_1 ),
        .O(\out[1][6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF557E0000)) 
    \out[1][6]_INST_0_i_9 
       (.I0(\out[1][4]_INST_0_i_16_0 ),
        .I1(\out[0][3]_INST_0_i_13_n_0 ),
        .I2(\out[1][6]_INST_0_i_8_0 ),
        .I3(\out[1][6]_INST_0_i_15_n_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[1][4]_INST_0_i_16_1 ),
        .O(\adder_B[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2][0]_INST_0_i_1 
       (.I0(\out[2][4]_INST_0_i_3_n_7 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][0] ),
        .O(\out[2]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2][1]_INST_0_i_1 
       (.I0(\out[2][4]_INST_0_i_3_n_6 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][1] ),
        .O(\out[2]_OBUF [1]));
  LUT6 #(
    .INIT(64'h55AFAA50CCCCCCCC)) 
    \out[2][2]_INST_0_i_1 
       (.I0(\out[2][2]_INST_0_i_2_n_0 ),
        .I1(\out[2][2] ),
        .I2(\out[2][2]_INST_0_i_4_n_0 ),
        .I3(\out[2][4]_INST_0_i_3_n_5 ),
        .I4(\out[2][6]_INST_0_i_3_n_0 ),
        .I5(control_operation_IBUF[0]),
        .O(\out[2]_OBUF [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \out[2][2]_INST_0_i_2 
       (.I0(\out[2][6]_INST_0_i_3_n_6 ),
        .I1(\out[2][6]_INST_0_i_3_n_5 ),
        .O(\out[2][2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out[2][2]_INST_0_i_4 
       (.I0(\out[2][4]_INST_0_i_3_n_4 ),
        .I1(\out[2][6]_INST_0_i_3_n_7 ),
        .O(\out[2][2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEEAAEE)) 
    \out[2][3]_INST_0_i_1 
       (.I0(\out[2][4]_INST_0_i_5_n_0 ),
        .I1(\out[2][3] ),
        .I2(\out[2][4]_INST_0_i_4_n_0 ),
        .I3(control_operation_IBUF[0]),
        .I4(\out[2][4]_INST_0_i_3_n_4 ),
        .I5(\out[2][3]_INST_0_i_3_n_0 ),
        .O(\out[2]_OBUF [3]));
  LUT6 #(
    .INIT(64'h0F00000030000200)) 
    \out[2][3]_INST_0_i_3 
       (.I0(\out[2][6]_INST_0_i_3_n_7 ),
        .I1(\out[2][4]_INST_0_i_3_n_5 ),
        .I2(\out[2][2]_INST_0_i_2_n_0 ),
        .I3(control_operation_IBUF[0]),
        .I4(\out[2][6]_INST_0_i_3_n_0 ),
        .I5(\out[2][4]_INST_0_i_3_n_4 ),
        .O(\out[2][3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \out[2][4]_INST_0_i_1 
       (.I0(\out[2][4]_INST_0_i_2_n_0 ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][6]_INST_0_i_3_n_7 ),
        .I3(\out[2][4]_INST_0_i_3_n_4 ),
        .I4(\out[2][4]_INST_0_i_4_n_0 ),
        .I5(\out[2][4]_INST_0_i_5_n_0 ),
        .O(\out[2]_OBUF [4]));
  LUT6 #(
    .INIT(64'h2B2BFFFFD4C40000)) 
    \out[2][4]_INST_0_i_10 
       (.I0(\out[2][4]_INST_0_i_14_n_0 ),
        .I1(\out[2][6]_INST_0_i_8_0 ),
        .I2(\out[1][4]_INST_0_i_14_n_0 ),
        .I3(\out[2][4]_INST_0_i_6_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[2][4]_INST_0_i_6_1 ),
        .O(\adder_B[2] [3]));
  LUT6 #(
    .INIT(64'h6AAAA6662AAAE662)) 
    \out[2][4]_INST_0_i_11 
       (.I0(\out[2][6]_INST_0_i_8_0 ),
        .I1(control_operation_IBUF[1]),
        .I2(\out[2][4]_INST_0_i_10_0 ),
        .I3(\out[2][4]_INST_0_i_10_1 ),
        .I4(\out[1][4]_INST_0_i_14_n_0 ),
        .I5(\out[2][6]_INST_0_i_16_n_0 ),
        .O(\adder_B[2] [2]));
  LUT2 #(
    .INIT(4'h7)) 
    \out[2][4]_INST_0_i_14 
       (.I0(\out[2][4]_INST_0_i_10_1 ),
        .I1(\out[2][4]_INST_0_i_10_0 ),
        .O(\out[2][4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0003AAAA0000AAAA)) 
    \out[2][4]_INST_0_i_2 
       (.I0(\cmp_flags[1]_INST_0_i_6_1 ),
        .I1(\out[2][2]_INST_0_i_2_n_0 ),
        .I2(\out[2][4]_INST_0_i_3_n_4 ),
        .I3(\out[2][4]_INST_0_i_3_n_5 ),
        .I4(control_operation_IBUF[0]),
        .I5(\out[2][6]_INST_0_i_3_n_0 ),
        .O(\out[2][4]_INST_0_i_2_n_0 ));
  CARRY4 \out[2][4]_INST_0_i_3 
       (.CI(1'b0),
        .CO({\out[2][4]_INST_0_i_3_n_0 ,\out[2][4]_INST_0_i_3_n_1 ,\out[2][4]_INST_0_i_3_n_2 ,\out[2][4]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[2][3] ,\out[2][2] ,\out[2][1] ,\out[2][0] }),
        .O({\out[2][4]_INST_0_i_3_n_4 ,\out[2][4]_INST_0_i_3_n_5 ,\out[2][4]_INST_0_i_3_n_6 ,\out[2][4]_INST_0_i_3_n_7 }),
        .S({\out[2][4]_INST_0_i_6_n_0 ,\out[2][4]_INST_0_i_7_n_0 ,\out[2][4]_INST_0_i_8_n_0 ,\out[2][4]_INST_0_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF15)) 
    \out[2][4]_INST_0_i_4 
       (.I0(\out[2][6]_INST_0_i_3_n_0 ),
        .I1(\out[2][6]_INST_0_i_3_n_6 ),
        .I2(\out[2][6]_INST_0_i_3_n_5 ),
        .I3(\out[2][4]_INST_0_i_3_n_5 ),
        .O(\out[2][4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \out[2][4]_INST_0_i_5 
       (.I0(control_operation_IBUF[0]),
        .I1(\out[2][6]_INST_0_i_3_n_0 ),
        .I2(\out[2][4]_INST_0_i_3_n_5 ),
        .I3(\out[2][4]_INST_0_i_3_n_4 ),
        .I4(\out[2][6]_INST_0_i_3_n_7 ),
        .O(\out[2][4]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2][4]_INST_0_i_6 
       (.I0(\out[2][3] ),
        .I1(\adder_B[2] [3]),
        .O(\out[2][4]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2][4]_INST_0_i_7 
       (.I0(\out[2][2] ),
        .I1(\adder_B[2] [2]),
        .O(\out[2][4]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \out[2][4]_INST_0_i_8 
       (.I0(\out[2][1] ),
        .I1(\out[2][4]_INST_0_i_11_1 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[2][4]_INST_0_i_11_0 ),
        .O(\out[2][4]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2][4]_INST_0_i_9 
       (.I0(\out[2][0] ),
        .I1(\out[2][4]_INST_0_i_11_0 ),
        .O(\out[2][4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEE22EE22E22EE22)) 
    \out[2][5]_INST_0_i_1 
       (.I0(\out[2][5] ),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][6]_INST_0_i_4_n_0 ),
        .I3(\out[2][6]_INST_0_i_3_n_6 ),
        .I4(\out[2][6]_INST_0_i_3_n_5 ),
        .I5(\out[2][6]_INST_0_i_3_n_0 ),
        .O(\out[2]_OBUF [5]));
  LUT6 #(
    .INIT(64'hCFFFAAAAC000AAAA)) 
    \out[2][6]_INST_0_i_1 
       (.I0(\out[2][6] ),
        .I1(\out[2][6]_INST_0_i_3_n_0 ),
        .I2(\out[2][6]_INST_0_i_4_n_0 ),
        .I3(\out[2][6]_INST_0_i_3_n_6 ),
        .I4(control_operation_IBUF[0]),
        .I5(\out[2][6]_INST_0_i_3_n_5 ),
        .O(\out[2]_OBUF [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[2][6]_INST_0_i_10 
       (.I0(\out[2][4]_INST_0_i_11_1 ),
        .I1(\out[2][4]_INST_0_i_11_0 ),
        .I2(\out[2][4]_INST_0_i_6_0 ),
        .I3(\out[2][4]_INST_0_i_6_1 ),
        .O(\out[2][6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5450FFFF030E0000)) 
    \out[2][6]_INST_0_i_11 
       (.I0(\out[2][4]_INST_0_i_10_0 ),
        .I1(\out[2][6]_INST_0_i_8_0 ),
        .I2(\out[2][6]_INST_0_i_16_n_0 ),
        .I3(\out[1][4]_INST_0_i_14_n_0 ),
        .I4(control_operation_IBUF[1]),
        .I5(\out[2][4]_INST_0_i_10_1 ),
        .O(\adder_B[2] [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0707077F)) 
    \out[2][6]_INST_0_i_13 
       (.I0(\out[2][4]_INST_0_i_10_1 ),
        .I1(\out[2][4]_INST_0_i_10_0 ),
        .I2(\out[2][6]_INST_0_i_8_0 ),
        .I3(\out[2][4]_INST_0_i_11_0 ),
        .I4(\out[2][4]_INST_0_i_11_1 ),
        .O(\out[2][6]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0F0F080)) 
    \out[2][6]_INST_0_i_14 
       (.I0(\out[2][4]_INST_0_i_10_1 ),
        .I1(\out[2][4]_INST_0_i_10_0 ),
        .I2(\out[2][6]_INST_0_i_8_0 ),
        .I3(\out[2][4]_INST_0_i_11_0 ),
        .I4(\out[2][4]_INST_0_i_11_1 ),
        .O(\out[2][6]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[2][6]_INST_0_i_16 
       (.I0(\out[2][4]_INST_0_i_6_1 ),
        .I1(\out[2][4]_INST_0_i_6_0 ),
        .O(\out[2][6]_INST_0_i_16_n_0 ));
  CARRY4 \out[2][6]_INST_0_i_3 
       (.CI(\out[2][4]_INST_0_i_3_n_0 ),
        .CO({\out[2][6]_INST_0_i_3_n_0 ,\NLW_out[2][6]_INST_0_i_3_CO_UNCONNECTED [2],\out[2][6]_INST_0_i_3_n_2 ,\out[2][6]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\out[2][6] ,\out[2][5] ,\cmp_flags[1]_INST_0_i_6_1 }),
        .O({\NLW_out[2][6]_INST_0_i_3_O_UNCONNECTED [3],\out[2][6]_INST_0_i_3_n_5 ,\out[2][6]_INST_0_i_3_n_6 ,\out[2][6]_INST_0_i_3_n_7 }),
        .S({1'b1,\out[2][6]_INST_0_i_6_n_0 ,\out[2][6]_INST_0_i_7_n_0 ,\out[2][6]_INST_0_i_8_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[2][6]_INST_0_i_4 
       (.I0(\out[2][6]_INST_0_i_3_n_7 ),
        .I1(\out[2][4]_INST_0_i_3_n_4 ),
        .I2(\out[2][4]_INST_0_i_3_n_5 ),
        .O(\out[2][6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h96A69696969696A6)) 
    \out[2][6]_INST_0_i_6 
       (.I0(\out[2][6] ),
        .I1(\out[2][4]_INST_0_i_10_0 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[2][6]_INST_0_i_9_n_0 ),
        .I4(\out[2][4]_INST_0_i_10_1 ),
        .I5(\out[2][6]_INST_0_i_10_n_0 ),
        .O(\out[2][6]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2][6]_INST_0_i_7 
       (.I0(\out[2][5] ),
        .I1(\adder_B[2] [5]),
        .O(\out[2][6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h96969696569666A6)) 
    \out[2][6]_INST_0_i_8 
       (.I0(\cmp_flags[1]_INST_0_i_6_1 ),
        .I1(\out[2][4]_INST_0_i_6_0 ),
        .I2(control_operation_IBUF[1]),
        .I3(\out[2][6]_INST_0_i_13_n_0 ),
        .I4(\out[2][6]_INST_0_i_14_n_0 ),
        .I5(\out[2][4]_INST_0_i_6_1 ),
        .O(\out[2][6]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001000E)) 
    \out[2][6]_INST_0_i_9 
       (.I0(\out[2][4]_INST_0_i_11_1 ),
        .I1(\out[2][4]_INST_0_i_11_0 ),
        .I2(\out[2][4]_INST_0_i_6_0 ),
        .I3(\out[2][4]_INST_0_i_6_1 ),
        .I4(\out[2][6]_INST_0_i_8_0 ),
        .O(\out[2][6]_INST_0_i_9_n_0 ));
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
