`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2020 07:18:41 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register(clk,rst,x,out);
input clk,rst;
input x;
output out;
reg[7:0]register;
always@(posedge clk,posedge rst)
if(rst)
register=0;
else
begin
register<=register<<1;
register[0]<=x;
end
assign out=register[7];

endmodule
