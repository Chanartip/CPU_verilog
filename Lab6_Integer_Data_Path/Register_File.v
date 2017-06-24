`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   Register_File.v
// module:     Register_File
// Date:       October 14, 2016
// Version:    1.0
//
// Purpose:    A Memory using 8 instances of register to memorize 16-bit data(W) 
//             and return the 16-bit data to two channel outputs R and S.
//
// Note:       A register overwrites a 16-bit data(W) to either R or S
//             when the register is addressed by W_Adr. Likewise, the 
//             register reads its data when it's addressed by R_Adr
//             or S_Adr, therefore, there are two datas on 4 pixels of 
//             7-segment display; 2 reserved for R, and another 2 for S.
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module Register_File(clk, reset, we, W, W_Adr, R_Adr, S_Adr, R, S);

   input        clk, reset;      // On-board clock, and reset signal
   input                we;      // Write Enable
   input     [2:0]   W_Adr;      // Write Address
   input     [2:0]   R_Adr;      // Output A Enable Address (oeA)
   input     [2:0]   S_Adr;      // Output B Enable Address (oeB)
   input    [15:0]       W;      // Data in
   
   output    [15:0]    R,S;      // Data A and B output

   wire     [7:0] ld, oea, oeb;  // Decoded wires to register files

   // Decoder selecting 3-bit input from switches to select a register on at a time.
   //
   //                  in,   en, out
   decoder3to8 dec0(W_Adr,   we,  ld),
               dec1(R_Adr, 1'b1, oea),
               dec2(S_Adr, 1'b1, oeb);
   
   // Seven instances register used to collect 16-bit data(W), and return the data
   // to the top level when the channel R or S is enable.
   //
   //          clk, reset,  load,    oeA,    oeB, Din, DA, DB
   reg16 reg0 (clk, reset, ld[0], oea[0], oeb[0],   W,  R,  S),
         reg1 (clk, reset, ld[1], oea[1], oeb[1],   W,  R,  S),
         reg2 (clk, reset, ld[2], oea[2], oeb[2],   W,  R,  S),
         reg3 (clk, reset, ld[3], oea[3], oeb[3],   W,  R,  S),
         reg4 (clk, reset, ld[4], oea[4], oeb[4],   W,  R,  S),
         reg5 (clk, reset, ld[5], oea[5], oeb[5],   W,  R,  S),
         reg6 (clk, reset, ld[6], oea[6], oeb[6],   W,  R,  S),
         reg7 (clk, reset, ld[7], oea[7], oeb[7],   W,  R,  S);

endmodule
