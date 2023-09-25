`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/18 00:59:05
// Design Name: 
// Module Name: top
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


module top (
    input [3:0] A, B,
    input Cin,
    output [6:0] seg
);

    wire [3:0] sum;
    wire cout;

    four_adder adder0 (.A(A), .B(B), .Cin(Cin), .Sum(sum), .Cout(cout));//4bit
    seven_segment_decoder decoder (.bin(sum), .seg(seg));

endmodule

