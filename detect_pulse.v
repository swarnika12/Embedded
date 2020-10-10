`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2020 12:37:53 AM
// Design Name: 
// Module Name: detect_pulse
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


module detect_pulse(clk,rst,out);
input clk,rst;
output reg out;
reg[3:0]counter1;
always@(posedge clk,posedge rst)
begin
if(rst)
begin
out<=1'b0;
counter1<=4'd0;
end
else
begin
if(counter1==10)
begin
out<=1'b1;
counter1=4'd0;
end
else
begin
counter1<=counter1+4'b1;
out<=1'b0;
end
end
end
endmodule

