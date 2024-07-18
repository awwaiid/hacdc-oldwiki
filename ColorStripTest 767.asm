;===============================================
; ColorStripTest_767.asm
;
;
; Application to test WS2811 LED strip communication
;
; Microchip Assembly program
; Jan 19, 2013: Created
;
; David D. Kaufman
; www.TheVaporTrail.com
;===============================================


		;---------------------------------------------
		;	Specify Processor and include file
		;---------------------------------------------
		processor 16f767
		#include "P16F767.INC"

		;---------------------------------------------
		;	Adjust warnings
		;---------------------------------------------
		errorlevel -302
		
		;---------------------------------------------
		;	Decimal
		;---------------------------------------------
		radix	dec
				
		;---------------------------------------------
		;	Chip configuration
		;---------------------------------------------
		;	CONFIG1:
		;	_FOSC_HS	External (HS) oscillator 
		;	_WDT_OFF	WDT (Watchdog Timer)disabled
		;	_PWRTE_ON	PWRT (Power-up timer) enabled
		;	_MCLR_OFF	MCLR/VPP/RE3 pin function is digital input only, MCLR gated to '1'
		;	_BOREN_OFF	Brown Out Detect disabled
		;	_VBOR_2_0	VBOR set to 2.0V [DEFAULT]
		;	_DEBUG_OFF	In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins [DEFAULT]
		;	_CCP2MX_RC1	CCP2 is on RC1 [DEFAULT]
		;	_CP_OFF		Code protection off [DEFAULT]
		;
		;	CONFIG2:
		;	_FCMEM_OFF	Fail-Safe Clock Monitor disabled
		;	_IESO_ON	Internal External Switchover mode enabled [DEFAULT]
		;	_BORSEN_ON	_?_ Enabled [DEFAULT]
		;---------------------------------------------
		__config _CONFIG1, _FOSC_HS & _WDT_OFF & _PWRTE_ON & _MCLR_OFF & _BOREN_OFF
		__config _CONFIG2, _FCMEN_OFF
			

		;---------------------------------------------
		;	Memory Variables
		;---------------------------------------------
			cblock	0x20
			COUNTER						; Delay counter variables
			TEMP						; Generic TEMP. Only safe within a routine
			endc

		;---------------------------------------------
		;	Vectors
		;---------------------------------------------
			org 0x00
			goto Start					; Power-on Vector

		;---------------------------------------------
		;	Main Program
		;---------------------------------------------
			org	0x05
Start		
			call	ChipInit
			call	SPI_Init

MainLoop
			bsf		PORTA,0				; Turn-on LED on breadboard	(to verify program is running)	

			movlw	0x00				; Write a single three-byte sequence on the SPI line.
			call	WS2811_WriteByte	; This will set the color of the first WS2811 LED.
			movlw	0x00				; The WS2811 order is GRB. This code sends 00 00 40 and results
			call	WS2811_WriteByte	; in a the first LED showing blue (at 1/4 brightness)
			movlw	0x40
			call	WS2811_WriteByte

			call	BigDelay			; Pause

			bcf		PORTA,0				; Turn-off LED on breadboard

			movlw	0x00				; Same as above, but send 00 44 00, which is red.
			call	WS2811_WriteByte
			movlw	0x40
			call	WS2811_WriteByte
			movlw	0x00
			call	WS2811_WriteByte

			call	BigDelay			; Pause

			goto	MainLoop			; Repeat

						
		;---------------------------------------------
		;	ChipInit
		;	
		;	Basic chip initialization. This test app
		;	does not do much, so we are simply setting
		;	PORTA, PORTB, and PORTC as output.
		;	
		;---------------------------------------------
ChipInit	
			BANKSEL TRISA
			clrf	TRISA				; Set all pins on PortA, PortB,
			clrf	TRISB				; and PortC as output
			clrf	TRISC				; 
			BANKSEL STATUS
			
			clrf	PORTA				; Clear all PortA, PortB, and 
			clrf	PORTB				; and PortC to zero
			clrf	PORTC
			return

		;---------------------------------------------
		;	SPI Init
		;	
		;	Initialize the MSSP as an SPI Master with
		;	the clock at Fosc/4. For the WS2811, the 
		;	clock pin and the input pin are ignored.
		;	Only the SDO pin (RC5) is used.
		;
		;	SSPCON
		;		WCOL	0		
		;		SSPOV	0
		;		SSPEN	1
		;		CKP		0
		;		SSPM	0001	SPI Master mode, clock = Fosc/16	
		;				0000	SPI Master mode, clock = Fosc/4
		;	
		;	SSPSTAT
		;		SMP		0
		;		CKE		0
		;---------------------------------------------
