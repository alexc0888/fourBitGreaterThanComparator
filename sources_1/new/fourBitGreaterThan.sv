`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2022 01:28:15 AM
// Design Name: 
// Module Name: fourBitGreaterThan
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


module fourBitGreaterThan(
    input logic [7:0] switch,
    output logic z

);
    // Code Here...
    
    logic res1; // a[3:2] = b[3:2]
    logic res2; // a[1:0] = b[1:0]
    logic greRes1; // a[3:2] is greater than b[3:2] 
    logic greRes2; // a[1:0] is greater than b[1:0]
    
    twoBitComp com1(.a(switch[7:6]), .b(switch[3:2]), .aeqb(res1)); // Check if leftmost bits are the same
    twoBitComp com2(.a(switch[5:4]), .b(switch[1:0]), .aeqb(res2)); // Check if rightmost bits are the same 
    twoBitGreaterThan gre1(.a(switch[7:6]), .b(switch[3:2]), .f(greRes1)); // Check if leftmost a bits are greater
    twoBitGreaterThan gre2(.a(switch[5:4]), .b(switch[1:0]), .f(greRes2)); // Check if rightmost a bits are greater
    
    assign z = (~res1 & ~res2 & greRes1) | (~res1 & greRes1 & ~greRes2) | (res1 & ~res2 & ~greRes1 & greRes2); // Min S.O.P. for 4 bit comp
endmodule
