`timescale 1ns / 1ns // `timescale time_unit/time_precision


/* top-level entity for v7432 chip logic test */
module testOR (input [9:0] SW, output [9:0] LEDR);
				
				// SW[0], SW[1] are the inputs and LEDR[0] is the output
				v7432 C1(.pin1(SW[0]), .pin2(SW[1]), .pin3(LEDR[0]));

endmodule // testOR


/* Quad 2-input OR chip */
module v7432 (input pin1, pin2, pin4, pin5, pin9, pin10, pin12, pin13, 
				output pin3, pin6, pin8, pin11);

				assign pin3 = pin1 | pin2;
				assign pin6 = pin4 | pin5;
				assign pin8 = pin9 | pin10;
				assign pin11 = pin12 | pin13;
				
endmodule // v7432