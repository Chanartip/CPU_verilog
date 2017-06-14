`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:18:31 06/11/2017
// Design Name:   Sequence_010110_detector
// Module Name:   C:/Users/Charles/OneDrive/2017Fall_CSULB/CPU_301/Squence_010110_detector_tb.v
// Project Name:  CPU_301
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sequence_010110_detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Squence_010110_detector_tb;

	// Inputs
	reg clk;
	reg reset;
	reg x;
	reg m;

	// Outputs
	wire z;
	wire [2:0] state;

   // Local Declarations
   reg [48:1] sequence_pattern; // 47-bit serial inputs
   integer i;                   // counter for for-loop
   
	// Instantiate the Unit Under Test (UUT)
	Sequence_010110_detector uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.m(m), 
		.z(z), 
		.state(state)
	);
   
   // Generate 10ps clk
   always #5 clk = ~clk;
   
   // Initial Block for the sequence of "test vectors" applied every clock cycle
   initial begin
      $timeformat(-12, 1, " ps", 8);
      clk = 0; reset = 0; x = 0; m = 0;
      sequence_pattern = 48'b 010101101011000110101101011011101001011001011011;
      @(negedge clk)
         reset = 1;
      @(negedge clk)
         reset = 0;
         
      m = 1; // if m = 0, Moore mode. if m = 1, Mealy mode
      
      for(i=48; i>0; i=i-1)   begin
         @(negedge clk)
            x = sequence_pattern[i];
         @(posedge clk)
            #1 $display("Time=%t x=%b state=%b z=%b", $time, x, state, z);
      
      end
      $stop;
     end 
endmodule

