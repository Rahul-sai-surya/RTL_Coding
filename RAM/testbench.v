module tb_RAM();
reg clk;
reg [31:0]data_in,add_in;
reg wr_en;
wire [31:0] data_out;
RAM ram(.clk(clk),.data_in(data_in),.add_in(add_in),.wr_en(wr_en),.data_out(data_out));
initial begin
clk=1;
forever #50 clk=~clk;

end
initial begin
data_in=32'h25598;
add_in=13'h95;
#100;
wr_en=1;
#100;
wr_en=0;
#100;
wr_en=0;
#100;
wr_en=1;
#100;
$finish;
end


endmodule