SPI_Init
			BANKSEL	SSPCON
			movlw	(1<<SSPEN) | (0000)
			movwf	SSPCON

			BANKSEL	SSPSTAT
			movlw	0
			movwf	SSPSTAT		

			BANKSEL	TRISC
			bcf		TRISC,5				; Set PORTC:5 as output

			BANKSEL	STATUS
			return

		;---------------------------------------------
		;	WS2811_WriteByte
		;
		;	This routine uses the SPI output line to 
		;	communicate with the WS2811. The WS2811
		;	does not have a clock. It uses pulse width
		;	to specify a one or a zero. The width of
		;	the combined high and low levels is the same
		;	for a zero bit and a one bit.
		;	For each WS2811 bit, we specify a byte with
		;	enough high bits set to provide the pulse
		;	width needed. (Note that the SPI clock and
		;	input lines are not used.)
		;
		;	Input: 
		;		W: Byte to send
		;	
		;---------------------------------------------
		;
		;	The WS2811 spec provides these timing values.
		;	The PIC does not attempt to match these with
		;	much precision. Futher testing is required to
		;	understand the tolerance available.
		;
		;	Current testing is done with a 20Mhz ceramic
		;	resonator and the SPI at Fosc/4
		;	
		;	Low speed
		;		Bit width: 2.5 usec
		;		One:  1.2 us HIGH, 1.3 us LOW
		;		Zero: 0.5 us HIGH, 2.0 us LOW
		;
		;	High speed
		;		Bit width: 1.25 usec
		;		One:  0.6  us HIGH, 0.65 us LOW
		;		Zero: 0.25 us HIGH, 1.0  us LOW
		;
		;---------------------------------------------
		;	The codes for the zero bit and one bit,
		;	defined below, are a very rough approximation 
		;	of the the relative timing described in
		;	the WS2811 spec. 
		;	
		;---------------------------------------------

#define WS2811_Zero_Bit	b'11000000'
#define WS2811_One_Bit	b'11111100'

WS2811_WriteByte
			movwf	TEMP				; TEMP = w
			movlw	8					; COUNTER = 8
			movwf	COUNTER
			
WB_a		movlw	WS2811_One_Bit		; Determine code for next bit
			btfss	TEMP,7
			movlw	WS2811_Zero_Bit
			
			movwf	SSPBUF				; Write code
			
			BANKSEL	SSPSTAT				; Wait for SPI to clear, then read SSPBUF
			btfss	SSPSTAT,BF			; (to allow [next] write to occur)
			goto	$-1
			BANKSEL	STATUS
			movfw	SSPBUF

			rlf		TEMP,f				; Rotate next bit to highest position

			decfsz	COUNTER,f			; Continue until byte done
			goto	WB_a

			return

		;---------------------------------------------
		;	WS2811 ResetDelay
		;
		;	This routine should be the minimum delay needed
		;	to reset the data input of the WS2811. The spec
		;	says this should be either 2.5 usec for low speed
		;	or 1.25 usec for high speed.
		;
		;	Note: The time of the loop has not been measured
		;	or calibrated. 
		;	
		;---------------------------------------------
WS2811_ResetDelay
			movlw	0xff
			nop
			nop
			addlw	-1
			btfss	STATUS,Z
			goto	$-4
			return


		;---------------------------------------------
		;	BigDelay
		;
		;	A somewhat arbitrary delay long enough to
		;	easily see the state of an LED
		;	
		;---------------------------------------------
BigDelay	movlw	0xff
			call	Delay
			movlw	0xff
			call	Delay
			movlw	0xff
			call	Delay
			movlw	0xff
			call	Delay
			movlw	0xff
			call	Delay
			movlw	0xff
			call	Delay
			return

		;---------------------------------------------
		;	Delay
		;	Input: w
		;	
		;---------------------------------------------
Delay		movwf	COUNTER		; COUNTER = w;
			movlw	0			; w = 0;
D_a			nop					;
			nop					;
			addlw	-1			; w--;
			btfss	STATUS,Z	; if (w != 0)
			goto	D_a			;   goto D_a;
			decfsz	COUNTER,f	; if (COUNTER-- != 0)
			goto	D_a			;   goto D_a; // At this point w==0
			return

		;---------------------------------------------
		;	End
		;---------------------------------------------
			end