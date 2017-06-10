`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   clock_divider.v
// module:     clk_div
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    To divide on-board clock to desired clock freqency since on-board
//             clock is much faster than the desired, so this module will
//             provide a slower frequency-clock output(500Hz)
//
// Note:       Output clock signal(clk_out) = (input freqency/ output freqency)/2
//
// Revision date: October 22, 2016
// Version      : 1.1
// Update       : Update port list
//
// Revision date: June 6, 2017
// Version      : 1.2
// Update       : Add parameter of on-board clock(100MHz)
//                   and re-arrange code layout and comments.
//
////////////////////////////////////////////////////////////////////////////////////
module clk_div(clk_in, reset, clk_out);
   
   input    reset;      // Reset counters and output
   input    clk_in;     // On-board clock signal input
   output   clk_out;    // Desire clock signal output

   reg      clk_out;
   
   // A counter variable
   integer   i;         
   
   // 100 MHz on-board clock parameter
   parameter Board_clk = 100*1000000;  
   
   /*
    *    This module will work at the positive edge of the  
    *    circuit clock signal or when the reset input is high.
    */
   always @ (posedge reset, posedge clk_in) begin
      
      /*
       *    When the reset button is pressed, counter and output signal
       *    will be reset to zero. In other word, 
       */
      if(reset == 1'b1) begin
         i = 0;
         clk_out = 1'b0;
      end
      else begin     // Counting signal when 'reset' is not pressed
         i = i + 1;  // Increment the counter on every posedge of Board_clk
         
         /*
          *    Generate desired frequency of clock signal by
          *    creating toggle the output, then reset the counter.
          */
         if(i >= (Board_clk/500)/2 ) begin
            clk_out = ~clk_out;  
            i = 0;
         end
      end
   end   // always

endmodule
