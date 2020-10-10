`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2020 02:53:01 PM
// Design Name: 
// Module Name: seq_count
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

//for sequence 1011(overlapping)
module seq_count(clk,rst,x,out);//1011 sequence
input rst,clk,x;
output reg out;


reg [1:0]state;

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
always @(posedge clk,posedge rst)
if(rst)
begin
state<=s0;
out=0;
end
else
begin
case(state)
s0: begin
    state<=x?s1:s0;
    out<=0;
    end
s1: begin
    state<=x?s1:s2;
    out=0;
    end
    
s2: begin
   state<=x?s3:s0;
   out=0;
   end
s3: begin
    state<=x?s1:s0;
    out<=x?1:0;
  
    end
    
default: begin
         state<=s0;
         out<=0;
         end
    endcase

    end

endmodule


module top(clk,rst,x,count);//count the number of times the sequence has appeared
input clk,rst,x;
wire out;
output reg[3:0]count;
wire[3:0]co;
assign co=count;
seq_count t1(clk,rst,x,out);
always@(posedge clk,posedge rst)
if(rst)
count<=0;
else if(out==1)
count<=count+1;
else
count=co;
endmodule
