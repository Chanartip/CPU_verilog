`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   addr_seqr.v
// module:     addr_seqr
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    A count-up module using for generating address for display and 
//             for Memory module as a pointer to a register in the memory
//
// Note:       Overflowing could occur after counting 256 times(2^8 = 256)
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module addr_seqr(step, reset, addr_out);

   input               reset;          // reset signal (btnU)
   input                step;          // step signal (btnD)
   output reg [7:0] addr_out;          // a counter

   always @ (posedge step, posedge reset) begin
      if(reset == 1'b1)                // reset the output to '0' 
         addr_out = 8'b0;
      else                             // incrementing by 1
         addr_out = addr_out + 1;
   end

endmodule
