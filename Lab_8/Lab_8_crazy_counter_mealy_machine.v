////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2.04i
//  \   \         Application : sch2verilog
//  /   /         Filename : Lab_8_crazy_counter_mealy_machine.vf
// /___/   /\     Timestamp : 03/19/2019 18:11:42
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\xilinx\92i\bin\nt\sch2verilog.exe -intstyle ise -family spartan3e -w "U:/ECE 241/Lab_8/Lab_8_crazy_counter_mealy_machine.sch" Lab_8_crazy_counter_mealy_machine.vf
//Design Name: Lab_8_crazy_counter_mealy_machine
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Lab_8_crazy_counter_mealy_machine(A, 
                                         CLK, 
                                         S0N, 
                                         S1N, 
                                         S2N);

    input A;
    input CLK;
   output S0N;
   output S1N;
   output S2N;
   
   wire S0next;
   wire S1next;
   wire XLXN_23;
   wire XLXN_59;
   wire XLXN_60;
   wire XLXN_61;
   wire XLXN_85;
   wire XLXN_101;
   wire XLXN_102;
   wire XLXN_103;
   wire XLXN_163;
   wire XLXN_164;
   wire XLXN_165;
   wire XLXN_166;
   wire XLXN_167;
   wire XLXN_168;
   wire XLXN_169;
   wire XLXN_171;
   wire XLXN_179;
   wire S0N_DUMMY;
   wire S1N_DUMMY;
   wire S2N_DUMMY;
   
   assign S0N = S0N_DUMMY;
   assign S1N = S1N_DUMMY;
   assign S2N = S2N_DUMMY;
   INV S0_INV (.I(S0N_DUMMY), 
               .O(XLXN_171));
   INV S1_INV (.I(S1N_DUMMY), 
               .O(XLXN_169));
   INV S2_INV (.I(S2N_DUMMY), 
               .O(XLXN_23));
   FD XLXI_11 (.C(CLK), 
               .D(S0next), 
               .Q(S0N_DUMMY));
   defparam XLXI_11.INIT = 1'b0;
   FD XLXI_13 (.C(CLK), 
               .D(S1next), 
               .Q(S1N_DUMMY));
   defparam XLXI_13.INIT = 1'b0;
   AND4 XLXI_23 (.I0(A), 
                 .I1(S0N_DUMMY), 
                 .I2(S1N_DUMMY), 
                 .I3(XLXN_23), 
                 .O(XLXN_164));
   AND3 XLXI_25 (.I0(XLXN_179), 
                 .I1(S1N_DUMMY), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_165));
   AND3 XLXI_26 (.I0(XLXN_171), 
                 .I1(S1N_DUMMY), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_166));
   AND3 XLXI_27 (.I0(A), 
                 .I1(XLXN_171), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_167));
   AND3 XLXI_46 (.I0(XLXN_179), 
                 .I1(XLXN_169), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_85));
   AND3 XLXI_47 (.I0(A), 
                 .I1(XLXN_171), 
                 .I2(S1N_DUMMY), 
                 .O(XLXN_59));
   AND3 XLXI_48 (.I0(A), 
                 .I1(S0N_DUMMY), 
                 .I2(XLXN_169), 
                 .O(XLXN_60));
   AND3 XLXI_49 (.I0(S0N_DUMMY), 
                 .I1(XLXN_169), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_61));
   OR4 XLXI_51 (.I0(XLXN_61), 
                .I1(XLXN_60), 
                .I2(XLXN_59), 
                .I3(XLXN_85), 
                .O(S1next));
   AND2 XLXI_56 (.I0(XLXN_179), 
                 .I1(XLXN_171), 
                 .O(XLXN_101));
   AND3 XLXI_57 (.I0(), 
                 .I1(S0N_DUMMY), 
                 .I2(S1N_DUMMY), 
                 .O(XLXN_102));
   AND3 XLXI_58 (.I0(CLK), 
                 .I1(S0N_DUMMY), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_103));
   OR3 XLXI_59 (.I0(XLXN_103), 
                .I1(XLXN_102), 
                .I2(XLXN_101), 
                .O(S0next));
   AND3 XLXI_60 (.I0(A), 
                 .I1(XLXN_169), 
                 .I2(S2N_DUMMY), 
                 .O(XLXN_168));
   OR5 XLXI_66 (.I0(XLXN_168), 
                .I1(XLXN_167), 
                .I2(XLXN_166), 
                .I3(XLXN_165), 
                .I4(XLXN_164), 
                .O(XLXN_163));
   FD XLXI_67 (.C(CLK), 
               .D(XLXN_163), 
               .Q(S2N_DUMMY));
   defparam XLXI_67.INIT = 1'b0;
   INV XLXI_68 (.I(A), 
                .O(XLXN_179));
endmodule
