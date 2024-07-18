## Overview

The Noisemaker Workshop will teach you how to build noise-making
electrical devices from the ground up. We'll be mostly building our own
gear, but we'll also borrow a couple tricks from the glitch/bender
tradition.

This workshop series involves soldering, (ab)use of digital CMOS chips
for analog ends, a smidgen of electronics knowledge (provided), and
plenty of noise. You bring the musical sensibility (not required).

## Day 1: Getting Oscillating {#day_1_getting_oscillating}

This class focuses on the 74HC14 logic chip and how it can be used to
make a square-wave oscillator. By using a light-dependent resistor in
the feedback loop, you can control the pitch by waving your hands
around.

[Media:
NoisemakerWorkshop_Day1.pdf](Media:_NoisemakerWorkshop_Day1.pdf)

## Day 2: Modulation {#day_2_modulation}

So you've got one oscillator. Great, now build another. Now have the
second feed into the first. Fun.

In this class, we get around to Frequency Modulation and gate/sync
modulation. We'll also learned about the importance of buffering. LED
blinked rhythmically.

Slides, without nearly enough pictures or comments: [Media:
modulation.pdf](Media:_modulation.pdf)

## Day 3: Amplification and Filtration {#day_3_amplification_and_filtration}

Here we go a little bit analog. Using a 74hc04 chip as a
buffer/amplifier, we start to get non-square waves. An amplifier with a
capacitor in its feedback loop makes a nice lowpass filter.

(Elliot says: I didn't write out notes for this workshop, and just
kind-of winged it. It wasn't stellar. We'll probably need to re-visit
some of this later anyway...)

## Day 4: Sequencing, Clocking {#day_4_sequencing_clocking}

Using a low-frequency as a clock source, we'll drive a counter which
drives a multi-way switch. Point the switch at different resistors =
different pitches = 8-step sequencer. Mayhem? Music?

Here's the slides from class: [Media:
sequencing.pdf](Media:_sequencing.pdf)

## Day 5: Ring Modulation and Sync {#day_5_ring_modulation_and_sync}

[Media: ringMod.pdf](Media:_ringMod.pdf)

## What's Next? {#whats_next}

This wiki page is still being worked on. What should we do next week?

Ideas:

-   Re-visit the LM386 and make ourselves a nice line-level
    amplifier/speaker combo that'll run on batteries and provide us with
    a good source of 5v.

```{=html}
<!-- -->
```
-   Revisit the 74HC04 and work on filters some more

```{=html}
<!-- -->
```
-   Ghetto ring modulation and pulse sync

```{=html}
<!-- -->
```
-   Voltage control (?)

## Resources

-   "Handmade Electronic Music: The Art of Hardware Hacking" is a very
    good dead-tree book on DIY sound hacking. If you've got money to
    drop on it, it's worth it. You can probably con me into lending you
    my copy for a week or so. It's a quick read, but you could spend
    months replicating his projects.

```{=html}
<!-- -->
```
-   Some of the sequencing ideas are loosely taken from: [fun with sea
    moss (or, basic digital sound
    devices)](http://milkcrate.com.au/_other/sea-moss/).

```{=html}
<!-- -->
```
-   For pushing the limits of tolerable noisemaking, [The
    Cacophonator](http://home.att.net/~theremin1/Circuit_Library/cacophonator.html)
    is pretty cool, and uses some of our tricks. It gets a lot of noise
    out of a single 40106/74hc14 plus the circuit-bender trick of
    current-starving the chip.

```{=html}
<!-- -->
```
-   Ray Wilson's [Wacky Sound
    Generator](http://www.musicfromouterspace.com/analogsynth/YOUR_FIRST_SYNTH/WSG_Reborn/WEIRDSOUNDGENERATORREBORN.php?page=WSG)
    is another good starter noisemaker.

```{=html}
<!-- -->
```
-   The [Bug Brand Workshop
    Oscillator](http://www.bugbrand.co.uk/index.php?main_page=product_info&cPath=1_14&products_id=34)
    gets a lot of mileage from simple Sync sounds combined and
    distorted. See his how-to PDF for details.

Note: many of these resources require translating from old 4000-series
CMOS into lower-voltage 74hc00 series chips:

-   40106 -\> 74hc14 (Inverter with Schmitt trigger)
-   4051 -\> 74hc4051 (8-channel switch)
-   4040 -\> 74hc4040 (Binary Counter)

[Category:Classes](Category:Classes)
