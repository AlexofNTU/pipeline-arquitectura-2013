`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:58:00 11/30/2013
// Design Name:   SaltosALU
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/Datapath Simple/DataPath/testALUSaltos.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SaltosALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testALUSaltos;

	// Inputs
	reg [31:0] ShiftLeft;
	reg [31:0] pc;

	// Outputs
	wire [31:0] ALUResult;

	// Instantiate the Unit Under Test (UUT)
	SaltosALU uut (
		.ShiftLeft(ShiftLeft), 
		.pc(pc), 
		.ALUResult(ALUResult)
	);

	initial begin
		// Initialize Inputs
		ShiftLeft = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
       ShiftLeft = 32'b00000000000000000000000000000111;
		 pc = 32'b00000000000000000000000000000111;
		// Add stimulus here

	end
      
endmodule

