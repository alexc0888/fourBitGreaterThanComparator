`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2022 12:29:33 AM
// Design Name: 
// Module Name: oneBitComp
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
