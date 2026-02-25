module contador_w(
input [9:0]SW,
input MAX10_CLK1_50,
output [0:6] HEX0,HEX1,HEX2,HEX3
);
wire link;
wire [6:0] pedro;//0:6


contador DUT(
	.rst(SW[0]),
	.clk(link),
	.contador(pedro),
	.in(SW[9:3]),
	.up_down(SW[1]),
	.load(SW[2])
);

BCD4_display DUT1(
	.bcd_in(pedro),
	.Dun(HEX0),
	.Dde(HEX1),
	.Dce(HEX2),
	.Dmi(HEX3)
);

clk_divider DUT2(
	.RST(SW[0]),
	.CLK(MAX10_CLK1_50),
	.clk_div(link)
);

endmodule