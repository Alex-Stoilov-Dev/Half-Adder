module base_half_adder(

	input in_a,
	input in_b,
	output sum,
	output carry

);

	xor_gate my_xor_gate(
		.a(in_a),
		.b(in_b),
		.y(sum)
	);

	and_gate my_and_gate(
		.a(in_a),
		.b(in_b),
		.y(carry)
	);	

endmodule
