`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:17:02
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
reg t;
reg pre;
reg clr;
reg clk;
wire p;
wire q;

tff uut(.t(t),.pre(pre),.clr(clr),.clk(clk),.p(p),.q(q));

initial begin

clk=0;

t=0;
pre=1;
clr=0;
#100;
t=1;
pre=0;
clr=0;
#100;
t=1;
pre=0;
clr=0;
#100;
t=1;
pre=0;
clr=1;
#100;
t=0;
pre=1;
clr=0;
#100;
t=1;
pre=0;
clr=0;
#100;

end
always #50 clk=~clk;
endmodule
