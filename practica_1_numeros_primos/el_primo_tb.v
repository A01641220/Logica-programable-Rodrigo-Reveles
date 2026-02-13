module el_primo_tb();

reg [3:0] D;
wire y;

el_primo DUT (
	.D(D),
	.y(y));
	
	initial
	begin
	$display("inicio");
	D = 5;
	#10
	D = 4'b1010;
	#10
	D = 3;
	#10
	$display("fin simulacion");
	$stop;
	$finish;
	end
	endmodule
	