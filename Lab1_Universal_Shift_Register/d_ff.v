`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   d_ff.v
// module:     d_ff
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    The smallest memory unit that will pass an input(D) to the output(Q)
//             at the rising edge of clock input(clk).
//
// Note:       The output will be one bit only.
//  
// Revision date: June 8, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment, and change variables' names.
//
////////////////////////////////////////////////////////////////////////////////////
module d_ff(clk, reset, d, q);

   input  clk;          // clock input from switch filter
   input  reset;        // reset input from reset button
   input  d;            // one bit input
   output reg q;        // one bit output

   always @ (posedge clk, posedge reset) begin
      if(reset == 1'b1) // when the reset button is pressed
         q = 1'b0;
      else              // at rising edge of clock
         q = d;
   end
   
endmodule
