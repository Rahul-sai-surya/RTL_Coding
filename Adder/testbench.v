module tb();
reg a;
reg b;
wire sum;
wire carry;
Adder adder(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    a=0;
    b=0;
    $display("a=%0d,b=%0d",a,b);
    $display("sum=%0d,carry=%0d",sum,carry);
    #10;
    a=1;
    b=0;
    $display("a=%0d,b=%0d",a,b);
    $display("sum=%0d,carry=%0d",sum,carry);
    #10;
    a=0;
    b=1;
    $display("a=%0d,b=%0d",a,b);
    $display("sum=%0d,carry=%0d",sum,carry);
    #10;
    a=1;
    b=1;
    $display("a=%0d,b=%0d",a,b);
    $display("sum=%0d,carry=%0d",sum,carry);
    #10;
    $finish;
end
endmodule