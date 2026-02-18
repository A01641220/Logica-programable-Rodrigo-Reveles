module BCD4_display #(parameter N_in= 10, N_out=7)(
input[N_in-1:0] bcd_in,
output [N_out-1:0] Dun,Dde,Dce,Dmi
);


reg [3:0] digitos [3:0];
wire[6:0] siete[3:0];


reg [9:0] bcd;
always@(*)
begin
bcd = bcd_in;
digitos[0] = bcd%10;
digitos[1] = (bcd/10)%10;
digitos[2] = (bcd/100)%10;
digitos[3] = (bcd/1000)%10;

end

generate
genvar i;
for(i=0;i<4;i = i+1) begin:display
	BCD_module Modulos(
	.bcd_in(digitos[i]),
	.bcd_out(siete[i])
	);
end
endgenerate

assign Dun = siete[0];
assign Dde = siete[1];
assign Dce = siete[2];
assign Dmi = siete[3];


endmodule