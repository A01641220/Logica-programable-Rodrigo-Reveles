module bcd_w (
input [9:0] SW,
output [0:6] HEX0,HEX1,HEX2,HEX3);

BCD4_display Decoder(
	.bcd_in(SW),
	.Dun(HEX0),
	.Dde(HEX1),
	.Dce(HEX2),
	.Dmi(HEX3));
	
	endmodule