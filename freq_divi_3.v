`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:09:29 PM
// Design Name: 
// Module Name: freq_divi_3
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


module freq_divi_3(clk,rst,out);
input clk,rst;
output out;
reg[1:0]count1,count2;
always@(posedge clk)
if(rst)
count1<=0;
else if(count1==2)
count1<=0;
else
count1<=count1+1;
always@(negedge clk)
if(rst)
count2<=0;
else if(count2==2) count2=0;
else
count2<=count2+1;
assign out=((count1==2) | (count2==2));



endmodule
