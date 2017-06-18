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
//             Overlapping
//  
// Revision date: June 13, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment, and change variables' names.
//
////////////////////////////////////////////////////////////////////////////////////
module Sequence_detector_top(clk, reset, step, X, M, Z, A,B,C,D,E,F,G, anode);
   
   input clk,reset;           // on-board clock, and botton up for reset
   input      step;           // step clock on button down
   input         X;           // 1-bit for serial input at switch[0]
   input         M;           // Moore or Mealy mode at switch[7]
   output        Z;           // flag output for the sequence detector at led[0]
   
   // 7segment-display outputs
   output A,B,C,D,E,F,G;
   output [3:0]   anode;
   
   wire    step_out;
   wire [2:0] STATE;
   // The module to check the serial input if it has '010110' pattern
   // in it. Once the module found the pattern, it will return '1'
   // and also display the current state on LEDs
   //                           (     clk, reset, x, m, z, state)
   Sequence_010110_detector sd0 (step_out, reset, X, M, Z, STATE);
   
   //
   //                      [3:0]hex, a,b,c,d,e,f,g
   hex_to7segment sd1( {1'b0,STATE}, A,B,C,D,E,F,G);
   
   // A structural module or top level of clock divider and debounce modules.
   // Make other structural modules easier to access these two modules.
   //               (clk, reset, Step_in, Step_out);
   switch_filter sd2(clk, reset,    step, step_out);

   // Anode control for 7segment display
   // 4 bits represent each node on the display
   // if the node is '0', means turn  on the node
   //            and '1', means turn off the node.
   assign anode = 4'b1110;
   
endmodule
