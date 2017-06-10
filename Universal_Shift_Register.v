`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Universal_Shift_Register.v
// module:     Universal_Shift_Register
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    To shift a 4-bit input based on Mode(M) recieved, and be the top
//             level of this circuit showing modules, wires, and interconnection.
//
// Note:       switch_filter is the module that has clock divider and debounce module
//             for stimulate the circuit clock while shift_reg_4bit is doing the
//             actual result.
//  
// Revision date: June 8, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment, and change variables' names.
//
////////////////////////////////////////////////////////////////////////////////////
module Universal_Shift_Register(clk, reset, step, SI, M, D, Q);
   
   input       clk;      // On-board clock
   input     reset;
   input      step;
   input        SI;
   input   [1:0] M;
   input   [3:0] D;
   output  [3:0] Q;

   wire   clk_wire;
   
   //              (clk, reset, Step_in, Step_out)
   switch_filter u0(clk, reset,    step, clk_wire);
   
   //               (     clk, reset, si, M, D, Q)
   shift_reg_4bit u1(clk_wire, reset, SI, M, D, Q);

endmodule
