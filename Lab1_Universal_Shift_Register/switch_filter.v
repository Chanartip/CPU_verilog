`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   switch_filter.v
// module:     switch_filter
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    A structural module or top level of clock divider and debounce modules.
//             Make other structural modules easier to access these two modules.
//
// Note:       Clock divider output is 500Hz to debounce module
//
// Revision date: June 8, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment
//
////////////////////////////////////////////////////////////////////////////////////
module switch_filter(clk, reset, Step_in, Step_out);

   input    clk, reset;       // System clock and reset
   input    Step_in;          // Step button from board
   output   Step_out;         // Step output from other modules
   
   wire     clk_500;          // 500Hz clock from clk_div to debounce
   
   // Step down system clock to 500 Hz
   //          clk_in, reset, clk_out
   clk_div sf0(   clk, reset, clk_500);
   
   // Stablized and confirm the switch-input signal
   //               clk, reset,     Din,     Dout
   debounce sf1(clk_500, reset, Step_in, Step_out);

endmodule
