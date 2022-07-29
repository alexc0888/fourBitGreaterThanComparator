`timescale 1ns / 10 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2022 01:27:02 AM
// Design Name: 
// Module Name: fourBitGreaterThan_testbench
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


module fourBitGreaterThan_testbench();
    // Declare Signals
    logic [7:0] signal_test;
    logic test_out;
    
    // Instantiate four bit greater than module
    fourBitGreaterThan uut(.switch(signal_test), .z(test_out));
    
    // Test vector generation 
    initial
    begin
        // test vector 1 
        signal_test = 8'b00000000;
        # 20; // 20 ns delay
        // test vector 2
        signal_test = 8'b10000000;
        # 20; // 20 ns delay
        // test vector 3 
        signal_test = 8'b10001000;
        # 20; // 20 ns delay
        // test vector 4 
        signal_test = 8'b10011100;
        # 20; // 20 ns delay
        // test vector 5 
        signal_test = 8'b11011100;
        # 20; // 20 ns delay
        // test vector 6
        signal_test = 8'b11111110;
        # 20; // 20 ns delay
        // test vector 7 
        signal_test = 8'b1000110;
        # 20; // 20 ns delay
        // test vector 8 
        signal_test = 8'b11111111;
        # 20; // 20 ns delay
        // test vector 9
        signal_test = 8'b11110111;
        # 20; // 20 ns delay
        // test vector 10
        signal_test = 8'b00001111;
        # 20; // 20 ns delay        
        $stop;
    end
endmodule
