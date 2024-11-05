`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 11:13:32 AM
// Design Name: 
// Module Name: tb_counter
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


module tb_counter();
reg clk;
reg rst;
wire [3:0]q;

counter_4_bit_up C(.clk(clk),.rst(rst),.q(q));
initial begin 
clk=1;
forever #50 clk=~clk;
end
initial begin
rst=1;
#100 rst=~rst;
#200;
rst=1;
#100;
rst=0;
#600;
$finish;

end
endmodule
