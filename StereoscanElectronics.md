# Replacement Devices

## Requirements

Scanning, e-beam lens correction, and image acquisition functions may
need to be taken over by software and/or rapidly prototyped analog
hardware. Complex synchronous waveforms may need to be synthesized at
high-speed in response to other high-speed events. Probably the most
demanding task is to correct "wiggle" on one axis while sweeping the
beam across another. Internal voltages may range from 1uV-30kV.

-   \~100kHz Analog I/O Bandwidth
-   209.5dB Dynamic Range (not necessarily continuous, though it would
    be nice)
-   At least 18 input and 18 output channels.
-   In-phase acquisition and response.
-   One-shot sample-and-hold behavior may be acceptable.

These requirements may be relaxed somewhat if hardware is customized to
address specific problems. However, capable hardware encourages greater
flexibility in software.

## Technology

### Maximum Speed, Maximum Dynamic Range ADC/DACs

Modern audio devices can achieve approximately 120dB dynamic range at
192kHz sampling rates. The remaining 89.5dB (1V-30kV) dynamic range may
be achieved through rarely switched gain programming resistors, or a
second ADC.

Usually these devices operate over I2S. Unfortunately, the I2S protocol
requires \~4.6MHz per 24bit 192kS/s channel. Reading or driving 18
channels would require \~83MHz.

In-phase data acquisition response requires precise synchronization and
low-latency (\<100 microseconds). This probably necessitates a shared
clock, and host software may need to implement one-shot functionality
rather than real-time response. If synchronization between inputs and
outputs is not feasible, a timing signal may be fed from an analog
output to an analog input.

Candidate devices include:

-   ES9018 (Claims to be a 32-bit DAC.)

### Maximum Resolution ADC

LTC2440 is ATMega32U4/Arduino compatible, and most appropriate for
independent low-speed applications (ie. vacuum gauge).

### High Performance Analog Amplifier Chips

Same as used in the biosignal amplifier should work here, both for low
and high-impedance measurement as well as fully differential (using an
instrumentation amplifier).

## Hosts

### Beaglebone Black

I2S port seems to be derived from HDMI, which is output only.

### Raspberry Pi

I2S port speed doesn't seem to be specified, though one individual
reports the use of a software clock to generate 19.2MHz, which some
problems.

### Amanero

USB input, I2S output mode only. Unknown I2S port speed.

### ATMega32U4/Arduino

ATMega32U4 chips can quickly provide USB connectivity and manage ADC/DAC
devices. Unfortunately, these systems are slow.

### FPGA

Probably the only way we can efficiently interface with a massive load
of I2S devices. Need to get something easy to program, and compatible
with important OpenCores like OpenRISC and I2S.

Platforms under consideration:

-   spartan3 (HacDC may already have some.)
-   Mojo v3 FPGA Development Board
-   DE0-Nano
-   Altera DE0 Board

### USRP

Some USRP devices may be directly capable of real-time synchronized
operation at high speed. Cost is high, dynamic range is only 16 bit, and
many ferrite common-mode chokes would be needed to minimize noise.

# References

<https://sites.google.com/site/koonaudioprojects/usb-to-stereo-i2s>

<http://www.element14.com/community/community/knode/single-board_computers/next-gen_beaglebone/blog/2013/07/06/bbb--building-a-dac>

<http://en.wikipedia.org/wiki/I%C2%B2S>

<http://www.element14.com/community/community/knode/single-board_computers/next-gen_beaglebone/blog/2013/05/28/bbb--audio-notes>

<http://volumio.org/raspberry-pi-i2s-dac-sounds-so-good/>

<http://amanero.com/>

<http://hackaday.com/2012/09/14/a-truly-professional-raspi-analog-input/>

<http://kevinmehall.net/openrisc/guide/>

<https://groups.google.com/a/hacdc.org/forum/#!msg/blabber/xYpUuvXNFf8/SkhAqaHy75YJ>

<http://alvie.com/zpuino/examples.html>

<http://opencores.com/project,minsoc>

<http://www2.uni-frankfurt.de/39888289/mbLinux1.pdf>

<http://wiki.hacdc.org/index.php/FPGA_Workshop#FPGA_Toolchain>

<http://wiki.hacdc.org/index.php/Xilinx_ISE_Installation_Instructions>

<http://www.ettus.com/content/files/kb/mimo_and_sync_with_usrp_updated.pdf>

<http://therobotfix.wordpress.com/2011/06/27/getting-started-with-spartan-3e-fpga-and-verilog/>

<http://embeddedmicro.com/tutorials/mojo/installing-ise>

[Category:Stereoscan](Category:Stereoscan)
