`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2020 02:36:27 PM
// Design Name: 
// Module Name: swap
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


module swap(a,b,c,a1,b1,c1);
input [3:0]a,b,c;
output reg[3:0]a1,b1,c1;
reg[3:0]temp;
always@(*)
begin
/*code using addition and subtraction
 a1=a+b+c;
 b1=a1-(b+c);
 c1=a1-(b1+c);
 a1=a1-(b1+c1);end*/
 
 /*a1=a^b^c;//code using xor gate
 b1=a1^b^c;
 c1=a1^b1^c;
 a1=a1^b1^c1;*/
 temp=b;
 b1=a;
 a1=temp;
 
 end
endmodule

