This is an attempt to write documentation for the ATmega328P
microcontroller (& learn to use it as I go along). Send corrections,
suggestions, & comments to: gippgig@gmail.com Bobby The ATmega328P
Microcontroller - 1 Setting up the I/O pins - Oct. 3, 2019 version Note:
In the following, the more negative voltage (Gnd) is 0 & the more
positive voltage (Vcc) is 1. Addresses & data are given in hexadecimal.
The ATmega328P is one of a large family of similar 8-bit
microcontrollers and can operate on 1.8 to 5.5 V. The data sheet is
available at
ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061A.pdf
(in the following the section describing an item is often given
afterwards in parentheses, i.e. SREG(7.3.1)); the instruction set manual
for this family is available at
ww1.microchip.com/downloads/en/devicedoc/atmel-0856-avr-instruction-set-manual.pdf
(note that the 328P does not have all of the instructions listed) & also
see en.wikipedia.org/wiki/Atmel_AVR_instruction_set. Other members
differ in various ways; consult their data sheets for details. The
ATmega328P has 32 8-bit general purpose registers (which can also be
addressed as data memory locations 0000-001F), 224 8-bit I/O registers
(which can also be addressed as data memory locations 0020-00FF; note
that 20 must therefore be added to the I/O register number when
addressing it as memory), 2kx8 data RAM(8.3) (data memory locations
0100-08FF), a separate 16kx16 program flash memory(8.2) (note that while
it is an 8-bit chip the instructions are 16 bits), & a separate 1kx8
EEPROM(8.4). The ATmega328P is available as a 28-pin DIP (more exotic
packages are also avilable) with 23 general purpose I/O pins which can
also have specialized functions(14.3.1-14.3.3); in particular, pin 1 is
an external reset(11.4) unless RSTDISBL(28.2) has been programmed to 0.
Altho each pin can be individually controlled, they are grouped into the
8 bit port B (B0-B7), 7 bit port C (C0-C6), & 8 bit port D (D0-D7). 1=C6
B7=10 2=D0 B6=9 3=D1 B5=19 4=D2 B4=18 5=D3 B3=17 6=D4 B2=16 9=B6 B1=15
10=B7 B0=14 11=D5 C6=1 12=D6 C5=28 13=D7 C4=27 14=B0 C3=26 15=B1 C2=25
16=B2 C1=24 17=B3 C0=23 18=B4 D7=13 19=B5 D6=12 23=C0 D5=11 24=C1 D4=6
25=C2 D3=5 26=C3 D2=4 27=C4 D1=3 28=C5 D0=2 There are 3 I/O registers
associated with each port: DDR(14.4.3, 14.4.6, 14.4.9) (data direction
register), PORT(14.4.2, 14.4.5, 1.4.8), & PIN(14.4.4, 14.4.7, 14.4.10).
The DDR determines whether the pins are inputs or outputs; if a bit in
the DDR is 0 the corresponding pin is an input; if 1 it is an output.
When the chip is reset (which happens automatically when power is turned
on) all the DDR & PORT bits are cleared making all pins inputs; bit 6 if
pin 1 is reset & unused bit 7 of DDRC, PORTC, & PINC are always 0. The
PORT register contains the value that is output on the corresponding
pins that are set as outputs. Note that if a bit corresponding to an
input pin is set to 1 an internal "pullup" resistor is connected from
the positve voltage to that pin unless PUD(14.4.1) has been set to 1.
Reading the PIN register gives the value of the corresponding pins
(regardless of whether they are an input or output). Note that
unconnected inputs are not defined and may give erratic values when
read. Unconnected inputs can also cause high power consumption so unused
inputs(14.2.6) should be connected to something; this is easily done by
turning on the pullup resistors. Also note that there is a 1 instruction
delay(14.2.4) between writing data to the PORT and having it appear in
the PIN register. Writing 0 to a PIN bit does nothing but writing a 1
will cause the corresponding bit in PORT to change state(14.2.2) (from 1
to 0 or from 0 to 1). Here are the I/O addresses for the various
registers: 03 PINB 04 DDRB 05 PORTB 06 PINC 07 DDRC 08 PORTC 09 PIND 0A
DDRD 0B PORTD Suppose that pin 1 is reset, 2 is an input with the pullup
resistor on, 3-6 & 9 are outputs with 9 set to 0, 10 is unused, 11-15
are outputs with 11-13 set to 1, 16-19 are unused, & 23-28 are inputs
with the pullups on for 24-25. Also suppose that setting pin 9 to 1
(except under special conditions) could damage the circuit; to reduce
the chance of this happening this output is placed next to Gnd (pin 8),
a resistor (\~5k ohms suggested) is connected from the pin to Gnd, & the
other adjacent pin (10) is unused & is connected thru a "pulldown"
resistor (1k suggested) to Gnd instead of using the internal pullup.
Here is the port bit map (the port bit is given first followed by the
corresponding pin, the value of the DDR for that position, the value (if
the value doesn't matter it is generally set to 0 in these examples) of
the PORT for that position, & a description; after the last bit of a
port the hexadecimal value of DDR & PORT is shown): B7 10 0 0 unused,
resistor to Gnd B6 9 1 0 out, =0, cannot be set to 1, resistor to Gnd B5
19 0 1 unused (set PORT to 1 to turn on pullup resistor) B4 18 0 1
unused B3 17 0 1 unused B2 16 0 1 unused B1 15 1 0 out B0 14 1 0 out
DDRB=43 PORTB=3C C6 1 0 0 reset C5 28 0 0 in C4 27 0 0 in C3 26 0 0 in
C2 25 0 1 in, pullup on C1 24 0 1 in, pullup on C0 23 0 0 in DDRC=00
PORTC=06 D7 13 1 1 out, =1 D6 12 1 1 out, =1 D5 11 1 1 out, =1 D4 6 1 0
out D3 5 1 0 out D2 4 1 0 out D1 3 1 0 out D0 2 0 1 in, pullup on
DDRD=FE PORTD=E1 The following code fragment sets up the pins (in all
code examples the program memory address is given first (4 hexadecimal
digits) followed by the opcode (4 digits), the instruction, & an
explanation). When power is turned on the processor resets and starts at
address 0000(11.1) unless BOOTRST(27.6) has been programmed to 0.
However, interrupts can cause execution to start nearby (for example,
INT0 can cause execution to start at 0002(12.4)) so the first
instruction is often a jump to get out of the way. 0000 940C JMP 0001
1000 1000 ... 1000 E423 LDI R18,43 Load value to make pins 9 & 14-15
outputs into arbitrarily chosen temporary register 1001 B924 OUT 04,R18
Store into DDRB 1002 EF6E LDI R22,FE Load value to make pins 3-6 & 11-13
outputs 1003 B96A OUT 0A,R22 Store into DDRD 1004 E31C LDI R17,3C Load
value to turn on pullup resistors for unused pins 16-19 1005 B915 OUT
05,R17 Store into PORTB 1006 EE51 LDI R21,E1 Load value to set pins
11-13 to 1 & turn on pullup for pin 2 1007 B95B OUT 0B,R21 Store into
PORTD 1008 E036 LDI R19,06 Load value to turn on pullups for pins 24-25
1009 B938 OUT 08,R19 Store into PORTC 100A rest of program No need to
load DDRC since it was reset to 00 when power was turned on If possible,
do not connect or disconnect whatever would be damaged if pin 9 was 1 &
connect it to Gnd instead if applicable. Once the rest of the circuit is
built, turn on a voltmeter, set it on DC volts, & select the lowest
range that includes the voltage chosen to power the circuit. Before
connecting power to the circuit turn on the power source, select the
correct voltage, & measure the output. If the voltage is wrong make sure
the power source is plugged into an outlet that has power or test the
batteries & check for corroded battery contacts. If the voltage is
correct verify which connection is positive & which is negative. Turn
off power, connect power to the circuit MAKING SURE THE POSITIVE VOLTAGE
IS CONNECTED TO VCC, turn on power, & measure the voltage at pin 7
(Vcc). If it is negative shut off power (& hope the circuit hasn't blow
out) because the power is somehow connected backwards, if it is 0 check
for a loose connection or short circuit, if it is low check for weak
batteries or a short. If Vcc is correct check the voltage at pin 9. If
it is not 0 find & fix the problem and repeat the check. If it is 0 turn
off power, connect the rest of the circuit, & turn on power. Check pin 9
again; if it is not 0 shut off power, find & fix the problem, & repeat
the check. If it is 0 repeat the check of Vcc. If Vcc is not correct fix
the problem, repeat the check of pin 9, & then test Vcc again. If Vcc is
correct see if the circuit works. The ATmega328P Microcontroller - 2
Adding a self-test - Oct. 21, 2019 version The self-test works by
checking whether the pins have the expected values. Note that the value
of PIN should equal the value of PORT for output pins unless a pin is
heavily loaded (which should generally be avoided and always avoided at
higher Vcc); this is also the case for unused pins with the pullup
enabled & unused pins with the pullup off if pulled down to Gnd (i.e.,
pin 10 below). Unless it would cause something bad to happen to whatever
the microcontroller is controlling, the test should be repeated with
each output pin set to both 0 & 1 to detect excessively low resistance
to either Vcc or Gnd and adjacent pins should have opposite values to
detect shorts between pins. Using the previous example, suppose that pin
1 is reset, 2 is an input with pullup on, 3-6 & 9 are outputs with 9 set
to 0, 10 is unused, 11-16 are outputs with 11-13 set to 1, 17-19 are
unused, & 23-28 are inputs with pullups on for 24-25. Pin 2 should
initially be 0, pin 6 is heavily loaded, pin 9 must not be set to 1 &
has a resistor to Gnd, pin 10 also has a resistor to Gnd, pin 16 is the
self-test output (0=fail, 1=pass), pin 23 is an analog input, pin 24
should initially be 1 & pin 27 0, & pin 28 should be the same as pin 26
until the self-test sets pin 12 to 1. Note that the self-test
momentarily sets pin 16 to 0 so this must not trigger an error response.
Here is the port bit map; 3 values are given for PORTB (the first 2
being the values used for self-testing with the 2nd also being the final
value if the self-test passes (there is no need to change it since pin
16 is already 1 & 14-15 don't need to be set to a particular value)
while the 1st (pin 16 already 0) or 3rd is the final value if the
self-test fails) & 3 values are given for PORTD (the first 2 again being
the values used for self-testing & the 3rd the final value that sets the
outputs to the correct values). B7 10 0 0 0 0 unused, resistor to Gnd B6
9 1 0 0 0 out, =0, cannot be 1, resistor to Gnd B5 19 0 1 1 1 unused B4
18 0 1 1 1 unused B3 17 0 1 1 1 unused B2 16 1 0 1 0 out, self-test B1
15 1 1 0 0 out B0 14 1 0 1 1 out DDRB=47 PORTB=3A,3D,39 C6 1 0 0 reset
C5 28 0 0 in, =C3 until pin 12 is set to 1 C4 27 0 0 in, initially 0 C3
26 0 0 in, =C5 until pin 12 is set to 1 C2 25 0 1 in, pullup on C1 24 0
1 in, pullup on, initially 1 C0 23 0 0 in (analog) DDRC=00 PORTC=06 D7
13 1 1 0 1 out, =1 D6 12 1 0 1 1 out, =1 D5 11 1 1 0 1 out, =1 D4 6 1 0
1 0 out, heavy load D3 5 1 1 0 0 out D2 4 1 0 1 0 out D1 3 1 1 0 0 out
D0 2 0 1 1 1 in, pullup on, initially 0 DDRD=FE PORTD=AB,55,E1 The
following code fragment sets up the pins & does the self-test. 0000 940C
JMP 0001 1000 1000 ... 1000 E427 LDI R18,47 Load value to make pins 9 &
14-16 outputs 1001 B924 OUT 04,R18 Store into DDRB 1002 EF6E LDI R22,FE
Load value to make pins 3-6 & 11-13 outputs 1003 B96A OUT 0A,R22 Store
into DDRD 1004 E31A LDI R17,3A Load value to do 1st B self-test 1005
B915 OUT 05,R17 Store into PORTB 1006 EA5B LDI R21,AB Load value to do
1st D test 1007 B95B OUT 0B,R21 Store into PORTD 1008 E036 LDI R19,06
Load value to turn on pullups for pins 24-25 1009 B938 OUT 08,R19 Store
into PORTC 100A B173 IN R23,03 Load temporary register from PINB 100B
2771 EOR R23,R17 Clear bits where PINB=PORTB (CPI R23,3A is an equally
good alternative) 100C F4D1 BRNE 1A PINB not same as PORTB, self-test
failed, pin 16 already 0, go to 1027 (note that the branch distance is
relative to the following instruction so this jumps ahead 1B) 100D B179
IN R23,09 Load from PIND 100E 7E7F ANDI R23,EF Clear bit D4
corresponding to heavily loaded pin 6 100F 3A7A CPI R23,AA Test for
correct value (note that EOR R23,R21 is not an alternative since PORTD0
is 1 but input pin 2 should be 0 so the result should be 01 not 00) 1010
F4B1 BRNE 16 PIND outputs not same as PORTD besides D4, fail, pin 16
already 0, go to 1027 1011 B176 IN R23,06 Load from PINC 1012 7F7A ANDI
R23,FA Clear unpredictable bits C0 & C2 1013 3072 CPI R23,02 Test for
pass with C3=C5=0 1014 F011 BREQ 02 Pass with C3=C5=0, go to 1017 1015
327A CPI R23,2A Test for pass with C3=C5=1 1016 F481 BRNE 10 PORTC
wrong, fail, pin 16 already 0, go to 1027 1017 E555 LDI R21,55 Load
value to reverse D outputs 1018 B95B OUT 0B,R21 Store into PORTD 1019
E31D LDI R17,3D Load value to reverse B outputs except pin 9 101A B915
OUT 05,R17 Store into PORTB (no need to change PORTC since it has no
outputs) 101B B179 IN R23,09 Load from PIND (note that PINB couldn't be
tested yet because of 1 instruction delay) 101C 7E7F ANDI R23,EF Clear
heavily loaded bit D4 101D 3474 CPI R23,44 Test for correct value 101E
F439 BRNE 07 PIND outputs not same as PORTD besides D4, fail, go to 1026
101F B173 IN R23,03 Load from PINB 1020 2771 EOR R23,R17 Clear bits
where PINB=PORTB 1021 F421 BRNE 04 PINB not same as PORTB, fail, go to
1026 1022 B176 IN R23,06 Load from PINC 1023 7D72 ANDI R23,D2 Clear
unpredictable bits C0,C2-3,C5 1024 3072 CPI R23,02 Test for C1=1 & C4=0
1025 F009 BREQ 01 Self-test passes, pin 16=1, go to 1027 1026 982A CBI
05,2 Set pin 16 to 0 1027 EE51 LDI R21,E1 Load value to set pins 11-13
to 1 & turn on pin 2 pullup 1028 B95B OUT 0B,R21 Store into PORTD
1029... rest of program To turn on an LED if the self-test passes
(recommended because it indicates that the initialization routine
executed) connect the positive LED lead to pin 16 & the negative lead
thru a resistor (the value depends on the voltage used) to Gnd. However,
the LED may be too dim to see if the voltage is under 2V (test by
connecting it directly from Vcc to Gnd (no resistor needed if under
2V)). To do more than just set pin 16 if the self-test fails, add
additional code after 1026 & change the value of BREQ at 1025 to jump
past the end of the added code. For example, this alternate ending will
halt the program at the point the self-test failed to make it easier to
find (as described below) the problem: 1025 F011 BREQ 02 Pass, go to
1028 (increased by 1 since 1 instruction added) 1026 982A CBI 05,2 Set
pin 16 to 0 1027 CFFF RJMP FFF Go to 1027 (halt by going into infinite
loop) 1028 EE51 LDI R21,E1 Load D value 1029 B95B OUT 0B,R21 Store into
PORTD 102A... rest of program In this particular case only, it makes
sense to also change the BRNE at 100C,1010,& 1016 to F7F9 BRNE 7F to
halt the program at those points. After all the tests described
previously pass, if the self-test does not pass measure the voltage at
pin 16; if it is not 0 test the resistor & LED, make sure the LED isn't
backwards, & check for a wiring error. If pin 16 is 0 connect a 2.7k
resistor from pin 16 to Vcc; if it now reads \>1V the pin apparently was
not initialized to an output, check the program for errors (beware
typos) & make sure it was loaded into the microcontroller correctly. If
it still reads 0 the self-test really did fail. Check the voltages on
all of the pins. Suppose that the supply is 2V & the voltages on pins
1-6 are 2,0,2,0,2,1, on 9-19 are 0,0,2,0,0,0,2,0,2,2,2, & 23-28 are
.7,2,2,0,0,0. The odd value at pin 6 is not unexpected because of the
heavy load and pin 23 is an analog input while 9-10 & 14-19 match the
1st test value for port B indicating that the first part of the
self-test (at 100C) passed (but the test failed before PORTB was
reloaded at 101A). Pins 23-28 match the expected value (pin 1 should be
2V because it's reset) for port C. Pins 2-6 & 11-13 match the 1st value
for port D except for pin 13 (D7), which should be 2V but was 0. This
indicates that pin 13 is shorted, check the wiring to that pin. On the
other hand, if pins 12 & 13 were both .9V that would indicate that pins
12 & 13 are shorted together. Fix the problem & try again. If the
self-test passes see if the circuit works.
