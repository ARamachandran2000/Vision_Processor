`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2022 10:12:19 AM
// Design Name: 
// Module Name: PositDivSqrt_Test
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


module PositDivSqrt_Test();

  reg         clock;
  reg         reset;
  wire        io_inReady;
  reg         io_inValid;
  reg         io_sqrtOp;
  reg  [15:0] io_A;
  reg  [15:0] io_B;
  wire        io_diviValid;
  wire        io_sqrtValid;
  wire        io_invalidExc;
  wire [15:0] io_Q;

PositDivSqrter16_0 dut
(
           clock,
         reset,
        io_inReady,
         io_inValid,
         io_sqrtOp,
   io_A,
   io_B,
        io_diviValid,
        io_sqrtValid,
        io_invalidExc,
  io_Q



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
reset = 1;
io_inValid = 0;
io_sqrtOp = 0;
io_A = 0;
io_B = 0;


#15;

reset = 0;
io_inValid = 1;
io_A = 16'd32720; //384
io_B = 16'd30720;//8

#10;

reset = 0;
io_inValid = 1;
io_A = 16'd32701; //384
io_B = 16'd30720;//8




end










endmodule
