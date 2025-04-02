`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:52:05
// Design Name: 
// Module Name: bintobcd_tb
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


module bintobcd_tb();
reg [4:0]inp;
wire [4:0]op;
bintobcd uut(.inp(inp),.op(op));
initial begin
for(integer i=0;i<16;i=i+1)
begin
inp=i;
#50;
end
end
endmodule
