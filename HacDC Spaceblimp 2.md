## Flight Summary

Flight date: 8/21/10

Time of liftoff: 10:47 (All times are GMT-5)

Time of touchdown: 11:49

Time of recovery: 12:20

Total flight time: 1:02 (62 minutes)

Liftoff to recovery time: 1:33 (93 minutes)

Touchdown to recovery time: 0:31 (31 minutes)

Weight of payload/chute: 1lb 13oz

Total cost of launch: \$320

## Airframe & Rigging

Balloon: 800g Kaymont/Totex latex weather balloon cost: \$69

Parachute Cord: 250-lb test Dacron line

Balloon Cord: 50-lb test Dacron line

Fill: 190 cubic-feet Helium - cost: \$95 (\~10# nozzle lift, gas @
\$0.50/Cu-ft)

Chute: Rocketchutes flat 24" - cost: \$9

Capsule: Insulated lunch pail (free, valued at \~\$7)

## Payload

Canon model PowerShot SD300 running CHDK (Canon Hack Development Kit)
intervalometer script - cost: \$20

Canon Li battery cost: \$3.25

Canon 2GB SD card: \$6

Falcom (uBlox based) GPS receiver + Serantel Antenna module - cost \$47

Radiometrix VHF Narrow Band 300mW transmitter - cost \$38

Ultralife U9VL-X Lithium-Manganese Dioxide non-rechargable battery cost:
\$7

Flight computer/Terminal Node Controller (TNC) - cost \$19

[HacDC Spaceblimp Flickr Group
Pool](http://www.flickr.com/groups/spaceblimp/pool/with/4922202931/)

[aprs.fi Flight
Map](http://aprs.fi/?call=w3hac-11&dt=1282348800&mt=roadmap&z=11&timerange=3600)

## Some details on the avionics

Our balloon carried a minimalist avionics package consisting of a custom
built APRS tracker and a Canon PowerShot SD300 digital camera.

The camera is configured to take pictures every 20 seconds using CHDK
(http://chdk.wikia.com/wiki/CHDK) and one of the stock intervalometer
scripts. It is powered by its own rechargeable lithium battery and
operates independently of the tracker.

The tracker is based around an atmega328p AVR microcontroller, running
code derived from an open source AVR based APRS tracker called the
WhereAVR (http://garydion.com/projects/whereavr/). By updating the sine
wave generation code to use filtered 7-bit pulse width modulation in
place of the 4-bit resistor network, we were able to improve tone
quality with a reduced part count. A few additional components were
added, including an I2C eeprom for local backup of flight data, external
and internal I2C temperature sensors, and a cutdown MOSFET for switching
power to a short strip of nichrome wire coiled around the balloon line
(the cutdown system was not used in our final flight because we were
apprehensive about the complications it added to the balloon rigging).

To keep things light, compact, and simple, we designed a surface mount
circuit board to integrate all of the trackers components with a Falcom
FSA03 GPS module and a 300mW Radiometrix HX-1 144.39 MHz transmitter.
The board was fabricated using the toner transfer method and hand
soldered.

For an antenna we used the common 300 ohm twinlead j-pole design
(http://www.qsl.net/wb3gck/jpole.htm), tuned as close as possible for
use on our frequency (144.39 MHz) and fed with a short length of 50 ohm
coax cable for routing/strain relief.

The tracker is powered by a single lithium 9v battery, and regulated
down to 5v and 3.3v by linear regulators on the board. The typically
undesirable loss of power to heat with these regulators is useful in
this case for warming the electronics in the extreme cold temperatures
encountered during the flight.

Each chase vehicle had a radio tuned to 146.415 for simplex
communication between the vehicles, and another radio tuned to 144.390
for receiving packets from the balloon. For packet decoding we used
radios with built in TNCs or laptops with external modems/soundcard
modems and TNC software (Soundmodem and Xastir for Linux, AGWPE and
UI-View for Windows).

## Data

The onboard data recorder from SB2 returned: [Media:
blimp2_eeprom_log.txt](Media:_blimp2_eeprom_log.txt)

```{=mediawiki}
{{Template:Spaceblimp}}
```
