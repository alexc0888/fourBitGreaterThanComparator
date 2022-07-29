`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2022 12:28:14 AM
// Design Name: 
// Module Name: twoBitComp
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


module twoBitComp(
    input logic [1:0] a, b,
    output logic aeqb
);
    // Code Here...
    logic eq1;
    logic eq2;
    oneBitComp ex1(.i0(a[0]), .i1(b[0]), .eq(eq1)); // Compare first bit
    oneBitComp ex2(.i0(a[1]), .i1(b[1]), .eq(eq2)); // Compare second bit
    assign aeqb = eq1 & eq2;
    
endmodule
