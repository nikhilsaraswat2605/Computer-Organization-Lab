////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RippleCarryAdder_16bit_timesim.v
// /___/   /\     Timestamp: Fri Aug 26 15:35:03 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf RippleCarryAdder_16bit.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim RippleCarryAdder_16bit.ncd RippleCarryAdder_16bit_timesim.v 
// Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
// Input file	: RippleCarryAdder_16bit.ncd
// Output file	: C:\Users\Student\Downloads\Assgn_3_Grp_22\Assgn_3_Grp_22\Ass3_Grp22\Ass3_Grp22\netgen\par\RippleCarryAdder_16bit_timesim.v
// # of Modules	: 1
// Design Name	: RippleCarryAdder_16bit
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module RippleCarryAdder_16bit (
  c_in, c_out, in1, in2, sum
);
  input c_in;
  output c_out;
  input [15 : 0] in1;
  input [15 : 0] in2;
  output [15 : 0] sum;
  wire sum_11_OBUF_0;
  wire in1_14_IBUF_280;
  wire sum_12_OBUF_281;
  wire in1_15_IBUF_282;
  wire in1_0_IBUF_283;
  wire sum_13_OBUF_0;
  wire in1_1_IBUF_285;
  wire sum_0_OBUF_286;
  wire sum_14_OBUF_287;
  wire in1_2_IBUF_288;
  wire sum_1_OBUF_0;
  wire sum_15_OBUF_0;
  wire in2_10_IBUF_291;
  wire in1_3_IBUF_292;
  wire sum_2_OBUF_293;
  wire in2_11_IBUF_294;
  wire in2_0_IBUF_295;
  wire in1_4_IBUF_296;
  wire sum_3_OBUF_0;
  wire in2_12_IBUF_298;
  wire in2_1_IBUF_299;
  wire in1_5_IBUF_300;
  wire sum_4_OBUF_301;
  wire in2_13_IBUF_302;
  wire in2_2_IBUF_303;
  wire in1_6_IBUF_304;
  wire sum_5_OBUF_0;
  wire in2_14_IBUF_306;
  wire in2_3_IBUF_307;
  wire in1_7_IBUF_308;
  wire sum_6_OBUF_309;
  wire in2_15_IBUF_310;
  wire in2_4_IBUF_311;
  wire in1_8_IBUF_312;
  wire sum_7_OBUF_0;
  wire in2_5_IBUF_314;
  wire in1_9_IBUF_315;
  wire sum_8_OBUF_316;
  wire in2_6_IBUF_317;
  wire sum_9_OBUF_0;
  wire in2_7_IBUF_319;
  wire in2_8_IBUF_320;
  wire c_in_IBUF_321;
  wire in2_9_IBUF_322;
  wire sum_10_OBUF_323;
  wire in1_10_IBUF_324;
  wire \rca2/c_out_bdd10 ;
  wire in1_12_IBUF_326;
  wire \rca2/c_out_bdd6 ;
  wire \rca1/c_out_bdd6 ;
  wire \rca1/c_out_bdd2 ;
  wire carry;
  wire in1_11_IBUF_332;
  wire in1_13_IBUF_333;
  wire c_out_OBUF_334;
  wire \rca2/c_out_bdd2 ;
  wire \rca1/c_out_bdd10 ;
  wire \ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<4>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<1>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<5>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<0>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<11>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<3>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<12>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<8>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<7>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<9>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<10>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<12>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<8>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<11>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<9>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<5>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<6>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \c_in/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<4>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<13>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire sum_9_OBUF_185;
  wire sum_11_OBUF_178;
  wire sum_5_OBUF_205;
  wire sum_7_OBUF_198;
  wire sum_1_OBUF_225;
  wire sum_3_OBUF_218;
  wire sum_15_OBUF_160;
  wire sum_13_OBUF_151;
  wire \in2<14>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<3>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<2>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<6>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<7>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<15>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<13>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<1>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in2<10>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<0>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<2>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \in1<15>/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \NlwBufferSignal_sum_12_OBUF/I ;
  wire \NlwBufferSignal_sum_11_OBUF/I ;
  wire \NlwBufferSignal_sum_3_OBUF/I ;
  wire \NlwBufferSignal_sum_2_OBUF/I ;
  wire \NlwBufferSignal_sum_8_OBUF/I ;
  wire \NlwBufferSignal_c_out_OBUF/I ;
  wire \NlwBufferSignal_sum_7_OBUF/I ;
  wire \NlwBufferSignal_sum_10_OBUF/I ;
  wire \NlwBufferSignal_sum_9_OBUF/I ;
  wire \NlwBufferSignal_sum_5_OBUF/I ;
  wire \NlwBufferSignal_sum_4_OBUF/I ;
  wire \NlwBufferSignal_sum_6_OBUF/I ;
  wire \NlwBufferSignal_sum_0_OBUF/I ;
  wire \NlwBufferSignal_sum_14_OBUF/I ;
  wire \NlwBufferSignal_sum_13_OBUF/I ;
  wire \NlwBufferSignal_sum_1_OBUF/I ;
  wire \NlwBufferSignal_sum_15_OBUF/I ;
  initial $sdf_annotate("netgen/par/ripplecarryadder_16bit_timesim.sdf");
  X_OPAD #(
    .LOC ( "IOB_X1Y103" ))
  \sum<12>  (
    .PAD(sum[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y103" ))
  sum_12_OBUF (
    .I(\NlwBufferSignal_sum_12_OBUF/I ),
    .O(sum[12])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y130" ))
  \in1<14>  (
    .PAD(in1[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y130" ))
  \ProtoComp1.INTERMDISABLE_GND  (
    .O(\ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y130" ))
  in1_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_14_IBUF_280),
    .I(in1[14]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y104" ))
  \sum<11>  (
    .PAD(sum[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y104" ))
  sum_11_OBUF (
    .I(\NlwBufferSignal_sum_11_OBUF/I ),
    .O(sum[11])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y144" ))
  \in1<4>  (
    .PAD(in1[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y144" ))
  \ProtoComp1.INTERMDISABLE_GND.9  (
    .O(\in1<4>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y144" ))
  in1_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<4>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_4_IBUF_296),
    .I(in1[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y131" ))
  \in2<1>  (
    .PAD(in2[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y131" ))
  \ProtoComp1.INTERMDISABLE_GND.11  (
    .O(\in2<1>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y131" ))
  in2_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<1>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_1_IBUF_299),
    .I(in2[1]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y112" ))
  \sum<3>  (
    .PAD(sum[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y112" ))
  sum_3_OBUF (
    .I(\NlwBufferSignal_sum_3_OBUF/I ),
    .O(sum[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y143" ))
  \in1<5>  (
    .PAD(in1[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y143" ))
  \ProtoComp1.INTERMDISABLE_GND.12  (
    .O(\in1<5>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y143" ))
  in1_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<5>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_5_IBUF_300),
    .I(in1[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y134" ))
  \in2<0>  (
    .PAD(in2[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y134" ))
  \ProtoComp1.INTERMDISABLE_GND.8  (
    .O(\in2<0>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y134" ))
  in2_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<0>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_0_IBUF_295),
    .I(in2[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y120" ))
  \in2<11>  (
    .PAD(in2[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y120" ))
  \ProtoComp1.INTERMDISABLE_GND.7  (
    .O(\in2<11>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y120" ))
  in2_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<11>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_11_IBUF_294),
    .I(in2[11]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y145" ))
  \in1<3>  (
    .PAD(in1[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y145" ))
  \ProtoComp1.INTERMDISABLE_GND.6  (
    .O(\in1<3>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y145" ))
  in1_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<3>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_3_IBUF_292),
    .I(in1[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y119" ))
  \in2<12>  (
    .PAD(in2[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y119" ))
  \ProtoComp1.INTERMDISABLE_GND.10  (
    .O(\in2<12>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y119" ))
  in2_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<12>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_12_IBUF_298),
    .I(in2[12]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y113" ))
  \sum<2>  (
    .PAD(sum[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y113" ))
  sum_2_OBUF (
    .I(\NlwBufferSignal_sum_2_OBUF/I ),
    .O(sum[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y123" ))
  \in2<8>  (
    .PAD(in2[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y123" ))
  \ProtoComp1.INTERMDISABLE_GND.26  (
    .O(\in2<8>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y123" ))
  in2_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<8>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_8_IBUF_320),
    .I(in2[8]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y107" ))
  \sum<8>  (
    .PAD(sum[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y107" ))
  sum_8_OBUF (
    .I(\NlwBufferSignal_sum_8_OBUF/I ),
    .O(sum[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y124" ))
  \in2<7>  (
    .PAD(in2[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y124" ))
  \ProtoComp1.INTERMDISABLE_GND.25  (
    .O(\in2<7>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y124" ))
  in2_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<7>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_7_IBUF_319),
    .I(in2[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y122" ))
  \in2<9>  (
    .PAD(in2[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y122" ))
  \ProtoComp1.INTERMDISABLE_GND.28  (
    .O(\in2<9>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y122" ))
  in2_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<9>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_9_IBUF_322),
    .I(in2[9]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y128" ))
  c_out_164 (
    .PAD(c_out)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y128" ))
  c_out_OBUF (
    .I(\NlwBufferSignal_c_out_OBUF/I ),
    .O(c_out)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y138" ))
  \in1<10>  (
    .PAD(in1[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y138" ))
  \ProtoComp1.INTERMDISABLE_GND.29  (
    .O(\in1<10>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y138" ))
  in1_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<10>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_10_IBUF_324),
    .I(in1[10]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y136" ))
  \in1<12>  (
    .PAD(in1[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y136" ))
  \ProtoComp1.INTERMDISABLE_GND.31  (
    .O(\in1<12>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y136" ))
  in1_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<12>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_12_IBUF_326),
    .I(in1[12]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y140" ))
  \in1<8>  (
    .PAD(in1[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y140" ))
  \ProtoComp1.INTERMDISABLE_GND.21  (
    .O(\in1<8>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y140" ))
  in1_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<8>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_8_IBUF_312),
    .I(in1[8]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y108" ))
  \sum<7>  (
    .PAD(sum[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y108" ))
  sum_7_OBUF (
    .I(\NlwBufferSignal_sum_7_OBUF/I ),
    .O(sum[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y137" ))
  \in1<11>  (
    .PAD(in1[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y137" ))
  \ProtoComp1.INTERMDISABLE_GND.30  (
    .O(\in1<11>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y137" ))
  in1_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<11>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_11_IBUF_332),
    .I(in1[11]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y139" ))
  \in1<9>  (
    .PAD(in1[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y139" ))
  \ProtoComp1.INTERMDISABLE_GND.23  (
    .O(\in1<9>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y139" ))
  in1_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<9>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_9_IBUF_315),
    .I(in1[9]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y105" ))
  \sum<10>  (
    .PAD(sum[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y105" ))
  sum_10_OBUF (
    .I(\NlwBufferSignal_sum_10_OBUF/I ),
    .O(sum[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y106" ))
  \sum<9>  (
    .PAD(sum[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y106" ))
  sum_9_OBUF (
    .I(\NlwBufferSignal_sum_9_OBUF/I ),
    .O(sum[9])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y126" ))
  \in2<5>  (
    .PAD(in2[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y126" ))
  \ProtoComp1.INTERMDISABLE_GND.22  (
    .O(\in2<5>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y126" ))
  in2_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<5>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_5_IBUF_314),
    .I(in2[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y125" ))
  \in2<6>  (
    .PAD(in2[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y125" ))
  \ProtoComp1.INTERMDISABLE_GND.24  (
    .O(\in2<6>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y125" ))
  in2_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<6>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_6_IBUF_317),
    .I(in2[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y149" ))
  c_in_157 (
    .PAD(c_in)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y149" ))
  \ProtoComp1.INTERMDISABLE_GND.27  (
    .O(\c_in/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y149" ))
  c_in_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\c_in/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(c_in_IBUF_321),
    .I(c_in),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y127" ))
  \in2<4>  (
    .PAD(in2[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y127" ))
  \ProtoComp1.INTERMDISABLE_GND.20  (
    .O(\in2<4>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y127" ))
  in2_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<4>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_4_IBUF_311),
    .I(in2[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y135" ))
  \in1<13>  (
    .PAD(in1[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y135" ))
  \ProtoComp1.INTERMDISABLE_GND.32  (
    .O(\in1<13>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y135" ))
  in1_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<13>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_13_IBUF_333),
    .I(in1[13]),
    .TPWRGT(1'b1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y119" ),
    .INIT ( 64'h9999999966666666 ))
  \rca2/sum<4>1  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(in1_12_IBUF_326),
    .ADR1(in2_12_IBUF_298),
    .ADR5(\rca2/c_out_bdd6 ),
    .O(sum_12_OBUF_281)
  );
  X_BUF   \sum_8_OBUF/sum_8_OBUF_BMUX_Delay  (
    .I(sum_11_OBUF_178),
    .O(sum_11_OBUF_0)
  );
  X_BUF   \sum_8_OBUF/sum_8_OBUF_AMUX_Delay  (
    .I(sum_9_OBUF_185),
    .O(sum_9_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y121" ),
    .INIT ( 64'hAA55AA5555AA55AA ))
  \rca2/sum<0>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(carry),
    .ADR3(in1_8_IBUF_312),
    .ADR0(in2_8_IBUF_320),
    .O(sum_8_OBUF_316)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y121" ),
    .INIT ( 64'hFCE8E8C0FCE8E8C0 ))
  \rca2/c_out41  (
    .ADR1(in2_11_IBUF_294),
    .ADR0(in1_10_IBUF_324),
    .ADR3(in2_10_IBUF_291),
    .ADR4(\rca2/c_out_bdd10 ),
    .ADR2(in1_11_IBUF_332),
    .ADR5(1'b1),
    .O(\rca2/c_out_bdd6 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y121" ),
    .INIT ( 32'hC396963C ))
  \rca2/sum<3>1  (
    .ADR1(in2_11_IBUF_294),
    .ADR0(in1_10_IBUF_324),
    .ADR3(in2_10_IBUF_291),
    .ADR4(\rca2/c_out_bdd10 ),
    .ADR2(in1_11_IBUF_332),
    .O(sum_11_OBUF_178)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y121" ),
    .INIT ( 64'hFEA8EA80FEA8EA80 ))
  \rca2/c_out61  (
    .ADR0(in2_9_IBUF_322),
    .ADR2(in1_8_IBUF_312),
    .ADR4(in2_8_IBUF_320),
    .ADR1(carry),
    .ADR3(in1_9_IBUF_315),
    .ADR5(1'b1),
    .O(\rca2/c_out_bdd10 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y121" ),
    .INIT ( 32'hA956956A ))
  \rca2/sum<1>1  (
    .ADR0(in2_9_IBUF_322),
    .ADR2(in1_8_IBUF_312),
    .ADR4(in2_8_IBUF_320),
    .ADR1(carry),
    .ADR3(in1_9_IBUF_315),
    .O(sum_9_OBUF_185)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y130" ),
    .INIT ( 64'h9696969696969696 ))
  \rca1/sum<0>1  (
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(c_in_IBUF_321),
    .ADR1(in1_0_IBUF_283),
    .ADR0(in2_0_IBUF_295),
    .O(sum_0_OBUF_286)
  );
  X_BUF   \sum_4_OBUF/sum_4_OBUF_BMUX_Delay  (
    .I(sum_7_OBUF_198),
    .O(sum_7_OBUF_0)
  );
  X_BUF   \sum_4_OBUF/sum_4_OBUF_AMUX_Delay  (
    .I(sum_5_OBUF_205),
    .O(sum_5_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y125" ),
    .INIT ( 64'hAAAA55555555AAAA ))
  \rca1/sum<4>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(in1_4_IBUF_296),
    .ADR0(in2_4_IBUF_311),
    .ADR5(\rca1/c_out_bdd6 ),
    .O(sum_4_OBUF_301)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y125" ),
    .INIT ( 64'hFAE8E8A0FAE8E8A0 ))
  \rca1/c_out1  (
    .ADR2(in2_7_IBUF_319),
    .ADR1(in1_6_IBUF_304),
    .ADR3(in2_6_IBUF_317),
    .ADR4(\rca1/c_out_bdd2 ),
    .ADR0(in1_7_IBUF_308),
    .ADR5(1'b1),
    .O(carry)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y125" ),
    .INIT ( 32'hA596965A ))
  \rca1/sum<7>1  (
    .ADR2(in2_7_IBUF_319),
    .ADR1(in1_6_IBUF_304),
    .ADR3(in2_6_IBUF_317),
    .ADR4(\rca1/c_out_bdd2 ),
    .ADR0(in1_7_IBUF_308),
    .O(sum_7_OBUF_198)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y125" ),
    .INIT ( 64'hFAE8E8A0FAE8E8A0 ))
  \rca1/c_out21  (
    .ADR0(in2_5_IBUF_314),
    .ADR3(in1_4_IBUF_296),
    .ADR4(in2_4_IBUF_311),
    .ADR1(\rca1/c_out_bdd6 ),
    .ADR2(in1_5_IBUF_300),
    .ADR5(1'b1),
    .O(\rca1/c_out_bdd2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y125" ),
    .INIT ( 32'hA596965A ))
  \rca1/sum<5>1  (
    .ADR0(in2_5_IBUF_314),
    .ADR3(in1_4_IBUF_296),
    .ADR4(in2_4_IBUF_311),
    .ADR1(\rca1/c_out_bdd6 ),
    .ADR2(in1_5_IBUF_300),
    .O(sum_5_OBUF_205)
  );
  X_BUF   \sum_2_OBUF/sum_2_OBUF_BMUX_Delay  (
    .I(sum_3_OBUF_218),
    .O(sum_3_OBUF_0)
  );
  X_BUF   \sum_2_OBUF/sum_2_OBUF_AMUX_Delay  (
    .I(sum_1_OBUF_225),
    .O(sum_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y130" ),
    .INIT ( 64'hAA5555AAAA5555AA ))
  \rca1/sum<2>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(in1_2_IBUF_288),
    .ADR4(in2_2_IBUF_303),
    .ADR0(\rca1/c_out_bdd10 ),
    .O(sum_2_OBUF_293)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y130" ),
    .INIT ( 64'hFEC8EC80FEC8EC80 ))
  \rca1/c_out41  (
    .ADR3(in2_3_IBUF_307),
    .ADR0(in1_2_IBUF_288),
    .ADR2(in2_2_IBUF_303),
    .ADR4(\rca1/c_out_bdd10 ),
    .ADR1(in1_3_IBUF_292),
    .ADR5(1'b1),
    .O(\rca1/c_out_bdd6 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y130" ),
    .INIT ( 32'hC936936C ))
  \rca1/sum<3>1  (
    .ADR3(in2_3_IBUF_307),
    .ADR0(in1_2_IBUF_288),
    .ADR2(in2_2_IBUF_303),
    .ADR4(\rca1/c_out_bdd10 ),
    .ADR1(in1_3_IBUF_292),
    .O(sum_3_OBUF_218)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y130" ),
    .INIT ( 64'hFAE8E8A0FAE8E8A0 ))
  \rca1/c_out61  (
    .ADR0(in2_1_IBUF_299),
    .ADR3(in1_0_IBUF_283),
    .ADR1(in2_0_IBUF_295),
    .ADR4(c_in_IBUF_321),
    .ADR2(in1_1_IBUF_285),
    .ADR5(1'b1),
    .O(\rca1/c_out_bdd10 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y130" ),
    .INIT ( 32'hA596965A ))
  \rca1/sum<1>1  (
    .ADR0(in2_1_IBUF_299),
    .ADR3(in1_0_IBUF_283),
    .ADR1(in2_0_IBUF_295),
    .ADR4(c_in_IBUF_321),
    .ADR2(in1_1_IBUF_285),
    .O(sum_1_OBUF_225)
  );
  X_BUF   \rca2/c_out_bdd2/rca2/c_out_bdd2_DMUX_Delay  (
    .I(sum_13_OBUF_151),
    .O(sum_13_OBUF_0)
  );
  X_BUF   \rca2/c_out_bdd2/rca2/c_out_bdd2_AMUX_Delay  (
    .I(sum_15_OBUF_160),
    .O(sum_15_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y119" ),
    .INIT ( 64'hFEE0F880FEE0F880 ))
  \rca2/c_out21  (
    .ADR2(in2_13_IBUF_302),
    .ADR4(in1_12_IBUF_326),
    .ADR0(in2_12_IBUF_298),
    .ADR1(\rca2/c_out_bdd6 ),
    .ADR3(in1_13_IBUF_333),
    .ADR5(1'b1),
    .O(\rca2/c_out_bdd2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y119" ),
    .INIT ( 32'hE11E8778 ))
  \rca2/sum<5>1  (
    .ADR2(in2_13_IBUF_302),
    .ADR4(in1_12_IBUF_326),
    .ADR0(in2_12_IBUF_298),
    .ADR1(\rca2/c_out_bdd6 ),
    .ADR3(in1_13_IBUF_333),
    .O(sum_13_OBUF_151)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y119" ),
    .INIT ( 64'hAAAA55555555AAAA ))
  \rca2/sum<6>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(in1_14_IBUF_280),
    .ADR5(in2_14_IBUF_306),
    .ADR4(\rca2/c_out_bdd2 ),
    .O(sum_14_OBUF_287)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y119" ),
    .INIT ( 64'hFFE8E800FFE8E800 ))
  \rca2/c_out1  (
    .ADR4(in2_15_IBUF_310),
    .ADR2(in1_14_IBUF_280),
    .ADR1(in2_14_IBUF_306),
    .ADR0(\rca2/c_out_bdd2 ),
    .ADR3(in1_15_IBUF_282),
    .ADR5(1'b1),
    .O(c_out_OBUF_334)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y119" ),
    .INIT ( 32'hE81717E8 ))
  \rca2/sum<7>1  (
    .ADR4(in2_15_IBUF_310),
    .ADR2(in1_14_IBUF_280),
    .ADR1(in2_14_IBUF_306),
    .ADR0(\rca2/c_out_bdd2 ),
    .ADR3(in1_15_IBUF_282),
    .O(sum_15_OBUF_160)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y125" ),
    .INIT ( 64'hC3C3C3C33C3C3C3C ))
  \rca1/sum<6>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(in1_6_IBUF_304),
    .ADR1(in2_6_IBUF_317),
    .ADR2(\rca1/c_out_bdd2 ),
    .O(sum_6_OBUF_309)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X88Y121" ),
    .INIT ( 64'h9696969696969696 ))
  \rca2/sum<2>1  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR0(in1_10_IBUF_324),
    .ADR1(in2_10_IBUF_291),
    .ADR2(\rca2/c_out_bdd10 ),
    .O(sum_10_OBUF_323)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y110" ))
  \sum<5>  (
    .PAD(sum[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y110" ))
  sum_5_OBUF (
    .I(\NlwBufferSignal_sum_5_OBUF/I ),
    .O(sum[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y111" ))
  \sum<4>  (
    .PAD(sum[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y111" ))
  sum_4_OBUF (
    .I(\NlwBufferSignal_sum_4_OBUF/I ),
    .O(sum[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y117" ))
  \in2<14>  (
    .PAD(in2[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y117" ))
  \ProtoComp1.INTERMDISABLE_GND.16  (
    .O(\in2<14>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y117" ))
  in2_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<14>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_14_IBUF_306),
    .I(in2[14]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y132" ))
  \in2<3>  (
    .PAD(in2[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y132" ))
  \ProtoComp1.INTERMDISABLE_GND.17  (
    .O(\in2<3>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y132" ))
  in2_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<3>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_3_IBUF_307),
    .I(in2[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y133" ))
  \in2<2>  (
    .PAD(in2[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y133" ))
  \ProtoComp1.INTERMDISABLE_GND.14  (
    .O(\in2<2>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y133" ))
  in2_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<2>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_2_IBUF_303),
    .I(in2[2]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y109" ))
  \sum<6>  (
    .PAD(sum[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y109" ))
  sum_6_OBUF (
    .I(\NlwBufferSignal_sum_6_OBUF/I ),
    .O(sum[6])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y142" ))
  \in1<6>  (
    .PAD(in1[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y142" ))
  \ProtoComp1.INTERMDISABLE_GND.15  (
    .O(\in1<6>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y142" ))
  in1_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<6>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_6_IBUF_304),
    .I(in1[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y141" ))
  \in1<7>  (
    .PAD(in1[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y141" ))
  \ProtoComp1.INTERMDISABLE_GND.18  (
    .O(\in1<7>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y141" ))
  in1_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<7>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_7_IBUF_308),
    .I(in1[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y116" ))
  \in2<15>  (
    .PAD(in2[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y116" ))
  \ProtoComp1.INTERMDISABLE_GND.19  (
    .O(\in2<15>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y116" ))
  in2_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<15>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_15_IBUF_310),
    .I(in2[15]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y118" ))
  \in2<13>  (
    .PAD(in2[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y118" ))
  \ProtoComp1.INTERMDISABLE_GND.13  (
    .O(\in2<13>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y118" ))
  in2_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<13>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_13_IBUF_302),
    .I(in2[13]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y147" ))
  \in1<1>  (
    .PAD(in1[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y147" ))
  \ProtoComp1.INTERMDISABLE_GND.3  (
    .O(\in1<1>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y147" ))
  in1_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<1>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_1_IBUF_285),
    .I(in1[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y121" ))
  \in2<10>  (
    .PAD(in2[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y121" ))
  \ProtoComp1.INTERMDISABLE_GND.5  (
    .O(\in2<10>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y121" ))
  in2_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<10>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in2_10_IBUF_291),
    .I(in2[10]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y148" ))
  \in1<0>  (
    .PAD(in1[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y148" ))
  \ProtoComp1.INTERMDISABLE_GND.2  (
    .O(\in1<0>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y148" ))
  in1_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<0>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_0_IBUF_283),
    .I(in1[0]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y115" ))
  \sum<0>  (
    .PAD(sum[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y115" ))
  sum_0_OBUF (
    .I(\NlwBufferSignal_sum_0_OBUF/I ),
    .O(sum[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y101" ))
  \sum<14>  (
    .PAD(sum[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y101" ))
  sum_14_OBUF (
    .I(\NlwBufferSignal_sum_14_OBUF/I ),
    .O(sum[14])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y146" ))
  \in1<2>  (
    .PAD(in1[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y146" ))
  \ProtoComp1.INTERMDISABLE_GND.4  (
    .O(\in1<2>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y146" ))
  in1_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<2>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_2_IBUF_288),
    .I(in1[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y129" ))
  \in1<15>  (
    .PAD(in1[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y129" ))
  \ProtoComp1.INTERMDISABLE_GND.1  (
    .O(\in1<15>/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y129" ))
  in1_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<15>/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(in1_15_IBUF_282),
    .I(in1[15]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y102" ))
  \sum<13>  (
    .PAD(sum[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y102" ))
  sum_13_OBUF (
    .I(\NlwBufferSignal_sum_13_OBUF/I ),
    .O(sum[13])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y114" ))
  \sum<1>  (
    .PAD(sum[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y114" ))
  sum_1_OBUF (
    .I(\NlwBufferSignal_sum_1_OBUF/I ),
    .O(sum[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y100" ))
  \sum<15>  (
    .PAD(sum[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y100" ))
  sum_15_OBUF (
    .I(\NlwBufferSignal_sum_15_OBUF/I ),
    .O(sum[15])
  );
  X_BUF   \NlwBufferBlock_sum_12_OBUF/I  (
    .I(sum_12_OBUF_281),
    .O(\NlwBufferSignal_sum_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_11_OBUF/I  (
    .I(sum_11_OBUF_0),
    .O(\NlwBufferSignal_sum_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_3_OBUF/I  (
    .I(sum_3_OBUF_0),
    .O(\NlwBufferSignal_sum_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_2_OBUF/I  (
    .I(sum_2_OBUF_293),
    .O(\NlwBufferSignal_sum_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_8_OBUF/I  (
    .I(sum_8_OBUF_316),
    .O(\NlwBufferSignal_sum_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_c_out_OBUF/I  (
    .I(c_out_OBUF_334),
    .O(\NlwBufferSignal_c_out_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_7_OBUF/I  (
    .I(sum_7_OBUF_0),
    .O(\NlwBufferSignal_sum_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_10_OBUF/I  (
    .I(sum_10_OBUF_323),
    .O(\NlwBufferSignal_sum_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_9_OBUF/I  (
    .I(sum_9_OBUF_0),
    .O(\NlwBufferSignal_sum_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_5_OBUF/I  (
    .I(sum_5_OBUF_0),
    .O(\NlwBufferSignal_sum_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_4_OBUF/I  (
    .I(sum_4_OBUF_301),
    .O(\NlwBufferSignal_sum_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_6_OBUF/I  (
    .I(sum_6_OBUF_309),
    .O(\NlwBufferSignal_sum_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_0_OBUF/I  (
    .I(sum_0_OBUF_286),
    .O(\NlwBufferSignal_sum_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_14_OBUF/I  (
    .I(sum_14_OBUF_287),
    .O(\NlwBufferSignal_sum_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_13_OBUF/I  (
    .I(sum_13_OBUF_0),
    .O(\NlwBufferSignal_sum_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_1_OBUF/I  (
    .I(sum_1_OBUF_0),
    .O(\NlwBufferSignal_sum_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_15_OBUF/I  (
    .I(sum_15_OBUF_0),
    .O(\NlwBufferSignal_sum_15_OBUF/I )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

