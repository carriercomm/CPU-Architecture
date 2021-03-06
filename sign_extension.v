`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//					
// Engineer: Gabe Harms
// Module Name:  sign_extension.v 
// Description:	Extends input from 16 bits to 32 bits while keeping the sign
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module sign_extension

(
    in,	//16-bit input
	out	//32-bit sign extended output
);

	parameter INPUT_DWIDTH = 16;
	parameter OUTPUT_DWIDTH = 32;
    //--------------------------
	// Input Ports
	//--------------------------
	// < Enter Input Ports  >
    input 		[INPUT_DWIDTH-1:0]	in;
	
    //--------------------------
    // Output Ports
    //--------------------------
    // < Enter Output Ports  >	
    output 	[OUTPUT_DWIDTH-1:0] 	out; 
		
	localparam SIGN_BIT_LOCATION = INPUT_DWIDTH-1;
	localparam SIGN_BIT_REPLICATION_COUNT = OUTPUT_DWIDTH - INPUT_DWIDTH;
	
 
	assign out = {{SIGN_BIT_REPLICATION_COUNT{in[SIGN_BIT_LOCATION]}},in[INPUT_DWIDTH-1:0]};
	
 endmodule  



