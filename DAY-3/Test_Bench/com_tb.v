`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:45:22
// Design Name: 
// Module Name: com_tb
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


module com_tb();
reg [3:0]inp;
wire [3:0]op;
com uut(.inp(inp),.op(op));
initial begin
for(integer i=0;i<16;i=i+1)
begin
inp=i;
#25;
end
end
endmodule
