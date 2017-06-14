`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Sequence_detector_top.v
// module:     Sequence_detector_top
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Top level of '010110' sequence detector wiring the detector
//             and switch filter.
//
// Note:       On-board clock and step clock wire to swtich filter provide
//             single pulse clock(Step_out) to sequence detector, so the
//             detector will be operated on the user's pressed button.
//
//             There are Moore and Mealy machine types according to mode(m)
//             Moore(m = 0), and Mealy(m = 1).
//          
//             Non-Overlapping
//  
// Revision date: June 13, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment, and change variables' names.
//
////////////////////////////////////////////////////////////////////////////////////
module Sequence_detector_top(clk, reset, step, X, M, Z, Q);
   
   input clk,reset;
   input      step;
   input         X;
   input         M;
   output        Z;
   output [2:0]  Q;
   
   wire step_out;
   
   //                           (     clk, reset, x, m, z, state)
   Sequence_010110_detector sd0 (step_out, reset, X, M, Z, Q);
   
   //               (clk, reset, Step_in, Step_out);
   switch_filter sd1(clk, reset,    step, step_out);

endmodule
