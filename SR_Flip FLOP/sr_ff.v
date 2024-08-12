module sr_ff(
input rst,
input  clk,
input   s,
input  r,
output reg q,
output reg qn
    );
    
    always @(posedge clk) begin
   
    if (rst) begin
    q<=0;
    qn<=1;
    end
    case({s,r}) 
    2'b00:begin q<=q;qn<=qn; end
    2'b01: begin q<=0;qn<=1; end
    2'b10: begin q<=1;qn<=0; end
    2'b11: begin q <= 1'bx;qn <= 1'bx; end
    endcase
    end
   endmodule
