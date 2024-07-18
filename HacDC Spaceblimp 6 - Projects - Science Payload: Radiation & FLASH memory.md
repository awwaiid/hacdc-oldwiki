**Science Payload: Radiation & Flash Memory**

**Introduction: Cosmic Rays**

This is an experiment to detect and determine the vulnerability of
contemporary consumer Flash memory media (eg SD cards, USB thumbdrives,
SSDs, etc) to cosmic rays. This is useful to know whether we can rely on
such media for future Spaceblimp payloads and in general whether this
media is suitable and reliable for high altitude applications (weather
balloon payloads, aircraft, low-earth orbit spacecraft, etc). Cosmic
rays are high-energy particles, largely protons with energies 200MeV to
500MeV that bombard the Earth from all directions. 99.99% of the cosmic
rays that reach the stratosphere (30km) are absorbed by air before
reaching the ground (sea level). The ones that do reach the earth's
surface are energetic enough to penetrate electronics, people and
buildings largely unnoticed except by the occasional memory glitch or
bad pixel in a photo. High-reliability servers use error-correcting
memory to deal with errors caused by cosmic rays that might cause errors
on cheaper consumer-grade computer systems. Electronics for critical
applications like aircraft, spacecraft and even some medical devices
must be either specially made as radiation-resistant chips or the
systems designed to cope with occasional errors from cosmic rays.

Although the susceptibility of computer memory to cosmic rays has been
tested before, technology changes quickly so there is value in repeating
these experiments with contemporary technology. The nature, energy and
density of cosmic rays is constant but as the components of computer
systems are scaled ever further down (following Moore's Law), the
smaller components are more likely to have their function disrupted by a
cosmic ray hit. At the same time, the larger density of components means
an ever smaller fraction of those components will hit by cosmic rays in
any given time.

**Introduction: Flash Memory**

Flash memory stores data as charge in a floating gate. Charge can be
added or removed from the floating gate by quantum tunneling when a
large voltage is applied. The charge stored on the gate affects the
conductance of the transistor channel below it. The value zero (0) is
the high voltage state and one (1) is the low-voltage state. Modern
flash uses multi-level cells with various possible voltage values to
store several bits per transistor. There is a great description of Flash
memory here:

<http://www.anandtech.com/show/5067/understanding-tlc-nand/2>
<http://www.eetimes.com/author.asp?doc_id=1327904>

Flash memory also has error-correction mechanisms in place to compensate
for manufacturing flaws and wear. This experiment will test the media
with all the normal error correction mechanisms in place, so is not a
raw measure of bit errors. It also tests only the susceptibility of data
stored statically on the media and does not test the CMOS readout
circuitry in which cosmic rays could also produce errors during active
data read.

**Results & Discussion** Four contemporary microSD cards (16GB and 32GB)
were filled with zero values (the highest voltage per cell) and lifted
to 104,000 ft, spending about one hour above 35,000ft. The flight
profile is shown below (pending data). The cosmic ray dose, based on
literature measurements of flux at various altitudes is estimated
(pending data). This is the equivalent dose of XX hours at ground level.

There were no errors on any of the four cards. There were
884,431,912,960 zero values before and after the flight. The probability
of bit-flips during the exposure is therefore less than 1 in 8.84E11 per
hour (pending exact flight time). It appears data stored on contemporary
16GB and 32GB microSD cards are not highly susceptible to data
corruption by cosmic rays at high altitude. This measurement of static
data does not test the effect of cosmic ray flux during active readout,
where CMOS circuitry must operate correctly. However, since the readout
errors are expected to be random from one read to the next, this result
already points to possible mitigation strategies in case of CMOS readout
errors. For example, the data could be read out multiple times and
checked for errors before being utilized. Future radiation effects
experiments on the Spaceblimp platform will test contemporary CMOS
microprocessors and dynamic memory.

**Method & Details**

We acquired four different reasonably contemporary microSD cards and
wrote as many zeroes (0) as would fit, placing as many floating gates at
their maximum voltage values. We read out the values to verify all the
zeroes were written correctly at ground level before the launch of
Spaceblimp6. The four cards were placed in the Spaceblimp6 payload
capsule and lifted to the stratosphere over a period of three hours. The
flight reached 104,000ft following the flight profile shown below
(pending data) before parachuting back to ground level. The microSD
cards were recovered and immediately checked for errors by counting the
number of zeroes present.

Methods - Writing and Checking Zero Values

`  dd if=/dev/zeroes of=/dev/mmcblk0`\
`  hexdump -C /dev/mmcblk0`

The hexdump output prints the first line, represents identical lines
with a \* and outputs a final hex value.

Card 1 before (31914983424 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   76e480000`

Card 1 after (31914983424 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   76e480000`

Card 2 before (32010928128 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   774000000`

Card 2 after (32010928128 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   774000000`

Card 3 before (31104958464 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   73e000000`

Card 3 after (31104958464 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   73e000000`

Card 4 before (15523119104 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   39d400000`

Card 4 after (15523119104 bytes)

`   00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|`\
`   *`\
`   39d400000`

1\. 32GB SanDisk Ultra PLUS HC I, 6362CRAC40XD 2. 32GB Samsung EVO HC I,
MB-MP32D, MBMPBGVEQDFW-F, KNATHNNRH628 3. 32GB PNY Elite HC I,
E532G1637, TWLN003044812 4. 16GB MicroCenter Class 10 HC, E516GG1612,
TWLKA63410A38
