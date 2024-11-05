`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 11:15:37 AM
// Design Name: 
// Module Name: tb_carry_look_adder
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


module tb_carry_look_adder();


    // Testbench signals
    reg [3:0] A;        // 4-bit input A
    reg [3:0] B;        // 4-bit input B
    reg Cin;            // Carry input
    wire [3:0] S;       // 4-bit sum output
    wire Cout;          // Carry output

    // Instantiate the Carry Look-Ahead Adder
    carry_look_ahead_adder CLA (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .S(S), 
        .Cout(Cout)
    );

    // Test procedure
    initial begin
        // Monitor changes
        $monitor("Time=%0d A=%b B=%b Cin=%b => Sum=%b Cout=%b", $time, A, B, Cin, S, Cout);
        
        // Test case 1: 0000 + 0000 + 0 = 0000, Cout = 0
        A = 4'b0000; B = 4'b0000; Cin = 0;
        #10;
        
        // Test case 2: 0001 + 0001 + 0 = 0010, Cout = 0
        A = 4'b0001; B = 4'b0001; Cin = 0;
        #10;
        
        // Test case 3: 0011 + 0011 + 0 = 0110, Cout = 0
        A = 4'b0011; B = 4'b0011; Cin = 0;
        #10;
        
        // Test case 4: 1111 + 0001 + 0 = 0000, Cout = 1 (overflow)
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;
        
        // Test case 5: 1111 + 1111 + 1 = 1111, Cout = 1 (carry propagated)
        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;
        
        // Test case 6: Random input values
        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10;
        
        // Test case 7: Another random input values
        A = 4'b0110; B = 4'b1001; Cin = 0;
        #10;

        // Test case 8: All ones input with carry-in
        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;

        // Finish simulation
        $finish;
    end



endmodule
