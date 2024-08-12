module tb_Mealy_machine();
reg i;
reg clk;
reg rst;
wire q;
wire [1:0] pst,nxt;
FSM_Sequencer_1101 FSM(.i(i),.clk(clk),.rst(rst),.q(q),.pst(pst),.nxt(nxt));
initial begin 
clk=1;
forever #50 clk=~clk;
end
initial begin
rst=1;
#100 rst=~rst;
$display("i=%0d,q=%0d",i,q);
$display("pst=%s,nxt=%s",pst,nxt);
i=1;#100;
i=1;#100;
i=0;#100;
i=1;#100;
i=0;#100;
i=1;#100;
i=0;#100;
i=1;#100;
i=0;#100;
i=0;#100;
i=0;#100;
i=1;#100;
i=1;#100;
i=1;#100;
i=1;#100;
i=1;#100;
i=1;#100;
i=0;#100;
i=0;#100;
i=0;#100;

$finish;

end
endmodule
