`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 02:54:26 PM
// Design Name: 
// Module Name: Mux_4_1
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


module Mux_4_1(
input [1:0]sel,
input [3:0]I0,I1,I2,I3,
input clk,rst,
output reg [3:0]y
    );
    always @(posedge clk or posedge rst)
    begin
    if(rst)
    y<=I0;
    else 
    begin
    case(sel)
    2'b00: begin y<=I0; end
    2'b01: begin y<=I1; end
    2'b10: begin y<=I2; end
    2'b11: begin y<=I3; end
    endcase
    end
    end
    
endmodule
