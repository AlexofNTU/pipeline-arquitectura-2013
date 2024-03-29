`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:45 11/28/2013 
// Design Name: 
// Module Name:    Registros 
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
module Registros( input clk, //rst,
						input regWrite,
						input [4:0] read1, read2, read3, writeReg, 
						input [31:0] writeData,
						output [31:0] data1, data2, data3						
    );

reg [31:0] RegFile [0:31] ; 
integer i; 
initial begin

  RegFile[0] = 0; 
  RegFile[1] = 32'b00000000000000000000000000000000; // 4
  RegFile[2] = 32'b00000000000000000000000000000000; // 7
  RegFile[3] = 32'b00000000000000000000000000000000; // 1
  RegFile[4] = 32'b00000000000000000000000000000000; // 1
  RegFile[5] = 32'b00000000000000000000000000000000; // 7
  RegFile[6] = 32'b00000000000000000000000000000000; // 7
  RegFile[30] = 32'b00000000000000000000000000000010; // 7
  RegFile[31] = 32'b00000000000000000000000000000100; // 7

for (i=7; i < 30; i = i + 1)  // llenamos la memoria con 0
			begin
				RegFile[i] = 0;
			end
	
end
always @ (negedge clk) 
	begin 
		/*if (rst) 
			begin 
				for(i=0; i<32; i=i+1) 
					RegFile[i] <= 32'b0; 
			end 
		else*/ if (regWrite)  
			RegFile[writeReg] <= writeData; 
	end 
 
assign data1 = RegFile[read1]; 
assign data2 = RegFile[read2];
assign data3 = RegFile[read3];

 
endmodule
