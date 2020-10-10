`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2020 12:43:37 AM
// Design Name: 
// Module Name: fibo
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


module fibo(input clock, reset, output [31:0] value);

reg [31:0] previous, current;
//reg [5:0] counter;

// Reset the circuit
always @(posedge clock,posedge reset)
if(reset)
    begin
        previous <= 32'd0;
        current <= 32'd1;
        //counter <= 32'd1;
    end

// Compute next Fibonacci number
else
    begin
        // Increment current index
        //counter <= counter + 1;

        // Efficient adders are automatically inferred
        current <= current + previous;
        previous <= current;

       //if (counter == n)
        // ready <= 1;
    end

// Read the value of the nth fibonacci number from the internal register
assign value = current;

endmodule

