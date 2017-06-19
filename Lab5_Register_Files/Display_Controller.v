`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Display_Controller.v
// module:     Display_Controller
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Display output on 4 anodes of 7-segment display on board
//
// Note:       This module using 240Hz clock signal since 4 anodes will use 60Hz
//             on each node, and 60Hz is visualized to human sensation.
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module Display_Controller(clk, reset, seg, ANODE, A,B,C,D,E,F,G);

   input       clk, reset;       // on-board clock, and reset signal
   input    [15:0]    seg;       // Data to display on 7-segment display 

   output   A,B,C,D,E,F,G;       // 7-segment display elements
   output   [ 3:0]  ANODE;       // 4 Anodes of 7-segment display on board

   wire          clk_240Hz;      // Clock signal needed for displaying inputs
   wire     [1:0]  seg_sel;      // 7-segment selection using for constantly changing
                                 //    anode to display from right nodes to left nodes
   wire     [3:0]  out_hex;      // A 4-bit output to display on an anode
   
   // Hex to 7-segment
   // converting 4-bit to 7 bits representing
   // each element on the segment
   //
   //                     hex, a,b,c,d,e,f,g
   hex_to7segment dc0(out_hex, A,B,C,D,E,F,G);
   
   // LED Controller
   // A Finite State Machine(FSM) counting up states
   // and return to the initial state on seg_sel
   // to inform Multiplexer which inputs should be
   // selected in order to represent on display
   //
   //                        clk, reset, anode, seg_sel
   led_controller dc1 (clk_240Hz, reset, ANODE, seg_sel);

   // Multiplexer four to one
   // to select a 4-bit output from 4 of 4-bit intpus(16 bits of seg)
   // by seg_sel from led_controller
   //
   //            D,     sel,       Q
   Mux4to1 dc2(seg, seg_sel, out_hex);
   
   // Clock divider
   // generating slow frequency clock especially for this module
   //
   //          clk_in, reset, clk_out
   led_clk dc3(   clk, reset, clk_240Hz);
   
endmodule
