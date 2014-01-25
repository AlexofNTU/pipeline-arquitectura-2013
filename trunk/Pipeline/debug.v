`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:55 01/21/2014 
// Design Name: 
// Module Name:    debug 
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
module debug(
				 input clk, rx,
				 input [31:0] datoFR,
				 input [31:0] datoRAM,
				 input fin, db_mode,
				 output tx,
				 output reg [4:0] direccionFR,
				 output reg [31:0] direccionRAM
    );

reg uart_signal, signal, debug;

reg [31:0] enviar_dato;
reg [31:0] array [0:63];

wire tick;
integer i, j ,k, l;

initial begin
	for (l=0; l < 64; l = l + 1)  // llenamos el array con 0
			begin
				array[l] = 0;
			end
end

always @(posedge clk)
	begin
		if (debug)
			begin
				if(i < 32)
					begin
					//	readRAM = 1;
						direccionFR = i;
						direccionRAM = i;
						if(i == 0)
							begin
								signal = 0;
								i = i + 1;
							end
						else
							begin
								signal = 1;
								i = i + 1;
							end
					end
			end
		else
			i = 0;
	end

always @(posedge clk)
	begin
		if (debug)
			begin
				if(signal && (j<32))
					begin
						array[j] = datoFR;
						array[j+32] = datoRAM;
						j = j + 1;
					end
			end
		else
			j = 0;
	end
	
always @(posedge clk)
	begin
		if (debug)
			begin
				if(tick)
				 begin
					if(k < 64)
						begin
							enviar_dato = array[k];
							uart_signal = 1;
							k = k + 1;
						end
					else
						begin
							uart_signal = 0;
							k = 0;
						end
				 end
				else
				 begin
				 	uart_signal = 0;
				 end
			end
		
		else
			begin
				k = 0;
				uart_signal = 0;		
			end
	end

always @(posedge clk)
	begin
		if(fin)
			debug = 1;
	end


uartTop uartTop(
				.clk(clk), 
				.rst(), 
				.rd_uart(),
				.wr_uart(uart_signal), 
				.rx(rx), 
				.w_data(enviar_dato),
				.tx_full(), 
				.rx_empty(), 
				.r_data(), 
				.tx(tx),
				.tick(tick)
				);

endmodule
