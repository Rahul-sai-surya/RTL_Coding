module tb_sr();
reg clk;
reg rst;
reg s;
reg r;
wire q;
wire qn;
sr_ff sr(.clk(clk),.rst(rst),.s(s),.r(r),.q(q),.qn(qn));
initial begin
clk=1;
forever #50 clk=~clk;

end
initial begin
rst=1;
#100 rst<=~rst;
s=0;r=0;
$display("s=%0d,r=%0d",s,r);
$display("q=%0d,qn=%0d",q,qn);
#100;
s=0;r=1;
$display("s=%0d,r=%0d",s,r);
$display("q=%0d,qn=%0d",q,qn);
#100;
s=1;r=0;
$display("s=%0d,r=%0d",s,r);
$display("q=%0d,qn=%0d",q,qn);
#100;
s=1;r=1;
$display("s=%0d,r=%0d",s,r);
$display("q=%0d,qn=%0d",q,qn);
#100;
$finish;
end
endmodule
