`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2024 09:14:00 AM
// Design Name: 
// Module Name: counter_4_bit_up
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


module counter_4_bit_up(
  input clk,rst,
  output reg [3:0]q);
  always @ (posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0;
      else
        begin
          if(q==4'b1111)
            q<=4'b0;
          else
            begin
              q<=q+4'b1;
            end
        end
    end
endmodule