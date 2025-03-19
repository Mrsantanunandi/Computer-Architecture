`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:06:14
// Design Name: 
// Module Name: pri4to3_tb
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


module pri4to3_tb();
reg [3:0]inp;
wire [2:0]y;
pri4to3 uut(.inp(inp),.y(y));
initial begin
for(integer i =0;i<16;i=i+1)
begin
inp=i;
#100;
end
end
endmodule
