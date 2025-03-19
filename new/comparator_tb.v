`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:21:22
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [3:0]a;
reg [3:0]b;
wire gt;
wire eg;
wire ut;
comparator uut(.a(a),.b(b),.gt(gt),.eg(eg),.ut(ut));
initial begin
for(integer i =0;i<16;i=i+1)
begin
for(integer j=0;j<16;j=j+1)
begin
a=i;
b=j;
#25;
end
end
end
endmodule
