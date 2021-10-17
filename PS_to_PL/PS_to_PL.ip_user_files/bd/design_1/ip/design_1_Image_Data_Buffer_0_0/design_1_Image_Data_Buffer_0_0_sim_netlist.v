// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Sun Oct 17 14:26:55 2021
// Host        : akshat-HP-15-Notebook-PC running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/akshat/Documents/Horus_VPU/Basics/PS_to_PL/PS_to_PL.srcs/sources_1/bd/design_1/ip/design_1_Image_Data_Buffer_0_0/design_1_Image_Data_Buffer_0_0_sim_netlist.v
// Design      : design_1_Image_Data_Buffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Image_Data_Buffer_0_0,Image_Data_Buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Image_Data_Buffer,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module design_1_Image_Data_Buffer_0_0
   (clk,
    reset,
    rx_axis_tdata,
    rx_axis_tvalid,
    rx_axis_tready,
    o_intr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis TDATA" *) input [7:0]rx_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis TVALID" *) input rx_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis TREADY" *) output rx_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 o_intr INTERRUPT" *) output o_intr;

  wire \<const0> ;
  wire clk;
  wire rx_axis_tready;
  wire rx_axis_tvalid;

  assign o_intr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_Image_Data_Buffer_0_0_Image_Data_Buffer inst
       (.clk(clk),
        .rx_axis_tready(rx_axis_tready),
        .rx_axis_tvalid(rx_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "Image_Data_Buffer" *) 
module design_1_Image_Data_Buffer_0_0_Image_Data_Buffer
   (rx_axis_tready,
    rx_axis_tvalid,
    clk);
  output rx_axis_tready;
  input rx_axis_tvalid;
  input clk;

  wire clk;
  wire [9:0]fifo_pointer_reg__0;
  wire [9:0]p_0_in;
  wire rx_axis_tready;
  wire rx_axis_tready_i_1_n_0;
  wire rx_axis_tready_i_2_n_0;
  wire rx_axis_tvalid;

  LUT1 #(
    .INIT(2'h1)) 
    \fifo_pointer[0]_i_1 
       (.I0(fifo_pointer_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_pointer[1]_i_1 
       (.I0(fifo_pointer_reg__0[0]),
        .I1(fifo_pointer_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_pointer[2]_i_1 
       (.I0(fifo_pointer_reg__0[1]),
        .I1(fifo_pointer_reg__0[0]),
        .I2(fifo_pointer_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_pointer[3]_i_1 
       (.I0(fifo_pointer_reg__0[2]),
        .I1(fifo_pointer_reg__0[0]),
        .I2(fifo_pointer_reg__0[1]),
        .I3(fifo_pointer_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_pointer[4]_i_1 
       (.I0(fifo_pointer_reg__0[3]),
        .I1(fifo_pointer_reg__0[1]),
        .I2(fifo_pointer_reg__0[0]),
        .I3(fifo_pointer_reg__0[2]),
        .I4(fifo_pointer_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_pointer[5]_i_1 
       (.I0(fifo_pointer_reg__0[4]),
        .I1(fifo_pointer_reg__0[2]),
        .I2(fifo_pointer_reg__0[0]),
        .I3(fifo_pointer_reg__0[1]),
        .I4(fifo_pointer_reg__0[3]),
        .I5(fifo_pointer_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \fifo_pointer[6]_i_1 
       (.I0(rx_axis_tready_i_2_n_0),
        .I1(fifo_pointer_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \fifo_pointer[7]_i_1 
       (.I0(fifo_pointer_reg__0[6]),
        .I1(rx_axis_tready_i_2_n_0),
        .I2(fifo_pointer_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \fifo_pointer[8]_i_1 
       (.I0(fifo_pointer_reg__0[7]),
        .I1(rx_axis_tready_i_2_n_0),
        .I2(fifo_pointer_reg__0[6]),
        .I3(fifo_pointer_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \fifo_pointer[9]_i_1 
       (.I0(fifo_pointer_reg__0[8]),
        .I1(fifo_pointer_reg__0[6]),
        .I2(rx_axis_tready_i_2_n_0),
        .I3(fifo_pointer_reg__0[7]),
        .I4(fifo_pointer_reg__0[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[0] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[0]),
        .Q(fifo_pointer_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[1] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[1]),
        .Q(fifo_pointer_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[2] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[2]),
        .Q(fifo_pointer_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[3] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[3]),
        .Q(fifo_pointer_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[4] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[4]),
        .Q(fifo_pointer_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[5] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[5]),
        .Q(fifo_pointer_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[6] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[6]),
        .Q(fifo_pointer_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[7] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[7]),
        .Q(fifo_pointer_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[8] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[8]),
        .Q(fifo_pointer_reg__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pointer_reg[9] 
       (.C(clk),
        .CE(rx_axis_tvalid),
        .D(p_0_in[9]),
        .Q(fifo_pointer_reg__0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    rx_axis_tready_i_1
       (.I0(fifo_pointer_reg__0[8]),
        .I1(fifo_pointer_reg__0[6]),
        .I2(rx_axis_tready_i_2_n_0),
        .I3(fifo_pointer_reg__0[7]),
        .I4(fifo_pointer_reg__0[9]),
        .O(rx_axis_tready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    rx_axis_tready_i_2
       (.I0(fifo_pointer_reg__0[4]),
        .I1(fifo_pointer_reg__0[2]),
        .I2(fifo_pointer_reg__0[0]),
        .I3(fifo_pointer_reg__0[1]),
        .I4(fifo_pointer_reg__0[3]),
        .I5(fifo_pointer_reg__0[5]),
        .O(rx_axis_tready_i_2_n_0));
  FDRE rx_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_axis_tready_i_1_n_0),
        .Q(rx_axis_tready),
        .R(1'b0));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
