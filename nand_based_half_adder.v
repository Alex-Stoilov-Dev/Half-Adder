module nand_based_half_adder(


	input in_a,
	input in_b,
	output sum,
	output carry
);

	wire na1_out;
	wire na2_out;
	wire na3_out;
	wire na4_out;
	wire na5_out;

	nand_gate na1(
		.a(in_a),
		.b(in_b),
		.y(na1_out) 
	);
	nand_gate na2(
		.a(in_a),
		.b(na1_out),
		.y(na2_out)
	);

	nand_gate na3(
		.a(na1_out),
		.b(in_b),
		.y(na3_out)	
	);
	
	nand_gate na4(
		.a(na2_out),
		.b(na3_out),
		.y(sum)
	);

	nand_gate na5(
		.a(na1_out),
		.b(na1_out),
		.y(carry)
	);

endmodule
