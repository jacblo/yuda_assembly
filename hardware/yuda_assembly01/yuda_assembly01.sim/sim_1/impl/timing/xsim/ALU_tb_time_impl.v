// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Sat Jun  1 23:43:23 2024
// Host        : BSERVER05 running 64-bit Linux Mint 21.3
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/y4/Documents/school/cyber-studies/final_project/yuda_assembly/hardware/yuda_assembly01/yuda_assembly01.sim/sim_1/impl/timing/xsim/ALU_tb_time_impl.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c4e0e9c5" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
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
  wire [6:0]\C[0]0 ;
  wire \C[0]2 ;
  wire \C[0]_carry_i_10__0_n_0 ;
  wire \C[0]_carry_i_11_n_0 ;
  wire \C[0]_carry_i_13_n_0 ;
  wire \C[0]_carry_i_14_n_0 ;
  wire \C[0]_carry_i_15_n_0 ;
  wire \C[0]_carry_i_16_n_0 ;
  wire \C[0]_carry_i_6_n_0 ;
  wire \C[0]_carry_i_8_n_0 ;
  wire \C[0]_carry_i_9_n_0 ;
  wire \C[2]_carry_i_2__0_n_0 ;
  wire add_n_0;
  wire add_n_10;
  wire add_n_11;
  wire add_n_12;
  wire add_n_13;
  wire add_n_14;
  wire add_n_15;
  wire add_n_16;
  wire add_n_17;
  wire add_n_18;
  wire add_n_19;
  wire add_n_20;
  wire add_n_21;
  wire add_n_22;
  wire add_n_23;
  wire add_n_24;
  wire add_n_25;
  wire add_n_37;
  wire add_n_38;
  wire add_n_39;
  wire add_n_40;
  wire add_n_41;
  wire add_n_42;
  wire add_n_43;
  wire add_n_44;
  wire add_n_45;
  wire add_n_46;
  wire add_n_47;
  wire add_n_48;
  wire add_n_49;
  wire add_n_50;
  wire add_n_51;
  wire add_n_52;
  wire add_n_53;
  wire add_n_54;
  wire add_n_6;
  wire add_n_7;
  wire add_n_8;
  wire add_n_9;
  wire \cmp_flags[0] ;
  wire \cmp_flags[1] ;
  wire [1:0]control_operation;
  wire [1:0]control_operation_IBUF;
  wire [1:0]\negated_B[0] ;
  wire [1:0]\negated_B[2] ;
  wire negater_n_0;
  wire negater_n_1;
  wire negater_n_12;
  wire negater_n_13;
  wire negater_n_14;
  wire negater_n_15;
  wire negater_n_16;
  wire negater_n_17;
  wire negater_n_18;
  wire negater_n_19;
  wire negater_n_20;
  wire negater_n_28;
  wire negater_n_29;
  wire negater_n_30;
  wire negater_n_31;
  wire negater_n_32;
  wire negater_n_33;
  wire negater_n_34;
  wire negater_n_35;
  wire negater_n_36;
  wire negater_n_37;
  wire negater_n_38;
  wire negater_n_39;
  wire negater_n_4;
  wire negater_n_40;
  wire negater_n_41;
  wire negater_n_49;
  wire negater_n_5;
  wire negater_n_50;
  wire negater_n_51;
  wire negater_n_52;
  wire negater_n_53;
  wire negater_n_54;
  wire negater_n_55;
  wire negater_n_56;
  wire negater_n_6;
  wire negater_n_61;
  wire negater_n_66;
  wire negater_n_67;
  wire negater_n_7;
  wire negater_n_71;
  wire negater_n_72;
  wire negater_n_73;
  wire negater_n_74;
  wire negater_n_75;
  wire negater_n_76;
  wire negater_n_77;
  wire negater_n_78;
  wire negater_n_79;
  wire negater_n_8;
  wire negater_n_80;
  wire negater_n_81;
  wire negater_n_82;
  wire negater_n_83;
  wire negater_n_84;
  wire negater_n_85;
  wire negater_n_86;
  wire negater_n_87;
  wire negater_n_88;
  wire negater_n_89;
  wire negater_n_9;
  wire negater_n_90;
  wire [6:0]\out[0] ;
  wire \out[0][0]_INST_0_i_2_n_0 ;
  wire \out[0][1]_INST_0_i_2_n_0 ;
  wire \out[0][2]_INST_0_i_2_n_0 ;
  wire \out[0][3]_INST_0_i_2_n_0 ;
  wire \out[0][4]_INST_0_i_3_n_0 ;
  wire \out[0][5]_INST_0_i_3_n_0 ;
  wire \out[0][6]_INST_0_i_2_n_0 ;
  wire [6:0]\out[0]_OBUF ;
  wire [6:0]\out[1] ;
  wire \out[1][0]_INST_0_i_2_n_0 ;
  wire \out[1][1]_INST_0_i_2_n_0 ;
  wire \out[1][2]_INST_0_i_2_n_0 ;
  wire \out[1][3]_INST_0_i_3_n_0 ;
  wire \out[1][4]_INST_0_i_2_n_0 ;
  wire \out[1][5]_INST_0_i_2_n_0 ;
  wire \out[1][6]_INST_0_i_3_n_0 ;
  wire [6:0]\out[1]_OBUF ;
  wire [6:0]\out[2] ;
  wire \out[2][0]_INST_0_i_2_n_0 ;
  wire \out[2][1]_INST_0_i_2_n_0 ;
  wire \out[2][2]_INST_0_i_2_n_0 ;
  wire \out[2][3]_INST_0_i_2_n_0 ;
  wire \out[2][4]_INST_0_i_3_n_0 ;
  wire \out[2][5]_INST_0_i_3_n_0 ;
  wire \out[2][6]_INST_0_i_2_n_0 ;
  wire [6:0]\out[2]_OBUF ;
  wire [6:0]p_0_in;
  wire [6:2]temp2;
  wire temp20__0_carry__0_i_3_n_0;
  wire temp20__0_carry__0_i_4_n_0;
  wire temp20__0_carry_i_10_n_0;
  wire temp20__0_carry_i_11_n_0;
  wire temp20__0_carry_i_8_n_0;
  wire temp20__0_carry_i_9_n_0;
  wire temp2__0_carry__0_i_10_n_0;
  wire temp2__0_carry__0_i_8_n_0;
  wire temp2__0_carry_i_14_n_0;
  wire temp2__0_carry_i_15_n_0;
  wire temp2__0_carry_i_8_n_0;

