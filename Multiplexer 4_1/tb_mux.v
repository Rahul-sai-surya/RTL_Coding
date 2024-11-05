`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 03:35:27 PM
// Design Name: 
// Module Name: tb_Mux
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


module tb_Mux();
reg clk,rst;
reg[3:0]I0,I1,I2,I3;
reg[1:0]sel;
wire [3:0] y;
Mux_4_1 M(.clk(clk),.rst(rst),.sel(sel),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.y(y));
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin 
rst=1;
#10;
rst=0;
I0=4'd1;
I1=4'd2;
I2=4'd3;
I3=4'd4;
#10;
sel=2'b00;
#10;
sel=2'b01;
#10;
sel=2'b10;
#10;
sel=2'b11;
#10; $stop;
end
endmodule
