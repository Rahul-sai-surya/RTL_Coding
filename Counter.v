module Counter_4_bit_up(
  input clk,rst,
  output reg [3:0]q);
  always @ (posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0;
      else
        begin
          if(q==4'b1111)
            q<=4'b0;
          else
            begin
              q<=q+4'b1;
            end
        end
    end
endmodule
