`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:48 01/25/2014 
// Design Name: 
// Module Name:    uartTop 
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
module uartTop
	#(
		parameter	DBIT = 8,
						SB_TICK = 16,
						DVSR = 326,
						DVSR_BIT = 9,
						FIFO_W = 1
	)
	(			
		input clk, rst, rd_uart, wr_uart, rx,
		input [7:0] w_data,
		output tx_full, rx_empty, tx,
		output [7:0] r_data,
		output tick
    );

wire tick, rx_done_tick, tx_done_tick;
wire [7:0] tx_fifo_out, rx_data_out;
wire tx_empty, tx_fifo_not_empty;

baud_gen #(
				.M(DVSR), 
				.N(DVSR_BIT)) baud_gen(
				.clk(clk), 
				.rst(rst), 
				.q(), 
				.max_tick(tick)
				);
						
uart_rx #(
			.DBIT(DBIT), 
			.SB_TICK(SB_TICK)) uart_rx(
			.clk(clk), 
			.rst(rst), 
			.s_tick(tick), 
			.rx(rx), 
			.rx_done_tick(rx_done_tick), 
			.dout(rx_data_out)
			);

uart_tx #(
			.DBIT(DBIT), 
			.SB_TICK(SB_TICK)) uart_tx(
			.clk(clk), 
			.rst(rst), 
			.s_tick(tick), 
			.tx_start(tx_fifo_not_empty), 
			.tx(tx), 
			.tx_done_tick(tx_done_tick), 
			.din(tx_fifo_out)
			);
			
			
fifo #(
		.B(DBIT),
		.W(FIFO_W)) fifo_tx(
		.clk(clk), 
		.rst(rst), 
		.rd(tx_done_tick), 
		.wr(wr_uart), 
		.w_data(w_data), 
		.empty(tx_empty), 
		.full(tx_full), 
		.r_data(tx_fifo_out)
		);
		
fifo #(
		.B(DBIT),
		.W(FIFO_W)) fifo_rx(
		.clk(clk), 
		.rst(rst), 
		.rd(rd_uart), 
		.wr(rx_done_tick), 
		.w_data(rx_data_out), 
		.empty(rx_empty), 
		.full(), 
		.r_data(r_data)
		);

assign tx_fifo_not_empty = ~tx_empty;
endmodule