`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:47 06/09/2017 
// Design Name: 
// Module Name:    Sequence_010110_detector 
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
module Sequence_010110_detector(clk, reset, x, m, z, state);

   input       clk, reset;
   input                x;
   input                m;
   output reg           z;
   output reg [2:0] state;
   
   
   reg   [2:0]    PresentState;
   reg   [2:0]    NextState;
   
   // Next State Logic 
   always @ (PresentState, x)
      case( {PresentState, x} )
         4'b000_0: NextState = 3'b001;
         4'b001_0: NextState = 3'b001;
         4'b001_1: NextState = 3'b010;
         4'b010_0: NextState = 3'b011;
         4'b011_0: NextState = 3'b001;
         4'b011_1: NextState = 3'b100;
         4'b100_0: NextState = 3'b011;
         4'b100_1: NextState = 3'b101;
         4'b101_0: NextState = m ? 3'b000 : 3'b110;
         4'b110_0: NextState = m ? 3'b000 : 3'b001;
         default : NextState = 3'b000;
      endcase
      
   // State Register
   always @ (posedge clk, posedge reset)
      if(reset == 1'b1)
         PresentState = 3'b0;
      else
         PresentState = NextState;
   
   // Output Combinational Logic
   always @ (PresentState)
      case(PresentState)
         3'b000: {state, z} = 4'b000_0;
         3'b001: {state, z} = 4'b001_0;
         3'b010: {state, z} = 4'b010_0;
         3'b011: {state, z} = 4'b011_0;
         3'b100: {state, z} = 4'b100_0;
         3'b101: {state, z} = m ? ( x ? 4'b101_1 : 4'b101_0) : 4'b101_0;
         3'b110: {state, z} = 4'b110_1;
         default:{state, z} = 4'b000_0;
      endcase
      
endmodule
