`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:26 06/29/2017 
// Design Name: 
// Module Name:    Program_Counter 
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
module Program_Counter(clk, reset, pc_ld, pc_inc, pc_in, pc_out);

   input         clk, reset;
   input             pc_ld ;
   input             pc_inc;
   input      [15:0] pc_in ;
   output reg [15:0] pc_out;
   
   always @ (posedge clk, posedge reset) begin
      if(reset)
         pc_out = 0;
      else
      /*
         if(pc_ld)
            pc_out = pc_in;
         else
            if(pc_inc)
               pc_out = pc_out + 1;
            else
               pc_out = pc_out;
      */         
        casex({pc_ld, pc_inc})
            2'b00: pc_out = pc_out;
            2'b01: pc_out = pc_out + 1;
            2'b1x: pc_out = pc_in;
            default: pc_out = pc_out;
         endcase
         
      
   end

endmodule
