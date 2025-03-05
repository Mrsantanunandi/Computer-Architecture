`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 14:54:09
// Design Name: 
// Module Name: funmin_tb
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


module funmin_tb();
reg [3:0]inp;
wire f;
funmin uut(.inp(inp),.f(f));
initial begin
for(integer i=0;i<16;i=i+1)
begin
inp=i;
#25;
end
end
endmodule
