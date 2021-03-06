`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//					
// Engineer: Gabe Harms
// Module Name:  mux_2to1_5bits.v 
// Description:	5 bit 2 to 1 mux
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module mux_2to1_5bits

(
    in0,	//input 0
	in1,	//input 1
	out,	//output
	sel	//select
);

	parameter DWIDTH = 5;
    //--------------------------
	// Input Ports
	//--------------------------
	// < Enter Input Ports  >
    input 		[DWIDTH-1:0]		in0;
	input 		[DWIDTH-1:0]		in1;
	input 									sel;
	
    //--------------------------
    // Output Ports
    //--------------------------
    // < Enter Output Ports  >	
    output 	[DWIDTH-1:0] 		out; 
		
  
	assign out = (sel == 0) ? in0 : in1;
    
 endmodule  



