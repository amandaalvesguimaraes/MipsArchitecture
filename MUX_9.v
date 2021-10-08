module MUX_9(
	input seletor,
	input [31:0] loDiv, //1
	input [31:0] loMult, //0
	output  [31:0] LO  
);

	assign LO = (seletor) ? loDiv : loMult;

endmodule 