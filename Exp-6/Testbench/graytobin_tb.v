`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:46:13
// Design Name: 
// Module Name: graytobin_tb
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


module graytobin_tb();
reg [3:0]inp;
wire [3:0]op;
graytobin uut(.inp(inp),.op(op));
initial begin
for(integer i=0;i<16;i=i+1)
begin
inp=i;
#50;
end
end
endmodule
