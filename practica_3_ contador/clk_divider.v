module clk_divider #(parameter FREQ = 1)(
    input CLK, RST,
    output reg clk_div
);

reg [31:0] count;
//localparam ConstantNumber = 25_000_000;
localparam clk_freq = 50_000_000;
parameter constantNumber = clk_freq/(2*FREQ);

always @(posedge CLK or posedge RST)
    begin
        if (RST)
            count <= 0;
        else if (count == constantNumber-1)
            count <= 0;
        else
            count <= count + 1;
    end

always @(posedge CLK or posedge RST)
    begin
        if (RST)
            clk_div <= 0;
        else if (count == constantNumber-1)
            clk_div <= ~clk_div;
        else
            clk_div <= clk_div;
    end

	 
	 
	 endmodule