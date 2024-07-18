Syllabus, course material, homeworks, photos, etc from an Introduction
to Microcontrollers with AVR chips class can be found here.

Also see (and contribute to) [Useful AVR
Links](Useful_AVR_Links) For info about the kit:
[Avr2011_kit](Avr2011_kit) and [Avr2011 Programming The
Kit](Avr2011_Programming_The_Kit) Or check out the old
version of the course [AVR Microcontroller Class
2009](AVR_Microcontroller_Class_2009)

## Class 0: Introduction and Setup

Hello World!

**Covers**: What the AVRs are, what all the pins do, what they can do
for you. A brief tour of the toolchain, and getting your firmware up and
running on the chip. Reading the datasheets. How to make chips speak
digital to the outside world, pin-by-pin. Just enough C programming
fundamentals to make it work.

**Slides:**
[Media:avr2011_class0.pdf](Media:avr2011_class0.pdf)

**Lab**: Building the kit and running a test LED flasher.

For assembly instructions and more details on the class kit, see
[Avr2011_kit](Avr2011_kit). How to program the class kit, see
[Avr2011 Programming The Kit](Avr2011_Programming_The_Kit).

**Demo Code**: [Media: LED_Demo.tgz](Media:_LED_Demo.tgz)

**Homework**: More soldering, and Cylon Eyes. Optional extra credit:
Simple POV toy (hint, make the timing around 2ms between updates and
swing your arms). Super bonus points: Make a neat POV toy.

**OPC (Other People's Code)**:

[Media: Pov demo.tar.gz](Media:_Pov_demo.tar.gz) An example
POV toy. This contains 4 different patterns; two diamonds, a trapezoid
and a **smiley face**. Also contains examples of using a character array
to drive the POV toy, as well as use of constants to determine how the
program runs. - Will

**Resources**:

-   ATmega48P Datasheets (get both): [ATmega48P Summary
    Datasheet](http://www.atmel.com/dyn/resources/prod_documents/8025S.pdf)
    and [The Long ATmega48P
    Datasheet](http://www.atmel.com/dyn/resources/prod_documents/doc8025.pdf)
-   Bootloader appnote
    [1](http://www.atmel.com/dyn/resources/prod_documents/doc1644.pdf)
-   [Installing AVR Toolchain](Installing_AVR_Toolchain)

![ 500px](Screenshot-ATmega48-88-168.png " 500px")

## Class 1: Digital and Serial I/O

Interfacing with the real world is the soul of microcontrolling.

**Covers**: Gathering simple data from the world, and learn how to spit
it back out. A serial link with your computer enables all sorts of
tricks, and enables the microcontroller version of printf debugging.
Some boolean logic comes in handy here. Along the way, we'll learn a
bunch about debouncing switches.

**Slides**:
[Media:avr2011_class1.pdf](Media:avr2011_class1.pdf)

**Labs**: More Cylon Eyes, All sorts of button-pressing demos,
ASCII-to-binary keymapper, General-purpose serial LED display

**Demo Code**: [Media:
avr2011_class1_demoCode.tgz](Media:_avr2011_class1_demoCode.tgz)

**HW**: Ghetto logic probe and analyzer: read input on PORTC, display
values on the LEDs, write out the value of PINC over serial,
interpret/log/whatever using your laptop

**OPC (Other People's Code)**: [microTweeter](microTweeter) a
silly little program to interface twitter with a microcontroller. It is
designed to post quotes from a file when a button is pressed on a
microcontroller. This was done as learning experience with python,
serial communications and social media integration. -Will G.

**Resources**:

-   More than you ever wanted to know about debouncing: [A Guide to
    Debouncing](http://www.ganssle.com/debouncing.htm)

## Class 2: ADC and PWM: "Analog" I/O

**Covers**: Learn about ways to fake analog data into and out of your
microcontroller. We'll learn how to switch logic states fast to emulate
an analog output, and how to use the built-in analog-to-digital
converters to measure the complex real-world.

**Slides**:
[Media:avr2011_class2.pdf](Media:avr2011_class2.pdf)

**Demo Code**: [Media:
avr2011_class2_demoCode.tgz](Media:_avr2011_class2_demoCode.tgz)

**Labs**: Dimming LEDs, light-level meter, ghetto oscilloscope

**Homework**: Auto-dimming LED or basic light-level data logger

**Resources**: You'll need to solder up the light sensors:
[http://wiki.hacdc.org/index.php/Avr2011_kit#Adding_the_Light_Sensor_for_Class_2\_.28ADC.29
follow these
directions](http://wiki.hacdc.org/index.php/Avr2011_kit#Adding_the_Light_Sensor_for_Class_2_.28ADC.29_follow_these_directions)

## Class 3: Interrupts

**Covers**: Interrupts call subroutines when certain conditions are
true. They take a lot of the programming burden off your shoulders,
enable the AVR to syncronize to external devices, and are great for
super-fast response applications.

**Slides**: [Media:
avr2011_class3.pdf](Media:_avr2011_class3.pdf)

**Demo Code**: [Media:
avr2011_externalInterrupt.tgz](Media:_avr2011_externalInterrupt.tgz),
[Media:
avr2011_serialInterrupt.tgz](Media:_avr2011_serialInterrupt.tgz)

**Labs**: Bunch of pushbutton interrupt routines, light/dark transition
sensor, non-blocking serial I/O

**Homework**: Response-time-tester Game or "improved" interrupt-driven
ghetto oscilloscope

**Resources**:

## Class 4: Timers and Counters

**Covers**: Timers and counters let you time and count events! Up until
now, we've been doing a lot with for loops and delays to count the
passing of time. It's much easier and more precise to let the hardware
do the timing. When you add interrupts and timers together, the world
becomes your oyster!

**Slides**: [Media:
avr2011_class4.pdf](Media:_avr2011_class4.pdf)

**Demo Code**: [Media:
avr2011_counterClock.tgz](Media:_avr2011_counterClock.tgz)
[Media:
avr2011_counterPWM.tgz](Media:_avr2011_counterPWM.tgz)

**Labs**:

**Homework**: Response-time-tester Game or tone generator

## Class 5: Flash, EEPROM, I2C, USB, SD Cards, GPS, and Life After AVR Class

**Covers**: First, we'll cover using the internal flash memory and
EEPROM for data storage. Then I'll demo how to use other people's
code/libraries and tie it in to our packages, interfacing with all sorts
of random devices for fun and profit. The final (optional) trick will be
turning your classboard into a standalone AVR programmer so that you can
program raw chips yourself, and outgrow the bootloader.

**Labs**:

**Homework**:

[Category:Microcontrollers](Category:Microcontrollers)
[Category:AVR_Class](Category:AVR_Class)
