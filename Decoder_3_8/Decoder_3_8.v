`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:27:05 PM
// Design Name: 
// Module Name: Decoder_3_8
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


module Decoder_3_8(
input rst,clk,
input [2:0]i,
output reg[7:0]q
    );
    always @(posedge clk or posedge rst)
    begin
    if(rst)
    q<=8'b00000000;
    else
    begin
    case(i)
    3'b000: begin q<=8'b00000001; end
    3'b001: begin q<=8'b00000010; end
    3'b010: begin q<=8'b00000100; end
    3'b011: begin q<=8'b00001000; end
    3'b100: begin q<=8'b00010000; end
    3'b101: begin q<=8'b00100000; end
    3'b110: begin q<=8'b01000000; end
    3'b111: begin q<=8'b10000000; end
    endcase
    end
    end
endmodule
