`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2022 01:38:54 PM
// Design Name: 
// Module Name: PositEMA_top_test
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


module PositEMA_top_test();



reg          clock;
reg          reset;
reg          io_inValid;
reg  [15:0]  io_A;
reg  [15:0]  io_B;
wire [15:0]  io_positOut;
wire         io_outValid;


PositEMA_top dut(

          clock,
          reset,
          io_inValid,
          io_A,
          io_B,
          io_positOut,
          io_outValid);
    
    
    always
    begin
    
    clock = 0;
    #5;
    clock = ~clock;
    #5;
    
    end


initial
begin

reset = 1;
io_inValid = 0;
io_A = 0;
io_B = 0;

#15;
reset = 0;
io_A = 16'd16383;
io_B = 16'd16383;


#20;

io_inValid = 1;



#100;

reset = 1;
io_inValid = 0;

#10;
reset = 0;
io_inValid = 1;
io_A = 16'd16383;
io_B = 16'd16383;





end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
