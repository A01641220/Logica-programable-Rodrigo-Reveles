module contador_F_tb();

reg rst;
reg up_D;
reg load;
reg [6:0]in;
reg clk;
wire [6:0] y;




contador DUT(
.rst(rst),
.clk(clk),
.up_down(up_D),
.load(load),
.in(in),
.contador(y)
);

initial
clk=1'b0;
always#10 clk =~clk;



initial
begin
rst=0;
load = 0;
up_D = 0;
#10;
in = 7'b0010100;
load = 1;
#10;
load = 0;
#100;
up_D = 1;
#100;
rst=1;
#10;
rst=0;
#120;
up_D=0;
#100;

$stop;
$finish;
end
endmodule