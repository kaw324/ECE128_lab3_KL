`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/18 14:52:59
// Design Name: 
// Module Name: four_adder
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

module lab_2(
    input A, B, Cin,
    output reg Cout, 
    output reg SUM
);

always @ (A, B, Cin)
begin
    case({A, B, Cin}) // Concatenate the inputs to form a 3-bit number
        3'b000: begin SUM = 0; Cout = 0; end
        3'b001: begin SUM = 1; Cout = 0; end
        3'b010: begin SUM = 1; Cout = 0; end
        3'b011: begin SUM = 0; Cout = 1; end
        3'b100: begin SUM = 1; Cout = 0; end
        3'b101: begin SUM = 0; Cout = 1; end
        3'b110: begin SUM = 0; Cout = 1; end
        3'b111: begin SUM = 1; Cout = 1; end
    endcase
end

endmodule

module four_adder(
 input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
    );
     wire c1, c2, c3;

    lab_2 fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .SUM(Sum[0]), .Cout(c1));
    lab_2 fa1 (.A(A[1]), .B(B[1]), .Cin(c1), .SUM(Sum[1]), .Cout(c2));
    lab_2 fa2 (.A(A[2]), .B(B[2]), .Cin(c2), .SUM(Sum[2]), .Cout(c3));
    lab_2 fa3 (.A(A[3]), .B(B[3]), .Cin(c3), .SUM(Sum[3]), .Cout(Cout));
endmodule
