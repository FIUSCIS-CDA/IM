`timescale 1ps / 1ps
module testbench();

reg[31:0] addr;
wire[31:0] data;

IM IMemory(addr, data);



initial begin
$readmemh("instmem.dat",IMemory.memory);
addr=8;  #10; 
if (data !== 32'b10001100000011110000000001000000) begin
           $display("Error: Incorrect instruction read at address 8"); $stop;
end
$display("All tests passed.");
end

endmodule