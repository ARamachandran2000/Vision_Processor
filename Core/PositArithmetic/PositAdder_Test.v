`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2022 09:47:45 AM
// Design Name: 
// Module Name: PositAdder_Test
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


module PositAdder_Test();

  reg         clock;
  reg         reset;
  reg  [15:0] io_A;
  reg  [15:0] io_B;
  wire [15:0] io_S;



PositAdder16_0 dut
(
clock,
reset,
io_A,
io_B, 
io_S 
);



always
begin

clock = 0;
#5;
clock = ~clock;
#5;

end



initial
begin

reset = 0;
io_A = 0;
io_B = 0;

#15;


io_A = 16'b0111111000000000; //32
io_B = 16'b0111111000000000; //32

#10;

io_A = 16'd32520; //68
io_B = 16'd32530; //73


#10;

io_A = 16'd32520; //68
io_B = 16'd32765; //-21.25








end







endmodule
