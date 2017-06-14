`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:07 06/08/2017
// Design Name:   shift_reg_4bit
// Module Name:   C:/Users/Charles/OneDrive/2017Fall_CSULB/CPU_301/shift_reg_4bit_tb.v
// Project Name:  CPU_301
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_reg_4bit_tb;

	// Inputs
	reg clk;
	reg reset;
	reg si;
	reg [1:0] M;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	shift_reg_4bit uut (
		.clk(clk), 
		.reset(reset), 
		.si(si), 
		.M(M), 
		.D(D), 
		.Q(Q)
	);
   
   always #5 clk = ~clk;
   
   initial begin
      $timeformat(-9, 1, " ns", 6);
   
		// Initialize Inputs
		clk = 0; reset = 0; si = 0;
		  M = 0;     D = 0;

		//These two clocks take care of reset
      @(negedge clk)
         reset = 1;
      @(negedge clk)
         reset = 0;
         
      @(negedge clk)
         {reset,M,D,si} = 8'b0_01_1011_x;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_00_xxxx_x;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_10_xxxx_1;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_10_xxxx_0;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_00_xxxx_x;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_11_xxxx_x;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_11_xxxx_x;
      @(negedge clk)
         {reset,M,D,si} = 8'b0_00_xxxx_x;
         
      $finish;
	end
      
endmodule

