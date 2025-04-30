`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 13:11:45
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
reg J;
reg K;
reg CLK;
reg CLR;
reg PR;
wire Q;
wire P;
jk uut (  .J(J), .K(K), .CLK(CLK), .CLR(CLR),  .PR(PR), .Q(Q), .P(P));
initial begin
CLK= 0;
J=0;
K=0;
CLR=1;
PR=0;
#100;
J=0;
K=1;
CLR=1;
PR=0;
#100;
J=1;
K=0;
CLR=1;
PR=0;
#100;
J=1;
K=1;
CLR=1;
PR=0;
#100;
J=0;
K=0;
#100;
J=0;
K=0;
CLR=1;
PR=1;
#100;
J=0;
K=0;
CLR=0;
PR=0;
#100;
end
always #50 CLK=~CLK; 
endmodule
