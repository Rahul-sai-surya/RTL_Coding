`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 11:14:23 AM
// Design Name: 
// Module Name: Carry_look_ahead_adder
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


module carry_look_ahead_adder (
    input [3:0] A,      // 4-bit input A
    input [3:0] B,      // 4-bit input B
    input Cin,          // Carry input
    output [3:0] S,     // 4-bit sum output
    output Cout         // Carry output
);

    // Internal signals for generate and propagate
    wire [3:0] G; // Generate
    wire [3:0] P; // Propagate
    wire [3:0] C; // Carry

    // Generate and propagate signals
    assign G = A & B;      // Generate = A AND B
    assign P = A ^ B;      // Propagate = A XOR B

    // Carry signals
    assign C[0] = Cin;     // Initial carry input
    assign C[1] = G[0] | (P[0] & Cin);       // Carry for bit 1
    assign C[2] = G[1] | (P[1] & C[1]);       // Carry for bit 2
    assign C[3] = G[2] | (P[2] & C[2]);       // Carry for bit 3
    assign Cout = G[3] | (P[3] & C[3]);       // Final carry output

    // Sum outputs
    assign S = P ^ C; // Sum = Propagate XOR Carry

endmodule
