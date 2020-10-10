`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 09:52:02 AM
// Design Name: 
// Module Name: dutycycle
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


module dutycycle(clk,rst,clk1,clk2,out);
input clk,rst;
output reg clk1,clk2;
output wire out;
always@(posedge clk,posedge rst)
begin
if(rst)
clk1=0;
else
clk1=clk1+1;
end
always@(negedge clk,posedge rst)
begin
if(rst)
clk2=0;
else
clk2=clk2+1;
end
assign out=clk1&clk2;
endmodule
