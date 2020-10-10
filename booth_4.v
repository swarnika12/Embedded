`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2019 11:46:40 AM
// Design Name: 
// Module Name: booth_4
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


module booth_4(X,Y,Z);
input signed[3:0] X, Y;
       output signed [7:0] Z;
       reg signed [7:0] Z;
       reg [1:0] temp;
       integer i;
        reg E1;
       reg [3:0] Y1;
       always @ (X, Y)
       begin
       Z = 8'd0;
       E1 = 1'd0;
        Y1 = - Y; 
        Z[3:0]=X;
       for (i = 0; i < 4; i = i + 1)
       begin
       temp = {X[i], E1};
      
      
  case (temp)
       2'd2 : begin Z [7 : 4] = Z [7 : 4] + Y1; Z = Z >> 1;  end
              
       2'd1 : begin Z [7 : 4] = Z [7 : 4] + Y;  Z = Z >> 1;  end
       2'd0 :begin  Z = Z >> 1; end
       2'd3 :begin  Z = Z >> 1; end
      default:begin end        
       endcase
       
      
       
       Z[7] = Z[6];
       
      
       E1 = X[i];
       if(Y==4'd8)
      
      
           begin
               Z = - Z;
       
           end
      
       end
       end
      
       
endmodule
