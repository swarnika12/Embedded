////////////////////////////////////////////////////////////////////////////////
//                        Coypright (C) Aviral Mittal.
////////////////////////////////////////////////////////////////////////////////
//   All rights reserved. Reproducion in whole or in part is prohibited without
//   written consent of copyright Owner.The professional use of this material
//   is subject to the copy right owners approval in written.
////////////////////////////////////////////////////////////////////////////////
//   Comments welcome on aviral.mittal@sli-institute.ac.uk or avimit@yahoo.com
////////////////////////////////////////////////////////////////////////////////
// It is a radix-4 booth's multiplier. It will work ONLY if width is even Number
`define width	16
`timescale 1ns/1ps

module booth_mult (p, x, y);

parameter width=`width;
parameter N = `width/2;

input	[width-1:0]		x, y;

output	[width+width-1:0]	p;

  reg [2:0] cc[N-1:0];
  reg [width:0] pp[N-1:0];
  reg [width+width-1:0] spp[N-1:0];
  reg [width+width-1:0] prod;
  wire [width:0] inv_x;
  integer kk,ii;

assign inv_x = {~x[width-1],~x}+1;
always @ (x or y or inv_x)
begin
  cc[0] = {y[1],y[0],1'b0};
  for(kk=1;kk<N;kk=kk+1)
    cc[kk] = {y[2*kk+1],y[2*kk],y[2*kk-1]};
  for(kk=0;kk<N;kk=kk+1)
  begin
    case(cc[kk]) 
      3'b001 , 3'b010 : pp[kk] = {x[width-1],x};
      3'b011 : pp[kk] = {x,1'b0};
      3'b100 : pp[kk] = {inv_x[width-1:0],1'b0};
      3'b101 , 3'b110 : pp[kk] = inv_x;
      default : pp[kk] = 0;
    endcase
    spp[kk] = $signed(pp[kk]);
    for(ii=0;ii<kk;ii=ii+1)
      spp[kk] = {spp[kk],2'b00}; //multiply by 2 to the power x or shifting operation
  end //for(kk=0;kk<N;kk=kk+1)
  prod = spp[0];
  for(kk=1;kk<N;kk=kk+1)
    prod = prod + spp[kk];
end
assign p = prod;
endmodule
