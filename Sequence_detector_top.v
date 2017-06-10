`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:58 06/09/2017 
// Design Name: 
// Module Name:    Sequence_detector_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Sequence_detector_top(clk, reset, step, X, M, Q, Z);
   
   input clk,reset;
   input X;
   input M;
   output Z;
   output [2:0] Q;
   
   wire step_out;
   
   //                           (     clk, reset, x, state, z)
   Sequence_010110_detector sd0 (step_out, reset, X,     Q, z);
   
   //               (clk, reset, Step_in, Step_out);
   switch_filter sd1(clk, reset,    step, step_out);

endmodule
