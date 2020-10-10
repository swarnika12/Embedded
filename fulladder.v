`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2019 07:01:20 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(a,b,c_in,s,c_out);
input a,b,c_in;
output s,c_out;
wire c1,c2,c3;

xor(c1,a,b);
and(c2,a,b);
xor(s,c1,c_in);
and(c3,c1,c_in);

xor(c_out,c3,c2);
endmodule
