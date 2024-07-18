# Introduction

There are a few pieces of software you'll definitely want for AVR
programming:

-   A compiler and/or assembler
    ([avr-gcc](http://www.nongnu.org/avr-libc/)) to convert
    human-readable code to binary
-   Manipulation of binaries
    ([binutils-avr](http://www.nongnu.org/avr-libc/)). You'll need to
    convert from the ELF file to something your chip will like.
-   Something to talk to your AVR programmer
    ([AVRDUDE](http://www.bsdhome.com/avrdude/)), that is the piece of
    hardware you plug into both your computer and the chip you want to
    program.
-   Not required, but something to make your life easier: ([GNU
    make](http://www.gnu.org/software/make/))

Note that both avr-gcc and binutils-avr come from the
[avr-libc](http://www.nongnu.org/avr-libc/) project. avr-libc itself
isn't software per-se; it's a library that implements standard C
functions for AVRs.

# Installation

## Linux

### Ubuntu

Install the following packages:

-   avrdude
-   avrdude-doc
-   binutils-avr
-   avr-libc
-   gcc-avr

You can get them in one shot using:

`sudo aptitude install avrdude avrdude-doc binutils-avr avr-libc gcc-avr`

### Gentoo

Install the following packages:

-   dev-embedded/avrdude
-   sys-devel/crossdev

Run (as root):

`crossdev -t avr`

This will install cross-avr/gcc, cross-avr/binutils, and
cross-avr/avr-libc (pulled from an avr portage overlay).

Finally, the following command is necessary to make the linker happy
(again, as root):

`ln -s /usr/lib/binutils/avr/2.21/ldscripts /usr/x86_64-pc-linux-gnu/avr/binutils-bin/2.21/ldscripts`

You'll want to adjust the path above to match your architecture and
binutils version.

## OS X

> NOTE: In trying to program the AVR without using CrossPack (below), we
> were unable to get OS X to recognize the FTDI device until we
> installed FTDI USB Serial drivers. The easiest way to do this is to
> download the [latest Arduino installer
> archive](http://arduino.cc/en/Main/Software) and installing the
> FTDIUSBSerialDriver_10_4_10_5_10_6.mpkg (its name as of 3/27/11) from
> it.

[CrossPack](http://www.obdev.at/products/crosspack/index.html) Will take
care of you. It doesn't require you to have Xcode installed, but if you
do, you can do your development in Xcode and run your makefile from that
IDE. If you have an open terminal.app session open when you install it,
you'll need to reload your .profile to use crosspack.

**You don't have to use the crosspack tools to manage a build projects,
you can use elliots makefile as well. You'll need to modify it
appropriately**

When you install crosspack, you'll be presented with documentation in
your web browser. These docs are also located at
/Applications/Crosspack-AVR-Manual.html. This is important, as the
Crosspack docs are not on the www.obdev.at site :\\

### Making Crosspack projects work with Elliot's boards

Follow the crosspack 'getting started' section to create your first
hello world project.

First, make a demo project.

     bash$ cd ~/Documents
    bash$ mkdir AVR
    bash$ cd AVR
    bash$ avr-project Demo
    bash$ open Demo 
    bash$ cd Demo
    bash$ ls -l
    drwxr-xr-x   5 cs  cs  170 Nov 19 13:58 Demo.xcodeproj
    drwxr-xr-x   4 cs  cs  136 Nov 19 13:58 firmware
    bash$ cd firmware
    bash$ ls -l
    -rw-r--r--   1 cs  cs  4139 Nov 19 13:58 Makefile
    -rw-r--r--   1 cs  cs   348 Nov 19 13:58 main.c

You can see, your code lives in the projects' firmware folder. You can
replace the code (\*.c) as you please with whatever blinkenlights
project you see fit. You'll want to open up the Makefile and edit two
lines - the DEVICE and PROGARMMER line. The device we are using is the
"atmega88". The programmer needs to be set to avr109, the baud rate to
9600, and the port to whatever your /tty.usbserial device (read: FTDI
cable) is called. Mine shows up as /dev/tty.usbserial-FTEA4CYY, yours
may very well show up with a different name.

    DEVICE     = atmega88
    CLOCK      = 8000000
    PROGRAMMER = -c avr109 -P /dev/tty.usbserial-FTEA4CYY -b 9600
    OBJECTS    = main.o
    FUSES      = -U hfuse:w:0xd9:m -U lfuse:w:0x24:m\

One you've edited your make file, you can run the following commands

    make
    make flash

Make will compile the c code into object code and then to the correct
HEX code for the device. Make flash will try to program the code. Make
sure you've held down reset and button A in order to let the device
reset into programming mode! Grab Elliots blinking led code and try it
out!

-Will

## Windows

[WinAVR](http://winavr.sourceforge.net/) has everything you need.

For the programmer type, select AVR109 or Butterfly. For the serial
port, select the USB device.

# Special-Needs Hardware

#### Atmel Dragon Hardware Programmer with avrdude on Ubuntu

Apparently there are two bugs that get in the way when trying to use
avrdude with the dragon.

-   avrdude 5.8 (via apt-get) segfaults after writing 1 byte:
    <http://savannah.nongnu.org/bugs/?27507> - there is a patch for 5.8
    posted there
-   avrdude 5.9 (via the official site) source apparently has some other
    bug that prevents the build from completing

First, get the dependencies for building the code.

`sudo apt-get build-dep avrdude`

The solution (aside from applying patches to the above versions) is to
use the patched 5.10 SVN code. The instructions are from this link:
<http://www.avrfreaks.net/index.php?name=PNphpBB2&file=printview&t=87972&start=20>

-   svn co <svn://svn.savannah.nongnu.org/avrdude/trunk> .
-   cd avrdude
-   ./bootstrap
-   ./configure
-   ./make
-   sudo ./make install

That seems to have worked for me! I'm on 9.04 32bit and I also installed
bison/flex/autoconf --obscurite

[Category:Microcontrollers](Category:Microcontrollers)
