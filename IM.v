///////////////////////////////////////////////////////////////////////////////////
// Component: IM (Asynchronous, latency=90)
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module IM(a, d);    
   input[31:0] a;
   output wire [31:0] d;
   
   reg [31:0] memory [0:1023];
  
   reg [31:0] buffer;
   assign d = buffer;


     always @(*) begin
        #90; buffer = memory[a >> 2];
     end
endmodule

