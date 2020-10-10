`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 06:59:00 PM
// Design Name: 
// Module Name: duty33
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


module duty33(clk,out,counter);
input clk;
output out;
output reg [3:0]counter=0;
always@(posedge clk)
begin
if(counter<100)
counter<=counter+1;
else
counter<=0;
end
assign out=(counter<20)?1:0;
endmodule
