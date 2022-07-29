`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 09:28:24 PM
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

module top(
    input logic [3:0] sw,
    output logic led
);
    // Code Here...
    twoBitComp com1(.a(sw[1:0]), .b(sw[3:2]), .aeqb(led));
    
endmodule

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
    

module oneBitComp(
    input logic i0,
    input logic i1,
    output logic eq
);
    // Code Here...
    logic p0;
    logic p1;
    assign p0 = i0 & i1; // Product 1
    assign p1 = ~i0 & ~i1; // Product 2
    assign eq = p0 + p1; //Sum of products comparator
    
endmodule
