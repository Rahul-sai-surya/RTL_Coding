module FSM_Sequencer_1101(
input i,
input clk,
input rst,
output reg q,
output reg [1:0] pst,nxt
    );
    
    parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
    
    always @(posedge clk) begin
    if(rst)
    pst<= s0;
    else 
    pst<= nxt;
    end
    always @(pst,i)
    begin
    case(pst)
    s0: begin
    if(i) begin
    nxt<=s1;
    q<=0;
    end
    else begin
    nxt<=s0;
    q<=0;
    end
    end
    s1: begin
    if(i) begin
    nxt<=s2;
    q<=0;
    end
    else begin
    nxt<=s0;
    q<=0;
    end
    end
    s2: begin
    if(i) begin
    nxt<=s2;
    q<=0;
    end
    else begin
    nxt<=s3;
    q<=0;
    end
    end
    s3: begin
    if(i) begin
    nxt<=s1;
    q<=1;
    end 
    else begin
    nxt<=s0;
    q<=0;
    end
    end
    endcase
    end
endmodule
