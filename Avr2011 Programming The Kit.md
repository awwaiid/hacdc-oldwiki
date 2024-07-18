# Software:

If you haven't already installed the laptop-side software toolchain, see
[Installing AVR Toolchain](Installing_AVR_Toolchain) and come
on back.

# Hookup:

-   your laptop
-   an FTDI cable
-   the classboard, populated with chip and FTDI header

The chips we use in class are pre-flashed with a bootloader, which means
that you can program them over the AVR's serial port.

Plug the FTDI cable into the board -- black wire to GND.

![ 500px](_avr2011_cable_hookup.jpg " 500px")

# Getting the Board Into Bootloader Mode {#getting_the_board_into_bootloader_mode}

When the chip starts up, the bootloader program checks if the "B" button
(connected to PD2) is pressed. If the button is pressed, it sits and
waits for programming data to come in over the serial line. If the
button isn't pressed, it starts your program. So, what you want to do is
reset the chip while the "B" button is pressed.

To get the chip into ready-to-program Bootloader Mode:

-   Hold down the "B" button
-   Tap the "A" button (RESET)
-   Now you can release the "B" button

You can tell you're in bootloader mode because your normal code won't be
running. If you had and LED on or blinking, for instance, it won't be
now.

# Programming the Chip {#programming_the_chip}

-   Get the chip into bootloader mode
-   While you're in the directory with your code and the Makefile, type
    "make" or "sudo make" into the terminal
-   Your code will compile, and it will upload your code to the chip
-   The chip will automatically reset and start running your program

If all is well, you will see

    avrdude: erasing chip
    avrdude: reading input file "LED_Demo.hex"
    avrdude: input file LED_Demo.hex auto detected as Intel Hex
    avrdude: writing flash (156 bytes):

    Writing | ################################################## | 100% 0.21s



    avrdude: 156 bytes of flash written
    avrdude: verifying flash memory against LED_Demo.hex:
    avrdude: load data flash data from input file LED_Demo.hex:
    avrdude: input file LED_Demo.hex auto detected as Intel Hex
    avrdude: input file LED_Demo.hex contains 156 bytes
    avrdude: reading on-chip flash data:

    Reading | ################################################## | 100% 0.19s



    avrdude: verifying ...
    avrdude: 156 bytes of flash verified

    avrdude: safemode: Fuses OK

    avrdude done.  Thank you.

# If there are errors... {#if_there_are_errors...}

Common problems and their solutions include:

-   Permissions to write to USB port. Solution: keep typing "sudo make"
    or add yourself to the USB output group:
        Ubuntu: sudo usermod -a -G dialout yourNameHere

```{=html}
<!-- -->
```
-   /dev/ttyUSB0 not found. Is the FTDI cable plugged in? Try "lsusb" to
    see if it's there. Try "ls /dev/ttyUSB\*" to see if it's registered
    as USB1. Edit Makefile accordingly, and remember that you'll
    probably have to change it back later.

```{=html}
<!-- -->
```
-   Bugs in your code -\> failure to compile. If you get something
    like:\
    `Compiling: LED_Demo.c`\
    `LED_Demo.c: In function ‘main’:`\
    `LED_Demo.c:22: error: expected ‘;’ before ‘while’`\
    `make: *** [LED_Demo.o] Error 1`\
    you have an error in your code that's preventing compilation. Read
    the error output for hints, tweak your code, and try again. (In this
    case, I left out a ';' in line 20.)

[Category:AVR_Class](Category:AVR_Class)
