### Kit Contents

You will need:

1\) AVR ATMega microcontroller 2) AVR Classboard printed-circuit-board
3) Eight resistors (\~120 ohm) 4) Eight LEDs (I like the small square
ones) 5) 1 uF capacitor 6) 0.1 uF capacitor 7) Two push buttons 8) 6-pin
header to connect the FTDI serial cable 9) A small-signal diode for
backward-power protection (optional, but certainly won't hurt)

![](_avr2011_kitContents.jpg "_avr2011_kitContents.jpg"){width="500"}

(D'oh! I left the AVR out of the photo. You should have one.)

### A Brief Tour of the Board

Before you start assembling anything, have a look at the printed circuit
board.

![](avr2011_pcb.jpg "avr2011_pcb.jpg"){width="500"}

Big and bold in the center is the location for the AVR chip. Notice the
notch in the silkscreen at one end? That corresponds to a notch on the
top of the AVR chip, and helps you get it in the right orientation when
the time comes.

Just to the outside of the AVR chip itself, you'll see two rows of holes
labelled for the port/pin combinations that appear in the datasheet. For
instance, just below the chip see the two rows labelled PORTD, and PD0
-- PD7. See how there are tiny white lines connecting the two rows of
holes, pairwise? Those indicate that the two holes are electrically
connected to each other. This was a convenience -- you can solder two
things easily to each AVR pin. One side of the chip has PD0-PD7, the
other has PB0-PB7 and PC0-PC6.

Just outside of the AVR connection points, you'll see two more rows of
holes, labelled VCC and GND respectively. GND is connected to the
board's ground plane, and so is at 0V. VCC is connected to the board's
power supply and is whatever voltage you're using to drive the whole
mess -- In class, I'll refer to this as VCC or I usually just call this
5V.

And finally, at the edge of the board is another pair of rows of holes.
These are electrically connected in pairs, and are just there to allow
you to connect things together easily. For the LED array, we'll use
these paired holes to connect the resistor to the positive end of the
LED.

Other stuff:

To the left of the AVR, there are holes for two buttons, a protection
diode, power-supply buffering capacitors, an optional power LED and its
resistor, a 3x2 SPI programming header, and the 6-pin inline FTDI cable.

Below the AVR chip area and to the right, there's more prototyping space
-- just sets of holes electrically connected to each other in ways to
facilitate soldering stuff up.

The power LED and it's associated LED are optional and included for your
creative use/abuse. Everyone should solder the coolest LED they can find
in here, with a 100-1k ohm resistor, depending on how bright you want
it.

And those white areas? They're for writing your initials on. Or notes.
Tiny, little notes.

### Assembling the Kit

0\) If you're new at soldering (or even if you're not) go spend seven
minutes with [the best soldering video
ever](http://www.youtube.com/watch?v=I_NU2ruzyc4).

1\) To get your feet wet soldering, install the two capacitors. They can
go in either capacitor position, and are non-polarized (can go in either
way). When you clip off the leads from the capacitors, save the wire for
the next step.

2\) Now install the two pushbuttons. They're oblong, but there's no top
or bottom.

3\) Solder in the protection diode. Notice that it's polarized, with a
black band on the diode itself corresponding to the little band in the
silkscreen.

4\) Above the buttons, there are two pairs of holes -- these connect the
button to the pin on the AVR when they're jumpered together. (I did this
for flexibility so that you could connect the buttons up to other pins
later as you wish.) Take two of the leads you saved in step 1) and
connect each pair of holes together.

![](avr2011_jumpers.jpg "avr2011_jumpers.jpg"){width="500"}

5\) Solder in the 6-pin header for the FTDI cable. Rather than doing it
the way I did (which covers the labels on the circuit board) why not
mount the header on the bottom side like Ed did?

![](avr2011_ftdiInstall.jpg "avr2011_ftdiInstall.jpg"){width="500"}

6\) Now start on the LEDs -- in PORTB pins PB0 through PB7. They \_are\_
polarized, and you'll notice that one lead is longer than the other. The
short lead gets connected to ground, while the long lead will eventually
connect through a resistor to the AVR output pins. (Resistors soldered
in next step.) Place the LEDs so that their short leads are in the
ground strip (labelled GND), and the long lead is in one of the outside
rows of hookup holes. Orientation matters here. Double-check it before
soldering?

