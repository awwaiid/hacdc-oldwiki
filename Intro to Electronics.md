## Concept

The idea behind this course structure is for six sessions held a week
apart. In order to provide a tangible end for students to feel like
they’re working toward, each week will have a project; students will be
walked through building that project and completing it by the end of the
session.

In that sense, each week stands alone — a project started in one week
does not need a future week in order to be complete. That said, later
projects will depend on the knowledge gained in previous projects, and
some of them will even be based on previous projects. (For example,
[Week 5’s
project](Intro_to_Electronics#Week_5:_Digital_logic) is a
Larson scanner, and it uses [Week 4’s
project](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555)
— a typical 555-based astable multivibrator circuit — to provide its
clock signal.)

The course starts with a few basic circuit components (a voltage source,
a resistor and an LED) and an explanation of typical prototyping
equipment (breadboard and multimeter) and builds up to include regulated
power supplies, basic optoelectronics and eventually digital logic.

It does not (at least in this draft) include much in the way of detailed
exploration of analog electronics; it’s intended more as an introduction
to the field of hobbyist electronics as a whole and to an assortment of
the basic components one might find in a variety of projects.

Suggestions are, of course, welcome, as are other potential projects to
use in place of some of the ones listed here. (In particular, a good
introductory op-amp project might be handy to have.) I’ve listed
[component prices](Intro_to_Electronics#Components) for 25
students; my goal would be to keep the cost per student at \$25 or less
— preferably more in the \$20 range.

## Syllabus

### Week 1: Getting familiar with components

**Goal:** Light an LED with AA batteries and an on-off switch

**Slides:**
[Media:Intro_to_Electronics-Week1-Slides.pdf](Media:Intro_to_Electronics-Week1-Slides.pdf)

Explanations:

-   Breadboard
    -   What is it?
    -   How is it organized?
    -   Why is it useful?
    -   **Hands-on:** Here's a breadboard
-   LED
    -   What is it?
    -   How does it work?
        -   Not at the P/N junction level
        -   Current goes in, light comes out
        -   Current only flows in one direction (diode!)
        -   Too much current = bad
    -   **Hands-on:** Plug one into the breadboard
-   Battery
    -   What is it?
    -   How does it work?
        -   Roughly constant voltage source for a while
        -   Discharges over time — voltage decreases
            -   Definition of "dead"
        -   Maybe some chemistry? Doubtful, though
    -   **Hands-on:** Batteries (three or four AAs) in a holder
        -   Plug them into the breadboard
-   Switch
    -   What is it?
    -   How does it work?
        -   Define poles and throws
    -   **Hands-on:** Plug one (SPST) into the breadboard
-   Resistor
    -   What is it?
    -   How does it work?
        -   Ohm's Law
            -   Units of measurement
                -   Ohm
                -   Ampere
                -   Volt
        -   Non-polarized
        -   Describe color codes
            -   Give resources — memorizing is a bit daunting right now,
                I imagine
        -   Tolerances — nothing's perfect
            -   What does a ±5% tolerance mean?
    -   **Hands-on:** Pick a resistor and plug it in to the breadboard
        -   Select using Ohm's Law
-   Schematic
    -   What is it?
    -   Symbols
        -   LED
        -   Battery (DC source)
        -   Switch
        -   Resistor
        -   Ground!
            -   Define ground
    -   Draw one
    -   **Hands-on:** Connect components to match [this schematic
        (tested April 2,
        2012)](Media:Intro_to_Electronics-Week1-0-LED.svg)
        -   Moment of truth: Turn it on!

### Week 2: Test equipment

**Goal:** Build a power supply

**Slides:**
[Media:Intro_to_Electronics-Week2-Slides.pdf](Media:Intro_to_Electronics-Week2-Slides.pdf)

Explanations:

-   Multimeter
    -   What is it?
    -   Review units of measurement
        -   Ohm
        -   Ampere
        -   Volt
    -   **Hands-on:** Measure [last week's LED
        circuit](Intro_to_Electronics#Week_1:_Getting_familiar_with_components)
        -   Voltages at different nodes
        -   Current through LED branch?
        -   Resistance of current-limiting resistor
-   Voltage divider
    -   What is it?
    -   How does it work?
        -   Ohm's Law!
        -   Walk through the analysis
    -   **Hands-on:** Build one ([Schematic here (tested April 2,
        2012)](Media:Intro_to_Electronics-Week2-0-divider.svg))
        -   Measure no-load output voltage
-   Regulated versus unregulated power supply
    -   What's the difference?
    -   **Hands-on:** Add a load to the voltage divider ([Schematic here
        (tested April 2,
        2012)](Media:Intro_to_Electronics-Week2-1-divider-loaded.svg))
        -   Measure difference in output voltage
        -   Why does this happen?
            -   Equivalent resistances in series and in parallel
-   Datasheet
    -   What are they?
    -   How can you find them?
    -   **Hands-on:** Here's an LM317 ([Schematic here (tested April 2,
        2012)](Media:Intro_to_Electronics-Week2-2-LM317.svg))
        -   Look up example circuits in [the
            datasheet](http://www.ti.com/lit/ds/symlink/lm117.pdf)
-   Capacitor
    -   What is it?
    -   How does it work?
        -   Polarized (electrolytic) versus non-polarized (ceramic)
        -   Filter capacitors
            -   Show them on the datasheet's example circuit
        -   **Hands-on:** Build the example circuit ([Schematic here
            (tested April 2,
            2012)](Media:Intro_to_Electronics-Week2-3-LM317-filtered.svg))
            -   Measure input voltage over time with and without filter
                capacitors
                -   Not sure if we'll be able to notice on the
                    multimeter
-   Oscilloscope (if there's time)
    -   What is it?
    -   How does it work?
        -   Time axis
        -   Voltage axis
    -   **Hands-on:** Look at regulator's output waveform
        -   Vary load and see what happens!

### Week 3: Optoelectronics

**Goal:** Build a night light (Many thanks to
[EMSL](http://www.evilmadscientist.com/article.php/nightlight))

**Slides:**
[Media:Intro_to_Electronics-Week3-Slides.pdf](Media:Intro_to_Electronics-Week3-Slides.pdf)

Explanations:

-   LED (review)
    -   What does it take to light one?
        -   Remember to limit current
    -   **Hands-on:** Light one
        -   Probably just rebuild [Week 1's
            circuit](Intro_to_Electronics#Week_1:_Getting_familiar_with_components)
            ([schematic here (tested April 2,
            2012](Media:Intro_to_Electronics-Week3-0-LED.svg)),
            though you really don't even need the switch for this
-   Transistor (BJT)
    -   What is it?
    -   How does it work?
        -   Amplifier
        -   Switch — what we'll focus on for now
    -   What are the different terminals?
        -   Base
        -   Collector
        -   Emitter
    -   NPN versus PNP
    -   **Hands-on:** Use one to control the LED ([Schematic here
        (tested April 2,
        2012](Media:Intro_to_Electronics-Week3-1-BJT.svg))
-   Phototransistor
    -   What is it?
    -   How does it work?
        -   Apply light instead of base current
    -   **Hands-on:** Add one to our circuit to switch the other
        transistor ([Schematic here (tested April 2,
        2012](Media:Intro_to_Electronics-Week3-2-phototransistor.svg))
        -   Should look essentially identical to [the EMSL
            circuit](http://www.evilmadscientist.com/article.php/nightlight),
            except that we'll keep a current-limiting resistor in series
            with the LED
        -   Note: This phototransistor (like many others) is mainly
            sensitive to infrared and will consider a room lit only by
            fluorescent bulbs to be "dark". Bring around a different
            lamp to test the projects.
-   Bonus: Start talking about digital logic
    -   What is it?
    -   Logic gates
        -   High-level explanation
        -   Names: AND, OR, NOT (maybe XOR)
        -   Show examples of 7400-series ICs
    -   Show a schematic of a NOT gate (for example: [this
        one](http://www.kpsec.freeuk.com/trancirc.htm#inverter),
        [presentation schematic
        here](Media:Intro_to_Electronics-Week3-3-NOT.svg))
    -   **Hands-on (ish):** Compare the NOT gate schematic to our night
        light
        -   We've made one with a phototransistor!
        -   Could have been done with a normal transistor, too
        -   Way less useful that way

### Week 4: Oscillators — and the venerable 555

**Goal:** Build a 555 circuit to blink an LED

**Slides:**
[Media:Intro_to_Electronics-Week4-Slides.pdf](Media:Intro_to_Electronics-Week4-Slides.pdf)

Explanations:

-   555 timer
    -   What is it?
    -   How does it work?
        -   High-level explanation, though more detail can come
            afterward for anyone who wants to know
        -   Modes of operation
            -   Look at [the
                datasheet](http://www.ti.com/lit/ds/symlink/ne555.pdf)
            -   We're interested in the astable multivibrator
                -   What does that mean?
    -   What crazy things do people do with it? ([All kinds of
        things.](http://www.555contest.com/))
    -   **Hands-on:** Wire one up ([Schematic here (tested April 4,
        2012)](Media:Intro_to_Electronics-Week4-0-555.svg))
        -   Show output on an oscilloscope
-   LED (review)
    -   Look up forward voltages
        -   Use a different LED this time (maybe blue!)
    -   **Hands-on:** Figure out an appropriate current-limiting
        resistor
        -   Hook it up to the output of the 555 ([Schematic here (tested
            April 4,
            2012)](Media:Intro_to_Electronics-Week4-1-555-LED.svg))
-   Potentiometer
    -   What is it?
    -   How do I use one?
        -   **Hands-on:** Measure resistances between different
            terminals
        -   Could have used it in [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment)
            to vary regulator output voltage
    -   **Another hands-on:** Replace one of the 555 frequency-setting
        resistors ([Schematic here (tested April 4,
        2012)](Media:Intro_to_Electronics-Week4-2-555-potentiometer.svg))
        -   Change its resistance and watch what happens!

### Week 5: Digital logic

**Goal:** Build a Larson scanner (Schematic (more or less) from
[EMSL](http://www.evilmadscientist.com/article.php/CylonOLantern))

**Slides:**
[Media:Intro_to_Electronics-Week5-Slides.pdf](Media:Intro_to_Electronics-Week5-Slides.pdf)
(with notes here:
[Media:Intro_to_Electronics-Week5-Slides_and_Notes.pdf](Media:Intro_to_Electronics-Week5-Slides_and_Notes.pdf)

-   Use [Week 4's 555
    project](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555)
    for the clock signal
    -   Can change resistor values to EMSL-recommended values to change
        speed
-   Leave out the low-pass filter because of time and cost

Explanations:

-   Digital logic (in general)
    -   What is it?
        -   Compare to analog electronics — also has cool applications
    -   What can I do with it?
        -   State machines
        -   Multiplexers
        -   Counters
    -   **Hands-on:** Manual logic switch ([Schematic here (tested April
        4,
        2012)](Media:Intro_to_Electronics-Week5-0-switch.svg))
        -   SPST on a line with a pull-up (or pull-down) resistor
            -   How does such a resistor work? What does it do?
        -   Watch it on a multimeter
            -   How does it differ from the SPST without the resistor?
-   Decimal counter
    -   What is it?
    -   How does it work?
    -   **Hands-on:** Hook one up to power and the 555 circuit from
        [Week
        4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555)
        -   Watch what happens — connect each output pin to an LED to
            make it more obvious ([schematic here (tested April 4, 2012)
            with different (i.e., faster) resistor values as suggested
            by
            EMSL](Media:Intro_to_Electronics-Week5-1-counter.svg))
-   OR gate
    -   Review logic gates (if we got to them at the end of [Week
        3](Intro_to_Electronics#Week_3:_Optoelectronics))
    -   Why are we interested in these?
        -   Plot out Larson scanner details/excitation table
    -   We need four of them
    -   **Hands-on:** Add them to the circuit ([Schematic here (tested
        April 4,
        2012)](Media:Intro_to_Electronics-Week5-2-Larson.svg))
        -   Watch the lights scan back and forth

### Week 6: Soldering

**Goal:** Solder [Week 5's
project](Intro_to_Electronics#Week_5:_Digital_logic) on a
printed circuit board

Explanations:

-   Solder
    -   What is it?
    -   How do I use it?
    -   Leaded versus lead-free
    -   **Hands-on (ish):** Here's some solder
-   Soldering iron
    -   What is it?
    -   How do I clean and tin the tip?
    -   **Demo:** How do I form a good solder joint?
        -   Heat both terminals
        -   Apply solder
    -   Examples of solder joints
        -   Ideal
        -   Cold
        -   Bridged
    -   **Hands-on:** Solder two wires together
-   Printed circuit board
    -   What is it?
        -   Fiberglass
        -   Copper traces/pads
        -   Drilled holes/plated vias
        -   Silkscreened markings
    -   **Hands-on:** Solder a component
-   Assembly
    -   **Hands-on:** Finish the board! ([PCB design (EAGLE) here, still
        untested](Media:Intro_to_Electronics-Week6-EAGLE.zip))
-   Bonus: Do I need one of these? (Other ways to mount circuits)
    -   Prototyping board, layout tools, etching (chemical and
        mechanical)

## Bill of materials

Pricing assumes 25 kits with no special discounts (e.g., [Adafruit
hackerspace
discount](http://www.adafruit.com/blog/2010/06/01/big-news-all-hacker-spaces-in-the-world-get-adafruit-reseller-pricing-starting-today/)).
Total cost — not including breadboard jumpers, multimeter, PCB and
shipping for all of these things — comes out to \$368.20 (or \$14.73 per
person).

### Equipment

-   Multimeter
    -   Relatively inexpensive (but maybe more than we want students to
        spend)
    -   Voltage, current, resistance, continuity
        -   Diode test would be nice to have
    -   Do we want people to get their own, or do we want to use the
        space's?
        -   MAS830 (\$337.50 for 25:
            [Adafruit](http://www.adafruit.com/products/71))
        -   Does the space have enough working meters? (If not, can we
            convince some place to donate some more?)
-   Breadboard
    -   Full size x1 (\$180 for 25:
        [Adafruit](https://www.adafruit.com/products/239))
-   Battery holder
    -   4xAA x1 (\$21.18 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/BH14AAW/BH14AAW-ND/66735))
-   Batteries
    -   Alkaline AA x4 (\$33.48 for 100-pack:
        [Amazon](http://www.amazon.com/Duracell-Coppertop-MN1500-Batteries-Count/dp/B006W9QIM2/))

### Things we could make ourselves

-   Assorted breadboard jumpers
    -   We could cut these ourselves to reduce cost, assuming we have
        enough small solid-core wire
    -   Apparently Digi-Key also sells these in [packs of 150 or
        200](http://search.digikey.com/us/en/cat/prototyping-products/jumper-wire/2359516?stock=1&pbfree=1&rohs=1)
        for various lengths for \$16.48
        -   Beginners might be more comfortable with longer pieces of
            wire (e.g., [these packs of
            75](http://www.adafruit.com/products/153) for \$6.00 each),
            though — thoughts?
-   Printed circuit board for [Week
    6](Intro_to_Electronics#Week_6:_Soldering)
    -   Do we etch or mill these ourselves? Do we have some batch PCB
        service (e.g., Seeed, Sparkfun) get them done?
    -   First design (EAGLE files
        [here](https://gist.github.com/2067344)) is 1.70 x 3.00 inches
        -   BatchPCB price at that size for 25: \$328.75 (\$13.15 each)
        -   Fusion PCB price at that size for 30: \$84.70 (\$2.83 each)
            -   Fusion PCB price at that size for 50: \$84.90 (\$1.70
                each)
            -   Both Fusion PCB prices are with the extra fee for
                testing all of them (instead of half) since it'd be nice
                not to have to troubleshoot the boards themselves in
                addition to the students' work
        -   Still have some room in the corner if we're interested in
            doing anything else with it

### Components

-   LEDs
    -   5mm red x10 (\$19.38 for 250:
        [Digi-Key](http://search.digikey.com/us/en/products/WP7113SRC%2FDU/754-1274-ND/1747673))
        -   [Week
            1](Intro_to_Electronics#Week_1:_Getting_familiar_with_components):
            x1 (light)
        -   [Week
            3](Intro_to_Electronics#Week_3:_Optoelectronics):
            x1 (light)
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 output)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x10 (4017 output, later x6 for Larson scanner)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x6 (Larson scanner)
    -   5mm blue x1 (\$4.75 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/C503B-BCS-CV0Z0461/C503B-BCS-CV0Z0461-ND/1922944))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 output)
-   Switches
    -   SPDT slider x1 (\$14.72 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/EG1218/EG1903-ND/101726))
        (Note: We only need SPST, but for some reason those are several
        times more expensive. Not sure why that is. SPDT will take a tad
        more explanation, but it shouldn't be that big of a deal.)
        -   [Week
            1](Intro_to_Electronics#Week_1:_Getting_familiar_with_components):
            x1 (power)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (logic)
-   Voltage regulator
    -   LM317 x1 (\$9.80 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/LM317KCS/296-13869-5-ND/521368))
        -   [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment):
            x1 (regulator)
-   Resistors
    -   220 Ω x1 (\$4.23 for 250:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT220R/S220QCT-ND/2617711))
        -   [Week
            1](Intro_to_Electronics#Week_1:_Getting_familiar_with_components):
            x1 (current limiting)
        -   [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment):
            x1 (voltage divider load), x1 (LM317 R1)
        -   [Week
            3](Intro_to_Electronics#Week_3:_Optoelectronics):
            x1 (current limiting)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x10 (current limiting)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x6 (current limiting)
    -   360 Ω x1 (\$1.38 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT360R/S360QCT-ND/2617740))
        -   [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment):
            x1 (voltage divider top half), x1 (LM317 R2)
    -   1 kΩ x1 (\$1.38 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT1K00/S1KQCT-ND/2617685))
        -   [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment):
            x1 (voltage divider bottom half)
        -   [Week
            3](Intro_to_Electronics#Week_3:_Optoelectronics):
            x1 (BJT base current)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (pull-up or pull-down resistor)
    -   180 kΩ x2 (\$1.50 for 50:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT180K/S180KQCT-ND/2617681))
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x2 (555 R1, 555 R2)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x2 (555 R1, 555 R2)
    -   1 MΩ x1 (\$1.38 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT1M00/S1MQCT-ND/2617692))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 R1)
    -   2 MΩ x1 (\$1.38 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT2M00/S2MQCT-ND/2617726))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 R2)
    -   150 Ω x1 (\$1.38 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CFM14JT150R/S150QCT-ND/2617674))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (current limiting)
-   Capacitors
    -   0.1 µF ceramic x1 (\$2.91 for 25:
        [Digi-Key](http://search.digikey.com/scripts/DkSearch/dksus.dll?x=20&y=11&lang=en&site=us&KeyWords=490-3859-ND))
        -   [Week
            2](Intro_to_Electronics#Week_2:_Test_equipment):
            x1 (LM317 input filter)
    -   0.22 µF ceramic x1 (\$5.00 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/FK18Y5V1H224Z/445-4806-ND/2050155))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 C)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (555 C)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x1 (555 C)
    -   0.01 µF ceramic x1 (\$4.70 for 25:
        [Digi-Key](http://search.digikey.com/scripts/DkSearch/dksus.dll?x=7&y=18&lang=en&site=us&KeyWords=490-3813-ND))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 filter)
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (555 filter)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x1 (555 filter)
-   Potentiometer
    -   2 MΩ x1 (\$15.08 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/CT6EP205/CT6EP205-ND/738311))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (555 R1)
-   Transistors
    -   2N3904 x1 (\$6.90 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/2N3904-AP/2N3904-APCT-ND/950591))
        -   [Week
            3](Intro_to_Electronics#Week_3:_Optoelectronics):
            x1 (switch for output LED)
-   Phototransistor
    -   x1 (\$6.75 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/PT334-6C/1080-1159-ND/2675650))
        -   [Week
            3](Intro_to_Electronics#Week_3:_Optoelectronics):
            x1 (light sensor)
-   555 timer
    -   NE555N x1 (\$6.99 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/NE555N/497-1963-5-ND/599557))
        -   [Week
            4](Intro_to_Electronics#Week_4:_Oscillators_.E2.80.94_and_the_venerable_555):
            x1 (oscillator)
-   Decimal counter
    -   74HC4017 x1 (\$17.05 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/M74HC4017B1R/497-1835-5-ND/591928))
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (counter)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x1 (counter)
-   OR gates
    -   74HC32 x1 (\$6.88 for 25:
        [Digi-Key](http://search.digikey.com/us/en/products/SN74HC32N/296-1589-5-ND/277235))
        -   [Week
            5](Intro_to_Electronics#Week_5:_Digital_logic):
            x1 (count reverser)
        -   [Week 6](Intro_to_Electronics#Week_6:_Soldering):
            x1 (count reverser)

[Category:Intro_to_Electronics](Category:Intro_to_Electronics)
