`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 14:54:57
// Design Name: 
// Module Name: dec_fun
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
module dec3to8(
    input [2:0]s,
    output[7:0]d
);
assign d[0]=!((!s[2])&(!s[1])&(!s[0]));
assign d[1]=!((!s[2])&(!s[1])&(s[0]));
assign d[2]=!((!s[2])&(s[1])&(!s[0]));
assign d[3]=!((!s[2])&(s[1])&(s[0]));
assign d[4]=!((s[2])&(!s[1])&(!s[0]));
assign d[5]=!((s[2])&(!s[1])&(s[0]));
assign d[6]=!((s[2])&(s[1])&(!s[0]));
assign d[7]=!((s[2])&(s[1])&(s[0]));
endmodule

module dec_fun(
input [2:0]s,
output f1,
output f2,
output f3
    );
wire [7:0]o;
dec3to8 d1(.s(s),.d(o));
assign f1=!((o[2])&(o[4])&(o[7]));
assign f2=!((o[0])&(o[3]));
assign f3=!(o[0] & o[2] & o[3] & o[4] & o[7]);

endmodule
