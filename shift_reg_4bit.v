`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   shift_reg_4bit.v
// module:     shift_reg_4bit
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    This module will shift an input according to assgined mode(M) after 
//             the one-shot pulse from switch filter is received. This module also
//             shows top level of multiplexers and flipflops.
//
// Note:       This module shows each multiplexer's inputs which the multiplexers
//             will decide to pass the input to d flip flop base on mode(M).     
//
//             Mode(M) descriptions:
//                00    - no change; pass the d-flip flop output from previous clock.
//                01    - parallel; pass the data in D[3:0] to output
//                10    - shift right; the flipflop output will be right shifted
//                11    - rotate left; the flipflop output will be left shifted and
//                      the MSB will be at LSB instead.
//  
// Revision date: June 8, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment, and change variables' names.
//
////////////////////////////////////////////////////////////////////////////////////
module shift_reg_4bit(clk, reset, si, M, D, Q);

   input  clk, reset;      // one-shot pulse clock and reset
   input          si;      // serial input to shift for "shift right" mode
   input  [1:0]    M;      // Mode select
   input  [3:0]    D;      // Data Input
   output [3:0]    Q;      // Data Output

   wire   [3:0]    w;      // wires from multiplexers to d-flipflop

   // Multiplexers
   // Each one represents 4 modes by 11, 10, 01, 00 respectively.
   // D is the input to multiplexer that could be from flipflop's output
   // from last clock tick, or D could be input from Data input itself
   //                              [3:0]D, [1:0]sel,    Q
   Mux4to1 mux0( {Q[3], Q[1], D[0], Q[0]} ,   M[1:0], w[0]),
           mux1( {Q[0], Q[2], D[1], Q[1]} ,   M[1:0], w[1]),
           mux2( {Q[1], Q[3], D[2], Q[2]} ,   M[1:0], w[2]),
           mux3( {Q[2],   si, D[3], Q[3]} ,   M[1:0], w[3]);
   
   // D-flipflop
   // Remember the output for this clock for the next clock tick use.
   //      clk, reset,    d,    q
   d_ff d0(clk, reset, w[0], Q[0]),  
        d1(clk, reset, w[1], Q[1]),
        d2(clk, reset, w[2], Q[2]),
        d3(clk, reset, w[3], Q[3]);

endmodule
