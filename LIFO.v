`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2020 10:39:26 PM
// Design Name: 
// Module Name: LIFO
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


module LIFO(data,out,rw,en,rst,empty,full,clk);
input[3:0]data;
input rw,en,rst,clk;
output empty,full;
output reg[3:0]out;
reg[3:0]mem[4:0];
reg[2:0]sp;//stack pointer
assign full=(sp==3'b110)?1:0;
assign empty=(sp==3'b000)?1:0;
integer i;
always @(posedge clk)
 begin
  if(rst)
   begin
     out<=0;sp<=1;
     for(i=0;i<5;i=i+1)
       begin
        mem[i]=0;
       end
    end
else if(!rw && !full)
begin
mem[sp]<=data;
sp=sp+1;
end
else if(rw && !empty)
begin
sp<=sp-1;
out<=mem[sp];
end
end

endmodule
