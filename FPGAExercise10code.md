Counter module to be used with the [Spartan 3E Board
tutorial](http://wiki.hacdc.org/index.php/File:ISE_Tutorial_for_S3E.pdf).

    module counter(clock, count_out);
    input clock;
    output [3:0] count_out;
    reg [3:0] count_int=0;
    reg [26:0] t=0;

    always @(posedge clock)
    if (t==4)
        begin
            count_int <= count_int + 1;
            t=0;
        end
    else
        t=t+1;

    assign count_out=count_int;

    endmodule

[Category:FPGAWorkshop](Category:FPGAWorkshop)
