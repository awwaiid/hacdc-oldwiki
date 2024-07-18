Part of the [AVR Tutorial](AVR_Tutorial)

## Goals

In this lesson, you'll program the micro-controller version of "hello
world", letting you fire up your programmer, compiler, chip, LED, and
test them all out. You'll learn how to setup and use pins for output,
and along the way get some exposure to AVR-specific coding practice.

## The Circuit

Possibly the simplest circuit you can imagine: plug an LED into pins PB4
and ground. PB4 is going to go the positive leg of the LED to source
current across the LED and light it up.

If you want, you can include a current-limiting resistor inline with the
LED (around 100 ohms is good). I've done it both ways -- the AVR will
drive the LED at \~50mA, which will burn out the LED over the long run,
but for this demo, it'll be fine.

## The Code

    <nowiki>

    /* Blinker Demo */

    #include <avr/io.h>     /* Defines pins, ports, etc */
    #define F_CPU 1000000UL    /* Sets up the chip speed for delay.h -- 1MHz for Tiny13*/
    #include <util/delay.h>     /* Functions to waste time */

    #define LED PB4         /* Defines pin PB4 for the LED.  I
                     often incorporate a bunch of the circuit
                     info in the defines, which makes
                     porting the code to another chip
                     easier and reminds you of how to
                     hook it up. */

    int main(void){

      DDRB = _BV(LED);            /* Data Direction Register B:
                           writing a one to the bit
                           enables output.  More on the
                           _BV() macro in the next
                           lesson.*/
        
      while(1){         /* the main loop, from which we never return */

        PORTB = _BV(LED);       /* Turn on the LED bit/pin in PORTB */
        _delay_ms(400);     /* wait */

        PORTB &= ~_BV(LED);     /*  Turn off the LED bit/pin in PORTB */
       _delay_ms(400);      /* wait */

      }

      return(0);            /* never reached */
    }
    </nowiki>

## Discussion

Even though this is a very short program, it provides a sketch of what
most AVR code looks like.

At the top is a bunch of includes, defines, and etc.

**io.h** defines all of the port and pin macros and is linked to the
individual chip's io header during compilation, which allows the same
code to work for different AVR chips. You pretty much always want to
include io.h.

The delay functions in **delay.h** are fairly generic, but depend on
knowing the chip's CPU clock speed to get the timing right. Also note
that the maximum delay you can request also depends on the chip's clock
speed. Read up in delay.h for details if you're interested. Practically
speaking, if you're asking it to delay for 600ms and it's only delaying
for 200ms, try calling the \_delay_ms() function three times, each for
200ms.

After the defines and includes we get down to the **main()** function.
Most AVR main()'s have at least an initialization section and an
infinitely-repeating loop where the bulk of the chip's work gets done.

In this example, the **initialization section** just sets up the LED pin
for output by writing a 1 to the relevant bit in the Data Direction
Register for port B. When the chip is reset or powered on, all of the
input/output ports are initialized as inputs (DDRB = 0). We write a one
to the DDR do set it as output. More on the bitwise math in the next
lesson.

The **main loop** of the function then blinks the LED by alternately
driving the output pin high (the supply voltage, VCC) or low (GND, 0v),
and it does this forever, or until the chip is reset or powered off.
(The return(0) line is just there to stop the compiler from warning
about main() functions that don't return -- a requirement of GCC that
isn't really relevant to the AVR, but it doesn't hurt the code either.)

For a lot more examples of what you can do just by toggling one pin, see
the code over at [AVR Noise Toys](AVR_Noise_Toys).

## Trouble?

Programmer woes:

Is the LED in the correct polarity? (Positive to pin PB4, negative to
GND).

Is avrdude complaining? Try unplugging and re-plugging your programmer
if it's a USB one. Sometimes it can get out of sync.

If avrdude's not working, you may also be having permissions problems.
Solutions include running giveio.bat for Windows or calling avrdude (or
the make command) with *sudo* for Linux if you didn't set up user
permissions for USB.

[Category:AVR Tutorial](Category:AVR_Tutorial)
