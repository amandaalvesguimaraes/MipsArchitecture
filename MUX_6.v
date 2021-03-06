module MUX_6(
    input wire [1:0] selector,
    input wire [31:0] Data_0, //vem de PC 00
    input wire [31:0] Data_1, //vem de LoadSize 01
    input wire [31:0] Data_2, //vem do registrador A 10
    input wire [31:0] Data_3, //vem do registrador B 11
    output wire [31:0] Data_out
);

	wire [31:0] A1;
	wire [31:0] A2;

	assign A1 = (selector[0]) ? Data_3 : Data_2;
	assign A2 = (selector[0]) ? Data_1 : Data_0;
	assign Data_out = (selector[1]) ? A1 : A2;

endmodule 