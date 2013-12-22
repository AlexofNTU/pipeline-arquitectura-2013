`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:27 12/06/2013 
// Design Name: 
// Module Name:    pipeline 
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
module pipeline(
			input clk,
			output salida
    );

wire [31:0] w1, w2, w3, w4, w5, w6, 
				w7, w8, w10, w11, w12,
				w15, w17, w18, w20, w21, 
				w22, w23, w26, w27, w28, w29,w30;
wire [4:0] w13, w14, w19, w24, w25,w9;
wire [3:0] c27;
wire [1:0] c8, c15,c28,c29;
wire c1, c2, c3, c4, c5, c6,
	  c7, c9, c10, c11, c12, c13,
	  c14, c16, c17, c18, c19, c20, 
	  c21, c22, c23, c24, c25;

//***** ETAPA 1 *****

SaltosMUX saltosMUX(
						  .pc(w29), 
						  .ALUResult(w20),
						  .Branch(c24),
						  .resultado(w1)
						);

Pc pc(
		.clk(clk),
		.dirEntrada(w1),
		.dirSalida(w2)
		);
	
memoriaDeInstrucciones ROM(
									.clk(clk),
									.direccion(w2),
									.instruccion(w3)	
									);


/*		MemInst memoriaInstrucciones(
		  .clka(clk), // input clka
		  .addra(w2), // input [9 : 0] addra
		  .douta(w3) // output [31 : 0] douta
		);
*/
SumadorPC sumadorPC(
						 .actualPC(w2),
				       .proximoPC(w29)
						  );

// ** Latches IF/ID **
						  
IF_ID IF_ID(
				.clk(clk),
				.nextPcIN(w29),
				.instruccionIN(w3), 
				.nextPcOUT(w4),
				.instruccionOUT(w5)
				);

//***** ETAPA 2 *****	
					  
Registros registros(
							.clk(clk),
							.regWrite(c25),
							.read1(w5[25:21]), 
							.read2(w5[20:16]), 
							.writeReg(w25),
							.writeData(w26),
							.data1(w6),
							.data2(w7)
						);

ExtensionSigno extension( 
								 .valEntrada(w5[15:0]),
							    .valExtendido(w8)
    );


Control control(
			.instruccion(w5[31:26]),
			.RegDst(c1),
			.Branch(c2),
			.MemRead(c3),
			.MemtoReg(c4),
			.MemWrite(c5),
			.ALUSrc(c6),
			.RegWrite(c7),
			.ALUOp(c8)
    );
SaltosALU saltosALU(
							.ShiftLeft(w8), 
							.pc(w4),
							.ALUResult(w20)

							);
/*Hazard HDU(
				.pcEnable(),
				.mux(),
				.ifEnable(),
				.Rt(),
				.Rs(),
				.Rd(),
				.isRead()
    );*/
	 
/*

*/
// ** Latches ID/EX **

ID_EX ID_EX(
				//****ENTRADAS*****
				//
				.clk(clk),
				//CONTROL
				.RegDstIN(c1),
				.BranchIN(c2),
				.MemReadIN(c3),
				.MemtoRegIN(c4),
				.MemWriteIN(c5),
				.ALUSrcIN(c6),
				.RegWriteIN(c7),
				.ALUOpIN(c8),
				//REGISTROS
				.readData1IN(w6),
				.readData2IN(w7),
				//EXTENSION
				.signExtIN(w8),
				// instruccion[20-16]
				.ins20_16IN(w5[20:16]),
				// instruccion[15-11]
				.ins15_11IN(w5[15:11]),
				// instruccion[25-21]
				.ins25_21IN(w5[25:21]),
				//
				//****SALIDAS*****
				//
				//CONTROL
				.RegDstOUT(c14),
				.BranchOUT(c11),
				.MemReadOUT(c12),
				.MemtoRegOUT(c9),
				.MemWriteOUT(c13),
				.ALUSrcOUT(c16),
				.RegWriteOUT(c10),
				.ALUOpOUT(c15),
				//REGISTROS
				.readData1OUT(w10),
				.readData2OUT(w11),
				//EXTENSION
				.signExtOUT(w12),
				// instruccion[20-16]
				.ins20_16OUT(w13),
				// instruccion[15-11]
				.ins15_11OUT(w14),
				// instruccion[25-21]
				.ins25_21OUT(w9)
				
				);

//***** ETAPA 3 *****
				
RegistrosMUX registrosMUX( 
									.rt(w13),
									.rd(w14),
									.RegDst(c14),
									.wReg(w19)
						 );

AluMUX aluMux(	
					.sigExt(w12),
					.ReadData2(w17),
					.ALUSrc(c16),
					.resultado(w15)
				 );	

ALU alu(
			.ALUctl(c27),
			.A(w30), //poner salida de forA
			.B(w15), 
			.ALUOut(w18),
			.zero(c17)
    );
	 
mux3a1 forA(
		.registro(w10),
		.forMem(w21),
		.forWb(w26),
		.selector(c28),
		.valor(w30)
		);	 
		
mux3a1 forB(
		.registro(w11),
		.forMem(w21),
		.forWb(w26),
		.selector(c29),
		.valor(w17)
		);	 

Cortocircuito SCU(
				.Rt(w13),
				.Rs(w9),
				.RdWb(w25),
				.RdMem(w24),
				.forA(c28),
				.forB(c29),
				.EscWb(c25),
				.EscMem(c19)
				
    );

ControlALU controlALU(
			.instruccion(w12[5:0]),
			.ALUOp(c15),
			.ALUctl(c27)
    );

// ** Latches EX/MEM **

EX_MEM EX_MEM(
				//****ENTRADAS*****
				//
				.clk(clk),
				//CONTROL
				.BranchIN(c11),
				.MemReadIN(c12),
				.MemtoRegIN(c9),
				.MemWriteIN(c13),
				.RegWriteIN(c10),
				// Salida ALU Salto
				// Salida ALU
				.zeroIN(c17),
				.ALU_IN(w18),
				// Dato 2
				.readData2IN(w17),
				// Registro Destino
				.DestinoIN(w19),
				//
				//****SALIDAS*****
				//
				//CONTROL
				.BranchOUT(c20),
				.MemReadOUT(c21),
				.MemtoRegOUT(c18),
				.MemWriteOUT(c22),
				.RegWriteOUT(c19),
				// Salida ALU Salto
				// Salida ALU
				.zeroOUT(c23),
				.ALU_OUT(w21),
				// Dato 2
				.readData2OUT(w22),
				// Registro Destino
				.DestinoOUT(w24)
				);

//***** ETAPA 4 *****

Branch branch(
		.Branch(c20),
		.Zero(c23),
		.salida(c24)
    );

/*
MemoriaDeDatos RAM(
						.clk(clk),
						.read(c21),
						.write(c22),
						.din(w22),
						.direccion(w21),
						.dout(w23)
						);
*/

RAM memoriaDatos (
					  .clka(clk), // input clka
					  .wea(c22), // input [0 : 0] wea
					  .addra(w21), // input [9 : 0] addra
					  .dina(w22), // input [31 : 0] dina
					  .douta(w23) // output [31 : 0] douta
						);


// ** Latches MEM/WB **

MEM_WB MEM_WB(
				//****ENTRADAS*****
				//
				.clk(clk),
				//CONTROL
				.MemtoRegIN(c18),
				.RegWriteIN(c19),
				// Salida Dato MEM
				.dataIN(w23),
				// Salida ALU
				.ALU_IN(w21),
				// Registro Destino
				.DestinoIN(w24),
				//
				//****SALIDAS*****
				//
				//CONTROL
				.MemtoRegOUT(c26),
				.RegWriteOUT(c25),
				// Salida Dato MEM
				.dataOUT(w28),
				// Salida ALU
				.ALU_OUT(w27),
				// Registro Destino
				.DestinoOUT(w25)				
				);


//***** ETAPA 5 *****

DatosMUX datosMux(
						.ALUresult(w27),
						.ReadData(w28),
						.MemtoReg(c26),
						.resultado(w26)
			);

assign salida = w26;


endmodule