module RAM(
input clk,
input [31:0]data_in,
input [12:0]add_in,
input wr_en,
output reg [31:0]data_out
    );
  reg [31:0] ram_block [0:256];  
    always @ (posedge clk) begin
   
    if(wr_en) begin
    ram_block[add_in]<=data_in;
    end
    else begin
    data_out<= ram_block[add_in];
    end
    end
endmodule
