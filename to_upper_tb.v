`timescale 1ns/1ps
module to_upper_tb;
    wire [7:0] ascii_out;
    reg [7:0] ascii_in;
    to_Upper t1(ascii_in[7], ascii_in[6], ascii_in[5], ascii_in[4], ascii_in[3], ascii_in[2], ascii_in[1], ascii_in[0],
    ascii_out[7], ascii_out[6], ascii_out[5], ascii_out[4], ascii_out[3], ascii_out[2], ascii_out[1], ascii_out[0]);        
        initial
        begin
          
    //test cases from prompt
        ascii_in = 8'b00101000; // 
        #100
        ascii_in = 8'b01001000;
        #100
        ascii_in = 8'b10110111;
        #100
        ascii_in = 8'b10000011;
        #100
        ascii_in = 8'b01111100;
        #100
        ascii_in = 8'b00010100;
        #100
        ascii_in = 8'b11101011;
        #100
        ascii_in = 8'b01100001;
        #100
        ascii_in = 8'b01000001; 
        #100
        ascii_in = 8'b01111010;
        #100
        ascii_in = 8'b01000111;
        #100
        ascii_in = 8'b01101101;
        #100
        ascii_in = 8'b10010010;
        #100
        ascii_in = 8'b00110000;
        #100
        ascii_in = 8'b11001111;
        #100
        ascii_in = 8'b00111010;
        #100
        ascii_in = 8'b01111011;
        #100
        ascii_in = 8'b10010100;
        #100
        ascii_in = 8'b01111111;
        #100

        $finish;

    end 
    initial begin
        $dumpfile("to_upper_waves.vcd");
        $dumpvars(0, to_upper_tb);
    end
endmodule

