`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:57:21 11/30/2013
// Design Name:   ExtensionSigno
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Datapath Simple/DataPath/extensionTEST.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ExtensionSigno
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module extensionTEST;

	// Inputs
	reg [15:0] valEntrada;

	// Outputs
	wire [31:0] valExtendido;

	// Instantiate the Unit Under Test (UUT)
	ExtensionSigno uut (
		.valEntrada(valEntrada), 
		.valExtendido(valExtendido)
	);

	initial begin
		// Initialize Inputs
		valEntrada = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

