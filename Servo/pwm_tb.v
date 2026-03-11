`timescale 1ns/1ps

module pwm_tb();

    reg clk;
    reg rst;
    reg [7:0] ini;
    wire pwm;


    initial clk = 0;
    always #20 clk = ~clk;

    pwm DUT1(
        .clk(clk), 
        .rst(rst),
        .ini(ini),
        .pwm(pwm)
    );

    initial begin
        rst = 1;
        ini = 0;
        #100;
        rst = 0;
        #100;
        ini = 0;
        #20000000;
        ini = 90;
        #20000000;

        ini = 180;
        #20000000; // Esperar 20ms

        $display("Simulacion terminada");
        $stop;
    end

endmodule