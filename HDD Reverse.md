This tutorial follows a series from 'sprites mods'
[1](https://spritesmods.com/?art=hddhack&page=1) to attempt to reverse
engineer a hard drive controller board

# JTAG Hookup Process {#jtag_hookup_process}

The first step is to hook up wires to the JTAG pins of the hard drive
controller board in question.

Fortuitously, the HDD board I have appears to have the same pinout as
the one on Sprites Mods for the JTAG pins. This involved a fair bit of
fine tip soldering to small pads and attempting to follow traces on a
dense PCB. Pictures below

*INSERT PICTURE HERE*

Once the pins were soldered (GND, TDI, TMS, CLK IN, and TDO), the ARM
JTAG programmer had to get hooked up to the soldered wires.

The pinout of the JTAG programmer is oriented such that the power input
on the bottom.
