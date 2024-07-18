Transcranial Direct-Current Stimulation

# Introduction

[tDCS](http://en.wikipedia.org/wiki/TDCS) is a method of passing a
(very) small direct current through the brain to elicit changes in
neuronal plasticity. The current passes from the anode electrode through
the scalp, cranial vault and parts of the brain into the cathode
electrode (for anodal stimulation).

# Effects

Hackers are primarily interested in tDCS because (in some
configurations) it seems to increase learning rates. Other possible uses
for DIY tDCS include:

-   Relief of some types of neuropathic pain by repeated anodal
    stimulation of the Motor Cortex
-   Management of some types of Depression with anodal stimulation of
    the Dorsolateral Prefrontal Cortex (DLPFC)

# Safety

# Current Status

Several designs for easily-built open source TDCS have been produced
under the name OpenTDCS. None are currently ready for wide-spread use,
but are available for reference and experimentation. The recommended
version for testing is v4 (below), prototype PCBs have returned from fab
and await assembly at the November 8th 2012 [Meatup](Meatup).

# Devices

## Version 1

![](v1.png "v1.png")

Links:

-   [Bill of
    Materials](https://github.com/nocko/tdcs/blob/master/bom.txt)
-   [gEDA Schematic and PCB Layout](https://github.com/nocko/tdcs)
-   [Original Announcement
    Article](https://nocko.se/2012/07/30/brain-zapping-is-fun/)

The v1 model was a modification of the [GoFlow
Schematic](http://flowstateengaged.com/img/kickstarter-images/public-schematic.pdf).
It differs in that it has a potentiameter to adjust the current limiter
instead of a 4-way switch. The power is supplied via a barrel connector,
but **the device should never be powered from a wall socket when
connected also to a human being**

Advantages:

-   Low cost
-   Few parts

Disadvantages:

-   Primitive.
-   Cannot provide 2mA without modification.
-   No Electrostatic Discharge (ESD) protection
-   No fail-safe if the LM334Z current limiting IC were to fail.

## Version 2

-   [gEDA Schematic](https://github.com/nocko/tdcs/tree/v2)
-   [Original Announcement
    Article](https://nocko.se/2012/08/08/opentdcs/)

The v2 was a testing platform for a microcontroller controlled tDCS
stimulator. USB power was not a good fit due to power supply isolation
issues. No prototypes were built, the design is flawed and not
recommended for any use.

## Version 3

![](opentdcs-v3.png "opentdcs-v3.png")

Links:

-   [Bill of Materials](https://github.com/nocko/tdcs/blob/v3/bom.txt)
-   [gEDA Schematic and PCB
    Layout](https://github.com/nocko/tdcs/tree/v3)
-   [Original Announcement
    Article](https://nocko.se/2012/08/08/opentdcs/)

The v3 was designed to test the floating capacitor switching supply
concept used in the v2. It was abandoned when the isolation issues in v2
became apparent. The design will probably work safely if the USB power
is provided by a laptop running on battery power, but construction or
use of the v3 design is not recommended

## Version 4

![](opentdcs-v4.png "opentdcs-v4.png")

Links:

-   [Bill of Materials](https://github.com/nocko/tdcs/blob/v4/bom.txt)
-   [gEDA Schematic and PCB
    Layout](https://github.com/nocko/tdcs/tree/v4)

The v4 is designed to drive higher impedance electrodes in addition to
the usual sponge+saline electrodes by using the LT1026 charge pump
controller to produce +18V to -18V split source from a 9V battery. It
uses the LM334Z IC for fine current limiting control and a JFET as a
gross 5mA limiter in case of LM334Z failure. ESD protection comes from
two varistors.

Advantages:

-   Inexpensive / Simple
-   2mA available via 9V battery with most (sub-15kOhm) electrode+head
    configurations.

Disadvantages:

-   Limited visual feedback to user (on/off only)
-   Current needs to be calibrated with external ammeter

[Category:GrindDC](Category:GrindDC)
