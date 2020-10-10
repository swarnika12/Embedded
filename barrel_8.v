`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2020 09:32:51 PM
// Design Name: 
// Module Name: barrel_8
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


module barrel_8(w,out,s0,s1);
input s0,s1;
output[3:0]out;
input[3:0]w; 
mux_4to1 r1(w[3],w[0],w[1],w[2],s1,s0,out[3]);
mux_4to1 r2(w[2],w[3],w[0],w[1],s1,s0,out[2]);
mux_4to1 r3(w[1],w[2],w[3],w[0],s1,s0,out[1]);
mux_4to1 r4(w[0],w[1],w[2],w[3],s1,s0,out[0]);
endmodule
