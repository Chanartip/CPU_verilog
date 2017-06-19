`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   reg16.v
// module:     register 16 bits
// Date:       October 14, 2016
// Version:    1.0
//
// Purpose:    
//
// Note:       
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module reg16(clk, reset, load, oeA, oeB, Din, DA, DB);

   input        clk, reset;     // On-board clock, and reset signal(btnU)
   input              load;     // Load 
   input          oeA, oeB;     // Output Enable A and B
   input    [15:0]     Din;     // Data Input
   
   output   [15:0]  DA, DB;     // Data output A and B
   
   reg      [15:0]    Dout;     // Temporary register to hold output value
   
   // behaviral section for writing to the register
   always @ (posedge clk or posedge reset)
      if(reset)
         Dout <= 16'b0;         // reset output to zero
      else
         if(load)               // load new output
            Dout <= Din;
         else                   // output is not changed.
            Dout <= Dout;
            
   // conditional continuous assignments for reading the register
   // Tri-state output where return High impedance while the Output Enable is not on.
   // This will make the register reponse faster when the enable is on.
   assign DA = oeA ? Dout : 16'hz;
   assign DB = oeB ? Dout : 16'hz;
   
endmodule
