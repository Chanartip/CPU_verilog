`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:17 07/02/2017 
// Design Name: 
// Module Name:    ram_16x256 
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
module ram_16x256(clk, we, addr, din, dout);

   input              clk;
   input               we;
   input     [7:0]   addr;
   input    [15:0]    din;
   output   [15:0]   dout;

   ram1 Lab8_memory_a (
     .clka(clk)  ,   // input clka
     .wea(we)    ,   // input   [0 : 0] wea
     .addra(addr),   // input   [7 : 0] addra
     .dina(din)  ,   // input  [15 : 0] dina
     .douta(dout)    // output [15 : 0] douta
   );


endmodule
