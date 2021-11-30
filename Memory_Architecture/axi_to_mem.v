`timescale 1ns / 1ps


/*


Address Width = 17 bits
Data Width = 16 bits

Memory Ports : 
addr, clka, dina, douta, ena, wea





*/

module axi_to_mem(

clk,
reset,
ena,
addr,
wea,
data,
pipe_read_req,
pipe_read_ack,
pipe_read_data
);



parameter N = 17;
parameter n = 9;
parameter D = 16;


parameter S0 = 0;
parameter S1 = 1;



input clk;
input reset;
output  ena;
output  [N-1:0] addr;
output reg wea;
output  [D-1:0] data;
output reg pipe_read_req;
input pipe_read_ack;
input [D-1:0] pipe_read_data;



reg state = S0;





reg n_step = 0;

integer offset  = 0;
integer s_row = 128;
integer s_col = 1;

reg [n-1:0] x= -1;
reg [n-1:0] y = -1;

reg [D-1 :0] pipe_data=0;

assign addr = offset + x*s_row + y*s_col;
assign data = pipe_data;

assign ena = (x > 127 && y > 127)?0 : 1;



always @(posedge clk)
begin

if(reset == 1'b1)
    begin
        x = -1;
        y = -1;
        state = S0;
    
    end
else
    begin
        if(state == S0)
            begin
              wea = 0;   
              if(pipe_read_ack == 1)
              begin
                pipe_data = pipe_read_data;
                state = S1;
                pipe_read_req = 1;
                
              end
            end
       else if(state == S1)
        begin
        
            y = (y + 1) %128;
            
            if(y == 0)
                begin
                    x = (x + 1)%128;
            
                end
            
            
        
            wea = 1;
            pipe_read_req = 0;
            state= S0;
        
        end
        
    
    
    
    
    end






end






























endmodule
