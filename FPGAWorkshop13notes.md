*These notes are intended to highlight bits of information from the
Xilinx KCPSM3 manual distributed with the microprocessor*

**Xilinx Picoblaze**

KCPSM3 - An 8 Bit Microcontroller for Xilinx Spartan 3 & Virtex 2/4
devices

**What is kcpsm3**

Very Simple microcontroller. Can be used for data processing or as a
complex state machine.

**KCPSM** - (**K**)constant **C**oded **P**rogrammable **S**tate
**M**achine

Its very small - 96 Spartan3 slices + 1 block ram

Our boards - 4656 slices -\> that is 2% of the slice resources!

Entirely embedded in the fpga fabric - integrates with all the logic
you've already been writing!

**kcpsm is small**

Konstant explained - notice how the mips = 1/2 clock speed?

CPI of the processor is 2. And fixed at 2. that makes it very easy to
determine the runtime of a program in an embedded system.

**kcpsm3 architecture**

architecture is closed (it is a xilinx macro, not a readily readable
verilog design) but the architecture is not secret though

simple input port/output based IO, up to 256 addressable 8bit
ports/devices 16 general purpose registers 64 byte memory/scratch pad
alu with carry/zero flags single interrupt line/acknowledge program
counter control/instruction decoder program memory

**device features**

program memory - 1 18kb block ram! this stores 1024 18 bit instructions.
16 general purpose registers. No dedicated zero register or accumulator
alu - does add/sub/add&sub with carry alu - load/and/or/xor bitwise
alu - shift/rotates flags and flow control - help determine program flow
with carry/zero flags + conditional jump/call instructions interrupts -
jumps to a single address (initiates CALL 3FF) - an ISR

**using the kcpsm3** used as a verilog module in the design flow. simply
copy the kcpsm3.v file into your project and instantiate it kcpsm3
assembler generates a verilog memory file - use that in your design as
well. connect the two modules together. alternatively - use the
embedded_kcpsm3.v file

**instruction set**

1.  program control group
    1.  unconditional jump
    2.  conditional jumps (branches!)
    3.  call/return with stack depth of 31
2.  interrupt group
    1.  enable/disable interrupt
    2.  return from isr & either enable/disable the interrupt
3.  storage group
    1.  store/fetch data from the scratch pad
4.  i/o group
5.  arithmetic group
    1.  add/sub/compare
        1.  work with 2 operands or 1 operand and a constant
6.  logical group
    1.  load/and/or/xor/test
        1.  work with 2 operands or 1 operand and a constant
7.  shift/rotate group
    1.  both left/right shifts available

pointers available

**port access**

input and output ports available.

very simple with the two cycle operation

1.  1st cycle - instruction decode
2.  2nd cycle - instruction execute

Read strobe - not needed, port_id used w/ a mux to determine what gets
put on input port. data captured by kcpsm3 on next clock edge.

write strobe - use as a clock enable signal for external circuitry to
capture data from out port.

\<8 output ports, use 1hot addressing

\>8 output ports, use address decoder to enable the correct port

input ports -\> leads itself to a multiplexed architecture

**reset**

synchronous to kcpsm3 clock. blanks the processor and restarts it at
address 0x000.

**picoblaze assembler**

xilinx assembler is a dos program, which accepts .psm (picoblaze
assembler) source files and outputs vhdl/verilog files for your use
multipass, lots of quick information. don't be afraid to dump the file.

possible to run under wine/dosbox, lots of alternatives available.

**program syntax**

1.  blank lines are ignored
2.  comments begin with ;
3.  registers - form sX, where X={0,1,2,..9,A,...,E,F}
4.  constants
5.  Data value - 00 -\>FF
6.  Port value - 00 -\>FF
7.  Address - 000 -\>3FF
8.  Line labels: Useful for call and jump instructions!

constant -\> define a label used within the program for holding a
constant value. like a C macro

namereg -\> define a label used within the program for identifying a
register. allows for much more readable code.

**Interrupts**

slides are really detailed about this and good - read them

**call/return stack**

31 level call/return stack. program counter preserved upon the calll
instruction or interrupt. registers are not preserved - be careful not
to clobber your registers.

**simulation** picoblaze assembly simulators exist - \> prove your code
by hand (slow) nothing stopping you from simulating the HDL design - but
can be very slow. quicker to fix hardware design -\> then code and
download to picoblaze via jtag and run the software.

**other picoblaze ide/assemblers/simulators/implementations that are not
from xilinx**

1.  **pacoblaze** [Pacoblaze](http://www.bleyer.org/pacoblaze/)
    opensource, picoblaze compliant verilog implementation. complete
    with java assembler.
2.  **openPicIDE** [openPicIDE](http://www.openpicide.org/) opensource
    picoblaze ide/assembler/simulator. very robust! works on linux, mac,
    windows.
3.  **mediatronix picoblaze ide**
    [mediatronix](http://www.mediatronix.com/tools/index.htm) amazing
    windows picoblaze ide
4.  **kpicosim** [kpicosim](http://www.xs4all.nl/~marksix/) picoblaze
    simulator and assembler. linux

[Category:FPGAWorkshop](Category:FPGAWorkshop)
