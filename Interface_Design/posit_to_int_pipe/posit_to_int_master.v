`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2021 03:04:14 PM
// Design Name: 
// Module Name: posit_to_int_master
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


module posit_to_int_master(

clk,
reset,
tx_axis_tvalid,
tx_axis_tdata,
tx_axis_tready,

pipe_write_data,
pipe_write_req,
pipe_write_ack

    );
    


parameter N = 8;
parameter PS = 16;
parameter ES = 0;
parameter D = 256;
parameter D_S = 8; //log2(D)



input clk;
input reset;
output reg tx_axis_tvalid;
output reg [N-1:0] tx_axis_tdata;
input tx_axis_tready;
   
input  [PS-1 : 0] pipe_write_data;
input  pipe_write_req;
output   pipe_write_ack;




reg [PS-1 : 0] fifo [D - 1 : 0];
reg [D_S-1:0] fifo_pos_front = 0;
reg [D_S-1:0] fifo_pos_rear = 0;



reg data_valid = 0;
reg reset_reg = 0;
reg fifo_full = 0;
    
  
reg [PS-1:0] convert_data; 
wire [N-1:0] final_data;


assign pipe_write_ack = 1;


posit_to_int_converter ip1 (convert_data,final_data);


//////////////////////////////////////Reset Logic////////////////////////////////////////////
    
    always@(posedge clk)
    begin
        
        if (reset == 1'b1)
        begin
            reset_reg      <= 1;
        end
        
        else
        begin
        reset_reg      <= 0; 
    end
    
    end


    ///////////////////////////////////////////POSIT Decoder and FIFO Reading/////////////////////////////////////////////////
always@(posedge clk)
       begin
            
       if (reset_reg == 1'b1)
               begin
                   data_valid <= 0;
                
               end
       
       else
       begin
       
       
    if(pipe_write_req == 1)
        begin
            convert_data <= pipe_write_data;
            data_valid <= 1;
         
        end            
       
        
   else
    begin
        data_valid <= 0;
    
    
    end
       
     end  
       end



///////////////////////////////////////Send Data on AXI-S ////////////////////////////////////////////////////

   always@(posedge clk)
   begin
        
       if (reset_reg == 1'b1)
               begin
                   fifo_pos_front <= 1'b0; // Reset Position to 0
                   fifo_pos_rear  <= 1'b0;
                   fifo_full      <= 1'b0;
                
               end

       else
        begin
        
            if (data_valid == 1'b1)
                           begin
                           if (fifo_full != 1'b1)  // If FIFO is full then the packets will be dropped
                           begin
                           if (((fifo_pos_rear + 1) % D) == fifo_pos_front)
                                  fifo_full <= 1'b1;
                                       else
                                       begin
                                             
                                           fifo[fifo_pos_rear] <= final_data;//Integer Data will Come here;
                                           fifo_pos_rear       <= (fifo_pos_rear + 1) % D;
                                       end
                           
                           
                           
                           end
                           end
           if (fifo_pos_rear != fifo_pos_front)  //Indicates that Data is available to send
          begin
              tx_axis_tvalid  <= 1'b1;
              tx_axis_tdata <= fifo[fifo_pos_front];
              
              if (tx_axis_tready == 1'b1)
              begin
                  fifo_pos_front <= (fifo_pos_front + 1) % D;
                  
                  if (fifo_full == 1'b1)
                      fifo_full <= 1'b0;
                  
                  if (fifo_pos_front == fifo_pos_rear) //Means Fifo is empty
                  begin
                      fifo_pos_front <= 1'b0;
                      fifo_pos_rear  <= 1'b0;
                      fifo_full      <= 1'b0;
                      tx_axis_tvalid <= 1'b0;
                      
                  end
              end
          end
       
        
        end




end










endmodule

