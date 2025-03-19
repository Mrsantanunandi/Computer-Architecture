`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:28:28
// Design Name: 
// Module Name: mux8to1_tb
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


module mux8to1_tb();
reg [2:0]s;
reg [7:0]d;
wire o;

max8to1 uut(.s(s),.d(d),.o(o));

initial begin
d=1001;
for(integer i =0;i<8;i=i+1)
begin
s=i;
#100;
end
end
endmodule
