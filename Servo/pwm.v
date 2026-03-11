module pwm(
    input clk, rst,
    input [8:0] ini,
    output reg pwm
);

    reg [19:0] counter;
   
    wire [19:0] y;

    assign y = 15000 + (ini * 250);
	 
    


    always @(posedge clk or posedge rst) begin
        if (rst)
            counter <= 0;
        else if (counter >= 500_000-1)
            counter <= 0;
        else
            counter <= counter + 1;
    end


    always @(posedge clk or posedge rst) begin
        if (rst)
            pwm <= 0;
        else if (counter < y)
		  pwm<=1;
		  else
		  pwm<=0;
    end

endmodule