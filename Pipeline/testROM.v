`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:17 11/30/2013
// Design Name:   memoriaDeInstrucciones
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Datapath Simple/DataPath/testROM.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memoriaDeInstrucciones
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testROM;

	// Inputs
	reg [31:0] direccion;
	reg clk;

	// Outputs
	wire [31:0] instruccion;

	// Instantiate the Unit Under Test (UUT)
	memoriaDeInstrucciones uut (
		.direccion(direccion), 
		.clk(clk), 
		.instruccion(instruccion)
	);

	initial begin
		// Initialize Inputs
		direccion = 32'b00000000000000000000000000000000;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #1 clk = ~clk; 
endmodule

