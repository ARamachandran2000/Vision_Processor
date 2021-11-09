`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 06:30:37 PM
// Design Name: 
// Module Name: posit_to_int_converter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module posit_to_int_converter(
in,
out
);

parameter N = 16;
parameter N_INT = 8;
parameter S = 4;
parameter S_INT = 3;

input [N-1 : 0] in;
output [N_INT-1:0] out;


wire [S-1:0] n;
wire set_zero;
wire set_max;
wire [N-2:0] intm_posit;
wire [N-2:0] shifted_data;

wire [N_INT-1 : 0] intm_res;
wire [N_INT-1:0] final_res;

wire [S_INT-1 : 0] n_right;

lzd_master #(.N(N)) lzd ({intm_posit,1'b0},n);

shift_left #(.N(N-1),.S(S)) left_shifter(intm_posit,n,shifted_data);

shift_right #(.N(N_INT),.S(S_INT)) right_shifter(intm_res,n_right,final_res);



//Step 2
assign set_zero = ((in == 0) || (in[N-1] == 1) )?1:0;

//Step 3
assign intm_posit = in[N-2:0];

//Step 5
assign set_max = (n >= 9)?1:0;

//Step 7

assign intm_res = {1'b1,shifted_data[13:7]};

//Step 8 _> Will be done above

assign n_right = (8-n);

assign out = (set_zero ? 0 : (set_max ? 255:final_res));

















endmodule
