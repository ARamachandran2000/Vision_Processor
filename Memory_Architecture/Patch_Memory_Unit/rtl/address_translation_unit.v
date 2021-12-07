`timescale 1ns/1ps

// This module is responsible for conversion of data from x,y indices
// to the corresponding memory address values and also additionally check if 
// requested pixels are border pixels or not.

// It also has 2 select pins which will select which pipe to read from

// Also since a patch only has a load operation, we will need to send a 
// read signal along with the address, whereas for pixel ld/st we will get that
// information from the pipe

module address_calc (
    x,
    y,
    final_address
);

    parameter LENGTH = 18; // X = 9 bits + Y= 9bits
    parameter IND = 9;
    parameter ADD_LENGTH = 14 ;

    parameter img_w = 128;  //Should be able to read this from the Memory Access Table
    parameter img_h = 128; //Should be able to read this from the Memory Access Table

    parameter subimg_h = img_h/2;
    parameter subimg_w = img_w/2;

    parameter CORE_0 = 0;
    parameter CORE_1 = 0;

    parameter NUM_STEP = 0; //Should be able to read this from the Memory Access Table

    input wire signed [IND-1 : 0] x;
    input wire signed [IND-1 : 0] y;
    output wire [ADD_LENGTH - 1 : 0] final_address;


    integer offset = 0;
    // Calculate Address Here

    assign final_address = offset + img_w*x + y + subimg_w*CORE_0 + img_w*subimg_h*CORE_1 + NUM_STEP * img_w * img_h;

endmodule




module address_translation_unit
    (
        clk,
        patch_select, //Load from BHU Pipe
        pix_select,   // Load from Pix_unit pipe

        //patch_select pipe

        patch_pipe_read_ack,
        patch_pipe_read_req,
        patch_pipe_read_data,


        //pix_select pipe

        pix_pipe_read_ack,
        pix_pipe_read_req,
        pix_pipe_read_data,

        //Output Pipe 

        pipe_write_ack,
        pipe_write_req,
        pipe_write_data

    );

    parameter PATCH_PIPE = 19; // {x + y + bp} -> Implicit write always
    parameter PIX_PIPE = 19; // {x + y + r/w}

    parameter LENGTH = 16; //Assuming 14 bit address and 1 r/w bit and 1 bp

    parameter IND = 9;

    input clk;
    input patch_select;
    input pix_select;

    output reg patch_pipe_read_req;
    input patch_pipe_read_ack;
    input [PATCH_PIPE-1 : 0] patch_pipe_read_data;

    output reg pix_pipe_read_req;
    input pix_pipe_read_ack;
    input [PIX_PIPE-1 : 0] pix_pipe_read_data;


    input pipe_write_ack;
    output reg pipe_write_req;
    output reg [LENGTH : 0] pipe_write_data;



    reg data_valid_patch ;
    reg data_sent_patch = 1 ;

    reg data_valid_pix ;
    reg data_sent_pix = 1 ;

    reg signed [IND-1:0] x = 0;
    reg signed [IND-1:0] y = 0;
    reg border_pix = 0;

    wire [LENGTH-3 : 0] final_address;

    reg  [LENGTH-3 : 0] final_address_reg;
    reg r_w = 0;

    address_calc adc (x,y,final_address);

    always @(posedge clk)
    begin
        if(patch_select == 1'b1)
        begin

            if(patch_pipe_read_ack == 1'b1 && data_sent_patch == 1) //If data is available in queue
                begin
                    patch_pipe_read_req <= 1;
                    x <= patch_pipe_read_data[PATCH_PIPE-1 : IND-1];
                    y <= patch_pipe_read_data[IND : 1];
                    border_pix <= patch_pipe_read_data[0];
                    data_valid_patch <= 1;
                end
        
                else
                begin
                    patch_pipe_read_req <= 0;
                    data_valid_patch <= 0;
                end
            

        end

        else if(pix_select == 1'b1)
        begin

            if(pix_pipe_read_ack == 1'b1 && data_sent_pix == 1) //If data is available in queue
                begin
                    pix_pipe_read_req <= 1;
                    x <= pix_pipe_read_data[PIX_PIPE-1 : IND-1];
                    y <= pix_pipe_read_data[IND : 1];
                    r_w <= pix_pipe_read_data[0];
                    data_valid_pix <= 1;
                end
        
                else
                begin
                    pix_pipe_read_req <= 0;
                    data_valid_pix <= 0;
                end
            


            

                
        end
    end


    always @(posedge clk) 
    begin
        if(patch_select == 1'b1)
        begin
            if(data_valid_patch == 1)
        begin
            
            final_address_reg = final_address; 
            pipe_write_data = {final_address_reg,1'b1,border_pix};
            pipe_write_req = 1;

            if(pipe_write_ack == 1)
            begin
                data_sent_patch <= 1;
            end

            else
                data_sent_patch <= 0;

        end
        
        else
                begin
                pipe_write_req <= 0;
                //data_sent <= 0;
               end

            

        end

        else if(pix_select == 1'b1)
        begin

            if(data_valid_pix == 1)
                begin
                
                final_address_reg = final_address; 
                pipe_write_data = {final_address_reg,r_w,1'b0};
                pipe_write_req = 1;

                if(pipe_write_ack == 1)
                begin
                    data_sent_pix <= 1;
                end

                else
                    data_sent_pix <= 0;

            end
            
            else
                            begin
                            pipe_write_req <= 0;
                            //data_sent <= 0;
                           end

                
        end
        
        
    end

endmodule