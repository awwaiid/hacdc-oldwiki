Placeholder...

## Verilog Define Statements {#verilog_define_statements}

Verilog provides a text macro substitution facility. This may be useful
for defining constants, opcodes, or with conditional compilation. To
define a text macro, use the define keyword.

     `define myCode 13 

When you want to use the macro, simple use the macroname with a accent
key.

    a = `myCode;

\
The following compile directives are available for use

    `include   Includes another file, avoid using pathnames
    `define    Define a text macro
    `ifdef     Starts conditional compilation, dependant on if a macro has been defined
    `else      Alternate condiational compilation
    `endif     Ends conditional compilation
    `ifndef    Starts conditional compilation, like `ifdef
    `elseif    Alternative conditional compilation

The use of *\`define* doesn't require that the macro be given a value.
This allows for the following code style (exceprt from a defines.v
file).

    // Number of bits used for devider register. If used in system with
    // low frequency of system clock this can be reduced.
    // Use SPI_DIVIDER_LEN for fine tuning theexact number.
    //
    `define SPI_DIVIDER_LEN_8
    //`define SPI_DIVIDER_LEN_16
    //`define SPI_DIVIDER_LEN_24
    //`define SPI_DIVIDER_LEN_32

    `ifdef SPI_DIVIDER_LEN_8
      `define SPI_DIVIDER_LEN       5    // Can be set from 1 to 8
    `endif                                                          
    `ifdef SPI_DIVIDER_LEN_16                                       
      `define SPI_DIVIDER_LEN       16   // Can be set from 9 to 16
    `endif                                                          
    `ifdef SPI_DIVIDER_LEN_24                                       
      `define SPI_DIVIDER_LEN       24   // Can be set from 17 to 24
    `endif                                                          
    `ifdef SPI_DIVIDER_LEN_32                                       
      `define SPI_DIVIDER_LEN       32   // Can be set from 25 to 32 
    `endif

Likewise, conditional compilation of code is possible

    module add23( 
      a,
      b,
      `ifdef ADD3 
      c,
      `endif
    sum);

    output [3:0] sum;
    input [3:0] a, b;
    `ifdef ADD3
    input [3:0] c;
    `endif

    assign sum = 
    `ifdef ADD3
      c+
    `endif
      a+b;

    endmodule

## Verilog Events {#verilog_events}

Lorem Ipsum

## Verilog Tasks {#verilog_tasks}

Lorem Ipsum

[Category:FPGAWorkshop](Category:FPGAWorkshop)
