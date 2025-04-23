`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2025 12:55:50
// Design Name: 
// Module Name: increment_tb
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


module increment_tb();
reg [3:0]inp;
wire [3:0]op;
increment uut(.inp(inp),.op(op));
initial begin
for(inp=0;inp<16;inp=inp+1)
begin
#50;
end
end
endmodule
