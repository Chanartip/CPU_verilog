`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   decoder3to8.v
// module:     decoder3to8
// Date:       October 14, 2016
// Version:    1.0
//
// Purpose:    If this Decoder is enable(en is HIGH), it will send HIGH
//             to a register according to the 3-bit input(in). 
//             For example, if in is 000, it will send HIGH to register 0,
//                          if in is 001, it will send HIGH to register 1,
//                          if in is 111, it will send HIGH to register 7,
//                      and it will send LOW to all registers by default.
//             If this Decoder is not enable(en is LOW), it will send LOW
//             to all registers.
//
// Note:       There are 3 instances of this Decoder in this lab which each
//             decoder has two purposes. writing or reading address. 
//             If the output sends 1 to the selected register, the register 
//             will be written data Input from switches when the en is on. 
//             On the other hands, if the output is 1 for the selected register,
//             the data inside the register will be read.
//  
// Revision date: June 17, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module decoder3to8(in, en, out);

   input               en;                // enable the decoder
   input      [2:0]    in;                // 3-bit input
   output reg [7:0]   out;                // 8-bit decoded output
   
   always @ (en, in) 
      if(en)                              // Enable
         case(in)
            3'b000: out = 8'b00000001;    // Turn on register0
            3'b001: out = 8'b00000010;    // Turn on register1
            3'b010: out = 8'b00000100;    // Turn on register2
            3'b011: out = 8'b00001000;    // Turn on register3
            3'b100: out = 8'b00010000;    // Turn on register4
            3'b101: out = 8'b00100000;    // Turn on register5
            3'b110: out = 8'b01000000;    // Turn on register6
            3'b111: out = 8'b10000000;    // Turn on register7
            default: out = 8'b0;          // Turn off all registers
         endcase
      else                                // Not Enable
         out = 8'b0;                      // Turn off all registers
   
endmodule
