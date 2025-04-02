`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:42:52
// Design Name: 
// Module Name: graytobin
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


module graytobin(
    input [3:0]inp,
    output [3:0]op
    );
    assign op[3]=inp[3];
    assign op[2]=op[3]^inp[2];
    assign op[1]=op[2]^inp[1];
    assign op[0]=op[1]^inp[0];
endmodule
