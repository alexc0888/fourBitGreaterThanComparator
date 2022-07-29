`timescale 1ns / 10 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 11:47:12 PM
// Design Name: 
// Module Name: twoBitGreaterThan_testbench
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


module twoBitGreaterThan_testbench();
    // Declare Signals
    logic [1:0] a_test, b_test;
    logic test_out;
    
    // Instantiate two bit greater than module
    twoBitGreaterThan uut(.a(a_test), .b(b_test), .f(test_out));
    
    // Test vector generation 
    initial
    begin
        // test vector 1 
        a_test = 2'b00;
        b_test = 2'b00;
        # 20; // 20 ns delay
        // test vector 2
        a_test = 2'b00;
        b_test = 2'b01;
        # 20;
        // test vector 3
        a_test = 2'b00;
        b_test = 2'b10;
        # 20;
        // test vector 4
        a_test = 2'b00;
        b_test = 2'b11;
        # 20;
        // test vector 5
        a_test = 2'b01;
        b_test = 2'b00;
        # 20;
        // test vector 6
        a_test = 2'b01;
        b_test = 2'b01;
        # 20;
        // test vector 7
        a_test = 2'b01;
        b_test = 2'b10;
        # 20;
        // test vector 8
        a_test = 2'b01;
        b_test = 2'b11;
        # 20;
        // test vector 9
        a_test = 2'b10;
        b_test = 2'b00;
        # 20;
        // test vector 10
        a_test = 2'b10;
        b_test = 2'b01;
        # 20;
        // test vector 11
        a_test = 2'b10;
        b_test = 2'b10;
        # 20;
        // test vector 12
        a_test = 2'b10;
        b_test = 2'b11;
        # 20;
        // test vector 13
        a_test = 2'b11;
        b_test = 2'b00;
        # 20;
        // test vector 14
        a_test = 2'b11;
        b_test = 2'b01;
        # 20;
        // test vector 15
        a_test = 2'b11;
        b_test = 2'b10;
        # 20;
        // test vector 16
        a_test = 2'b11;
        b_test = 2'b11;
        # 20;
        // end sim 
        $stop;
    end
endmodule