`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:39:22 11/29/2013
// Design Name:   Datapath
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Datapath Simple/DataPath/test.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	Datapath uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
	#100;
		// Add stimulus here

	end
	always #10 clk = ~clk;
      
endmodule

