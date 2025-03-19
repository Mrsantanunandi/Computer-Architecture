`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:48:00
// Design Name: 
// Module Name: pri4to3
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


module pri4to3(
input [3:0]inp,
output reg [2:0]y
    );
always@(*)begin
casex(inp)
  4'b1xxx: y=3'b011;
  4'b01xx: y=3'b010;
  4'b001x: y=3'b001;
  4'b0001: y=3'b000;
  default: y=3'b000;
  endcase
  end
  endmodule
