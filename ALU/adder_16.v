module adder_16(a,b,cin,sum,cout,of);
	input [15:0] a,b;
	input cin;
	output [15:0] sum;
	output cout,of;
	parameter zero = 1'b0;
	parameter one = 1'b1;
	wire w0,w3,w4,w5,w6,w7;
	wire [7:0] w1,w2;
	adder_8 adder0(a[7:0],b[7:0],cin,sum[7:0],w0,w5);
	adder_8 adder1(a[15:8],b[15:8],zero,w1,w3,w6);
	adder_8 adder2(a[15:8],b[15:8],one,w2,w4,w7);
	mux_2_8 mux_sum(w0,w1,w2,sum[15:8]);
	mux_2_1 mux_cout(w0,w3,w4,cout);
	mux_2_1 mux_of(w0,w6,w7,of);
endmodule
