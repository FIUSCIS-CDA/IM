`timescale 1ns / 1ps
module IM(a, d);    
   input[31:0] a;
   output wire [31:0] d;
   
   reg [31:0] memory [0:1023];
   
   assign d = memory[a >> 2];
endmodule

