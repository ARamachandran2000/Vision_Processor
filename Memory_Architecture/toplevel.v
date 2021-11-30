`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 12:58:02 PM
// Design Name: 
// Module Name: toplevel
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


module toplevel(

 clk,
 reset,
 rx_axis_tvalid,
rx_axis_tdata,
 rx_axis_tready

    );



    
parameter N = 8;
        parameter PS = 16;
        parameter ES = 0;
        parameter D = 8;
        parameter D_S = 3;    

        input clk;
        input reset;
        input rx_axis_tvalid;
        input [N-1:0] rx_axis_tdata;
        output rx_axis_tready;

wire [PS-1 : 0] pipe_write_data;
wire pipe_write_req;
wire  pipe_write_ack;



int_to_posit_master ipm
(clk,
reset,
rx_axis_tvalid,
rx_axis_tdata,
rx_axis_tready,

pipe_write_data,
pipe_write_req,
pipe_write_ack);


image_memory_wrapper mem
(clk,
pipe_write_req,
pipe_write_data,
pipe_write_ack,
reset);





endmodule
