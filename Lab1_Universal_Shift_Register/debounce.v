`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer:   Chanartip Soonthornwan
// Email:      Chanartip.Soonthornwan@gmail.com
// Filename:   debounce.v
// module:     debounce
// Date:       September 7, 2016
// Version:    1.0
//
// Purpose:    Debounce module will wait for some amount of time to stablize the
//             input from switch button on board. The stablized output will
//             send HIGH (or '1') to the output(Dout) as the input confirmation
//
// Note:       When a switch is pressed, there are electro mechanical signal, 
//             which is unstablized signal, generated for around 10 to 20 milisecond.
//             After this module has wait for 20 milisecond, it will send out 
//             an one-shot pulse to the output 
//
// Revision date: June 7, 2017
// Version      : 1.1
// Update       : re-arrange the code and comment
//
//
////////////////////////////////////////////////////////////////////////////////////
module debounce(clk, reset, Din, Dout);

   input  clk;       // Clock signal from clk_div
   input  reset;     // Reset signal input
   input  Din;       // Step input from switch
   output Dout;      // One-shot pulse

   reg [9:0] q;      // Memory for shifting unstablized input(Din)
   
   /*
    *    Each bit of 10-bit register 'q' used represent 1/10 of the clk_in period.
    *    If the clk_in is 500 Hz, then each bit holds 50Hz. Since there are 10 of 50Hz,
    *    then debounce module would take (1/50)*10 = 0.2 second or 20 miliseconds, 
    *    which is the desired waiting time to collect the output.
    */
    always @ (posedge clk or posedge reset) begin
     
      if(reset == 1'b1)       // Reset button is pressed
         q <= 10'b0;           // Clear the registers
      
      else begin              // An input switch is pressed
      
         // Shifting Din to q[9] would take 20 ms
         q[9] <= q[8];   q[8] <= q[7];   q[7] <= q[6];   q[6] <= q[5];
         q[5] <= q[4];   q[4] <= q[3];   q[3] <= q[2];   q[2] <= q[1];
         q[1] <= q[0];   q[0] <= Din;
      end
   end      // always
   
   /*
    *    To AND !q[9] with the rest is the first moment that the input signal has 
    *    been stablized, then Dout will be the one-shot pulse either HIGH or LOW
    *    as a confirmation of the Din
    */
   assign Dout = !q[9] & q[8] & q[7] & q[6] & q[5] & q[4] & q[3] & q[2] & q[1] & q[0];
   
endmodule