initial begin
 $sdf_annotate("ALU_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \C[0]_carry_i_10__0 
       (.I(\B[0] [3]),
        .O(\C[0]_carry_i_10__0_n_0 ));
  IBUF \C[0]_carry_i_11 
       (.I(\B[0] [5]),
        .O(\C[0]_carry_i_11_n_0 ));
  IBUF \C[0]_carry_i_13 
       (.I(\B[0] [4]),
        .O(\C[0]_carry_i_13_n_0 ));
  IBUF \C[0]_carry_i_14 
       (.I(\B[0] [6]),
        .O(\C[0]_carry_i_14_n_0 ));
  IBUF \C[0]_carry_i_15 
       (.I(\B[1] [4]),
        .O(\C[0]_carry_i_15_n_0 ));
  IBUF \C[0]_carry_i_16 
       (.I(\B[1] [5]),
        .O(\C[0]_carry_i_16_n_0 ));
  IBUF \C[0]_carry_i_6 
       (.I(\B[0] [0]),
        .O(\C[0]_carry_i_6_n_0 ));
  IBUF \C[0]_carry_i_8 
       (.I(\B[0] [1]),
        .O(\C[0]_carry_i_8_n_0 ));
  IBUF \C[0]_carry_i_9 
       (.I(\B[0] [2]),
        .O(\C[0]_carry_i_9_n_0 ));
  IBUF \C[2]_carry_i_2__0 
       (.I(\B[2] [0]),
        .O(\C[2]_carry_i_2__0_n_0 ));
  adder add
       (.\A[2][3] ({add_n_41,add_n_42,add_n_43,add_n_44}),
        .\A[2][6] ({add_n_45,add_n_46,add_n_47}),
        .\B[0][3] ({add_n_48,add_n_49,add_n_50,add_n_51}),
        .\B[1][3] (add_n_24),
        .\B[2][0] (add_n_19),
        .\B[2][6] (add_n_18),
        .\B[2][6]_0 (add_n_40),
        .CO(add_n_0),
        .\C[0]0 (\C[0]0 ),
        .\C[0]2 (\C[0]2 ),
        .\C[0]_carry__0_0 (add_n_39),
        .\C[0]_carry__0_i_1 (negater_n_72),
        .\C[0]_carry__0_i_1_0 (\C[0]_carry_i_13_n_0 ),
        .\C[0]_carry__0_i_1_1 (negater_n_74),
        .\C[0]_carry__0_i_1_2 ({negater_n_4,negater_n_5,negater_n_6,negater_n_7}),
        .\C[0]_carry__0_i_1_3 ({\out[0][6]_INST_0_i_2_n_0 ,\out[0][5]_INST_0_i_3_n_0 ,\out[0][4]_INST_0_i_3_n_0 }),
        .\C[0]_carry__0_i_1_4 (\C[0]_carry_i_11_n_0 ),
        .\C[0]_carry__0_i_1_5 (negater_n_73),
        .\C[0]_carry__0_i_1_6 (negater_n_89),
        .\C[0]_carry__0_i_1_7 (\C[0]_carry_i_14_n_0 ),
        .\C[0]_carry__0_i_4 ({add_n_8,add_n_9,add_n_10,add_n_11}),
        .\C[0]_carry_i_1 (\C[0]_carry_i_6_n_0 ),
        .\C[0]_carry_i_1_0 ({negater_n_0,negater_n_1,\negated_B[0] }),
        .\C[0]_carry_i_1_1 (\C[0]_carry_i_8_n_0 ),
        .\C[0]_carry_i_1_2 (\C[0]_carry_i_9_n_0 ),
        .\C[0]_carry_i_1_3 (\C[0]_carry_i_10__0_n_0 ),
        .\C[2]_carry__0_0 (add_n_38),
        .\C[2]_carry__0_1 (negater_n_17),
        .\C[2]_carry__0_2 (negater_n_16),
        .\C[2]_carry__0_i_1 (negater_n_75),
        .\C[2]_carry__0_i_1_0 ({\out[2][6]_INST_0_i_2_n_0 ,\out[2][5]_INST_0_i_3_n_0 ,\out[2][4]_INST_0_i_3_n_0 }),
        .\C[2]_carry__0_i_1_1 (negater_n_77),
        .\C[2]_carry__0_i_1_2 ({negater_n_12,negater_n_13,negater_n_14,negater_n_15}),
        .\C[2]_carry__0_i_1_3 (negater_n_76),
        .\C[2]_carry__0_i_1_4 (negater_n_90),
        .\C[2]_carry__0_i_5 ({add_n_14,add_n_15,add_n_16,add_n_17}),
        .\C[2]_carry_i_1 ({negater_n_8,negater_n_9,\negated_B[2] }),
        .\C[2]_carry_i_5 ({add_n_12,add_n_13}),
        .DI({negater_n_33,negater_n_34}),
        .O({add_n_6,add_n_7}),
        .S({negater_n_78,negater_n_79,negater_n_80,negater_n_81}),
        .\cmp_flags[1] (negater_n_67),
        .\cmp_flags[1]_INST_0_i_1_0 (\out[1]_OBUF [4:3]),
        .\cmp_flags[1]_INST_0_i_1_1 (negater_n_61),
        .\cmp_flags[1]_INST_0_i_1_2 (\out[0]_OBUF [4]),
        .\cmp_flags[1]_INST_0_i_1_3 (\out[2]_OBUF [4]),
        .\cmp_flags[1]_INST_0_i_4_0 (add_n_25),
        .\cmp_flags[1]_INST_0_i_6_0 ({negater_n_53,negater_n_54,negater_n_55,negater_n_56}),
        .\cmp_flags[1]_INST_0_i_7_0 ({negater_n_49,negater_n_50,negater_n_51,negater_n_52}),
        .\cmp_flags[1]_INST_0_i_8_0 ({negater_n_18,negater_n_19,negater_n_20}),
        .\cmp_flags[1]_INST_0_i_8_1 ({negater_n_84,negater_n_85,negater_n_86,negater_n_87}),
        .\control_operation[1] ({add_n_52,add_n_53,add_n_54}),
        .control_operation_IBUF(control_operation_IBUF),
        .\out[0][0] (\out[0][0]_INST_0_i_2_n_0 ),
        .\out[0][1] (\out[0][1]_INST_0_i_2_n_0 ),
        .\out[0][3] (negater_n_71),
        .\out[0][3]_0 ({\out[0][3]_INST_0_i_2_n_0 ,\out[0][2]_INST_0_i_2_n_0 }),
        .\out[0][6]_INST_0_i_3 (negater_n_83),
        .\out[0][6]_INST_0_i_3_0 ({negater_n_39,negater_n_40,negater_n_41}),
        .\out[0]_OBUF (\out[0]_OBUF [3:0]),
        .\out[1][0] (\out[1][0]_INST_0_i_2_n_0 ),
        .\out[1][1] (\out[1][1]_INST_0_i_2_n_0 ),
        .\out[1][2] (\out[1][2]_INST_0_i_2_n_0 ),
        .\out[1][6]_INST_0_i_2 ({negater_n_31,negater_n_32}),
        .\out[1][6]_INST_0_i_2_0 ({negater_n_28,negater_n_29,negater_n_30}),
        .\out[1]_OBUF (\out[1]_OBUF [2:0]),
        .\out[2][0] (\out[2][0]_INST_0_i_2_n_0 ),
        .\out[2][1] (\out[2][1]_INST_0_i_2_n_0 ),
        .\out[2][3] (negater_n_66),
        .\out[2][3]_0 ({\out[2][3]_INST_0_i_2_n_0 ,\out[2][2]_INST_0_i_2_n_0 }),
        .\out[2][6]_INST_0_i_3 ({negater_n_35,negater_n_36,negater_n_37,negater_n_38}),
        .\out[2]_OBUF (\out[2]_OBUF [3:0]),
        .p_0_in(p_0_in),
        .temp20__0_carry__0_0(temp20__0_carry__0_i_3_n_0),
        .temp20__0_carry_i_7({add_n_20,add_n_21,add_n_22,add_n_23}),
        .temp20__0_carry_i_7_0(temp20__0_carry__0_i_4_n_0),
        .temp20__0_carry_i_7_1(temp20__0_carry_i_11_n_0),
        .temp20__0_carry_i_7_2(temp20__0_carry_i_10_n_0),
        .temp20__0_carry_i_7_3(temp20__0_carry_i_8_n_0),
        .temp20__0_carry_i_7_4(\C[2]_carry_i_2__0_n_0 ),
        .temp20__0_carry_i_7_5(temp20__0_carry_i_9_n_0),
        .temp2__0_carry__0_0(add_n_37),
        .temp2__0_carry__0_i_11(temp2__0_carry__0_i_8_n_0),
        .temp2__0_carry__0_i_11_0(\C[0]_carry_i_15_n_0 ),
        .temp2__0_carry__0_i_5(temp2),
        .temp2__0_carry_i_7(negater_n_82),
        .temp2__0_carry_i_7_0(negater_n_88));
  OBUFT \cmp_flags[0]_INST_0 
       (.I(1'b0),
        .O(\cmp_flags[0] ),
        .T(1'b1));
  OBUF \cmp_flags[1]_INST_0 
       (.I(add_n_25),
        .O(\cmp_flags[1] ));
  IBUF \control_operation_IBUF[0]_inst 
       (.I(control_operation[0]),
        .O(control_operation_IBUF[0]));
  IBUF \control_operation_IBUF[1]_inst 
       (.I(control_operation[1]),
        .O(control_operation_IBUF[1]));
  adder_0 negater
       (.\A[0][6] (\C[0]0 ),
        .\A[0][6]_0 (negater_n_83),
        .\A[1][2] ({negater_n_18,negater_n_19,negater_n_20}),
        .\A[1][3] ({negater_n_84,negater_n_85,negater_n_86,negater_n_87}),
        .\A[1][4] ({negater_n_31,negater_n_32}),
        .\A[1][6] (negater_n_61),
        .\A[2][6] (p_0_in),
        .\B[2][0] ({negater_n_8,negater_n_9,\negated_B[2] }),
        .\B[2][0]_0 (negater_n_16),
        .\B[2][2] (negater_n_17),
        .CO(add_n_0),
        .\C[0]2 (\C[0]2 ),
        .\C[0]_carry_0 (negater_n_74),
        .\C[0]_carry_1 (\out[0][0]_INST_0_i_2_n_0 ),
        .\C[0]_carry_2 ({\out[0][3]_INST_0_i_2_n_0 ,\out[0][2]_INST_0_i_2_n_0 ,\out[0][1]_INST_0_i_2_n_0 }),
        .\C[0]_carry_3 ({add_n_48,add_n_49,add_n_50,add_n_51}),
        .\C[0]_carry__0_0 (negater_n_71),
        .\C[0]_carry__0_1 (negater_n_72),
        .\C[0]_carry__0_2 (negater_n_73),
        .\C[0]_carry__0_3 (negater_n_89),
        .\C[0]_carry__0_4 ({add_n_52,add_n_53,add_n_54}),
        .\C[0]_carry__0_5 (\C[0]_carry_i_11_n_0 ),
        .\C[0]_carry__0_6 (\C[0]_carry_i_14_n_0 ),
        .\C[0]_carry__0_i_1_0 ({negater_n_39,negater_n_40,negater_n_41}),
        .\C[0]_carry__0_i_5_0 (\C[0]_carry_i_13_n_0 ),
        .\C[0]_carry__0_i_5_1 (\C[0]_carry_i_9_n_0 ),
        .\C[0]_carry__0_i_5_2 (\C[0]_carry_i_10__0_n_0 ),
        .\C[0]_carry__0_i_6_0 ({negater_n_4,negater_n_5,negater_n_6,negater_n_7}),
        .\C[0]_carry_i_1_0 ({negater_n_49,negater_n_50,negater_n_51,negater_n_52}),
        .\C[0]_carry_i_3_0 (\C[0]_carry_i_6_n_0 ),
        .\C[0]_carry_i_3_1 (\C[0]_carry_i_8_n_0 ),
        .\C[0]_carry_i_5__0_0 ({negater_n_0,negater_n_1,\negated_B[0] }),
        .\C[2]_carry_0 (negater_n_77),
        .\C[2]_carry_1 ({\out[2][3]_INST_0_i_2_n_0 ,\out[2][2]_INST_0_i_2_n_0 ,\out[2][1]_INST_0_i_2_n_0 ,\out[2][0]_INST_0_i_2_n_0 }),
        .\C[2]_carry_2 ({add_n_41,add_n_42,add_n_43,add_n_44}),
        .\C[2]_carry__0_0 (negater_n_66),
        .\C[2]_carry__0_1 (negater_n_75),
        .\C[2]_carry__0_2 (negater_n_76),
        .\C[2]_carry__0_3 (negater_n_90),
        .\C[2]_carry__0_4 ({add_n_45,add_n_46,add_n_47}),
        .\C[2]_carry__0_i_1_0 ({negater_n_35,negater_n_36,negater_n_37,negater_n_38}),
        .\C[2]_carry__0_i_1_1 (negater_n_82),
        .\C[2]_carry__0_i_1_2 (negater_n_88),
        .\C[2]_carry__0_i_3 (temp20__0_carry__0_i_4_n_0),
        .\C[2]_carry__0_i_3_0 (temp20__0_carry__0_i_3_n_0),
        .\C[2]_carry__0_i_3_1 (add_n_19),
        .\C[2]_carry__0_i_6 ({negater_n_12,negater_n_13,negater_n_14,negater_n_15}),
        .\C[2]_carry__0_i_8 ({add_n_20,add_n_21,add_n_22,add_n_23}),
        .\C[2]_carry_i_1_0 ({negater_n_53,negater_n_54,negater_n_55,negater_n_56}),
        .DI({negater_n_33,negater_n_34}),
        .O({add_n_6,add_n_7}),
        .S({negater_n_78,negater_n_79,negater_n_80,negater_n_81}),
        .\control_operation[1] ({negater_n_28,negater_n_29,negater_n_30}),
        .control_operation_IBUF(control_operation_IBUF),
        .\out[0][5] (add_n_39),
        .\out[0][6] ({add_n_8,add_n_9,add_n_10,add_n_11}),
        .\out[0][6]_0 ({\out[0][6]_INST_0_i_2_n_0 ,\out[0][5]_INST_0_i_3_n_0 ,\out[0][4]_INST_0_i_3_n_0 }),
        .\out[0]_OBUF (\out[0]_OBUF [6:4]),
        .\out[1][3] (\out[1][3]_INST_0_i_3_n_0 ),
        .\out[1][4] (\out[1][4]_INST_0_i_2_n_0 ),
        .\out[1][4]_0 (add_n_37),
        .\out[1][5] (\out[1][5]_INST_0_i_2_n_0 ),
        .\out[1][6] (\out[1][6]_INST_0_i_3_n_0 ),
        .\out[1][6]_0 (temp2),
        .\out[1]_OBUF (\out[1]_OBUF [6:3]),
        .\out[2][4] ({add_n_12,add_n_13}),
        .\out[2][5] (add_n_38),
        .\out[2][5]_INST_0_i_1_0 (negater_n_67),
        .\out[2][6] ({add_n_14,add_n_15,add_n_16,add_n_17}),
        .\out[2][6]_0 ({\out[2][6]_INST_0_i_2_n_0 ,\out[2][5]_INST_0_i_3_n_0 ,\out[2][4]_INST_0_i_3_n_0 }),
        .\out[2]_OBUF (\out[2]_OBUF [6:4]),
        .temp20__0_carry_0(\C[2]_carry_i_2__0_n_0 ),
        .temp20__0_carry_1(temp20__0_carry_i_8_n_0),
        .temp20__0_carry_2(temp20__0_carry_i_9_n_0),
        .temp20__0_carry_3(temp20__0_carry_i_10_n_0),
        .temp20__0_carry_4(temp20__0_carry_i_11_n_0),
        .temp2__0_carry(\out[1][1]_INST_0_i_2_n_0 ),
        .temp2__0_carry_0(\out[1][2]_INST_0_i_2_n_0 ),
        .temp2__0_carry_1(\out[1][0]_INST_0_i_2_n_0 ),
        .temp2__0_carry__0_i_4_0(temp2__0_carry__0_i_10_n_0),
        .temp2__0_carry__0_i_4_1(\C[0]_carry_i_16_n_0 ),
        .temp2__0_carry__0_i_4_2(add_n_24),
        .temp2__0_carry__0_i_6_0(temp2__0_carry__0_i_8_n_0),
        .temp2__0_carry__0_i_6_1(\C[0]_carry_i_15_n_0 ),
        .temp2__0_carry__0_i_9_0(temp2__0_carry_i_15_n_0),
        .temp2__0_carry_i_10_0(add_n_18),
        .temp2__0_carry_i_10_1(add_n_40),
        .temp2__0_carry_i_1_0(temp2__0_carry_i_8_n_0),
        .temp2__0_carry_i_3_0(temp2__0_carry_i_14_n_0));
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
  IBUF \out[0][2]_INST_0_i_2 
       (.I(\A[0] [2]),
        .O(\out[0][2]_INST_0_i_2_n_0 ));
  OBUF \out[0][3]_INST_0 
       (.I(\out[0]_OBUF [3]),
        .O(\out[0] [3]));
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
  IBUF \out[0][5]_INST_0_i_3 
       (.I(\A[0] [5]),
        .O(\out[0][5]_INST_0_i_3_n_0 ));
  OBUF \out[0][6]_INST_0 
       (.I(\out[0]_OBUF [6]),
        .O(\out[0] [6]));
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
  IBUF \out[1][2]_INST_0_i_2 
       (.I(\A[1] [2]),
        .O(\out[1][2]_INST_0_i_2_n_0 ));
  OBUF \out[1][3]_INST_0 
       (.I(\out[1]_OBUF [3]),
        .O(\out[1] [3]));
  IBUF \out[1][3]_INST_0_i_3 
       (.I(\A[1] [3]),
        .O(\out[1][3]_INST_0_i_3_n_0 ));
  OBUF \out[1][4]_INST_0 
       (.I(\out[1]_OBUF [4]),
        .O(\out[1] [4]));
  IBUF \out[1][4]_INST_0_i_2 
       (.I(\A[1] [4]),
        .O(\out[1][4]_INST_0_i_2_n_0 ));
  OBUF \out[1][5]_INST_0 
       (.I(\out[1]_OBUF [5]),
        .O(\out[1] [5]));
  IBUF \out[1][5]_INST_0_i_2 
       (.I(\A[1] [5]),
        .O(\out[1][5]_INST_0_i_2_n_0 ));
  OBUF \out[1][6]_INST_0 
       (.I(\out[1]_OBUF [6]),
        .O(\out[1] [6]));
  IBUF \out[1][6]_INST_0_i_3 
       (.I(\A[1] [6]),
        .O(\out[1][6]_INST_0_i_3_n_0 ));
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
  IBUF \out[2][2]_INST_0_i_2 
       (.I(\A[2] [2]),
        .O(\out[2][2]_INST_0_i_2_n_0 ));
  OBUF \out[2][3]_INST_0 
       (.I(\out[2]_OBUF [3]),
        .O(\out[2] [3]));
  IBUF \out[2][3]_INST_0_i_2 
       (.I(\A[2] [3]),
        .O(\out[2][3]_INST_0_i_2_n_0 ));
  OBUF \out[2][4]_INST_0 
       (.I(\out[2]_OBUF [4]),
        .O(\out[2] [4]));
  IBUF \out[2][4]_INST_0_i_3 
       (.I(\A[2] [4]),
        .O(\out[2][4]_INST_0_i_3_n_0 ));
  OBUF \out[2][5]_INST_0 
       (.I(\out[2]_OBUF [5]),
        .O(\out[2] [5]));
  IBUF \out[2][5]_INST_0_i_3 
       (.I(\A[2] [5]),
        .O(\out[2][5]_INST_0_i_3_n_0 ));
  OBUF \out[2][6]_INST_0 
       (.I(\out[2]_OBUF [6]),
        .O(\out[2] [6]));
  IBUF \out[2][6]_INST_0_i_2 
       (.I(\A[2] [6]),
        .O(\out[2][6]_INST_0_i_2_n_0 ));
  IBUF temp20__0_carry__0_i_3
       (.I(\B[2] [6]),
        .O(temp20__0_carry__0_i_3_n_0));
  IBUF temp20__0_carry__0_i_4
       (.I(\B[2] [5]),
        .O(temp20__0_carry__0_i_4_n_0));
  IBUF temp20__0_carry_i_10
       (.I(\B[2] [3]),
        .O(temp20__0_carry_i_10_n_0));
  IBUF temp20__0_carry_i_11
       (.I(\B[2] [4]),
        .O(temp20__0_carry_i_11_n_0));
  IBUF temp20__0_carry_i_8
       (.I(\B[2] [2]),
        .O(temp20__0_carry_i_8_n_0));
  IBUF temp20__0_carry_i_9
       (.I(\B[2] [1]),
        .O(temp20__0_carry_i_9_n_0));
  IBUF temp2__0_carry__0_i_10
       (.I(\B[1] [6]),
        .O(temp2__0_carry__0_i_10_n_0));
  IBUF temp2__0_carry__0_i_8
       (.I(\B[1] [3]),
        .O(temp2__0_carry__0_i_8_n_0));
  IBUF temp2__0_carry_i_14
       (.I(\B[1] [0]),
        .O(temp2__0_carry_i_14_n_0));
  IBUF temp2__0_carry_i_15
       (.I(\B[1] [1]),
        .O(temp2__0_carry_i_15_n_0));
  IBUF temp2__0_carry_i_8
       (.I(\B[1] [2]),
        .O(temp2__0_carry_i_8_n_0));
endmodule

module adder
   (CO,
    temp2__0_carry__0_i_5,
    O,
    \C[0]_carry__0_i_4 ,
    \C[2]_carry_i_5 ,
    \C[2]_carry__0_i_5 ,
    \B[2][6] ,
    \B[2][0] ,
    temp20__0_carry_i_7,
    \B[1][3] ,
    \cmp_flags[1]_INST_0_i_4_0 ,
    \out[2]_OBUF ,
    \out[0]_OBUF ,
    \out[1]_OBUF ,
    temp2__0_carry__0_0,
    \C[2]_carry__0_0 ,
    \C[0]_carry__0_0 ,
    \B[2][6]_0 ,
    \A[2][3] ,
    \A[2][6] ,
    \B[0][3] ,
    \control_operation[1] ,
    DI,
    S,
    temp2__0_carry_i_7,
    temp2__0_carry_i_7_0,
    \cmp_flags[1]_INST_0_i_8_0 ,
    \cmp_flags[1]_INST_0_i_8_1 ,
    \out[1][6]_INST_0_i_2 ,
    \out[1][6]_INST_0_i_2_0 ,
    \C[0]0 ,
    \cmp_flags[1]_INST_0_i_7_0 ,
    \out[0][6]_INST_0_i_3 ,
    \out[0][6]_INST_0_i_3_0 ,
    p_0_in,
    \cmp_flags[1]_INST_0_i_6_0 ,
    \out[2][6]_INST_0_i_3 ,
    temp20__0_carry__0_0,
    temp20__0_carry_i_7_0,
    temp20__0_carry_i_7_1,
    temp20__0_carry_i_7_2,
    temp20__0_carry_i_7_3,
    \C[2]_carry__0_1 ,
    temp20__0_carry_i_7_4,
    temp20__0_carry_i_7_5,
    temp2__0_carry__0_i_11,
    temp2__0_carry__0_i_11_0,
    \cmp_flags[1] ,
    \cmp_flags[1]_INST_0_i_1_0 ,
    \cmp_flags[1]_INST_0_i_1_1 ,
    \C[0]2 ,
    control_operation_IBUF,
    \out[1][2] ,
    \out[1][1] ,
    \out[0][0] ,
    \out[0][1] ,
    \out[2][0] ,
    \out[1][0] ,
    \out[2][1] ,
    \cmp_flags[1]_INST_0_i_1_2 ,
    \cmp_flags[1]_INST_0_i_1_3 ,
    \out[2][3] ,
    \out[2][3]_0 ,
    \out[0][3] ,
    \out[0][3]_0 ,
    \C[2]_carry__0_2 ,
    \C[2]_carry_i_1 ,
    \C[2]_carry__0_i_1 ,
    \C[2]_carry__0_i_1_0 ,
    \C[2]_carry__0_i_1_1 ,
    \C[2]_carry__0_i_1_2 ,
    \C[2]_carry__0_i_1_3 ,
    \C[2]_carry__0_i_1_4 ,
    \C[0]_carry_i_1 ,
    \C[0]_carry_i_1_0 ,
    \C[0]_carry_i_1_1 ,
    \C[0]_carry_i_1_2 ,
    \C[0]_carry__0_i_1 ,
    \C[0]_carry_i_1_3 ,
    \C[0]_carry__0_i_1_0 ,
    \C[0]_carry__0_i_1_1 ,
    \C[0]_carry__0_i_1_2 ,
    \C[0]_carry__0_i_1_3 ,
    \C[0]_carry__0_i_1_4 ,
    \C[0]_carry__0_i_1_5 ,
    \C[0]_carry__0_i_1_6 ,
    \C[0]_carry__0_i_1_7 );
  output [0:0]CO;
  output [4:0]temp2__0_carry__0_i_5;
  output [1:0]O;
  output [3:0]\C[0]_carry__0_i_4 ;
  output [1:0]\C[2]_carry_i_5 ;
  output [3:0]\C[2]_carry__0_i_5 ;
  output [0:0]\B[2][6] ;
  output \B[2][0] ;
  output [3:0]temp20__0_carry_i_7;
  output \B[1][3] ;
  output \cmp_flags[1]_INST_0_i_4_0 ;
  output [3:0]\out[2]_OBUF ;
  output [3:0]\out[0]_OBUF ;
  output [2:0]\out[1]_OBUF ;
  output temp2__0_carry__0_0;
  output \C[2]_carry__0_0 ;
  output \C[0]_carry__0_0 ;
  output [0:0]\B[2][6]_0 ;
  output [3:0]\A[2][3] ;
  output [2:0]\A[2][6] ;
  output [3:0]\B[0][3] ;
  output [2:0]\control_operation[1] ;
  input [1:0]DI;
  input [3:0]S;
  input [0:0]temp2__0_carry_i_7;
  input [0:0]temp2__0_carry_i_7_0;
  input [2:0]\cmp_flags[1]_INST_0_i_8_0 ;
  input [3:0]\cmp_flags[1]_INST_0_i_8_1 ;
  input [1:0]\out[1][6]_INST_0_i_2 ;
  input [2:0]\out[1][6]_INST_0_i_2_0 ;
  input [6:0]\C[0]0 ;
  input [3:0]\cmp_flags[1]_INST_0_i_7_0 ;
  input [0:0]\out[0][6]_INST_0_i_3 ;
  input [2:0]\out[0][6]_INST_0_i_3_0 ;
  input [6:0]p_0_in;
  input [3:0]\cmp_flags[1]_INST_0_i_6_0 ;
  input [3:0]\out[2][6]_INST_0_i_3 ;
  input temp20__0_carry__0_0;
  input temp20__0_carry_i_7_0;
  input temp20__0_carry_i_7_1;
  input temp20__0_carry_i_7_2;
  input temp20__0_carry_i_7_3;
  input \C[2]_carry__0_1 ;
  input temp20__0_carry_i_7_4;
  input temp20__0_carry_i_7_5;
  input temp2__0_carry__0_i_11;
  input temp2__0_carry__0_i_11_0;
  input \cmp_flags[1] ;
  input [1:0]\cmp_flags[1]_INST_0_i_1_0 ;
  input \cmp_flags[1]_INST_0_i_1_1 ;
  input \C[0]2 ;
  input [1:0]control_operation_IBUF;
  input \out[1][2] ;
  input \out[1][1] ;
  input \out[0][0] ;
  input \out[0][1] ;
  input \out[2][0] ;
  input \out[1][0] ;
  input \out[2][1] ;
  input [0:0]\cmp_flags[1]_INST_0_i_1_2 ;
  input [0:0]\cmp_flags[1]_INST_0_i_1_3 ;
  input \out[2][3] ;
  input [1:0]\out[2][3]_0 ;
  input \out[0][3] ;
  input [1:0]\out[0][3]_0 ;
  input \C[2]_carry__0_2 ;
  input [3:0]\C[2]_carry_i_1 ;
  input \C[2]_carry__0_i_1 ;
  input [2:0]\C[2]_carry__0_i_1_0 ;
  input \C[2]_carry__0_i_1_1 ;
  input [3:0]\C[2]_carry__0_i_1_2 ;
  input \C[2]_carry__0_i_1_3 ;
  input \C[2]_carry__0_i_1_4 ;
  input \C[0]_carry_i_1 ;
  input [3:0]\C[0]_carry_i_1_0 ;
  input \C[0]_carry_i_1_1 ;
  input \C[0]_carry_i_1_2 ;
  input \C[0]_carry__0_i_1 ;
  input \C[0]_carry_i_1_3 ;
  input \C[0]_carry__0_i_1_0 ;
  input \C[0]_carry__0_i_1_1 ;
  input [3:0]\C[0]_carry__0_i_1_2 ;
  input [2:0]\C[0]_carry__0_i_1_3 ;
  input \C[0]_carry__0_i_1_4 ;
  input \C[0]_carry__0_i_1_5 ;
  input \C[0]_carry__0_i_1_6 ;
  input \C[0]_carry__0_i_1_7 ;

  wire [3:0]\A[2][3] ;
  wire [2:0]\A[2][6] ;
  wire [3:0]\B[0][3] ;
  wire \B[1][3] ;
  wire \B[2][0] ;
  wire [0:0]\B[2][6] ;
  wire [0:0]\B[2][6]_0 ;
  wire [0:0]CO;
  wire [6:0]\C[0]0 ;
  wire \C[0]2 ;
  wire \C[0]_carry__0_0 ;
  wire \C[0]_carry__0_i_1 ;
  wire \C[0]_carry__0_i_1_0 ;
  wire \C[0]_carry__0_i_1_1 ;
  wire [3:0]\C[0]_carry__0_i_1_2 ;
  wire [2:0]\C[0]_carry__0_i_1_3 ;
  wire \C[0]_carry__0_i_1_4 ;
  wire \C[0]_carry__0_i_1_5 ;
  wire \C[0]_carry__0_i_1_6 ;
  wire \C[0]_carry__0_i_1_7 ;
  wire [3:0]\C[0]_carry__0_i_4 ;
  wire \C[0]_carry_i_1 ;
  wire [3:0]\C[0]_carry_i_1_0 ;
  wire \C[0]_carry_i_1_1 ;
  wire \C[0]_carry_i_1_2 ;
  wire \C[0]_carry_i_1_3 ;
  wire \C[0]_carry_n_0 ;
  wire \C[2]_carry__0_0 ;
  wire \C[2]_carry__0_2 ;
  wire \C[2]_carry__0_i_1 ;
  wire [2:0]\C[2]_carry__0_i_1_0 ;
  wire \C[2]_carry__0_i_1_1 ;
  wire [3:0]\C[2]_carry__0_i_1_2 ;
  wire \C[2]_carry__0_i_1_3 ;
  wire \C[2]_carry__0_i_1_4 ;
  wire [3:0]\C[2]_carry__0_i_5 ;
  wire [3:0]\C[2]_carry_i_1 ;
  wire [1:0]\C[2]_carry_i_5 ;
  wire \C[2]_carry_n_0 ;
  wire [1:0]DI;
  wire [1:0]O;
  wire [3:0]S;
  wire [1:0]\adder_out[0] ;
  wire [1:0]\adder_out[2] ;
  wire \cmp_flags[1] ;
  wire [1:0]\cmp_flags[1]_INST_0_i_1_0 ;
  wire \cmp_flags[1]_INST_0_i_1_1 ;
  wire [0:0]\cmp_flags[1]_INST_0_i_1_2 ;
  wire [0:0]\cmp_flags[1]_INST_0_i_1_3 ;
  wire \cmp_flags[1]_INST_0_i_2_n_0 ;
  wire \cmp_flags[1]_INST_0_i_4_0 ;
  wire \cmp_flags[1]_INST_0_i_4_n_0 ;
  wire [3:0]\cmp_flags[1]_INST_0_i_6_0 ;
  wire \cmp_flags[1]_INST_0_i_6_n_0 ;
  wire [3:0]\cmp_flags[1]_INST_0_i_7_0 ;
  wire \cmp_flags[1]_INST_0_i_7_n_0 ;
  wire [2:0]\cmp_flags[1]_INST_0_i_8_0 ;
  wire [3:0]\cmp_flags[1]_INST_0_i_8_1 ;
  wire \cmp_flags[1]_INST_0_i_8_n_0 ;
  wire [2:0]\control_operation[1] ;
  wire [1:0]control_operation_IBUF;
  wire \out[0][0] ;
  wire \out[0][1] ;
  wire \out[0][3] ;
  wire [1:0]\out[0][3]_0 ;
  wire [0:0]\out[0][6]_INST_0_i_3 ;
  wire [2:0]\out[0][6]_INST_0_i_3_0 ;
  wire [3:0]\out[0]_OBUF ;
  wire \out[1][0] ;
  wire \out[1][1] ;
  wire \out[1][2] ;
  wire [1:0]\out[1][6]_INST_0_i_2 ;
  wire [2:0]\out[1][6]_INST_0_i_2_0 ;
  wire [2:0]\out[1]_OBUF ;
  wire \out[2][0] ;
  wire \out[2][1] ;
  wire \out[2][3] ;
  wire [1:0]\out[2][3]_0 ;
  wire [3:0]\out[2][6]_INST_0_i_3 ;
  wire [3:0]\out[2]_OBUF ;
  wire [6:0]p_0_in;
  wire [1:0]temp2;
  wire temp20__0_carry__0_0;
  wire [3:0]temp20__0_carry_i_7;
  wire temp20__0_carry_i_7_0;
  wire temp20__0_carry_i_7_1;
  wire temp20__0_carry_i_7_2;
  wire temp20__0_carry_i_7_3;
  wire temp20__0_carry_i_7_4;
  wire temp20__0_carry_i_7_5;
  wire temp20__0_carry_n_0;
  wire temp2__0_carry__0_0;
  wire temp2__0_carry__0_i_11;
  wire temp2__0_carry__0_i_11_0;
  wire [4:0]temp2__0_carry__0_i_5;
  wire [0:0]temp2__0_carry_i_7;
  wire [0:0]temp2__0_carry_i_7_0;
  wire temp2__0_carry_n_0;
  wire [2:0]\NLW_C[0]_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_C[0]_carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_C[2]_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_C[2]_carry__0_CO_UNCONNECTED ;
  wire [2:0]NLW_temp20__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_temp20__0_carry_O_UNCONNECTED;
  wire [3:1]NLW_temp20__0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_temp20__0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_temp2__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_temp2__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_temp2__0_carry__0_O_UNCONNECTED;

  assign temp20__0_carry_i_7[3] = \C[2]_carry__0_1 ;
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[0]_carry 
       (.CI(1'b0),
        .CO({\C[0]_carry_n_0 ,\NLW_C[0]_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(\C[0]0 [3:0]),
        .O({O,\adder_out[0] }),
        .S(\cmp_flags[1]_INST_0_i_7_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[0]_carry__0 
       (.CI(\C[0]_carry_n_0 ),
        .CO(\NLW_C[0]_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\C[0]0 [6:4]}),
        .O(\C[0]_carry__0_i_4 ),
        .S({\out[0][6]_INST_0_i_3 ,\out[0][6]_INST_0_i_3_0 }));
  LUT6 #(
    .INIT(64'h0CC43FF7F33BC008)) 
    \C[0]_carry__0_i_5 
       (.I0(\C[0]_carry__0_i_1_2 [3]),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry__0_i_1_2 [2]),
        .I3(\C[0]_carry__0_i_1_6 ),
        .I4(\C[0]_carry__0_i_1_7 ),
        .I5(\C[0]_carry__0_i_1_3 [2]),
        .O(\control_operation[1] [2]));
  LUT6 #(
    .INIT(64'h11DD1DD1EE22E22E)) 
    \C[0]_carry__0_i_6 
       (.I0(\C[0]_carry__0_i_1_4 ),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry__0_i_1_5 ),
        .I3(\C[0]_carry__0_i_1_2 [1]),
        .I4(\C[0]_carry__0_i_1 ),
        .I5(\C[0]_carry__0_i_1_3 [1]),
        .O(\control_operation[1] [1]));
  LUT6 #(
    .INIT(64'h11DDD11DEE222EE2)) 
    \C[0]_carry__0_i_7 
       (.I0(\C[0]_carry__0_i_1_0 ),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry__0_i_1_1 ),
        .I3(\C[0]_carry__0_i_1_2 [0]),
        .I4(\C[0]_carry__0_i_1 ),
        .I5(\C[0]_carry__0_i_1_3 [0]),
        .O(\control_operation[1] [0]));
  LUT6 #(
    .INIT(64'h111DDDD1EEE2222E)) 
    \C[0]_carry_i_6 
       (.I0(\C[0]_carry_i_1_3 ),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry_i_1_0 [2]),
        .I3(\C[0]_carry__0_i_1 ),
        .I4(\C[0]_carry_i_1_0 [3]),
        .I5(\out[0][3]_0 [1]),
        .O(\B[0][3] [3]));
  LUT5 #(
    .INIT(32'h1DD1E22E)) 
    \C[0]_carry_i_7 
       (.I0(\C[0]_carry_i_1_2 ),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry__0_i_1 ),
        .I3(\C[0]_carry_i_1_0 [2]),
        .I4(\out[0][3]_0 [0]),
        .O(\B[0][3] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \C[0]_carry_i_8 
       (.I0(\C[0]_carry_i_1_1 ),
        .I1(control_operation_IBUF[1]),
        .I2(\C[0]_carry_i_1_0 [1]),
        .I3(\out[0][1] ),
        .O(\B[0][3] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \C[0]_carry_i_9 
       (.I0(\C[0]2 ),
        .I1(\C[0]_carry_i_1 ),
        .I2(control_operation_IBUF[1]),
        .I3(\C[0]_carry_i_1_0 [0]),
        .O(\B[0][3] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[2]_carry 
       (.CI(1'b0),
        .CO({\C[2]_carry_n_0 ,\NLW_C[2]_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(p_0_in[3:0]),
        .O({\C[2]_carry_i_5 ,\adder_out[2] }),
        .S(\cmp_flags[1]_INST_0_i_6_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[2]_carry__0 
       (.CI(\C[2]_carry_n_0 ),
        .CO(\NLW_C[2]_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[6:4]}),
        .O(\C[2]_carry__0_i_5 ),
        .S(\out[2][6]_INST_0_i_3 ));
  LUT6 #(
    .INIT(64'h01FFFE0000000000)) 
    \C[2]_carry__0_i_4 
       (.I0(temp20__0_carry_i_7_3),
        .I1(temp20__0_carry_i_7_2),
        .I2(temp20__0_carry_i_7_1),
        .I3(temp20__0_carry_i_7_0),
        .I4(temp20__0_carry__0_0),
        .I5(\B[2][0] ),
        .O(temp20__0_carry_i_7[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \C[2]_carry__0_i_5__0 
       (.I0(temp20__0_carry_i_7[3]),
        .I1(\C[2]_carry__0_2 ),
        .O(temp20__0_carry_i_7[1]));
  LUT5 #(
    .INIT(32'hFFE0001F)) 
    \C[2]_carry__0_i_6 
       (.I0(temp20__0_carry_i_7_5),
        .I1(temp20__0_carry_i_7_4),
        .I2(temp20__0_carry_i_7_3),
        .I3(temp20__0_carry_i_7_2),
        .I4(temp20__0_carry_i_7_1),
        .O(temp20__0_carry_i_7[0]));
  LUT6 #(
    .INIT(64'h55A5A5655AAAAA6A)) 
    \C[2]_carry__0_i_6__0 
       (.I0(\C[2]_carry__0_i_1_0 [2]),
        .I1(\C[2]_carry__0_i_1_2 [3]),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry__0_i_1_2 [2]),
        .I4(\C[2]_carry__0_i_1_4 ),
        .I5(temp20__0_carry__0_0),
        .O(\A[2][6] [2]));
  LUT6 #(
    .INIT(64'h5656A6A656A6A656)) 
    \C[2]_carry__0_i_7 
       (.I0(\C[2]_carry__0_i_1_0 [1]),
        .I1(temp20__0_carry_i_7_0),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry__0_i_1_3 ),
        .I4(\C[2]_carry__0_i_1_2 [1]),
        .I5(\C[2]_carry__0_i_1 ),
        .O(\A[2][6] [1]));
  LUT6 #(
    .INIT(64'h5656A6A6A65656A6)) 
    \C[2]_carry__0_i_8 
       (.I0(\C[2]_carry__0_i_1_0 [0]),
        .I1(temp20__0_carry_i_7_1),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry__0_i_1_1 ),
        .I4(\C[2]_carry__0_i_1_2 [0]),
        .I5(\C[2]_carry__0_i_1 ),
        .O(\A[2][6] [0]));
  LUT6 #(
    .INIT(64'h565656A6A6A6A656)) 
    \C[2]_carry_i_6 
       (.I0(\out[2][3]_0 [1]),
        .I1(temp20__0_carry_i_7_2),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry_i_1 [2]),
        .I4(\C[2]_carry__0_i_1 ),
        .I5(\C[2]_carry_i_1 [3]),
        .O(\A[2][3] [3]));
  LUT5 #(
    .INIT(32'h56A6A656)) 
    \C[2]_carry_i_7 
       (.I0(\out[2][3]_0 [0]),
        .I1(temp20__0_carry_i_7_3),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry__0_i_1 ),
        .I4(\C[2]_carry_i_1 [2]),
        .O(\A[2][3] [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \C[2]_carry_i_8 
       (.I0(\out[2][1] ),
        .I1(temp20__0_carry_i_7_5),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry_i_1 [1]),
        .O(\A[2][3] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \C[2]_carry_i_9 
       (.I0(\out[2][0] ),
        .I1(temp20__0_carry_i_7_4),
        .I2(control_operation_IBUF[1]),
        .I3(\C[2]_carry_i_1 [0]),
        .O(\A[2][3] [0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \cmp_flags[1]_INST_0_i_1 
       (.I0(\out[2]_OBUF [2]),
        .I1(\out[0]_OBUF [2]),
        .I2(\cmp_flags[1]_INST_0_i_2_n_0 ),
        .I3(\cmp_flags[1] ),
        .I4(\cmp_flags[1]_INST_0_i_4_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_4_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cmp_flags[1]_INST_0_i_2 
       (.I0(\out[1]_OBUF [2]),
        .I1(\cmp_flags[1]_INST_0_i_1_0 [0]),
        .I2(\cmp_flags[1]_INST_0_i_1_1 ),
        .I3(\cmp_flags[1]_INST_0_i_1_0 [1]),
        .I4(\cmp_flags[1]_INST_0_i_6_n_0 ),
        .I5(\cmp_flags[1]_INST_0_i_7_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmp_flags[1]_INST_0_i_4 
       (.I0(\out[0]_OBUF [3]),
        .I1(\cmp_flags[1]_INST_0_i_1_2 ),
        .I2(\out[2]_OBUF [3]),
        .I3(\cmp_flags[1]_INST_0_i_1_3 ),
        .O(\cmp_flags[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \cmp_flags[1]_INST_0_i_6 
       (.I0(\adder_out[0] [1]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][1] ),
        .I3(\adder_out[2] [0]),
        .I4(\out[2][0] ),
        .I5(\cmp_flags[1]_INST_0_i_8_n_0 ),
        .O(\cmp_flags[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cmp_flags[1]_INST_0_i_7 
       (.I0(\out[1][1] ),
        .I1(temp2[1]),
        .I2(\out[0][0] ),
        .I3(control_operation_IBUF[0]),
        .I4(\adder_out[0] [0]),
        .O(\cmp_flags[1]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \cmp_flags[1]_INST_0_i_8 
       (.I0(\out[1][0] ),
        .I1(temp2[0]),
        .I2(\out[2][1] ),
        .I3(control_operation_IBUF[0]),
        .I4(\adder_out[2] [1]),
        .O(\cmp_flags[1]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0][0]_INST_0_i_1 
       (.I0(\adder_out[0] [0]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][0] ),
        .O(\out[0]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[0][1]_INST_0_i_1 
       (.I0(\adder_out[0] [1]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[0][1] ),
        .O(\out[0]_OBUF [1]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \out[0][2]_INST_0_i_1 
       (.I0(O[0]),
        .I1(\out[0][3] ),
        .I2(control_operation_IBUF[0]),
        .I3(\out[0][3]_0 [0]),
        .O(\out[0]_OBUF [2]));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \out[0][3]_INST_0_i_1 
       (.I0(O[1]),
        .I1(\out[0][3] ),
        .I2(O[0]),
        .I3(control_operation_IBUF[0]),
        .I4(\out[0][3]_0 [1]),
        .O(\out[0]_OBUF [3]));
  LUT3 #(
    .INIT(8'h01)) 
    \out[0][5]_INST_0_i_2 
       (.I0(O[0]),
        .I1(O[1]),
        .I2(\C[0]_carry__0_i_4 [0]),
        .O(\C[0]_carry__0_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[1][0]_INST_0_i_1 
       (.I0(temp2[0]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][0] ),
        .O(\out[1]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[1][1]_INST_0_i_1 
       (.I0(temp2[1]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[1][1] ),
        .O(\out[1]_OBUF [1]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \out[1][2]_INST_0_i_1 
       (.I0(temp2__0_carry__0_i_5[0]),
        .I1(\C[0]2 ),
        .I2(control_operation_IBUF[0]),
        .I3(\out[1][2] ),
        .O(\out[1]_OBUF [2]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \out[1][4]_INST_0_i_3 
       (.I0(temp2__0_carry__0_i_5[1]),
        .I1(temp2__0_carry__0_i_5[0]),
        .I2(temp2__0_carry__0_i_5[4]),
        .I3(temp2__0_carry__0_i_5[3]),
        .O(temp2__0_carry__0_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2][0]_INST_0_i_1 
       (.I0(\adder_out[2] [0]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][0] ),
        .O(\out[2]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2][1]_INST_0_i_1 
       (.I0(\adder_out[2] [1]),
        .I1(control_operation_IBUF[0]),
        .I2(\out[2][1] ),
        .O(\out[2]_OBUF [1]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \out[2][2]_INST_0_i_1 
       (.I0(\C[2]_carry_i_5 [0]),
        .I1(\out[2][3] ),
        .I2(control_operation_IBUF[0]),
        .I3(\out[2][3]_0 [0]),
        .O(\out[2]_OBUF [2]));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \out[2][3]_INST_0_i_1 
       (.I0(\C[2]_carry_i_5 [1]),
        .I1(\out[2][3] ),
        .I2(\C[2]_carry_i_5 [0]),
        .I3(control_operation_IBUF[0]),
        .I4(\out[2][3]_0 [1]),
        .O(\out[2]_OBUF [3]));
  LUT3 #(
    .INIT(8'h01)) 
    \out[2][5]_INST_0_i_2 
       (.I0(\C[2]_carry_i_5 [0]),
        .I1(\C[2]_carry_i_5 [1]),
        .I2(\C[2]_carry__0_i_5 [0]),
        .O(\C[2]_carry__0_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp20__0_carry
       (.CI(1'b0),
        .CO({temp20__0_carry_n_0,NLW_temp20__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI[1],1'b0,1'b0,DI[0]}),
        .O(NLW_temp20__0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp20__0_carry__0
       (.CI(temp20__0_carry_n_0),
        .CO({NLW_temp20__0_carry__0_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp2__0_carry_i_7}),
        .O(NLW_temp20__0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,temp2__0_carry_i_7_0}));
  LUT6 #(
    .INIT(64'h6666666A99999995)) 
    temp20__0_carry__0_i_1
       (.I0(temp20__0_carry__0_0),
        .I1(temp20__0_carry_i_7_0),
        .I2(temp20__0_carry_i_7_1),
        .I3(temp20__0_carry_i_7_2),
        .I4(temp20__0_carry_i_7_3),
        .I5(\B[2][0] ),
        .O(\B[2][6] ));
  LUT6 #(
    .INIT(64'hD7D7D7D7D7D7D777)) 
    temp20__0_carry__0_i_2
       (.I0(\B[2][0] ),
        .I1(temp20__0_carry__0_0),
        .I2(temp20__0_carry_i_7_0),
        .I3(temp20__0_carry_i_7_1),
        .I4(temp20__0_carry_i_7_2),
        .I5(temp20__0_carry_i_7_3),
        .O(\B[2][6]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    temp20__0_carry__0_i_5
       (.I0(temp20__0_carry_i_7_4),
        .I1(temp20__0_carry_i_7_5),
        .I2(temp20__0_carry_i_7_1),
        .I3(temp20__0_carry_i_7_2),
        .I4(temp20__0_carry_i_7_3),
        .I5(temp20__0_carry_i_7_0),
        .O(\B[2][0] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 temp2__0_carry
       (.CI(1'b0),
        .CO({temp2__0_carry_n_0,NLW_temp2__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\cmp_flags[1]_INST_0_i_8_0 ,1'b0}),
        .O({temp2__0_carry__0_i_5[1:0],temp2}),
        .S(\cmp_flags[1]_INST_0_i_8_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp2__0_carry__0
       (.CI(temp2__0_carry_n_0),
        .CO(NLW_temp2__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\out[1][6]_INST_0_i_2 }),
        .O({NLW_temp2__0_carry__0_O_UNCONNECTED[3],temp2__0_carry__0_i_5[4:2]}),
        .S({1'b0,\out[1][6]_INST_0_i_2_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    temp2__0_carry_i_16
       (.I0(temp2__0_carry__0_i_11),
        .I1(temp2__0_carry__0_i_11_0),
        .O(\B[1][3] ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module adder_0
   (\C[0]_carry_i_5__0_0 ,
    \C[0]_carry__0_i_6_0 ,
    \B[2][0] ,
    \C[2]_carry__0_i_6 ,
    \B[2][0]_0 ,
    \B[2][2] ,
    \A[1][2] ,
    \A[2][6] ,
    \control_operation[1] ,
    \A[1][4] ,
    DI,
    \C[2]_carry__0_i_1_0 ,
    \C[0]_carry__0_i_1_0 ,
    \A[0][6] ,
    \C[0]_carry_i_1_0 ,
    \C[2]_carry_i_1_0 ,
    \out[1]_OBUF ,
    \A[1][6] ,
    \C[0]2 ,
    \out[2]_OBUF ,
    \C[2]_carry__0_0 ,
    \out[2][5]_INST_0_i_1_0 ,
    \out[0]_OBUF ,
    \C[0]_carry__0_0 ,
    \C[0]_carry__0_1 ,
    \C[0]_carry__0_2 ,
    \C[0]_carry_0 ,
    \C[2]_carry__0_1 ,
    \C[2]_carry__0_2 ,
    \C[2]_carry_0 ,
    S,
    \C[2]_carry__0_i_1_1 ,
    \A[0][6]_0 ,
    \A[1][3] ,
    \C[2]_carry__0_i_1_2 ,
    \C[0]_carry__0_3 ,
    \C[2]_carry__0_3 ,
    temp2__0_carry_i_10_0,
    temp2__0_carry_i_10_1,
    temp20__0_carry_0,
    \C[2]_carry__0_i_8 ,
    temp20__0_carry_1,
    temp20__0_carry_2,
    temp20__0_carry_3,
    temp2__0_carry,
    CO,
    temp2__0_carry__0_i_9_0,
    control_operation_IBUF,
    temp2__0_carry_i_3_0,
    temp2__0_carry__0_i_4_0,
    \out[1][5] ,
    \out[1][6] ,
    temp2__0_carry_i_1_0,
    temp2__0_carry__0_i_4_1,
    temp2__0_carry__0_i_6_0,
    temp2__0_carry__0_i_6_1,
    \out[1][4] ,
    \out[1][3] ,
    temp2__0_carry_0,
    temp2__0_carry__0_i_4_2,
    \C[0]_carry__0_i_5_0 ,
    \C[0]_carry_i_3_0 ,
    \C[0]_carry_i_3_1 ,
    \C[0]_carry__0_i_5_1 ,
    \C[0]_carry__0_i_5_2 ,
    temp20__0_carry_4,
    \C[2]_carry__0_i_3 ,
    \C[2]_carry__0_i_3_0 ,
    \C[2]_carry__0_i_3_1 ,
    \out[1][6]_0 ,
    \out[1][4]_0 ,
    \out[2][6] ,
    \out[2][4] ,
    \out[2][6]_0 ,
    \out[2][5] ,
    \out[0][6] ,
    O,
    \out[0][6]_0 ,
    \out[0][5] ,
    \C[2]_carry_1 ,
    \C[2]_carry_2 ,
    \C[2]_carry__0_4 ,
    \C[0]_carry_1 ,
    \C[0]_carry_2 ,
    \C[0]_carry_3 ,
    \C[0]_carry__0_4 ,
    \C[0]_carry__0_5 ,
    \C[0]_carry__0_6 ,
    temp2__0_carry_1);
  output [3:0]\C[0]_carry_i_5__0_0 ;
  output [3:0]\C[0]_carry__0_i_6_0 ;
  output [3:0]\B[2][0] ;
  output [3:0]\C[2]_carry__0_i_6 ;
  output \B[2][0]_0 ;
  output \B[2][2] ;
  output [2:0]\A[1][2] ;
  output [6:0]\A[2][6] ;
  output [2:0]\control_operation[1] ;
  output [1:0]\A[1][4] ;
  output [1:0]DI;
  output [3:0]\C[2]_carry__0_i_1_0 ;
  output [2:0]\C[0]_carry__0_i_1_0 ;
  output [6:0]\A[0][6] ;
  output [3:0]\C[0]_carry_i_1_0 ;
  output [3:0]\C[2]_carry_i_1_0 ;
  output [3:0]\out[1]_OBUF ;
  output \A[1][6] ;
  output \C[0]2 ;
  output [2:0]\out[2]_OBUF ;
  output \C[2]_carry__0_0 ;
  output \out[2][5]_INST_0_i_1_0 ;
  output [2:0]\out[0]_OBUF ;
  output \C[0]_carry__0_0 ;
  output \C[0]_carry__0_1 ;
  output \C[0]_carry__0_2 ;
  output \C[0]_carry_0 ;
  output \C[2]_carry__0_1 ;
  output \C[2]_carry__0_2 ;
  output \C[2]_carry_0 ;
  output [3:0]S;
  output [0:0]\C[2]_carry__0_i_1_1 ;
  output [0:0]\A[0][6]_0 ;
  output [3:0]\A[1][3] ;
  output [0:0]\C[2]_carry__0_i_1_2 ;
  output \C[0]_carry__0_3 ;
  output \C[2]_carry__0_3 ;
  input [0:0]temp2__0_carry_i_10_0;
  input [0:0]temp2__0_carry_i_10_1;
  input temp20__0_carry_0;
  input [3:0]\C[2]_carry__0_i_8 ;
  input temp20__0_carry_1;
  input temp20__0_carry_2;
  input temp20__0_carry_3;
  input temp2__0_carry;
  input [0:0]CO;
  input temp2__0_carry__0_i_9_0;
  input [1:0]control_operation_IBUF;
  input temp2__0_carry_i_3_0;
  input temp2__0_carry__0_i_4_0;
  input \out[1][5] ;
  input \out[1][6] ;
  input temp2__0_carry_i_1_0;
  input temp2__0_carry__0_i_4_1;
  input temp2__0_carry__0_i_6_0;
  input temp2__0_carry__0_i_6_1;
  input \out[1][4] ;
  input \out[1][3] ;
  input temp2__0_carry_0;
  input temp2__0_carry__0_i_4_2;
  input \C[0]_carry__0_i_5_0 ;
  input \C[0]_carry_i_3_0 ;
  input \C[0]_carry_i_3_1 ;
  input \C[0]_carry__0_i_5_1 ;
  input \C[0]_carry__0_i_5_2 ;
  input temp20__0_carry_4;
  input \C[2]_carry__0_i_3 ;
  input \C[2]_carry__0_i_3_0 ;
  input \C[2]_carry__0_i_3_1 ;
  input [4:0]\out[1][6]_0 ;
  input \out[1][4]_0 ;
  input [3:0]\out[2][6] ;
  input [1:0]\out[2][4] ;
  input [2:0]\out[2][6]_0 ;
  input \out[2][5] ;
  input [3:0]\out[0][6] ;
  input [1:0]O;
  input [2:0]\out[0][6]_0 ;
  input \out[0][5] ;
  input [3:0]\C[2]_carry_1 ;
  input [3:0]\C[2]_carry_2 ;
  input [2:0]\C[2]_carry__0_4 ;
  input \C[0]_carry_1 ;
  input [2:0]\C[0]_carry_2 ;
  input [3:0]\C[0]_carry_3 ;
  input [2:0]\C[0]_carry__0_4 ;
  input \C[0]_carry__0_5 ;
  input \C[0]_carry__0_6 ;
  input temp2__0_carry_1;

  wire [6:0]\A[0][6] ;
  wire [0:0]\A[0][6]_0 ;
  wire [2:0]\A[1][2] ;
  wire [3:0]\A[1][3] ;
  wire [1:0]\A[1][4] ;
  wire \A[1][6] ;
  wire [6:0]\A[2][6] ;
  wire [3:0]\B[2][0] ;
  wire \B[2][0]_0 ;
  wire \B[2][2] ;
  wire [0:0]CO;
  wire \C[0]2 ;
  wire \C[0]_carry_0 ;
  wire \C[0]_carry_1 ;
  wire [2:0]\C[0]_carry_2 ;
  wire [3:0]\C[0]_carry_3 ;
  wire \C[0]_carry__0_0 ;
  wire \C[0]_carry__0_1 ;
  wire \C[0]_carry__0_2 ;
  wire \C[0]_carry__0_3 ;
  wire [2:0]\C[0]_carry__0_4 ;
  wire \C[0]_carry__0_5 ;
  wire \C[0]_carry__0_6 ;
  wire [2:0]\C[0]_carry__0_i_1_0 ;
  wire \C[0]_carry__0_i_1__0_n_0 ;
  wire \C[0]_carry__0_i_2__0_n_0 ;
  wire \C[0]_carry__0_i_3__0_n_0 ;
  wire \C[0]_carry__0_i_4__0_n_0 ;
  wire \C[0]_carry__0_i_5_0 ;
  wire \C[0]_carry__0_i_5_1 ;
  wire \C[0]_carry__0_i_5_2 ;
  wire \C[0]_carry__0_i_5_n_0 ;
  wire [3:0]\C[0]_carry__0_i_6_0 ;
  wire \C[0]_carry__0_i_6_n_0 ;
  wire \C[0]_carry__0_i_7_n_0 ;
  wire \C[0]_carry_i_12_n_0 ;
  wire [3:0]\C[0]_carry_i_1_0 ;
  wire \C[0]_carry_i_1__0_n_0 ;
  wire \C[0]_carry_i_1_n_0 ;
  wire \C[0]_carry_i_2__0_n_0 ;
  wire \C[0]_carry_i_3_0 ;
  wire \C[0]_carry_i_3_1 ;
  wire \C[0]_carry_i_3_n_0 ;
  wire \C[0]_carry_i_4__0_n_0 ;
  wire [3:0]\C[0]_carry_i_5__0_0 ;
  wire \C[0]_carry_i_5__0_n_0 ;
  wire \C[0]_carry_i_7_n_0 ;
  wire \C[0]_carry_n_0 ;
  wire \C[2]_carry_0 ;
  wire [3:0]\C[2]_carry_1 ;
  wire [3:0]\C[2]_carry_2 ;
  wire \C[2]_carry__0_0 ;
  wire \C[2]_carry__0_1 ;
  wire \C[2]_carry__0_2 ;
  wire \C[2]_carry__0_3 ;
  wire [2:0]\C[2]_carry__0_4 ;
  wire [3:0]\C[2]_carry__0_i_1_0 ;
  wire [0:0]\C[2]_carry__0_i_1_1 ;
  wire [0:0]\C[2]_carry__0_i_1_2 ;
  wire \C[2]_carry__0_i_1__0_n_0 ;
  wire \C[2]_carry__0_i_3 ;
  wire \C[2]_carry__0_i_3_0 ;
  wire \C[2]_carry__0_i_3_1 ;
  wire [3:0]\C[2]_carry__0_i_6 ;
  wire [3:0]\C[2]_carry__0_i_8 ;
  wire [3:0]\C[2]_carry_i_1_0 ;
  wire \C[2]_carry_i_1__0_n_0 ;
  wire \C[2]_carry_i_1_n_0 ;
  wire \C[2]_carry_i_3_n_0 ;
  wire \C[2]_carry_i_4__0_n_0 ;
  wire \C[2]_carry_i_5__0_n_0 ;
  wire \C[2]_carry_i_6_n_0 ;
  wire \C[2]_carry_n_0 ;
  wire [1:0]DI;
  wire [1:0]O;
  wire [3:0]S;
  wire [2:0]\control_operation[1] ;
  wire [1:0]control_operation_IBUF;
  wire \out[0][5] ;
  wire [3:0]\out[0][6] ;
  wire [2:0]\out[0][6]_0 ;
  wire \out[0][6]_INST_0_i_3_n_0 ;
  wire [2:0]\out[0]_OBUF ;
  wire \out[1][3] ;
  wire \out[1][3]_INST_0_i_2_n_0 ;
  wire \out[1][4] ;
  wire \out[1][4]_0 ;
  wire \out[1][5] ;
  wire \out[1][6] ;
  wire [4:0]\out[1][6]_0 ;
  wire [3:0]\out[1]_OBUF ;
  wire [1:0]\out[2][4] ;
  wire \out[2][5] ;
  wire \out[2][5]_INST_0_i_1_0 ;
  wire [3:0]\out[2][6] ;
  wire [2:0]\out[2][6]_0 ;
  wire \out[2][6]_INST_0_i_3_n_0 ;
  wire [2:0]\out[2]_OBUF ;
  wire [7:7]p_0_in;
  wire temp20__0_carry_0;
  wire temp20__0_carry_1;
  wire temp20__0_carry_2;
  wire temp20__0_carry_3;
  wire temp20__0_carry_4;
  wire temp20__0_carry__0_n_3;
  wire temp20__0_carry_i_1__0_n_0;
  wire temp20__0_carry_i_2_n_0;
  wire temp20__0_carry_i_3_n_0;
  wire temp20__0_carry_i_4_n_0;
  wire temp20__0_carry_i_5__0_n_0;
  wire temp20__0_carry_i_6_n_0;
  wire temp20__0_carry_n_0;
  wire temp2__0_carry;
  wire temp2__0_carry_0;
  wire temp2__0_carry_1;
  wire temp2__0_carry__0_i_11_n_0;
  wire temp2__0_carry__0_i_4_0;
  wire temp2__0_carry__0_i_4_1;
  wire temp2__0_carry__0_i_4_2;
  wire temp2__0_carry__0_i_6_0;
  wire temp2__0_carry__0_i_6_1;
  wire temp2__0_carry__0_i_6_n_0;
  wire temp2__0_carry__0_i_7_n_0;
  wire temp2__0_carry__0_i_9_0;
  wire temp2__0_carry__0_i_9_n_0;
  wire [0:0]temp2__0_carry_i_10_0;
  wire [0:0]temp2__0_carry_i_10_1;
  wire temp2__0_carry_i_10_n_0;
  wire temp2__0_carry_i_11_n_0;
  wire temp2__0_carry_i_12_n_0;
  wire temp2__0_carry_i_13_n_0;
  wire temp2__0_carry_i_1_0;
  wire temp2__0_carry_i_3_0;
  wire temp2__0_carry_i_9_n_0;
  wire [2:0]\NLW_C[0]_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_C[0]_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_C[0]_carry__0_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_C[0]_carry_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_C[2]_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_C[2]_carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_C[2]_carry__0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_C[2]_carry__0_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_C[2]_carry_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_temp20__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_temp20__0_carry_O_UNCONNECTED;
  wire [3:1]NLW_temp20__0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_temp20__0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \C[0]_carry 
       (.CI(1'b0),
        .CO({\C[0]_carry_n_0 ,\NLW_C[0]_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,\C[0]_carry_i_1__0_n_0 ,1'b1,1'b1}),
        .O(\C[0]_carry_i_5__0_0 ),
        .S({\C[0]_carry_i_2__0_n_0 ,\C[0]_carry_i_3_n_0 ,\C[0]_carry_i_4__0_n_0 ,\C[0]_carry_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[0]_carry__0 
       (.CI(\C[0]_carry_n_0 ),
        .CO(\NLW_C[0]_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\C[0]_carry__0_i_1__0_n_0 ,\C[0]_carry__0_i_2__0_n_0 ,1'b1}),
        .O(\C[0]_carry__0_i_6_0 ),
        .S({\C[0]_carry__0_i_3__0_n_0 ,\C[0]_carry__0_i_4__0_n_0 ,\C[0]_carry__0_i_5_n_0 ,\C[0]_carry__0_i_6_n_0 }));
  CARRY4 \C[0]_carry__0_i_1 
       (.CI(\C[0]_carry_i_1_n_0 ),
        .CO(\NLW_C[0]_carry__0_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\out[0][6]_0 }),
        .O({\A[0][6]_0 ,\A[0][6] [6:4]}),
        .S({1'b1,\C[0]_carry__0_4 }));
  LUT2 #(
    .INIT(4'h1)) 
    \C[0]_carry__0_i_10 
       (.I0(\C[0]_carry_i_5__0_0 [3]),
        .I1(\C[0]_carry_i_5__0_0 [2]),
        .O(\C[0]_carry_0 ));
  LUT6 #(
    .INIT(64'h888888817777777E)) 
    \C[0]_carry__0_i_1__0 
       (.I0(\C[0]_carry__0_i_7_n_0 ),
        .I1(\C[0]_carry__0_5 ),
        .I2(\C[0]_carry__0_i_5_0 ),
        .I3(\C[0]_carry__0_i_5_1 ),
        .I4(\C[0]_carry__0_i_5_2 ),
        .I5(\C[0]_carry__0_6 ),
        .O(\C[0]_carry__0_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \C[0]_carry__0_i_2 
       (.I0(\A[0][6] [6]),
        .I1(\A[0][6]_0 ),
        .O(\C[0]_carry__0_i_1_0 [2]));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \C[0]_carry__0_i_2__0 
       (.I0(\C[0]_carry__0_i_7_n_0 ),
        .I1(\C[0]_carry__0_i_5_2 ),
        .I2(\C[0]_carry__0_i_5_1 ),
        .I3(\C[0]_carry__0_i_5_0 ),
        .I4(\C[0]_carry__0_5 ),
        .O(\C[0]_carry__0_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \C[0]_carry__0_i_3 
       (.I0(\A[0][6] [5]),
        .I1(\A[0][6]_0 ),
        .O(\C[0]_carry__0_i_1_0 [1]));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFDFDFFE)) 
    \C[0]_carry__0_i_3__0 
       (.I0(\C[0]_carry__0_6 ),
        .I1(\C[0]_carry__0_i_7_n_0 ),
        .I2(\C[0]_carry__0_5 ),
        .I3(\C[0]_carry__0_i_5_0 ),
        .I4(\C[0]_carry__0_i_5_1 ),
        .I5(\C[0]_carry__0_i_5_2 ),
        .O(\C[0]_carry__0_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[0]_carry__0_i_4 
       (.I0(\A[0][6] [4]),
        .O(\C[0]_carry__0_i_1_0 [0]));
  LUT6 #(
    .INIT(64'h01FF01FEFE000000)) 
    \C[0]_carry__0_i_4__0 
       (.I0(\C[0]_carry__0_i_5_2 ),
        .I1(\C[0]_carry__0_i_5_1 ),
        .I2(\C[0]_carry__0_i_5_0 ),
        .I3(\C[0]_carry__0_5 ),
        .I4(\C[0]_carry__0_i_7_n_0 ),
        .I5(\C[0]_carry__0_6 ),
        .O(\C[0]_carry__0_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h01FE000101FEFE00)) 
    \C[0]_carry__0_i_5 
       (.I0(\C[0]_carry__0_i_5_2 ),
        .I1(\C[0]_carry__0_i_5_1 ),
        .I2(\C[0]_carry__0_i_5_0 ),
        .I3(\C[0]_carry__0_5 ),
        .I4(\C[0]_carry__0_i_7_n_0 ),
        .I5(\C[0]_carry__0_6 ),
        .O(\C[0]_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00000001FF)) 
    \C[0]_carry__0_i_6 
       (.I0(\C[0]_carry_i_3_0 ),
        .I1(\C[0]_carry_i_7_n_0 ),
        .I2(\C[0]_carry_i_3_1 ),
        .I3(\C[0]_carry__0_i_5_1 ),
        .I4(\C[0]_carry__0_i_5_2 ),
        .I5(\C[0]_carry__0_i_5_0 ),
        .O(\C[0]_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \C[0]_carry__0_i_7 
       (.I0(\C[0]_carry__0_i_5_0 ),
        .I1(\C[0]_carry_i_3_0 ),
        .I2(\C[0]_carry_i_7_n_0 ),
        .I3(\C[0]_carry_i_3_1 ),
        .I4(\C[0]_carry__0_i_5_1 ),
        .I5(\C[0]_carry__0_i_5_2 ),
        .O(\C[0]_carry__0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \C[0]_carry__0_i_8 
       (.I0(\C[0]_carry__0_i_6_0 [0]),
        .I1(\C[0]_carry_i_5__0_0 [3]),
        .I2(\C[0]_carry_i_5__0_0 [2]),
        .I3(\C[0]_carry__0_i_6_0 [1]),
        .O(\C[0]_carry__0_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \C[0]_carry__0_i_9 
       (.I0(\C[0]_carry_i_5__0_0 [2]),
        .I1(\C[0]_carry_i_5__0_0 [3]),
        .I2(\C[0]_carry__0_i_6_0 [0]),
        .O(\C[0]_carry__0_2 ));
  CARRY4 \C[0]_carry_i_1 
       (.CI(1'b0),
        .CO({\C[0]_carry_i_1_n_0 ,\NLW_C[0]_carry_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\C[0]_carry_1 ),
        .DI({\C[0]_carry_2 ,\C[0]2 }),
        .O(\A[0][6] [3:0]),
        .S(\C[0]_carry_3 ));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \C[0]_carry_i_10 
       (.I0(\C[0]_carry__0_i_6_0 [3]),
        .I1(\C[0]_carry__0_i_6_0 [0]),
        .I2(\C[0]_carry_i_5__0_0 [3]),
        .I3(\C[0]_carry_i_5__0_0 [2]),
        .I4(\C[0]_carry__0_i_6_0 [1]),
        .I5(\C[0]_carry__0_i_6_0 [2]),
        .O(\C[0]_carry__0_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \C[0]_carry_i_12 
       (.I0(\C[0]_carry_i_3_1 ),
        .I1(\C[0]_carry_i_7_n_0 ),
        .I2(\C[0]_carry_i_3_0 ),
        .O(\C[0]_carry_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \C[0]_carry_i_1__0 
       (.I0(\C[0]_carry_i_3_0 ),
        .I1(\C[0]_carry_i_7_n_0 ),
        .I2(\C[0]_carry_i_3_1 ),
        .I3(\C[0]_carry__0_i_5_1 ),
        .O(\C[0]_carry_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[0]_carry_i_2 
       (.I0(\A[0][6] [3]),
        .O(\C[0]_carry_i_1_0 [3]));
  LUT5 #(
    .INIT(32'hFE0100FF)) 
    \C[0]_carry_i_2__0 
       (.I0(\C[0]_carry_i_3_1 ),
        .I1(\C[0]_carry_i_7_n_0 ),
        .I2(\C[0]_carry_i_3_0 ),
        .I3(\C[0]_carry__0_i_5_2 ),
        .I4(\C[0]_carry__0_i_5_1 ),
        .O(\C[0]_carry_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00FD00FF00FF0)) 
    \C[0]_carry_i_3 
       (.I0(\C[0]_carry__0_5 ),
        .I1(\C[0]_carry__0_i_5_2 ),
        .I2(\C[0]_carry__0_i_5_1 ),
        .I3(\C[0]_carry_i_12_n_0 ),
        .I4(\C[0]_carry__0_i_5_0 ),
        .I5(\C[0]_carry__0_6 ),
        .O(\C[0]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \C[0]_carry_i_3__0 
       (.I0(\A[0][6] [2]),
        .I1(\A[0][6]_0 ),
        .O(\C[0]_carry_i_1_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    \C[0]_carry_i_4 
       (.I0(\A[0][6] [1]),
        .O(\C[0]_carry_i_1_0 [1]));
  LUT3 #(
    .INIT(8'hE1)) 
    \C[0]_carry_i_4__0 
       (.I0(\C[0]_carry_i_7_n_0 ),
        .I1(\C[0]_carry_i_3_0 ),
        .I2(\C[0]_carry_i_3_1 ),
        .O(\C[0]_carry_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[0]_carry_i_5 
       (.I0(\A[0][6] [0]),
        .O(\C[0]_carry_i_1_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \C[0]_carry_i_5__0 
       (.I0(\C[0]_carry_i_7_n_0 ),
        .I1(\C[0]_carry_i_3_0 ),
        .O(\C[0]_carry_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h1011FFFFFFFFFFEF)) 
    \C[0]_carry_i_7 
       (.I0(temp2__0_carry__0_i_6_1),
        .I1(temp2__0_carry__0_i_6_0),
        .I2(temp2__0_carry__0_i_7_n_0),
        .I3(temp2__0_carry_i_1_0),
        .I4(temp2__0_carry__0_i_4_0),
        .I5(temp2__0_carry__0_i_4_1),
        .O(\C[0]_carry_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[2]_carry 
       (.CI(1'b0),
        .CO({\C[2]_carry_n_0 ,\NLW_C[2]_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b1,\C[2]_carry_i_1__0_n_0 ,1'b1,temp20__0_carry_0}),
        .O(\B[2][0] ),
        .S({\C[2]_carry_i_3_n_0 ,\C[2]_carry_i_4__0_n_0 ,\C[2]_carry_i_5__0_n_0 ,\C[2]_carry_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \C[2]_carry__0 
       (.CI(\C[2]_carry_n_0 ),
        .CO(\NLW_C[2]_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\C[2]_carry__0_i_1__0_n_0 ,\B[2][0]_0 ,1'b1}),
        .O(\C[2]_carry__0_i_6 ),
        .S(\C[2]_carry__0_i_8 ));
  CARRY4 \C[2]_carry__0_i_1 
       (.CI(\C[2]_carry_i_1_n_0 ),
        .CO({p_0_in,\NLW_C[2]_carry__0_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\out[2][6]_0 }),
        .O({\NLW_C[2]_carry__0_i_1_O_UNCONNECTED [3],\A[2][6] [6:4]}),
        .S({1'b1,\C[2]_carry__0_4 }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \C[2]_carry__0_i_10 
       (.I0(\B[2][0] [2]),
        .I1(\B[2][0] [3]),
        .I2(\C[2]_carry__0_i_6 [0]),
        .O(\C[2]_carry__0_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    \C[2]_carry__0_i_11 
       (.I0(\B[2][0] [3]),
        .I1(\B[2][0] [2]),
        .O(\C[2]_carry_0 ));
  LUT6 #(
    .INIT(64'hAAA955555556AAAA)) 
    \C[2]_carry__0_i_1__0 
       (.I0(\C[2]_carry__0_i_3_1 ),
        .I1(temp20__0_carry_1),
        .I2(temp20__0_carry_3),
        .I3(temp20__0_carry_4),
        .I4(\C[2]_carry__0_i_3 ),
        .I5(\C[2]_carry__0_i_3_0 ),
        .O(\C[2]_carry__0_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry__0_i_2 
       (.I0(p_0_in),
        .O(\C[2]_carry__0_i_1_0 [3]));
  LUT6 #(
    .INIT(64'hFFFEFFF00001000F)) 
    \C[2]_carry__0_i_2__0 
       (.I0(temp20__0_carry_0),
        .I1(temp20__0_carry_2),
        .I2(temp20__0_carry_4),
        .I3(temp20__0_carry_3),
        .I4(temp20__0_carry_1),
        .I5(\C[2]_carry__0_i_3 ),
        .O(\B[2][0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \C[2]_carry__0_i_3__0 
       (.I0(\A[2][6] [6]),
        .I1(p_0_in),
        .O(\C[2]_carry__0_i_1_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \C[2]_carry__0_i_4__0 
       (.I0(\A[2][6] [5]),
        .I1(p_0_in),
        .O(\C[2]_carry__0_i_1_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry__0_i_5 
       (.I0(\A[2][6] [4]),
        .O(\C[2]_carry__0_i_1_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \C[2]_carry__0_i_9 
       (.I0(\C[2]_carry__0_i_6 [0]),
        .I1(\B[2][0] [3]),
        .I2(\B[2][0] [2]),
        .I3(\C[2]_carry__0_i_6 [1]),
        .O(\C[2]_carry__0_3 ));
  CARRY4 \C[2]_carry_i_1 
       (.CI(1'b0),
        .CO({\C[2]_carry_i_1_n_0 ,\NLW_C[2]_carry_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\C[2]_carry_1 ),
        .O(\A[2][6] [3:0]),
        .S(\C[2]_carry_2 ));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \C[2]_carry_i_10 
       (.I0(\C[2]_carry__0_i_6 [3]),
        .I1(\C[2]_carry__0_i_6 [0]),
        .I2(\B[2][0] [3]),
        .I3(\B[2][0] [2]),
        .I4(\C[2]_carry__0_i_6 [1]),
        .I5(\C[2]_carry__0_i_6 [2]),
        .O(\C[2]_carry__0_1 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \C[2]_carry_i_1__0 
       (.I0(temp20__0_carry_2),
        .I1(temp20__0_carry_0),
        .I2(temp20__0_carry_1),
        .O(\C[2]_carry_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry_i_2 
       (.I0(\A[2][6] [3]),
        .O(\C[2]_carry_i_1_0 [3]));
  LUT4 #(
    .INIT(16'h9993)) 
    \C[2]_carry_i_3 
       (.I0(temp20__0_carry_1),
        .I1(temp20__0_carry_3),
        .I2(temp20__0_carry_2),
        .I3(temp20__0_carry_0),
        .O(\C[2]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \C[2]_carry_i_3__0 
       (.I0(\A[2][6] [2]),
        .I1(p_0_in),
        .O(\C[2]_carry_i_1_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry_i_4 
       (.I0(\A[2][6] [1]),
        .O(\C[2]_carry_i_1_0 [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'h56A9)) 
    \C[2]_carry_i_4__0 
       (.I0(temp20__0_carry_1),
        .I1(temp20__0_carry_0),
        .I2(temp20__0_carry_2),
        .I3(\B[2][2] ),
        .O(\C[2]_carry_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry_i_5 
       (.I0(\A[2][6] [0]),
        .O(\C[2]_carry_i_1_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \C[2]_carry_i_5__0 
       (.I0(temp20__0_carry_0),
        .I1(temp20__0_carry_2),
        .O(\C[2]_carry_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \C[2]_carry_i_6 
       (.I0(temp20__0_carry_0),
        .O(\C[2]_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmp_flags[1]_INST_0_i_3 
       (.I0(\out[0]_OBUF [1]),
        .I1(\out[2]_OBUF [2]),
        .I2(\out[0]_OBUF [2]),
        .I3(\out[2]_OBUF [1]),
        .O(\out[2][5]_INST_0_i_1_0 ));
  LUT6 #(
    .INIT(64'h00FAFFFA00FACCFA)) 
    \cmp_flags[1]_INST_0_i_5 
       (.I0(\out[1][6] ),
        .I1(\out[1][6]_0 [4]),
        .I2(\out[1][5] ),
        .I3(control_operation_IBUF[0]),
        .I4(\C[0]2 ),
        .I5(\out[1][6]_0 [3]),
        .O(\A[1][6] ));
  LUT6 #(
    .INIT(64'hCCC9FFFFCCC90000)) 
    \out[0][4]_INST_0_i_1 
       (.I0(\C[0]_carry__0_0 ),
        .I1(\out[0][6] [0]),
        .I2(O[0]),
        .I3(O[1]),
        .I4(control_operation_IBUF[0]),
        .I5(\out[0][6]_0 [0]),
        .O(\out[0]_OBUF [0]));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \out[0][4]_INST_0_i_2 
       (.I0(\out[0][6] [3]),
        .I1(\out[0][6] [0]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(\out[0][6] [1]),
        .I5(\out[0][6] [2]),
        .O(\C[0]_carry__0_0 ));
  LUT6 #(
    .INIT(64'hC2D2FFFFC2D20000)) 
    \out[0][5]_INST_0_i_1 
       (.I0(\out[0][6] [3]),
        .I1(\out[0][5] ),
        .I2(\out[0][6] [1]),
        .I3(\out[0][6] [2]),
        .I4(control_operation_IBUF[0]),
        .I5(\out[0][6]_0 [1]),
        .O(\out[0]_OBUF [1]));
  LUT5 #(
    .INIT(32'hC3AAC0AA)) 
    \out[0][6]_INST_0_i_1 
       (.I0(\out[0][6]_0 [2]),
        .I1(\out[0][6]_INST_0_i_3_n_0 ),
        .I2(\out[0][6] [2]),
        .I3(control_operation_IBUF[0]),
        .I4(\out[0][6] [3]),
        .O(\out[0]_OBUF [2]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \out[0][6]_INST_0_i_3 
       (.I0(\out[0][6] [0]),
        .I1(O[1]),
        .I2(O[0]),
        .I3(\out[0][6] [1]),
        .O(\out[0][6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE1FFE0FFE100E000)) 
    \out[1][3]_INST_0_i_1 
       (.I0(\out[1][3]_INST_0_i_2_n_0 ),
        .I1(\out[1][6]_0 [0]),
        .I2(\out[1][6]_0 [1]),
        .I3(control_operation_IBUF[0]),
        .I4(\out[1][6]_0 [2]),
        .I5(\out[1][3] ),
        .O(\out[1]_OBUF [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \out[1][3]_INST_0_i_2 
       (.I0(\out[1][6]_0 [3]),
        .I1(\out[1][6]_0 [4]),
        .O(\out[1][3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \out[1][4]_INST_0_i_1 
       (.I0(\out[1][4] ),
        .I1(\out[1][6]_0 [2]),
        .I2(control_operation_IBUF[0]),
        .I3(\out[1][4]_0 ),
        .O(\out[1]_OBUF [1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \out[1][5]_INST_0_i_1 
       (.I0(\out[1][6]_0 [3]),
        .I1(\C[0]2 ),
        .I2(control_operation_IBUF[0]),
        .I3(\out[1][5] ),
        .O(\out[1]_OBUF [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \out[1][6]_INST_0_i_1 
       (.I0(\out[1][6]_0 [4]),
        .I1(\C[0]2 ),
        .I2(control_operation_IBUF[0]),
        .I3(\out[1][6] ),
        .O(\out[1]_OBUF [3]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \out[1][6]_INST_0_i_2 
       (.I0(\out[1][6]_0 [0]),
        .I1(\out[1][6]_0 [1]),
        .I2(\out[1][6]_0 [2]),
        .I3(\out[1][6]_0 [4]),
        .I4(\out[1][6]_0 [3]),
        .O(\C[0]2 ));
  LUT6 #(
    .INIT(64'hCCC9FFFFCCC90000)) 
    \out[2][4]_INST_0_i_1 
       (.I0(\C[2]_carry__0_0 ),
        .I1(\out[2][6] [0]),
        .I2(\out[2][4] [0]),
        .I3(\out[2][4] [1]),
        .I4(control_operation_IBUF[0]),
        .I5(\out[2][6]_0 [0]),
        .O(\out[2]_OBUF [0]));
  LUT6 #(
    .INIT(64'h0001555555555555)) 
    \out[2][4]_INST_0_i_2 
       (.I0(\out[2][6] [3]),
        .I1(\out[2][6] [0]),
        .I2(\out[2][4] [1]),
        .I3(\out[2][4] [0]),
        .I4(\out[2][6] [1]),
        .I5(\out[2][6] [2]),
        .O(\C[2]_carry__0_0 ));
  LUT6 #(
    .INIT(64'hC2D2FFFFC2D20000)) 
    \out[2][5]_INST_0_i_1 
       (.I0(\out[2][6] [3]),
        .I1(\out[2][5] ),
        .I2(\out[2][6] [1]),
        .I3(\out[2][6] [2]),
        .I4(control_operation_IBUF[0]),
        .I5(\out[2][6]_0 [1]),
        .O(\out[2]_OBUF [1]));
  LUT5 #(
    .INIT(32'hC3AAC0AA)) 
    \out[2][6]_INST_0_i_1 
       (.I0(\out[2][6]_0 [2]),
        .I1(\out[2][6]_INST_0_i_3_n_0 ),
        .I2(\out[2][6] [2]),
        .I3(control_operation_IBUF[0]),
        .I4(\out[2][6] [3]),
        .O(\out[2]_OBUF [2]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \out[2][6]_INST_0_i_3 
       (.I0(\out[2][6] [0]),
        .I1(\out[2][4] [1]),
        .I2(\out[2][4] [0]),
        .I3(\out[2][6] [1]),
        .O(\out[2][6]_INST_0_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp20__0_carry
       (.CI(1'b0),
        .CO({temp20__0_carry_n_0,NLW_temp20__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({temp20__0_carry_i_1__0_n_0,1'b0,1'b0,temp20__0_carry_i_2_n_0}),
        .O(NLW_temp20__0_carry_O_UNCONNECTED[3:0]),
        .S({temp20__0_carry_i_3_n_0,temp20__0_carry_i_4_n_0,temp20__0_carry_i_5__0_n_0,temp20__0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp20__0_carry__0
       (.CI(temp20__0_carry_n_0),
        .CO({NLW_temp20__0_carry__0_CO_UNCONNECTED[3:1],temp20__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp2__0_carry_i_10_0}),
        .O(NLW_temp20__0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,temp2__0_carry_i_10_1}));
  LUT1 #(
    .INIT(2'h1)) 
    temp20__0_carry__0_i_1__0
       (.I0(p_0_in),
        .O(\C[2]_carry__0_i_1_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    temp20__0_carry__0_i_2__0
       (.I0(\A[2][6] [6]),
        .I1(p_0_in),
        .O(\C[2]_carry__0_i_1_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    temp20__0_carry_i_1
       (.I0(p_0_in),
        .I1(\A[2][6] [5]),
        .O(DI[1]));
  (* HLUTNM = "lutpair0" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h7)) 
    temp20__0_carry_i_1__0
       (.I0(\B[2][2] ),
        .I1(\B[2][0]_0 ),
        .O(temp20__0_carry_i_1__0_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'h777D)) 
    temp20__0_carry_i_2
       (.I0(\B[2][2] ),
        .I1(temp20__0_carry_1),
        .I2(temp20__0_carry_0),
        .I3(temp20__0_carry_2),
        .O(temp20__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    temp20__0_carry_i_2__0
       (.I0(p_0_in),
        .I1(\A[2][6] [2]),
        .O(DI[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h69)) 
    temp20__0_carry_i_3
       (.I0(temp20__0_carry_i_1__0_n_0),
        .I1(\B[2][2] ),
        .I2(\C[2]_carry__0_i_1__0_n_0 ),
        .O(temp20__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hC9)) 
    temp20__0_carry_i_3__0
       (.I0(\A[2][6] [5]),
        .I1(\A[2][6] [6]),
        .I2(p_0_in),
        .O(S[3]));
  (* HLUTNM = "lutpair0" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    temp20__0_carry_i_4
       (.I0(\B[2][2] ),
        .I1(\B[2][0]_0 ),
        .O(temp20__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp20__0_carry_i_4__0
       (.I0(p_0_in),
        .I1(\A[2][6] [5]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    temp20__0_carry_i_5
       (.I0(\A[2][6] [4]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hFFE0001F)) 
    temp20__0_carry_i_5__0
       (.I0(temp20__0_carry_2),
        .I1(temp20__0_carry_0),
        .I2(temp20__0_carry_1),
        .I3(temp20__0_carry_3),
        .I4(temp20__0_carry_4),
        .O(temp20__0_carry_i_5__0_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hB4B4B4D2)) 
    temp20__0_carry_i_6
       (.I0(\B[2][2] ),
        .I1(temp20__0_carry_1),
        .I2(temp20__0_carry_3),
        .I3(temp20__0_carry_2),
        .I4(temp20__0_carry_0),
        .O(temp20__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    temp20__0_carry_i_6__0
       (.I0(\A[2][6] [2]),
        .I1(p_0_in),
        .I2(\A[2][6] [3]),
        .O(S[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF01FFFE00)) 
    temp20__0_carry_i_7
       (.I0(temp20__0_carry_1),
        .I1(temp20__0_carry_3),
        .I2(temp20__0_carry_4),
        .I3(\C[2]_carry__0_i_3 ),
        .I4(\C[2]_carry__0_i_3_0 ),
        .I5(\C[2]_carry__0_i_3_1 ),
        .O(\B[2][2] ));
  LUT2 #(
    .INIT(4'h8)) 
    temp2__0_carry__0_i_1
       (.I0(\out[1][4] ),
        .I1(temp2__0_carry__0_i_6_n_0),
        .O(\A[1][4] [1]));
  LUT6 #(
    .INIT(64'hFF8A0000757DFFFF)) 
    temp2__0_carry__0_i_11
       (.I0(temp2__0_carry__0_i_4_2),
        .I1(temp2__0_carry__0_i_7_n_0),
        .I2(temp2__0_carry_i_1_0),
        .I3(temp2__0_carry__0_i_4_0),
        .I4(control_operation_IBUF[1]),
        .I5(temp2__0_carry__0_i_4_1),
        .O(temp2__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hA2AA22A208008808)) 
    temp2__0_carry__0_i_2
       (.I0(\out[1][3] ),
        .I1(control_operation_IBUF[1]),
        .I2(temp2__0_carry__0_i_7_n_0),
        .I3(temp2__0_carry_i_1_0),
        .I4(\C[0]_carry_i_7_n_0 ),
        .I5(temp2__0_carry__0_i_6_0),
        .O(\A[1][4] [0]));
  LUT6 #(
    .INIT(64'h8D728D8D728D7272)) 
    temp2__0_carry__0_i_3
       (.I0(control_operation_IBUF[1]),
        .I1(temp2__0_carry__0_i_9_n_0),
        .I2(temp2__0_carry__0_i_4_0),
        .I3(temp2__0_carry__0_i_11_n_0),
        .I4(\out[1][5] ),
        .I5(\out[1][6] ),
        .O(\control_operation[1] [2]));
  LUT4 #(
    .INIT(16'h7887)) 
    temp2__0_carry__0_i_4
       (.I0(temp2__0_carry__0_i_6_n_0),
        .I1(\out[1][4] ),
        .I2(temp2__0_carry__0_i_11_n_0),
        .I3(\out[1][5] ),
        .O(\control_operation[1] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    temp2__0_carry__0_i_5
       (.I0(\A[1][4] [0]),
        .I1(temp2__0_carry__0_i_6_n_0),
        .I2(\out[1][4] ),
        .O(\control_operation[1] [0]));
  LUT6 #(
    .INIT(64'h6A5A6A6A4A5A6A4A)) 
    temp2__0_carry__0_i_6
       (.I0(temp2__0_carry__0_i_6_1),
        .I1(temp2__0_carry__0_i_6_0),
        .I2(control_operation_IBUF[1]),
        .I3(temp2__0_carry__0_i_7_n_0),
        .I4(temp2__0_carry_i_1_0),
        .I5(\C[0]_carry_i_7_n_0 ),
        .O(temp2__0_carry__0_i_6_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0115)) 
    temp2__0_carry__0_i_7
       (.I0(temp2__0_carry__0_i_9_0),
        .I1(temp2__0_carry_i_3_0),
        .I2(\B[2][2] ),
        .I3(temp20__0_carry__0_n_3),
        .O(temp2__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F042)) 
    temp2__0_carry__0_i_9
       (.I0(temp2__0_carry__0_i_7_n_0),
        .I1(temp2__0_carry_i_1_0),
        .I2(temp2__0_carry__0_i_4_1),
        .I3(temp2__0_carry__0_i_6_0),
        .I4(temp2__0_carry__0_i_6_1),
        .I5(temp2__0_carry__0_i_4_0),
        .O(temp2__0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hA80808A8)) 
    temp2__0_carry_i_1
       (.I0(temp2__0_carry_0),
        .I1(temp2__0_carry_i_1_0),
        .I2(control_operation_IBUF[1]),
        .I3(\C[0]_carry_i_7_n_0 ),
        .I4(temp2__0_carry_i_9_n_0),
        .O(\A[1][2] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h666A6AAA)) 
    temp2__0_carry_i_10
       (.I0(temp2__0_carry__0_i_9_0),
        .I1(control_operation_IBUF[1]),
        .I2(temp20__0_carry__0_n_3),
        .I3(\B[2][2] ),
        .I4(temp2__0_carry_i_3_0),
        .O(temp2__0_carry_i_10_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'h9655)) 
    temp2__0_carry_i_11
       (.I0(temp2__0_carry_i_3_0),
        .I1(temp20__0_carry__0_n_3),
        .I2(\B[2][2] ),
        .I3(control_operation_IBUF[1]),
        .O(temp2__0_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h65A65555)) 
    temp2__0_carry_i_12
       (.I0(temp2__0_carry__0_i_6_0),
        .I1(\C[0]_carry_i_7_n_0 ),
        .I2(temp2__0_carry_i_1_0),
        .I3(temp2__0_carry__0_i_7_n_0),
        .I4(control_operation_IBUF[1]),
        .O(temp2__0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0787FFFFE0780000)) 
    temp2__0_carry_i_13
       (.I0(temp2__0_carry__0_i_4_1),
        .I1(temp2__0_carry__0_i_4_0),
        .I2(temp2__0_carry__0_i_7_n_0),
        .I3(temp2__0_carry__0_i_4_2),
        .I4(control_operation_IBUF[1]),
        .I5(temp2__0_carry_i_1_0),
        .O(temp2__0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hBA20)) 
    temp2__0_carry_i_2
       (.I0(temp2__0_carry),
        .I1(CO),
        .I2(p_0_in),
        .I3(temp2__0_carry_i_10_n_0),
        .O(\A[1][2] [1]));
  LUT4 #(
    .INIT(16'hB22B)) 
    temp2__0_carry_i_3
       (.I0(temp2__0_carry_1),
        .I1(temp2__0_carry_i_11_n_0),
        .I2(CO),
        .I3(p_0_in),
        .O(\A[1][2] [0]));
  LUT3 #(
    .INIT(8'h69)) 
    temp2__0_carry_i_4
       (.I0(\A[1][2] [2]),
        .I1(temp2__0_carry_i_12_n_0),
        .I2(\out[1][3] ),
        .O(\A[1][3] [3]));
  LUT6 #(
    .INIT(64'hAE0851F751F7AE08)) 
    temp2__0_carry_i_5
       (.I0(temp2__0_carry_i_10_n_0),
        .I1(p_0_in),
        .I2(CO),
        .I3(temp2__0_carry),
        .I4(temp2__0_carry_i_13_n_0),
        .I5(temp2__0_carry_0),
        .O(\A[1][3] [2]));
  LUT5 #(
    .INIT(32'h9A65659A)) 
    temp2__0_carry_i_6
       (.I0(\A[1][2] [0]),
        .I1(CO),
        .I2(p_0_in),
        .I3(temp2__0_carry_i_10_n_0),
        .I4(temp2__0_carry),
        .O(\A[1][3] [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    temp2__0_carry_i_7
       (.I0(temp2__0_carry_1),
        .I1(temp2__0_carry_i_11_n_0),
        .I2(CO),
        .I3(p_0_in),
        .O(\A[1][3] [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hAAAAA995)) 
    temp2__0_carry_i_9
       (.I0(temp2__0_carry_i_1_0),
        .I1(temp20__0_carry__0_n_3),
        .I2(\B[2][2] ),
        .I3(temp2__0_carry_i_3_0),
        .I4(temp2__0_carry__0_i_9_0),
        .O(temp2__0_carry_i_9_n_0));
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
