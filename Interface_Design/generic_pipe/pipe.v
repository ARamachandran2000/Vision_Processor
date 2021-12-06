`timescale 1ns/1ps



// This is a generic Pipe/ FIFO Interface between most Modules


/*


Interfaces : 

A read Pipe

A write pipe

*/



module pipe
    (
        clk,

        pipe_write_ack,
        pipe_write_req,
        pipe_write_data,

        pipe_read_ack,
        pipe_read_req,
        pipe_read_data
    );


    parameter N = 18;
    parameter DEPTH = 16;
    parameter D_S = 4;

    input clk;
    
    input pipe_write_req;
    output  pipe_write_ack;
    input [N-1 : 0] pipe_write_data;

    input pipe_read_req;
    output  pipe_read_ack;
    output  [N-1 : 0] pipe_read_data;


    reg [N-1 : 0] fifo [DEPTH - 1 : 0];
    reg [D_S-1:0] fifo_pos_front = 0;
    reg [D_S-1:0] fifo_pos_rear = 0;

    wire fifo_full;

    assign fifo_full = (((fifo_pos_rear + 1) % DEPTH) == fifo_pos_front) ? 1 : 0;

    assign pipe_write_ack = (fifo_full != 1) ? 1 : 0;  //Write when fifo is not full
    assign pipe_read_ack  = (fifo_pos_front != fifo_pos_rear) ? 1 : 0; //Read when fifo is not empty

    assign pipe_read_data = fifo[fifo_pos_front];


    always@(posedge clk)
    begin
        if (fifo_pos_front == fifo_pos_rear) //Means Fifo is empty and then reset indices
                                          begin
                                              fifo_pos_front <= 1'b0;
                                              fifo_pos_rear  <= 1'b0;                                       
                                          end
        
        if (pipe_read_req == 1 && fifo_pos_front != fifo_pos_rear)  //i.e If you have data to read and a read is requested
        begin
            fifo_pos_front <= (fifo_pos_front + 1) % DEPTH;
        end

        if(pipe_write_req == 1 && fifo_full != 1)
        begin
            fifo[fifo_pos_rear] <= pipe_write_data;
            fifo_pos_rear       <= (fifo_pos_rear + 1) % DEPTH;

        end




        
    end

endmodule