`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 14:48:24
// Design Name: 
// Module Name: uni_tb
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


module uni_tb();
reg [3:0]a;
wire [3:0]c;
reg b;
uni uut(.a(a),.b(b),.c(c));
initial begin
for(integer i=0;i<16;i=i+1)
    begin
        a=i;
        b=0;
        #100;
        b=1;
        #100;
     end
end
endmodule
