`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 13:24:23
// Design Name: 
// Module Name: tristatebuffer_tb
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


module tristatebuffer_tb();
reg a;
reg b;
wire c;
tristatebuffer uut(.a(a),.b(b),.c(c));
initial begin
a=0;b=0;
#100
a=0;b=1;
#100
a=1;b=0;
#100
a=1;b=1;
end

endmodule
