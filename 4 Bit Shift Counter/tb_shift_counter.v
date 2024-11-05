`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2024 01:00:05 PM
// Design Name: 
// Module Name: tb_shift_counter
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


module tb_shift_counter();
reg clk;
reg rst;
reg load;
reg [1:0]control;
reg [7:0] i;
wire [7:0]q;

Shift_Counter SC(.clk(clk),.rst(rst),.i(i),.load(load),.control(control),.q(q));
initial begin 
clk=1;
forever #50 clk=~clk;
end
initial begin
rst=1;
#100 rst=~rst;
i=8'b10010111;
load=1;
#100;
load=0;
control=2'b00;
#100;
control=2'b01;
#100;
control=2'b10;
#100;
control=2'b11;
#100; $stop;
end

endmodule
