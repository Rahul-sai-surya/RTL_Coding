`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 04:03:49 PM
// Design Name: 
// Module Name: Encoder_8_3
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


module Encoder_8_3(
input [7:0]i,
input clk,rst,
output reg [2:0]q 
    );
    always @(posedge clk or posedge rst)
    begin
    if(rst)
    q<=3'b000;
    else begin
    case(i)
     8'b00000001: begin q<=3'b000; end
     8'b00000010: begin q<=3'b001; end
     8'b00000100: begin q<=3'b010; end
     8'b00001000: begin q<=3'b011; end
     8'b00010000: begin q<=3'b100; end
     8'b00100000: begin q<=3'b101; end
     8'b01000000: begin q<=3'b110; end
     8'b10000000: begin q<=3'b111; end
     endcase
     end
     end
endmodule
