`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 06:43:51 PM
// Design Name: 
// Module Name: booth_multi
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


module booth_multi(lda,ldq,ldm,clra,clrq,clrff,sfta,sftq,addsub,decr,ldcnt,data_in,clk,qm1,eqz);
input lda,ldq,ldm,clra,clrq,clrff,sfta,sftq,addsub,clk,decr,ldcnt;
input[15:0]data_in;
output qm1,eqz;
wire[15:0]a,m,q;
wire[15:0]z;
wire[4:0]count;
assign eqz=~|count;
shiftreg AR(a,z,a[15],clk,lda,clra,sfta);//Accumulator
shiftreg QR(q,data_in,a[0],clk,ldq,clrq,sftq);//Multiplier
diff t1(q[0],qm1,clk,clrff);// Q-1
pipo t2(data_in,m,clk,ldm);// Multiplicand
ALU1 t3(z,a,m,addsub);
counter t4(count,decr,ldcnt,clk);







endmodule
