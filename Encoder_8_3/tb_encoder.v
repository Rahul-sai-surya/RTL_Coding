`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 04:16:37 PM
// Design Name: 
// Module Name: tb_Encoder
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


module tb_Encoder();
reg[7:0]i;
reg clk,rst;
wire [2:0]q;
Encoder_8_3 E(.clk(clk),.rst(rst),.i(i),.q(q));
initial begin 
clk=1;
forever #50 clk=~clk;
end
initial begin 
rst=1;
#100; rst=0;
i=8'b00000001;
#100;
i=8'b00000010;
#100;
i=8'b00000100;
#100;
i=8'b00001000;
#100;
i=8'b00010000;
#100;
i=8'b00100000;
#100;
i=8'b01000000;
#100;
i=8'b10000000;
#100; $stop;
end
endmodule
