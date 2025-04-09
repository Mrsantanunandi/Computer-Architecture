`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 14:55:54
// Design Name: 
// Module Name: addsub_tb
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


module addsub_tb();
reg [3:0]A;
reg [3:0]B;
reg m;
wire [3:0]S;
wire ca_out;
addsub uut(.A(A),.B(B),.m(m),.S(S),.ca_out(ca_out));
initial begin
A=4'b0011;
B=4'b0001;
m=0;
#25;
end
endmodule
