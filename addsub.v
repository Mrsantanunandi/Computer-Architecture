`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 13:33:31
// Design Name: 
// Module Name: addsub
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
module fulladder1(
input a,
input b,
input cin,
output sum,
output cout
    );
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module addsub(
    input [3:0]A,
    input [3:0]B,
    input m,
    output [3:0]S,
    output ca_out
    );
    wire [3:0]bx;
    wire [2:0]carry;
    assign bx[0]=B[0]^m;
    assign bx[1]=B[1]^m;
    assign bx[2]=B[2]^m;
    assign bx[3]=B[3]^m;
    
    fulladder1 FA0(.a(A[0]),.b(bx[0]),.cin(m),.sum(S[0]),.cout(carry[0]));
    fulladder1 FA1(.a(A[1]),.b(bx[1]),.cin(m),.sum(S[1]),.cout(carry[1]));
    fulladder1 FA2(.a(A[2]),.b(bx[2]),.cin(m),.sum(S[2]),.cout(carry[2]));
    fulladder1 FA3(.a(A[3]),.b(bx[3]),.cin(m),.sum(S[3]),.cout(ca_out));
       
endmodule