![](avr1022_rowLEDs.jpg "avr1022_rowLEDs.jpg"){width="500"}

For aligning the LEDs, I had success putting them all face-down on the
table, and using the fact that they have rectangular faces. Pro-tip:
solder one pin on each LED, make sure they're in a nice line, and
re-heat any that you need to wiggle into place. Then solder in the
second pin on each LED.

![](avr2011_aligningLEDs.jpg "avr2011_aligningLEDs.jpg"){width="500"}

7\) Once you've done the LEDs, you can solder in their resistors. These
fit most easily and cleanly on the underside of the board, so you'll
want to trim off the extra leads from the LEDs before installing. You
want to solder each resistor to the outside strip of holes that
connected to the positive (long) pin of the LEDs, and the other end of
the resistor to the pins of the AVR. Notice that you're working on the
back-side of the board! Double-check that you're not connecting the
resistor to the VCC line that is closest to the LED.

![](avr2011_LEDresistors.jpg "avr2011_LEDresistors.jpg"){width="300"}
![](avr2011_LEDresistors_top.jpg "avr2011_LEDresistors_top.jpg"){width="300"}
![](avr2011_LEDresistors_bottom_done.jpg "avr2011_LEDresistors_bottom_done.jpg"){width="300"}

8\) At this point, you can install the chip. They come from the factory
with the pins splayed out a little bit -- you can lean the chip into a
tabletop to straighten the pins out. Place the chip with the notch on
the top of the chip corresponding to the notch in the silkscreen.
Double-check. Solder.

![](_avr2011_chipBending.jpg "_avr2011_chipBending.jpg"){width="400"}
![](_avr2011_chipAlignment.jpg "_avr2011_chipAlignment.jpg"){width="400"}

9\) Optional fun stuff: Feel free to solder in an artistic power LED and
its resistor. (Note the polarization. Short pin downwards, or notice
that there's a flat-spot on the LED flange.) Write your name on it. Wire
up the battery (black wire to GND).

![](_avr2011_kitDone.jpg "_avr2011_kitDone.jpg"){width="400"}
![](_avr2011_kitDone2.jpg "_avr2011_kitDone2.jpg"){width="400"}

10\) You should now be ready to flash in your first program. Hooray.
From here on it's (mostly) firmware!

### Adding the Light Sensor for Class 2 (ADC)

For the light sensor, you're creating a voltage divider with the
photoresistor and two legs of the potentiometer used as a variable
resistor. The photoresistor is connected to VCC and the AVR pin PC0, and
the variable resistor from PC0 to ground.

In the following image, the red pins represent the potentiometer, and
the blue are the leads from the photoresistor.

![ 500 px](_avr2011_bare_board_annotated_small.jpg " 500 px")

Start out by placing and soldering the potentiometer on the underside of
the board. Make sure that the smaller center pin connects to the ground
lines. Do \_NOT\_ clip the leads short yet.

![ 500 px](_avr2011_board_bottom.jpg " 500 px")

Bend one lead on the variable resistor up and over the two other holes
on the board, and plug it into PC0. Solder it in on the top side. Now
soldering the photoresistor in place should be easy.

![ 500 px](_avr2011_board_topside_soldered.jpg " 500 px")

Flash in the light sensor firmware and turn the potentiometer until it
give you a nice range of values on the LED display. I found that turning
it up to \_just\_ max out in full light works well -- you'll see that
it'll get down to one or two bars when you cover the cell with your
hand. You're done!

### Schematics, etc

If you'd like to make yourself a class-board, the attached Eagle files
should get you started.

Warning: It's a good idea to socket your AVR in the board so that you
can remove/swap chips when you want to.

Also, the LEDs in port B will over-ride the SPI port. For the class, we
used AVRs with a bootloader already flashed into them, so we didn't use
the SPI most of the time. If you'd like to use the SPI instead, you can
**probably** get away with using large-value (1k Ohm?) resistors for the
LEDs. Best is to omit them if you're going to use the SPI a lot, though.

[Media:
mega_classboard_files.zip](Media:_mega_classboard_files.zip)

Finally, if you want something with almost all of the functionality (but
none of the style!), Evil Mad Science sells a nice, very cheap, AVR Mega
breakout board.

[Category:Microcontrollers](Category:Microcontrollers)
[Category:AVR_Class](Category:AVR_Class)
