`timescale 1ns/1ps

// Module responsible for checking if the pixel is within the image boundary or not
// Interfaces : 2 pipes (1 : input and 1 : output)



module pixel_address_calc
    (
        x,
        y,
        border_pixel
    );
    parameter LENGTH = 18; // X = 9 bits + Y= 9bits
    parameter IND = 9;
    parameter IND_2 = 10;

    parameter img_w = 128;  //Should be able to read this from the Memory Access Table
    parameter img_h = 128; //Should be able to read this from the Memory Access Table

    parameter subimg_h = img_h/4;
    parameter subimg_w = img_w/4;

    parameter CORE_0 = 0;
    parameter CORE_1 = 0;

    input wire signed [IND-1 : 0] x;
    input wire signed [IND-1 : 0] y;

    output wire border_pixel;

    wire signed [IND_2 -1 : 0] x_img;
    wire signed [IND_2 -1 : 0] y_img;

    assign x_img = x + CORE_1 * subimg_h; //Converting Core coordinates to Image coordinates
    assign y_img = y + CORE_0 * subimg_w; //Converting Core coordinates to Image coordinates


    //Check if Pixel Indices are within the image boundary or not

    assign border_pixel = ((x<0) || (x>=img_h) || (y<0) || (y>=img_w)) ? 1 : 0 ; // 1 means border pixel and 0 means non-border 



endmodule


module border_handling_unit
    (
        clk,
        //Pipe A signals (read pipe)
        pipe_read_ack,
        pipe_read_req,
        pipe_read_data,

        //Pipe B signals (write pipe)
        pipe_write_ack,
        pipe_write_req,
        pipe_write_data
    );

    parameter LENGTH = 18; // X = 9 bits + Y= 9bits
    parameter IND = 9;
    input clk;

    input pipe_read_ack;
    output  reg pipe_read_req; 
    input [LENGTH-1:0] pipe_read_data;

    input pipe_write_ack;
    output reg pipe_write_req;
    output reg [LENGTH : 0] pipe_write_data; //Will have border pixel value too

    //assign pipe_read_req = 1'b1; //Always ready to accept data

    //Miscellaneous Signals 
    
    reg signed [IND-1:0] x = 0;
    reg signed [IND-1:0] y = 0;

    reg data_valid = 0 ;
    reg data_sent = 1 ;

    wire border_pixel;
    pixel_address_calc pix_calc (x,y, border_pixel);

    reg border_pixel_reg = 0;


    // Step 1: Read from the pipe, decode the data and send to calculate address and determine if its a 
    //border pixel or not


    //Reading Block
    always@(posedge clk)
    begin
        if(pipe_read_ack == 1'b1 && data_sent == 1) //If data is available in queue
        begin
            pipe_read_req <= 1;
            x <= pipe_read_data[LENGTH-1 : IND];
            y <= pipe_read_data[IND-1 : 0];
            data_valid <= 1;

        end

        else
        begin
            pipe_read_req <= 0;
            data_valid <= 0;
        end
        
    end


    always@(posedge clk)
    begin
        if(data_valid == 1)
        begin
            
            border_pixel_reg = border_pixel;
            pipe_write_data = {x,y,border_pixel_reg};
            pipe_write_req = 1;

            if(pipe_write_ack == 1)
            begin
                data_sent <= 1;
            end
            
            else
            begin
                data_sent <= 0;
                //pipe_write_req = 0;
            end
         

        end
       
       else
        begin
        pipe_write_req <= 0;
        //data_sent <= 0;
       end

    end









endmodule