`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/18 01:00:22
// Design Name: 
// Module Name: tb_four_bit_full_adder
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


module tb_four_bit_full_adder(

    );
     // Declare testbench signals
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
   
   


    // Instantiate the 4-bit full adder
    four_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Testbench stimulus
   initial 
   begin
       // Initialize inputs
//      #10 A = 4'b0000;
//       B = 4'b0000;
//    Cin = 0;

        // Apply test vectors
       A = 4'b0001; B = 4'b0001; Cin = 0; // Expected Sum = 2, Cout = 0
        #10 A = 4'b0010; B = 4'b0010; Cin = 0; // Expected Sum = 4, Cout = 0
       #10 A = 4'b0100; B = 4'b0100; Cin = 0; // Expected Sum = 8, Cout = 0
       #10 A = 4'b1000; B = 4'b1000; Cin = 0; // Expected Sum = 0, Cout = 1
       #10 A = 4'b1111; B = 4'b0000; Cin = 1; // Expected Sum = 0, Cout = 1
       #10 A = 4'b1010; B = 4'b0101; Cin = 1; // Expected Sum = 0, Cout = 1

       // End simulation
         $finish;
   end

//    // Monitor to observe the outputs
//    initial begin
//        $monitor("At time %d: A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", $time, A, B, Cin, Sum, Cout);
//    end

 
endmodule
