`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:38 06/29/2017 
// Design Name: 
// Module Name:    Instruction_Register 
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
module Instruction_Register(clk, reset, ir_ld, ir_in, ir_out);

   input          clk, reset; 
   input              ir_ld ;  
   input      [15:0]  ir_in ;
   output reg [15:0]  ir_out;
   
   always @ (posedge clk, posedge reset)
      if(reset)
         ir_out = 0;
      else
         if(ir_ld)
            ir_out = ir_in;
         else
            ir_out = ir_out;
   

endmodule
