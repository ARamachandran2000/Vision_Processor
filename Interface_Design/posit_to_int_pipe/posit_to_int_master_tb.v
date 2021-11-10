`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 03:39:34 PM
// Design Name: 
// Module Name: posit_to_int_master_tb
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


module posit_to_int_master_tb();


parameter N = 8;
parameter PS = 16;
parameter ES = 0;
parameter D = 8;
parameter D_S = 3;



reg clk;
reg reset;
wire tx_axis_tvalid; //
wire [N-1 : 0] tx_axis_tdata; //
reg tx_axis_tready;

reg [PS-1:0]pipe_write_data;
reg pipe_write_req;
wire pipe_write_ack; 


posit_to_int_master dut (clk,
reset,
tx_axis_tvalid,
tx_axis_tdata,
tx_axis_tready,

pipe_write_data,
pipe_write_req,
pipe_write_ack);



always
begin
    clk = 0; #5;
    clk = ~clk; #5;

end


initial
begin
tx_axis_tready = 1;
reset = 0;
pipe_write_data = 0;
pipe_write_req = 0;

#15;

pipe_write_data = 16'b0111110001000000;
pipe_write_req = 1;

#10;

pipe_write_data = 16'b0111111110011110;

#10;

pipe_write_data = 16'b0111111110011110;



end




















endmodule

