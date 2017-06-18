`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Memory_and_Display_Controller_top.v
// module:     Memory_and_Display_Controller_top
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Demonstrating how memory works with display controller,
//             display the overall of this lab and wires from each module
//             to the others.
//
// Note:       step - will increase the pointer(Address from address sequencer) by one
//             we   - write enable for writing data input(from switch) to
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module Memory_and_Display_Controller_top
(clk, reset, sel, step, we, Switch, Anode, a,b,c,d,e,f,g);

   input       clk, reset;    // On-board clock, and reset signal
   input              sel;    // Select to show either outptut from ram or switches
   input             step;    // Step clock for entire system.
   input               we;    // Write Enable to write on ram
   input  [ 7:0]   Switch;    // Data input(din)

   output   a,b,c,d,e,f,g;    // Each element on 7-segment display
   output [ 3:0]    Anode;    // Each anode on segment display
  
   wire         addr_step;    // Step signal for address sequencer
   wire          mem_step;    // RAM step signal to move through the ram by one(click) 
   wire   [ 7:0]  Address;    // Address pointer or counter 
   wire   [15:0]      Seg;    // Data to display from both ram and switches
   wire   [15:0]  mem_out;    // Data from Ram to display
   
   // RAM or Memory
   // pre-programmed memory by instructor Allison
   // in the purpose of carrying 256 values of 16 bits
   // Or being a memory to memorize data input(din) if
   // write enable(we) is high.
   //
   //        clk,       we,    addr,             din,    dout
   ram1 mdc0(clk, mem_step, Address, {8'hFF, Switch}, mem_out);
   
   // Display controller
   // The unit to display output of this module
   //
   //                      clk, reset, seg, ANODE, A,B,C,D,E,F,G
   Display_Controller mdc1(clk, reset, Seg, Anode, a,b,c,d,e,f,g);

   // Address Sequencer
   // Generate an 8-bit address that is incremented by on on every step
   //
   //                  step, reset, addr_out
   addr_seqr mdc2(addr_step, reset, Address);

   // Switch filter
   // Generate 'one-pulse' shot as an output to confirm if the button
   // is intentially pressed.
   //
   //                           clk, reset, Step_in,  Step_out
   switch_filter addr_seqr_step(clk, reset,    step, addr_step),
                   memory_pulse(clk, reset,      we,  mem_step);

   // Byte_mux
   // Selecting the output to display on Display Controller
   // the output of this lab.
   // Two LSByte(s) will display two LSByte from RAM by default 
   // and two MSbyte(s) either RAM or switches will be selected by 
   // selection(sel) 
   //
   assign Seg[ 7:0] = mem_out[7:0];
   assign Seg[15:8] = sel ? mem_out[15:8] : Address ;
    
endmodule
