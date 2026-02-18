module BCD4_display_tb();
reg [9:0] e;
wire[6:0] Dun,Dde,Dce,Dmi;

BCD4_display DUT(
	.bcd_in(e),
	.Dun(Dun),
	.Dde(Dde),
	.Dce(Dce),
	.Dmi(Dmi));

	


initial
begin

e = 10'b0001100100;
#10;
e= 1000;
#10;
e= 222;
#10;
e = 976;
#10;
$stop;
$finish;

end
endmodule