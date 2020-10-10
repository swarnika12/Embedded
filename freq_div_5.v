`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 04:56:28 PM
// Design Name: 
// Module Name: freq_div_5
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


module freq_div_5(clk,rst,out);
input clk,rst;
output out;
parameter width =3;
parameter N=5;
reg[width-1:0]count1,count2;
always@(posedge clk)
if(rst)
count1<=0;
else if(count1 ==N-1)count1<=0;
else count1<=count1+1;

always@(negedge clk)
if(rst)
count2<=0;
else if(count2==N-1)count2<=0;
else
count2<=count2+1;
assign out=((count1>(N>>1))|(count2>(N>>1)));


endmodule
