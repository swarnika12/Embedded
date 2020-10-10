`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2020 09:06:07 PM
// Design Name: 
// Module Name: one_hotassign
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


module one_hotassign(clk,rst,x,q3,q2,q1,q0,z);
input clk,rst,x;
output q3,q2,q1,q0;
output reg z;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;

and(w1,q2,x);

or(w2,q1,q3);
and(w3,~x,w2);

or(w4,q0,q1,q3);
and(w5,w4,x);

or(w6,q0,q2);
and(w7,~x,w6);

and(w8,q3,x);//output

D1_seq t1(clk,rst,w1,q3);
D1_seq t2(clk,rst,w3,q2);
D1_seq t3(clk,rst,w5,q1);
D_seq2 t4(clk,rst,w7,q0);

always@(posedge clk,posedge rst)
if(rst)
z<=0;
else
z<=w8;



endmodule
