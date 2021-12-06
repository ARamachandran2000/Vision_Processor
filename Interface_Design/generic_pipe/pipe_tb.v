`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2021 05:12:15 PM
// Design Name: 
// Module Name: pipe_tb
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


module pipe_tb();


parameter LENGTH = 18;
reg clk;

wire pipe_read_ack;
reg   pipe_read_req; 
wire [LENGTH-1:0] pipe_read_data;

wire pipe_write_ack;


reg  pipe_write_req;
reg [LENGTH -1 : 0] pipe_write_data;


always
    begin
        clk = 0; #5;
        clk = ~clk; #5;
    
    end
    

pipe dut
(
clk,

        pipe_write_ack,
        pipe_write_req,
        pipe_write_data,

        pipe_read_ack,
        pipe_read_req,
        pipe_read_data




);

reg [LENGTH-1 : 0] data;


initial 
begin

#5;

pipe_write_req = 1;
pipe_write_data = 1;

#10;
pipe_write_req = 1;
pipe_write_data = 2;

#10;
pipe_write_req = 0;
pipe_write_data = 3;

#10;
pipe_write_req = 1;
pipe_write_data = 4;

#10;

pipe_read_req = 1;
data = pipe_read_data;

#10;
pipe_read_req = 0;

#10;

pipe_read_req = 0;
pipe_write_data = 20;

#20;
pipe_read_req = 1;
data = pipe_read_data;

#10;
pipe_read_req = 0;
//data = pipe_read_data;




end








endmodule
