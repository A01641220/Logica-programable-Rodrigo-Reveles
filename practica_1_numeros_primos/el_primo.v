module el_primo(
   input [3:0] D,
	output reg y);
	
	always@(*)
		begin
		case(D)
		2:y = 1;
		3:y = 1;
		5:y= 1;
		7:y = 1;
		11:y= 1;
		13:y= 1;
		default y = 0;
		endcase
		end
		endmodule