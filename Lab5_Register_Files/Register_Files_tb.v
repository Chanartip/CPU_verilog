`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Engineer:	Chanartip Soonthornwan
// Email: 	   Chanartip.Soonthornwan@student.csulb.edu
// Filename:	Register_File_TB.v
// Date: 		October 18, 2016
// Version: 	1.0
//
// Purpose: 	To test Register File inputs and outputs if they works
//             properly by setting up the inputs for the expected outputs.
//             Also generating an input pattern to check if all registers
//             inside of Register File are able to memorize the input and
//             display when the register that hold the input is selected.
// 
// Notes:		Register File tese bench is not effected the actual Register File
//             because test bench is a simulator that simulates virtual inputs
//             in order to check if the module-to-test output is logically right
//             as expected.
// 
////////////////////////////////////////////////////////////////////////////////

module Register_Files_tb;

	// Inputs
	reg          clk ;      //The generated clock for test bench
	reg        reset ;      //Stimulated reset 
	reg           we ;      //Stimulated write enable
	reg  [2:0] W_Adr ;      //Write Address
	reg  [2:0] R_Adr ;      //R Address
	reg  [2:0] S_Adr ;      //S Address
	reg [15:0]     W ;      //Data in

	// Outputs
	wire [15:0] R;          //First  Memory
	wire [15:0] S;          //Second Memory

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.W(W), 
		.W_Adr(W_Adr), 
		.R_Adr(R_Adr), 
		.S_Adr(S_Adr), 
		.R(R), 
		.S(S)
	);

   /*
      Clock Generator that generates clock signal that
      change its level every 5 ns to use for Register File
      test bench module.
   */
   always #5 clk = ~clk;                  

	initial begin
   
		// Initialize Inputs
		clk   = 0;	reset = 0;     we = 0;
		W_Adr = 0;  R_Adr = 0;  S_Adr = 0;
		W     = 0;
      
      /*
         A $time function setting that will be used as a timestamp.
         
         $timeformat(unit, precision, "unit", minwidth);
         
         - unit is the base of time to be display where -12 is ps
          (where -9 is ns and -6 is us)
         - precision is the number of decimal to be displayed.
         - "unit" is a string to display unit of time.
         - minwidth is the number of time characters to display.
      */
      $timeformat (-12, 1, " ps", 8); 
      
      do_reset     ;           //reset the Register File.
      dump_mem     ;           //read the Register File for the first time.
      write_pattern;           //write the Register File.
      dump_mem     ;           //read the Register File for the second time.
      
	end
   
   
   /*
      do_reset task is to try using reset by setting it equal to one,
      and then setting it back to zero for not reset.
   */
   task do_reset; begin
   
      @(negedge clk)
         reset = 1;           //reset output to be 16'h0
      @(negedge clk)
         reset = 0;           //return to regular operation mode.
      end
      
   endtask
     
   /*
      Read memories in the Register File by using for loop
      to display all register outputs that have been memorized.
      It will display 0000 before asserting input into it.
      After that, it will display the memorized outputs.
   */
   task dump_mem;
      
      //Address counter
      integer i;            
      
      for(i = 0; i < 8; i = i+1 ) begin                            
         @(negedge clk)
               we = 0    ;    //Not enable to write
                W = 0    ;    //Input is 16-bit 0s.
            W_Adr = 0    ;    //Write address.
            R_Adr = i    ;    //Starting to read R_Adr from 0 to 7
            S_Adr = 7 - i;    //Starting to read S_Adr from 7 to 0
         @(posedge clk)
            //Display output
            #1 $display ("Time %t || R %h || S %h", $time, R, S);
      end
   endtask
   
   /*
      A task to assert input pattern to the Register File where
      the input pattern is the compliment of Address counter(i).
   */
   task write_pattern;
   
      //Address counter
      integer i;
      
      for(i = 0; i < 8; i = i+1 ) begin
         @(negedge clk)
               we =  1 ;         //Enable to write
            W_Adr =  i ;         //Write input on the register(i)
                W = ~i ;         //input pattern.
            R_Adr =  0 ;         
            S_Adr =  0 ;
      end 
      
   endtask
   
      
endmodule

