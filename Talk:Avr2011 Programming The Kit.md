I find it helpful to flash the chip with a simple program to turn on all
LED's just to ensure all of your LED's work before moving on just in
case you put an LED in backwards.

Light Em' Up Program

`#include <avr/io.h> /* AVR library to define pins, ports, etc */`\
`int main(void)`\
`{`\
`   DDRB = 0xff;  //Set port B pins as all outputs`\
`   PORTB = 0xff; //Set all Port B pins as High`\
`   return 1;`\
`}`
