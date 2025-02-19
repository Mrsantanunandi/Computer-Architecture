`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 14:45:06
// Design Name: 
// Module Name: uni
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


module uni(
    input [3:0]a,
    input b,
    output [3:0]c
    );
    assign c=b?a:4'bzzzz;
endmodule
