`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:02 12/10/2013
// Design Name:   pipeline
// Module Name:   D:/Mariano/Universidad/Ing. en Comp/Arquitectura de Computadoras/2013/Practico/TPF/Pipeline Simple/Pipeline/testPipeline.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testPipeline;

	// Inputs
	reg clk;

	// Outputs
	wire salida;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.salida(salida)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
	  always #10 clk = ~clk;    
		
      
endmodule

