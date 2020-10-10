`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2019 06:57:05 PM
// Design Name: 
// Module Name: fulladder4
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


module fulladder4(a,b,c_in,s,c_out);
input [3:0] a,b;
input c_in;
output[3:0] s;
output c_out;
wire c1,c2,c3;
fulladder t1(a[0],b[0],c_in,c1,s[0]);
fulladder t2(a[1],b[1],c1,c2,s[1]);
fulladder t3(a[2],b[2],c2,c3,s[2]);
fulladder t4(a[3],b[3],c3,c_out,s[3]);

endmodule
