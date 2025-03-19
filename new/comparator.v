`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:12:49
// Design Name: 
// Module Name: comparator
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


module comparator(
input [3:0]a,
input [3:0]b,
output reg gt,
output reg eg,
output reg ut
    );
 always@(*)begin
 if(a>b)
    begin
    gt=1;
    eg=0;
    ut=0;
    end
   else if(a==b)
     begin
        gt=0;
        eg=1;
        ut=0;
     end
    else
      begin
      gt=0;
      eg=0;
      ut=1;
      end
 end
endmodule
