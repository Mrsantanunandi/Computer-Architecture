`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:17:43
// Design Name: 
// Module Name: dec_fun_tb
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


module dec_fun_tb();

reg [2:0]s;
wire f1;
wire f2;
wire f3;

dec_fun uut(.s(s),.f1(f1),.f2(f2),.f3(f3));
initial begin
for(integer i =0;i<8;i=i+1)
begin
s=i;
#100;
end
end
endmodule
