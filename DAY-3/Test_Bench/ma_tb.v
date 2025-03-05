`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 13:36:14
// Design Name: 
// Module Name: ma_tb
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


module ma_tb();
reg [2:0]inp;
wire f;
ma uut(.inp(inp),.f(f));
initial begin
for(integer i=0;i<8;i=i+1)
begin
inp=i;
#100;
end
end
endmodule
