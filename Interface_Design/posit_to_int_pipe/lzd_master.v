module lzd_master(in,out);

function [31:0] log2;
    input reg [31:0] value;
       begin
       value = value -1 ;
       for(log2 = 0; value > 0 ; log2 = log2 + 1)
        value = value >> 1;
        end
    endfunction
    

parameter N = 16;
parameter S = log2(N);

input [N-1 : 0] in;
output [S-1 : 0] out;

wire vld;

lzd_sub #(.N(N) ) l1 (in,out,vld);

endmodule
