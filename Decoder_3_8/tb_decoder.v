`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:46:22 PM
// Design Name: 
// Module Name: tb_decoder
// Project Name: initial begin 
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


module tb_decoder();
reg [2:0]i;
reg clk,rst;
wire [7:0]q;
Decoder_3_8 D(.i(i),.clk(clk),.rst(rst),.q(q));
initial begin
clk=1;
forever #50 clk=~clk;
end
initial begin 
rst=1;
#100; rst=0;
i=3'b000;
#100;
i=3'b001;
#100;
i=3'b010;
#100;
i=3'b011;
#100;
i=3'b100;
#100;
i=3'b101;
#100;
i=3'b110;
#100;
i=3'b111;
#100; $stop;
end


endmodule
