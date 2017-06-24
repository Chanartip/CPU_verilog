`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   hex_to7segment.v
// module:     hex_to7segment
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Converting 4-bit input(hex) to be 7-bit output representing
//             each node on 7-segment display(a,b,c,d,e,f,g)
//
// Note:       The letter 'b' and 'd' will not be capitalized.
//             and '-' will be default or input that's not hex.
//  
// Revision date: June 14, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module hex_to7segment(hex, a,b,c,d,e,f,g);
   
   input    [3:0] hex;
   output   reg   a,b,c,d,e,f,g;
   
   always @ (hex) 
      case(hex)                      //abcdefg
         4'h0:    {a,b,c,d,e,f,g} = 7'b0000001; // 0
         4'h1:    {a,b,c,d,e,f,g} = 7'b1001111; // 1
         4'h2:    {a,b,c,d,e,f,g} = 7'b0010010; // 2
         4'h3:    {a,b,c,d,e,f,g} = 7'b0000110; // 3
         4'h4:    {a,b,c,d,e,f,g} = 7'b1001100; // 4
         4'h5:    {a,b,c,d,e,f,g} = 7'b0100100; // 5
         4'h6:    {a,b,c,d,e,f,g} = 7'b0100000; // 6
         4'h7:    {a,b,c,d,e,f,g} = 7'b0001111; // 7
         4'h8:    {a,b,c,d,e,f,g} = 7'b0000000; // 8
         4'h9:    {a,b,c,d,e,f,g} = 7'b0000100; // 9
         4'hA:    {a,b,c,d,e,f,g} = 7'b0001000; // A
         4'hB:    {a,b,c,d,e,f,g} = 7'b1100000; // b
         4'hC:    {a,b,c,d,e,f,g} = 7'b0110001; // C
         4'hD:    {a,b,c,d,e,f,g} = 7'b1000010; // d
         4'hE:    {a,b,c,d,e,f,g} = 7'b0110000; // E
         4'hF:    {a,b,c,d,e,f,g} = 7'b0111000; // F
         default: {a,b,c,d,e,f,g} = 7'b1111110; // -
      endcase

endmodule
