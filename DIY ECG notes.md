## Overview

Here are notes for myself and others interested in building DIY ECG
equipment. There are many ways to skin this particular err.. project,
from crude to incredibly complex. Here are lists of parts, websites,
theory, etc.

Page maintained by [User:Obscurite](User:Obscurite) who is
working on his own ECG equipment. Enjoy.

## PARTS for higher-precision version(s) {#parts_for_higher_precision_versions}

-   Instrumentation Amplifiers (not sure why these are priced so
    differently)
    -   Both have CMMR of 110+ for gain of 1000, so they should both
        work equally well. AD624AD is referenced in the sciam article,
        but it also mentions the AD620A which is 1/3 the cost at about
        \$7.
    -   Cheaper version:
        [AD620A](http://search.digikey.com/scripts/DkSearch/dksus.dll?Detail&name=AD620ANZ-ND)
    -   Expensive version:
        [AD624AD](http://parts.digikey.com/1/parts/453660-ic-amp-inst-25mhz-prec-ln-16cdip-ad624ad.html)
-   Better op amp - OP97 (need to review data sheet)

## PARTS for basic version(s) {#parts_for_basic_versions}

-   LM358 (dual opamp) or LM324 (quad opamp), or LF353 (which is pin
    compatible)
-   Diodes
-   0.1uF capacitor(s)
-   Variety of 1/4 watt resistors (10k, 100k, etc)
-   shielded wires for electrodes (phone or coax cables)
-   electrodes (soldered pennies, medical electrodes, etc)
-   diodes (1N4001)

## Microcontrollers and FPGAs {#microcontrollers_and_fpgas}

-   Atmel atmega168/328 has onboard ADC
-   Xilinx Spartan3E dev board has built in ADC

## References

These sites, papers, and articles provide info on ECG making, A/D
conversion, signal processing, projects, and general theory:

General info:

-   [OpenECG Project](http://www.open-ecg-project.org/tiki-index.php)
-   [Scientific American, Shawn
    Carlson](http://www.scientificamerican.com/article.cfm?id=home-is-where-the-ecg-is)
-   [AVR ADC tutorial (a little
    old)](http://extremeelectronics.co.in/avr-tutorials/using-the-analog-to-digital-converter/)
-   [wikipedia ECG
    article](http://en.wikipedia.org/wiki/Electrocardiography)
-   [EKG Report from ITP (describes the Ramsey kit circuit,
    etc)](http://itp.nyu.edu/physcomp/sensors/Reports/EKG)

DIY Projects (some with tutorials):

-   [DIY ECG, Scott
    Harden](http://www.swharden.com/blog/2009-08-14-diy-ecg-machine-on-the-cheap/)
    -   [DIY ECG Improvements (based on Jason Nguyen's 6 opamp design),
        also from Scott
        Harden](http://www.swharden.com/blog/2009-01-20-diy-ecg-improvements/)
-   [DIY ECG, Jason
    Nguyen](http://www.eng.utah.edu/~jnguyen/ecg/ecg_index.html)
-   [ECG Measurement System, Chia-Hung Chen, Shi-Gun Pan, Peter
    Kinget](http://www.cisl.columbia.edu/kinget_group/student_projects/ECG%20Report/E6001%20ECG%20final%20report.htm)
-   [DIY ECG howto (AD620A and OP97 used in schematic) by Refik
    Hadzialic](http://www.radiolocman.com/shem/schematics.html?di=47010)
    -   [Refik Hadzialic's AVR ADC code for his
        ECG](http://www.rlocman.ru/i/File/2008/04/15/egg.txt)
-   [Holter ECG based on AVR by Dragisa
    Jankovic](http://www.gilefx.com/avrecg.htm)
    -   [also an ARM based Holter ECG by Dragisa
        Jankovic](http://www.gilefx.com/armecg.htm)
-   [Homemade EKG by Jake Haglund](http://www.diyhappy.com/homemade-ekg)
-   [Dual-purpose EEG/EKG by artist/composer Adam
    Overton](http://plus1plus1plus.org/Resources/EEG-EKG)

Kits:

-   [Ramsey ECG
    kit](http://www.ramseyelectronics.com/cgi-bin/commerce.exe?preadd=action&key=ECG1C)

[Category:DIY_ECG](Category:DIY_ECG)
