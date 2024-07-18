The first step is to get set up with all the necessary hardware and
software to start making your controllers do your bidding.

## Programmer

A programmer needn't be super-fancy. In fact, you can get by with five
wires soldered to a parallel port plug if you'd like. [This
Instructable](http://www.instructables.com/id/Ghetto-Programming%3a-Getting-started-with-AVR-micro/)
steps through making a parallel port programmer. I'll probably make up a
cable or two and bring it in to the space if you'd just like to try it
out. Note that if you've got a breadboard, you can skip the step of
making a programming cradle and just plug the wires into the correct
pins on the AVR.

If you're getting a little more serious, spend \$22 and get a [USB-based
programmer from ladyada](http://www.ladyada.net/make/usbtinyisp/) or
make your own [usbtiny SPI
programmer](http://www.xs4all.nl/~dicks/avr/usbtiny/) for maybe
\$10-15ish. If you're making your own, you'll need to flash an AVR with
the supplied firmware, but you can do that with a parallel port
programmer or just ask one of us to hook you up.

This part may seem daunting -- it's not. Dive in or get someone to help
you. The Ladyada kit is a good first/second soldering project.

Indeed, if any of that seems too complicated, just connect some wires
from a parallel port to the right pins on the AVR (perhaps directly onto
your breadboard?) and you're started. There's an adapter for doing just
that floating around the lab somewhere. For more on that style of
programmer, see [AVR Tutorial: Bootstrapping the
AVR](AVR_Tutorial:_Bootstrapping_the_AVR)

## Software

The standard toolchain consists of a GCC-based C cross-compiler, the
AVR-libc libraries, and the software to run your programmer: *avrdude.*
Feel free to write the C or assembler code using whatever editor you
like best.

**Windows:** The whole toolchain is put together nicely with
[WinAVR](http://sourceforge.net/projects/winavr). Download and install.
If you're using a parallel port programmer, you'll need to also run the
included *giveio.bat* file to get yourself permissions.

**Linux:** I'm most familiar with Ubuntu these days. As of 2008/04,
"sudo apt-get install avrdude avr-libc binutils-avr gcc-avr" will set
you up. Or fetch tarballs and compile it yourself. (I'll incluce
versions here in a few.)

**MAC:**\
Wanted to note something quick about my MAC experience so far (Q): I
haven't really read the link to ada's site about programming AVR for MAC
but 'AVRMacPack' is really cool! In OSX it's a simple .pkg file to
install and drop into /Applications - then as long as you've installed
XCode (that comes with macbook in the 2nd CD 'Developer Tools' section)
they have this great little script in there called 'avr-project'. When
you run this little badass piece of code it creates a DIR for your
project called /FIRMWARE and three things:

`An .xcodeproj file - this is a template (with skeleton code) for writing your program in Xcode`

`Makefile template which ROCKS - all you have to do after is change the DEVICE you're`\
`  using along with PROGRAMMER and FUSES. (Will LINK my file here for reference `\
` email Q if i forget)`

`main.c file that is just a stupid simple C template to get you started`

In addition to the compiler and programming software, it's nice to have
an [AVR Makefile](AVR_Makefile) that automates the
cross-compilation build process. Comment in/out the first few defines to
match your environment.

## Chips

So you're set to program, but you need a couple chips. [This page at
AVRFreaks](http://www.avrfreaks.net/index.php?module=Freaks%20Devices&func=viewDev)
has some of the specs and all the datasheets in one place, but it's a
bit overwhelming.

A shortlist of the coolest chips includes:

**Tiny13** -- Smallest and cheapest. 8 pins, 5 of them useful. 1k
program memory. Goes everywhere. Cheaper and more versatile than a 555
IC. Some hardware SPI/I2C support, but it's a pain to write for.

**Tiny45** -- Another 8-pin, but with a high-speed (64MHz!) PWM clock
and 4k of program memory. \~\$0.75 from Digikey. Can be made to run at
16MHz+ using its internal oscillator, making firmware USB a reality.
Some hardware SPI/I2C support like the Tiny13.

**Tiny2313** -- 20 pins. It's the cheapest/smallest unit with \> 5
usable pins. Hardware USART makes serial communication (e.g. with your
computer) reasonably simple, which can be sweet for debugging or
datalogging.

**Mega 48** -- 28 pins. All of the bells and whistles, with 4k program
memory. 6 ADC channels, buncha timers, SPI/I2C/USART communications.
They'll do what you want.

**Mega 88, 168** and beyond. A lot of power for under \$10. Overkill for
most of my (Elliot's) small projects, but when you need the memory, you
need the memory.

Maybe we could do a few group purchases to get up to Digikey's
price-break minimums. Interested? E-mail Elliot.

And while you're at the AVRFreaks page, download both the long and short
datasheets for whichever chips you end up buying. The short one has a
nice pinout diagram on page two, while the long one explains everything
you'll ever need to know.

## Misc. Extras {#misc._extras}

You're at least going to need some LED's to go blink. Pushbuttons are
nice for playing around with inputs. Photocells give your creations
sight. Motors and motor drivers give you legs. I'm sure there's more
than enough scrounge around the space to get everyone started.

[This
Instructable](http://www.instructables.com/id/Ghetto-Development-Environment)
details my current setup, and is a good start.

[Category: AVR Tutorial](Category:_AVR_Tutorial)
