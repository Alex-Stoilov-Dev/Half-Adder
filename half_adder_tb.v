module half_adder_tb();

	reg input_a;
	reg input_b;
	reg sum_basic;
	reg carry_basic;

	reg input_a_nand;
	reg input_b_nand;
	reg sum_nand;
	reg carry_nand;

	base_half_adder my_half_adder(
		.in_a(input_a),
		.in_b(input_b),
		.sum(sum),
		.carry(carry)
	);

	nand_based_half_adder my_nand_adder(
		.in_a(input_a),
		.in_b(input_b),
		.sum(sum_nand),
		.carry(carr_nand)
	);

	initial begin
		#10;
		input_a <= 0;
		input_b <= 0;
		#10;
		input_a <= 0;
		input_b <= 1;
		#10
		input_a <= 1;
		input_b <= 0;
		#10;
		input_a <= 1;
		input_b <= 1;
	end

	initial begin
		#1000;
		$finish;
	end


endmodule
