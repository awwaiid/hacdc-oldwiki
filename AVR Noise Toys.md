## Noise Toys {#noise_toys}

To turn a blinky LED program into a simple square-wave synthesizer, plug
a speaker into PB4 and ground (where the LED was before), and turn up
the frequency.

The code is largely the same, just toggling a pin on and off, but now
doing it at different speeds (for different tones) and for differing
time periods (notes duration).

## squareOne.c

    <nowiki>
    /* Makes a quick square wave for noise-making experimentation. */

    #include <inttypes.h>
    #include <avr/io.h>
    #define F_CPU 16000000L         /* really?  tested with the scope for Tiny45 */
    #include <util/delay.h>

    void init(void){
      DDRB |= _BV(PB4);
    }

    int main(void){
      uint8_t i, j, k;
      uint16_t wavelength;

      init();
      
      while(1){
        for (k = 10; k > 3; k--){   /* pitch multiplier: makes different notes */
          wavelength = 20*k;
          
          for (j=0; j < 200/k; j++){ 
            /* number of cycles at each pitch: controls speed of loop */
            
            PORTB |= _BV(PB4);
            for (i=0; i < wavelength; i++) /* on for 20*wavelength microsecs */
              _delay_us(20);               /* loop needed b/c each call to
                                              the delay function can't
                                              delay all that long before
                                              it overflows */
            
            PORTB &= ~_BV(PB4);     /* off for 20*wavelength microsecs */
            for (i=0; i < wavelength; i++)
              _delay_us(20);

          } 
        }    
      }
    }

    </nowiki>

## spacePhaser.c

    <nowiki>
    /* Starts with a very short pulse (high-frequency) and drops rapidly. */ 

    #include <inttypes.h>
    #include <avr/io.h>
    #define F_CPU 16000000L         /* really?  tested with the scope */
    #include <util/delay.h>

    void init(void){
      DDRB |= _BV(PB4);
    }

    int main(void){
      uint8_t i, j, k;
      uint16_t wavelength;

      init();

      while(1){
        for (k = 3; k < 120; k++){  /* pitch multiplier: makes different notes */
          wavelength = k;

          for (j=0; j < 200/k; j++){
            /* number of cycles at each pitch: controls speed of loop */

            PORTB |= _BV(PB4);
            for (i=0; i < wavelength; i++) /* on for 20*wavelength microsecs */
              _delay_us(20);               /* loop needed b/c each call to
                                              the delay function can't
                                              delay all that long before
                                              it overflows */
            PORTB &= ~_BV(PB4);     /* off for 20*wavelength microsecs */
            for (i=0; i < wavelength; i++)
              _delay_us(20);

          }
        }  
        for (j=0; j < 60; j++){     /*  with delay between shots  */
          for (i=0; i < 250; i++)
            _delay_us(200);
        }
      }  
    }    

    </nowiki>

## chaosEngine.c

    <nowiki>
    /* Now the frequency of the wave is a crazy function. */         

    #include <inttypes.h>
    #include <avr/io.h>
    #define F_CPU 16000000L         /* really?  tested with the scope */
    #include <util/delay.h>

    void init(void){
      DDRB |= _BV(PB4);
    }

    int main(void){
      uint8_t i, j, k;
      uint16_t wavelength;

      init();

      while(1){
        wavelength = (13 * wavelength + 1) % 123 + 100;

        for (j=0; j < 30; j++){
          /* number of cycles at each pitch */

          PORTB |= _BV(PB4);
          for (i=0; i < wavelength; i++) /* on for 20*wavelength microsecs */
            _delay_us(20);         /* loop needed b/c each call to
                                      the delay function can't
                                      delay all that long before
                                      it overflows */
          PORTB &= ~_BV(PB4);       /* off for 20*wavelength microsecs */
          for (i=0; i < wavelength; i++)
            _delay_us(20);
          
        } 
      }   
      for (j=0; j < 60; j++){       /*  longer delay between shots  */
        for (i=0; i < 250; i++)
          _delay_us(200);
      }
    }  

    </nowiki>

[Category: AVR Tutorial](Category:_AVR_Tutorial)
