`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:35 11/29/2013 
// Design Name: 
// Module Name:    Datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Datapath(
			input clk
    );

wire [31:0] SALTOwirePC,PCwireSUMADOR,SUMADORwireSALTO,wireROM,ALUwireMUX,wireEXTENDIDO;
wire [31:0] REGISTROSwireALU,REGISTROSwireMUX,ALUwireRAM,RAMwireMUX,MUXALUwireREGISTROS,MUXwireALU;
wire [4:0] MUXwireREGISTROS;
wire BRANCHwireMUX,wireRegDst,wireZero,wireBranch,wireALUSrc,wireMemtoReg,wireMemWrite,wireMemRead,wireRegWrite;
wire [3:0] CONTROLwireALU;
wire [1:0] wireALUOp;
Pc pc(
		.clk(clk),
		.dirEntrada(SALTOwirePC),
		.dirSalida(PCwireSUMADOR)
		);
		
memoriaDeInstrucciones ROM(
									.direccion(PCwireSUMADOR),
									.clk(clk),
									.instruccion(wireROM)	
									);

SumadorPC sumadorPC(
						 .actualPC(PCwireSUMADOR),
				       .proximoPC(SUMADORwireSALTO)
						  );

SaltosMUX saltosMUX(
						  .pc(SUMADORwireSALTO), 
						  .ALUResult(ALUwireMUX),
						  .Branch(BRANCHwireMUX),
						  .resultado(SALTOwirePC)
    );
SaltosALU saltosALU(
							.ShiftLeft(wireEXTENDIDO), 
							.pc(SUMADORwireSALTO),
							.ALUResult(ALUwireMUX)

							);

ExtensionSigno extension( 
								 .valEntrada(wireROM[15:0]),
							    .valExtendido(wireEXTENDIDO)
    );
	 
RegistrosMUX registrosMUX( 
									.rt(wireROM[15:11]),
									.rd(wireROM[20:16]),
									.RegDst(wireRegDst),
									.wReg(MUXwireREGISTROS)
						 );

Branch branch(
		.Branch(wireBranch),
		.Zero(wireZero),
		.salida(BRANCHwireMUX)
    );
Registros registros(
							.clk(clk),
							.regWrite(wireRegWrite),
							.read1(wireROM[25:21]), 
							.read2(wireROM[20:16]), 
							.writeReg(MUXwireREGISTROS),
							.writeData(MUXALUwireREGISTROS),
							.data1(REGISTROSwireALU),
							.data2(REGISTROSwireMUX)
						);
AluMUX aluMux(	
					.sigExt(wireEXTENDIDO),
					.ReadData2(REGISTROSwireMUX),
					.ALUSrc(wireALUSrc),
					.resultado(MUXwireALU)
				 );	

MemoriaDeDatos RAM(
						.read(wireMemRead),
						.write(wireMemWrite),
						.clk(clk),
						.din(REGISTROSwireMUX),
						.direccion(ALUwireRAM),
						.dout(RAMwireMUX)
						);


DatosMUX datosMux(
						.ALUresult(ALUwireRAM),
						.ReadData(RAMwireMUX),
						.MemtoReg(wireMemtoReg),
						.resultado(MUXALUwireREGISTROS)
			);

ALU alu(
			.ALUctl(CONTROLwireALU),///////////////////////
			.A(REGISTROSwireALU),
			.B(MUXwireALU), 
			.ALUOut(ALUwireRAM),
			.zero(wireZero)
    );
ControlALU controlALU(
			.instruccion(wireROM[5:0]),
			.ALUOp(wireALUOp),
			.ALUctl(CONTROLwireALU)
    );
Control control(
			.instruccion(wireROM[31:26]),
			.RegDst(wireRegDst),
			.Branch(wireBranch),
			.MemRead(wireMemRead),
			.MemtoReg(wireMemtoReg),
			.MemWrite(wireMemWrite),
			.ALUSrc(wireALUSrc),
			.RegWrite(wireRegWrite),
			.ALUOp(wireALUOp)
    );
endmodule
