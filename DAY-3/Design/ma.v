`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 13:34:57
// Design Name: 
// Module Name: ma
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


module ma(
    input [2:0]inp,
    output f
    );
    assign f=(inp[2]&inp[0]) | (inp[0] & inp[1]) | (inp[2]&inp[1]);
endmodule
