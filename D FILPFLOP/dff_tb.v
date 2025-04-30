`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025
// Design Name: 
// Module Name: d_ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for D Flip-Flop
// 
// Dependencies: d_ff.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff_tb();
reg d;
reg pre;
reg clr;
reg clk;
wire s;
wire r;

dff uut(.d(d),.pre(pre),.clr(clr),.clk(clk),.s(s),.r(r));

initial begin

clk=0;

d=0;
pre=1;
clr=0;
#100;
d=1;
pre=0;
clr=0;
#100;
d=0;
pre=0;
clr=0;
#100;
d=0;
pre=0;
clr=1;
#100;
d=0;
pre=1;
clr=0;
#100;
d=1;
pre=0;
clr=0;
#100;

end
always #50 clk=~clk;
endmodule
