`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Sequence_010110_detector.v
// module:     Sequence_010110_detector
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    The module to check the serial input if it has '010110' pattern
//             in it. Once the module found the pattern, it will return '1'
//             and also display the current state on LEDs
//
// Note:       There are Moore and Mealy machine types according to mode(m)
//             Moore(m = 0), and Mealy(m = 1).
//             
//             Overlapping
//  
// Revision date: June 13, 2017
// Version      : 2.0
// Update       : reconstructed from combination assignment to truth table
//
////////////////////////////////////////////////////////////////////////////////////
module Sequence_010110_detector(clk, reset, x, m, z, state);

   input       clk, reset;             // Step clock, and reset
   input                x;             // A bit from serial input
   input                m;             // Mode selection
   output reg           z;             // Output flag
   output reg [2:0] state;             // Current State 
   
   // State registers
   reg   [2:0]    PresentState;        
   reg   [2:0]    NextState;
   
   // Next State Logic 
   always @ (PresentState, x, m)
      case( {PresentState, x} )
         4'b000_0: NextState = 3'b001;
         4'b001_0: NextState = 3'b001;
         4'b001_1: NextState = 3'b010;
         4'b010_0: NextState = 3'b011;
         4'b011_0: NextState = 3'b001;
         4'b011_1: NextState = 3'b100;
         4'b100_0: NextState = 3'b011;
         4'b100_1: NextState = 3'b101;
         4'b101_0: NextState = m ? 3'b001 : 3'b110;   // 3'b0(Mealy), 3'b110(Moore)
         4'b110_0: NextState = m ? 3'b000 : 3'b001;   // 3'b0(Mealy), 3'b001(Moore)
         4'b110_1: NextState = m ? 3'b000 : 3'b010;   // 3'b0(Mealy), 3'b010(Moore)
         default : NextState = 3'b000;
      endcase
      
   // State Register
   // Updating present state every positive edge of clock
   always @ (posedge clk, posedge reset)
      if(reset == 1'b1)
         PresentState = 3'b0;
      else
         PresentState = NextState;
   
   // Output Combinational Logic
   always @ (PresentState, x, m)
      case(PresentState)
         3'b000: {state, z} = 4'b000_0;
         3'b001: {state, z} = 4'b001_0;
         3'b010: {state, z} = 4'b010_0;
         3'b011: {state, z} = 4'b011_0;
         3'b100: {state, z} = 4'b100_0;
         // For Mealy Mode:
         //    if input is 1, output is 4'b101_1
         //    else output is 4'b101_0
         3'b101: {state, z} = m ? ( x ? 4'b101_0 : 4'b101_1) : 4'b101_0;
         3'b110: {state, z} = 4'b110_1;
         default:{state, z} = 4'b000_0;
      endcase
      
endmodule
