module contador #(parameter cmax = 100, parameter cmin = 0)(
input clk,
input rst,
input up_down,
input load,
input [6:0]in,
output reg [6:0] contador);




always@(posedge clk or posedge rst)
begin
if(rst)
contador <= 0;
else if (load)
contador<=in;
else if (up_down)
begin
contador <= contador - 1;
	if (contador == cmin )
	contador <= cmax;
end
else if(contador == cmax)
contador <= 0;
else
contador <= contador + 1;
end
endmodule