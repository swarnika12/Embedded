`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 12:40:39 AM
// Design Name: 
// Module Name: barrelshifter
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


module barrelshifter(in,out,shift);
input[15:0]in;
output [15:0]out;
input[3:0]shift;
wire[15:0]w1,w2,w3;
mux_barrel t1(1'b0,in[0],w1[0],shift[0]);
mux_barrel t2(in[0],in[1],w1[1],shift[0]);
mux_barrel t3(in[1],in[2],w1[2],shift[0]);
mux_barrel t4(in[2],in[3],w1[3],shift[0]);
mux_barrel t5(in[3],in[4],w1[4],shift[0]);
mux_barrel t6(in[4],in[5],w1[5],shift[0]);
mux_barrel t7(in[5],in[6],w1[6],shift[0]);
mux_barrel t8(in[6],in[7],w1[7],shift[0]);
mux_barrel t9(in[7],in[8],w1[8],shift[0]);
mux_barrel t10(in[8],in[9],w1[9],shift[0]);
mux_barrel t11(in[9],in[10],w1[10],shift[0]);
mux_barrel t12(in[10],in[11],w1[11],shift[0]);
mux_barrel t13(in[11],in[12],w1[12],shift[0]);
mux_barrel t14(in[12],in[13],w1[13],shift[0]);
mux_barrel t15(in[13],in[14],w1[14],shift[0]);
mux_barrel t16(in[14],in[15],w1[15],shift[0]);


mux_barrel t11i(1'b0,w1[0],w2[0],shift[1]);
mux_barrel t12i(1'b0,w1[1],w2[1],shift[1]);
mux_barrel t13i(w1[0],w1[2],w2[2],shift[1]);
mux_barrel t14i(w1[1],w1[3],w2[3],shift[1]);
mux_barrel t15i(w1[2],w1[4],w2[4],shift[1]);
mux_barrel t16i(w1[3],w1[5],w2[5],shift[1]);
mux_barrel t17i(w1[4],w1[6],w2[6],shift[1]);
mux_barrel t18i(w1[5],w1[7],w2[7],shift[1]);
mux_barrel t19i(w1[6],w1[8],w2[8],shift[1]);
mux_barrel t10i(w1[7],w1[9],w2[9],shift[1]);
mux_barrel t111i(w1[8],w1[10],w2[10],shift[1]);
mux_barrel t112i(w1[9],w1[11],w2[11],shift[1]);
mux_barrel t113i(w1[10],w1[12],w2[12],shift[1]);
mux_barrel t114i(w1[11],w1[13],w2[13],shift[1]);
mux_barrel t115i(w1[12],w1[14],w2[14],shift[1]);
mux_barrel t116i(w1[13],w1[15],w2[15],shift[1]);


mux_barrel p1(1'b0,w2[0],w3[0],shift[2]);
mux_barrel p2(1'b0,w2[1],w3[1],shift[2]);
mux_barrel p3(1'b0,w2[2],w3[2],shift[2]);
mux_barrel p4(1'b0,w2[3],w3[3],shift[2]);
mux_barrel p5(w2[0],w2[4],w3[4],shift[2]);
mux_barrel p6(w2[1],w2[5],w3[5],shift[2]);
mux_barrel p7(w2[2],w2[6],w3[6],shift[2]);
mux_barrel p8(w2[3],w2[7],w3[7],shift[2]);
mux_barrel p9(w2[4],w2[8],w3[8],shift[2]);
mux_barrel p10(w2[5],w2[9],w3[9],shift[2]);
mux_barrel p11(w2[6],w2[10],w3[10],shift[2]);
mux_barrel p12(w2[7],w2[11],w3[11],shift[2]);
mux_barrel p13(w2[8],w2[12],w3[12],shift[2]);
mux_barrel p14(w2[9],w2[13],w3[13],shift[2]);
mux_barrel p15(w2[10],w2[14],w3[14],shift[2]);
mux_barrel p16(w2[11],w2[15],w3[15],shift[2]);

mux_barrel k1(1'b0,w3[0],out[0],shift[3]);
mux_barrel k2(1'b0,w3[1],out[1],shift[3]);
mux_barrel k3(1'b0,w3[2],out[2],shift[3]);
mux_barrel k4(1'b0,w3[3],out[3],shift[3]);
mux_barrel k5(1'b0,w3[4],out[4],shift[3]);
mux_barrel k6(1'b0,w3[5],out[5],shift[3]);
mux_barrel k7(1'b0,w3[6],out[6],shift[3]);
mux_barrel k8(1'b0,w3[7],out[7],shift[3]);
mux_barrel k9(w3[0],w3[8],out[8],shift[3]);
mux_barrel k10(w3[1],w3[9],out[9],shift[3]);
mux_barrel k11(w3[2],w3[10],out[10],shift[3]);
mux_barrel k12(w3[3],w3[11],out[11],shift[3]);
mux_barrel k13(w3[4],w3[12],out[12],shift[3]);
mux_barrel k14(w3[5],w3[13],out[13],shift[3]);
mux_barrel k15(w3[6],w3[14],out[14],shift[3]);
mux_barrel k16(w3[7],w3[15],out[15],shift[3]);





endmodule

