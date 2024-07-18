Homework/Verilog Coding problems

## An Upcounter design

An upcounter can be made with 3 elements - DFFs, XOR and AND gates.

The equations for a simple upcounter are a chain. The Di and Qi notation
refer to the D and Q ports on a DFF.

    D0=!Q0 ^ 1
    D1=Q1 ^ Q0
    D2=Q2 ^ Q1&Q0
    D3=Q3 ^ Q2&Q1&Q0
    ....
    Di=Qi ^ Qi-1&Qi-2 .... &Q2&Q1&Q0

    Equations 1

A upcounter described as such will continue to count whenever the
flipflops are driven

by the clock.

Say we wanted to turn the counter off and on?

The first bit, Q0, is fed by the equation D0. Its change is dependent on
the second input to the xor gate, which we see is hardwired to a one. If
we xor a zero, there is no change to the least significant digit, and
the counter won't count.

We change the equations to add an enable signal.

    D0=!Q0 ^ Enable
    D1=Q1 ^ Q0&Enable
    D2=Q2 ^ Q1&Q0&Enable
    D3=Q3 ^ Q2&Q1&Q0&Enable
    ....
    Di=Qi ^ Qi-1&Qi-2 .... &Q2&Q1&Q0&Enable

    Equations 2

Write verilog code to implement a counter like this and use a testbench
to simulate the design. I would do 4 or 8 bits wide.

## Shift Registers

The LFSR is built on the idea of a shift register. This is constructed
by taking the output of a DFF and connecting it directly to the input on
a second DFF. Lets consider the case of a n bit shift register.

    module shift(D, Q, Q_regs, clk, rst);
    parameter N=4;
    parameter TP=1;
    input D, clk, rst;
    output Q;
    output [N-1:0] Q_regs;
    reg [N-1:0] Q_regs;
    assign Q = Q_regs[n-1];
    always@(posedge clk)
    if(rst)
        Q_regs <= #Tp 'b0;    
    else
        Q_regs <= #Tp {Q_regs[n-2:0],D};
    end module

    Code 1 // updated from the slides

Data placed on D is shifted into the DFFs modeled by the always@ process
& the reg data type. The data available on the output is the nth data
bit, so over time data would be shifted in and made available. Table 1
below shows the operation of the shift register.

    CLK D Q | Q3 Q2 Q1 Q0
     ^  0 0 | 0  0  0  0    
     ^  1 0 | 0  0  0  1    
     ^  1 0 | 0  0  1  1    
     ^  0 0 | 0  1  1  0    
     ^  1 1 | 1  1  0  1    
     ^  0 1 | 1  0  1  0    
     ^  0 0 | 0  1  0  0    
     ^  0 1 | 1  0  0  0    

    Table 1

I recommend coding up a shift register and simulate it in order to see
the shift register in action.

## Linear Feedback shift register

A LSFR is a shift register, but the data shifted into the register is
actually a linear combination of the data currently in the register.

From Wikipedia
<http://en.wikipedia.org/wiki/Linear_feedback_shift_register>

"The only linear functions of single bits are xor and inverse-xor; thus
it is a shift register whose input bit is driven by the exclusive-or
(xor) of some bits of the overall shift register value.

The initial value of the LFSR is called the seed, and because the
operation of the register is deterministic, the stream of values
produced by the register is completely determined by its current (or
previous) state. Likewise, because the register has a finite number of
possible states, it must eventually enter a repeating cycle. However, an
LFSR with a well-chosen feedback function can produce a sequence of bits
which appears random and which has a very long cycle.

Applications of LFSRs include generating pseudo-random numbers,
pseudo-noise sequences, fast digital counters, and whitening sequences.
Both hardware and software implementations of LFSRs are common."

Fibonacci LSFRs The bits in the LFSR state which influence the input are
called taps. A maximum-length LFSR produces an m-sequence (i.e. it
cycles through all possible 2n − 1 states within the shift register
except the state where all bits are zero), unless it contains all zeros,
in which case it will never change. As an alternative to the XOR based
feedback in a standard LFSR, one can also use XNOR. A state with all
ones is illegal when using an XNOR feedback, in the same way as a state
with all zeroes is illegal when using XOR. This state is considered
illegal because the counter would remain "locked-up" in this state.

End Wikipedia

Maximal length LFSRs are built with specially choosen taps, which are
represented by polynomials. The 3 bit LFSR polynomial x\^3+x\^2+1 could
be represented by the following implementation.

    module lfsr_example(D, Q, Q_bus, clk, rst);
    parameter N=3;
    parameter Tp=1;
    input D, clk, rst;
    output Q;
    output [N-1:0] Q_regs;
    reg [N-1:0] Q_regs;
    assign Q = Q_regs[0];
    always@(posedge clk)
    if(rst)
        Q_regs <= #Tp N'b1;
    else
        Q_regs <= #Tp {Q_regs[1],Q_regs[0],Q_regs[1]^Q_regs[2]};
    end module

    Code 2

Code 2 shows the implementation taking place inside the always@ block.
There are different ways to do this, this is just one example. For
homework/exercise, implement a LFSR with a maximal length polynomial.
Use a 4, 5, 6, 7 or 8 bit polynomial from the Wikipedia LFSR page in
your implementation and build a testbench to simulate it.

Awesomeness points are awarded for a selfchecking testbench which
actually proves that the LFSR is maximal length.

Other LFSR resources <http://homepage.mac.com/afj/lfsr.html>
<http://www.yikes.com/~ptolemy/lfsr_web/index.htm>

[Category:FPGAWorkshop](Category:FPGAWorkshop)
