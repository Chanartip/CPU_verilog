`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   ram1.v
// module:     ram1
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Memory unit that carried pre-programed instructions,
//             or could memorize 16-bit value as well.
//
// Note:       Pre-programed memory by CECS301 Instructor Allison
//             contain 256 of 16-bit values. (256 x 16)
// 
// Input:      addr  - address or a pointer to a regeister in memory
//             we    - write enable. If '1', din will be written to the address(addr)
//             din   - data input
//  
// Output:     dout  - data output from a register of the memory
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module ram1(clk, we, addr, din, dout);

   input           clk;       // on-board clock(100MHz)
   input            we;       // Write enable (btnR)
   input  [ 7:0]  addr;       // Address pointer (from address sequencer)
   input  [15:0]   din;       // data input (from switches)
   output [15:0]  dout;       // data output (to display controller)

   // call the instant of memory using Xilinx CoreGen IP
   ram_256x16 lab4_ram (
     .clka(clk),     // input clka
     .wea(we),       // input  [ 0 : 0] wea
     .addra(addr),   // input  [ 7 : 0] addra
     .dina(din),     // input  [15 : 0] dina
     .douta(dout)    // output [15 : 0] douta
   );

endmodule
