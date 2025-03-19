`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:14:04
// Design Name: 
// Module Name: max8to1
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
module max4to1(
    input [1:0]s,
    input [3:0]d,
    output o
);

assign o = (((!s[1])&(!s[0]))&(d[0])) | (((!s[1])&(s[0]))&(d[1])) | (((s[1])&(!s[0]))&(d[2]))  | (((s[1])&(s[0]))&(d[3]));

endmodule

module max8to1(
    input [2:0]s,
    input [7:0]d,
    output o
);
wire o1,o2;

max4to1 mux1(.d(d[3:0]),.s(s[1:0]),.o(o1));
max4to1 mux2(.d(d[7:4]),.s(s[1:0]),.o(o2));
assign o=s[2]==1?o2:o1;

endmodule
