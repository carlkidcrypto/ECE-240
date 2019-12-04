////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: Lab_8_crazy_counter_mealy_machine_timesim.v
// /___/   /\     Timestamp: Mon Mar 25 20:14:31 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf Lab_8_crazy_counter_mealy_machine.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers false -w -dir netgen/par -ofmt verilog -sim Lab_8_crazy_counter_mealy_machine.ncd Lab_8_crazy_counter_mealy_machine_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
// Input file	: Lab_8_crazy_counter_mealy_machine.ncd
// Output file	: C:\Users\carlo\Desktop\xilinx\Lab_8\netgen\par\Lab_8_crazy_counter_mealy_machine_timesim.v
// # of Modules	: 1
// Design Name	: Lab_8_crazy_counter_mealy_machine
// Xilinx        : C:\xilinx\92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Lab_8_crazy_counter_mealy_machine (
  CLK, A, S0N, S1N, S2N
);
  input CLK;
  input A;
  output S0N;
  output S1N;
  output S2N;
  wire S0N_OBUF_0;
  wire S1N_OBUF_1;
  wire S2N_OBUF_2;
  wire A_IBUF_3;
  wire CLK_IBUF1;
  wire GLOBAL_LOGIC1;
  wire CLK_IBUF_4;
  wire XLXN_103;
  wire \S0N/O ;
  wire \S1N/O ;
  wire \S2N/O ;
  wire \A/INBUF ;
  wire \CLK/INBUF ;
  wire \CLK_IBUF_BUFG/S_INVNOT ;
  wire \CLK_IBUF_BUFG/I0_INV ;
  wire \S2N_OBUF/DXMUX_5 ;
  wire XLXN_163;
  wire \S2N_OBUF/DYMUX_6 ;
  wire S1next;
  wire \S2N_OBUF/CLKINV_7 ;
  wire \S0N_OBUF/DXMUX_8 ;
  wire S0next;
  wire XLXN_103_pack_1;
  wire \S0N_OBUF/CLKINV_9 ;
  wire GND;
  wire VCC;
  initial $sdf_annotate("netgen/par/lab_8_crazy_counter_mealy_machine_timesim.sdf");
  defparam \S0N/PAD .LOC = "PAD71";
  X_OPAD \S0N/PAD  (
    .PAD(S0N)
  );
  defparam S0N_OBUF.LOC = "PAD71";
  X_OBUF S0N_OBUF (
    .I(\S0N/O ),
    .O(S0N)
  );
  defparam \S1N/PAD .LOC = "PAD70";
  X_OPAD \S1N/PAD  (
    .PAD(S1N)
  );
  defparam S1N_OBUF.LOC = "PAD70";
  X_OBUF S1N_OBUF (
    .I(\S1N/O ),
    .O(S1N)
  );
  defparam \S2N/PAD .LOC = "PAD96";
  X_OPAD \S2N/PAD  (
    .PAD(S2N)
  );
  defparam S2N_OBUF.LOC = "PAD96";
  X_OBUF S2N_OBUF (
    .I(\S2N/O ),
    .O(S2N)
  );
  defparam \A/PAD .LOC = "IPAD73";
  X_IPAD \A/PAD  (
    .PAD(A)
  );
  defparam A_IBUF.LOC = "IPAD73";
  X_BUF A_IBUF (
    .I(A),
    .O(\A/INBUF )
  );
  defparam \A/IFF/IMUX .LOC = "IPAD73";
  X_BUF \A/IFF/IMUX  (
    .I(\A/INBUF ),
    .O(A_IBUF_3)
  );
  defparam \CLK/PAD .LOC = "IPAD12";
  X_IPAD \CLK/PAD  (
    .PAD(CLK)
  );
  defparam CLK_IBUF.LOC = "IPAD12";
  X_BUF CLK_IBUF (
    .I(CLK),
    .O(\CLK/INBUF )
  );
  defparam \CLK/IFF/IMUX .LOC = "IPAD12";
  X_BUF \CLK/IFF/IMUX  (
    .I(\CLK/INBUF ),
    .O(CLK_IBUF1)
  );
  defparam CLK_IBUF_BUFG.LOC = "BUFGMUX_X2Y10";
  X_BUFGMUX CLK_IBUF_BUFG (
    .I0(\CLK_IBUF_BUFG/I0_INV ),
    .I1(GND),
    .S(\CLK_IBUF_BUFG/S_INVNOT ),
    .O(CLK_IBUF_4)
  );
  defparam \CLK_IBUF_BUFG/SINV .LOC = "BUFGMUX_X2Y10";
  X_INV \CLK_IBUF_BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\CLK_IBUF_BUFG/S_INVNOT )
  );
  defparam \CLK_IBUF_BUFG/I0_USED .LOC = "BUFGMUX_X2Y10";
  X_BUF \CLK_IBUF_BUFG/I0_USED  (
    .I(CLK_IBUF1),
    .O(\CLK_IBUF_BUFG/I0_INV )
  );
  defparam \S2N_OBUF/DXMUX .LOC = "SLICE_X14Y20";
  X_BUF \S2N_OBUF/DXMUX  (
    .I(XLXN_163),
    .O(\S2N_OBUF/DXMUX_5 )
  );
  defparam \S2N_OBUF/DYMUX .LOC = "SLICE_X14Y20";
  X_BUF \S2N_OBUF/DYMUX  (
    .I(S1next),
    .O(\S2N_OBUF/DYMUX_6 )
  );
  defparam \S2N_OBUF/CLKINV .LOC = "SLICE_X14Y20";
  X_BUF \S2N_OBUF/CLKINV  (
    .I(CLK_IBUF_4),
    .O(\S2N_OBUF/CLKINV_7 )
  );
  defparam XLXI_51.INIT = 16'h6630;
  defparam XLXI_51.LOC = "SLICE_X14Y20";
  X_LUT4 XLXI_51 (
    .ADR0(S0N_OBUF_0),
    .ADR1(S1N_OBUF_1),
    .ADR2(S2N_OBUF_2),
    .ADR3(A_IBUF_3),
    .O(S1next)
  );
  defparam \S0N_OBUF/DXMUX .LOC = "SLICE_X14Y21";
  X_BUF \S0N_OBUF/DXMUX  (
    .I(S0next),
    .O(\S0N_OBUF/DXMUX_8 )
  );
  defparam \S0N_OBUF/YUSED .LOC = "SLICE_X14Y21";
  X_BUF \S0N_OBUF/YUSED  (
    .I(XLXN_103_pack_1),
    .O(XLXN_103)
  );
  defparam \S0N_OBUF/CLKINV .LOC = "SLICE_X14Y21";
  X_BUF \S0N_OBUF/CLKINV  (
    .I(CLK_IBUF_4),
    .O(\S0N_OBUF/CLKINV_9 )
  );
  defparam XLXI_58.INIT = 16'hC000;
  defparam XLXI_58.LOC = "SLICE_X14Y21";
  X_LUT4 XLXI_58 (
    .ADR0(VCC),
    .ADR1(CLK_IBUF1),
    .ADR2(S0N_OBUF_0),
    .ADR3(S2N_OBUF_2),
    .O(XLXN_103_pack_1)
  );
  defparam XLXI_13.LOC = "SLICE_X14Y20";
  defparam XLXI_13.INIT = 1'b0;
  X_FF XLXI_13 (
    .I(\S2N_OBUF/DYMUX_6 ),
    .CE(VCC),
    .CLK(\S2N_OBUF/CLKINV_7 ),
    .SET(GND),
    .RST(GND),
    .O(S1N_OBUF_1)
  );
  defparam XLXI_66.INIT = 16'h78C0;
  defparam XLXI_66.LOC = "SLICE_X14Y20";
  X_LUT4 XLXI_66 (
    .ADR0(S0N_OBUF_0),
    .ADR1(S1N_OBUF_1),
    .ADR2(S2N_OBUF_2),
    .ADR3(A_IBUF_3),
    .O(XLXN_163)
  );
  defparam XLXI_67.LOC = "SLICE_X14Y20";
  defparam XLXI_67.INIT = 1'b0;
  X_FF XLXI_67 (
    .I(\S2N_OBUF/DXMUX_5 ),
    .CE(VCC),
    .CLK(\S2N_OBUF/CLKINV_7 ),
    .SET(GND),
    .RST(GND),
    .O(S2N_OBUF_2)
  );
  defparam XLXI_59.INIT = 16'hF5F8;
  defparam XLXI_59.LOC = "SLICE_X14Y21";
  X_LUT4 XLXI_59 (
    .ADR0(S0N_OBUF_0),
    .ADR1(S1N_OBUF_1),
    .ADR2(XLXN_103),
    .ADR3(A_IBUF_3),
    .O(S0next)
  );
  defparam XLXI_11.LOC = "SLICE_X14Y21";
  defparam XLXI_11.INIT = 1'b0;
  X_FF XLXI_11 (
    .I(\S0N_OBUF/DXMUX_8 ),
    .CE(VCC),
    .CLK(\S0N_OBUF/CLKINV_9 ),
    .SET(GND),
    .RST(GND),
    .O(S0N_OBUF_0)
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  defparam \S0N/OUTPUT/OFF/OMUX .LOC = "PAD71";
  X_BUF \S0N/OUTPUT/OFF/OMUX  (
    .I(S0N_OBUF_0),
    .O(\S0N/O )
  );
  defparam \S1N/OUTPUT/OFF/OMUX .LOC = "PAD70";
  X_BUF \S1N/OUTPUT/OFF/OMUX  (
    .I(S1N_OBUF_1),
    .O(\S1N/O )
  );
  defparam \S2N/OUTPUT/OFF/OMUX .LOC = "PAD96";
  X_BUF \S2N/OUTPUT/OFF/OMUX  (
    .I(S2N_OBUF_2),
    .O(\S2N/O )
  );
  X_ZERO NlwBlock_Lab_8_crazy_counter_mealy_machine_GND (
    .O(GND)
  );
  X_ONE NlwBlock_Lab_8_crazy_counter_mealy_machine_VCC (
    .O(VCC)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

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

