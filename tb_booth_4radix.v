`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2020 01:56:03 AM
// Design Name: 
// Module Name: tb_booth_4radix
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


module tb_booth_4radix();
reg [31:0]		x, y;
wire [63:0]	p;
booth_mult t1(p, x, y);
initial
begin
x=32'd12;
y=32'd256;
end
endmodule
