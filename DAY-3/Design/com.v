`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:30:18
// Design Name: 
// Module Name: com
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


module com(
    input [3:0]inp,
    output [3:0]op
    );
    assign op[0]=inp[0];
    assign op[1]=((!inp[1]) &(inp[0])) | ((inp[1]) &(!inp[0]));
    assign op[2]=(inp[2]&(!inp[1])&(!inp[0]))|((!inp[2])&(inp[0]))| ((inp[1])&(!inp[2]));
    assign op[3]=((!inp[3])&(inp[2])) | ((!inp[3])&(inp[0])) | ((!inp[3])&(inp[1])) |((inp[3])&(!inp[2])&(!inp[1])&(!inp[0]));
endmodule
