`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:21 12/20/2013
// Design Name:   Cortocircuito
// Module Name:   D:/Facultad/Arquitectura de Computadoras 2013/Practico/TPF/pipeline-arquitectura-2013/Pipeline/testSCU.v
// Project Name:  DataPath
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Cortocircuito
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testSCU;

	// Inputs
	reg [4:0] Rt;
	reg [4:0] Rs;
	reg [4:0] RdWb;
	reg [4:0] RdMem;
	reg EscWb;
	reg EscMem;

	// Outputs
	wire [1:0] forA;
	wire [1:0] forB;

	// Instantiate the Unit Under Test (UUT)
	Cortocircuito uut (
		.Rt(Rt), 
		.Rs(Rs), 
		.RdWb(RdWb), 
		.RdMem(RdMem), 
		.forA(forA), 
		.forB(forB), 
		.EscWb(EscWb), 
		.EscMem(EscMem)
	);

	initial begin
		// Initialize Inputs
		Rt = 0;
		Rs = 0;
		RdWb = 0;
		RdMem = 0;
		EscWb = 0;
		EscMem = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Rt = 2;
		Rs = 0;
		RdWb = 2;
		RdMem = 0;
		EscWb = 1;
		EscMem = 0;
		#100;
		Rt = 2;
		Rs = 5;
		RdWb = 0;
		RdMem = 5;
		EscWb = 0;
		EscMem = 1;
        
		// Add stimulus here

	end
      
endmodule

