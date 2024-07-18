/* Simple use of timer0 for PWM */

#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#define F_CPU 1000000UL
#include <util/delay.h>


#define SPEAKER      PB0

void init(void){
  /* set up pins for output */
  DDRB |= _BV(SPEAKER);

  /* setup counter, p. 109 */
  TCCR0B |= (_BV(CS00) + _BV(CS01)); 	/* set up timer prescale */
  TIMSK0 |= _BV(OCIE0A);		/* enable compare interrupt */
  TCCR0A |= _BV(WGM01);		/* ctc mode */
  sei();
}

ISR(SIG_OUTPUT_COMPARE0){
  DDRB ^= _BV(SPEAKER);
}



/* Main program */
int main(void){
  uint8_t i;

  init();
  
  while(1){			/* mainloop */
    
    for (i = 0; i < 5; i++){	/* ramp up */
      OCR0A = i * 50 + 5;
      _delay_ms(100);
    }

    for (i = 5; i >= 1; i--){	/* ramp down */
      OCR0A = i * 50 + 5;
      _delay_ms(100);
    }
    
  }				/* end mainloop */
  return(1);
} /* end main */

