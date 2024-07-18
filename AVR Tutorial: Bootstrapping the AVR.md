So you want to program an AVR, but you don't have a programmer? Do you
have a parallel port? Then fear not!

The AVR chips are set up to flash their program memory through a serial
connection with the host computer, so programming them is mostly a
matter of getting the right lines to the chip, with the rest taken care
of by the AVRdude software.

The simplest way to get started is with one of the parallel-port
"programmers". The basic procedure is to a) look at the docs for
AVRdude's various parallel port adapters, b) look at the pinouts for the
chip you're using, and c) wire the right pins on the parallel port to
the right pins on your AVR.

For instance, the DAPA (Direct AVR Parallel Access) "programmer" makes
the following connections between the parallel port pins and the AVR:

  Parallel Pin   AVR
  -------------- -------
  1              SCK
  2              MOSI
  11             MISO
  16             RESET
  20             GND
  21             GND

Connect the wires and test it out! Type **avrdude -n -v -p tiny13 -c
dapa** and you should see your part recognized and the fuse settings
displayed. (Make sure to substitute your part name for tiny13. Type
**avrdude -p help** to see the list of supported parts.)

For a much more complicated boot strap technique, there is the [secure
bootloader](secure_bootloader) that uses AES encrypted
firmware images.

[Category: AVR Tutorial](Category:_AVR_Tutorial)
