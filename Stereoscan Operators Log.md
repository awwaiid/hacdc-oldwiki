**Bold text**

**While repairing, maintaining, or using the Stereoscan S200 SEM, please
add notes here. Newest at top.**

-   November 2017. Enrique and julia fed methanol to the seals until
    they found a seal on the 'dented tube' that effected the pressure.
    pumped down to 0.34 torr. kevin and tristin wrote a program to speak
    to the vacuum sensor and log the data to a file. active monitoring
    was much more useful than the gauge at the side of the machine.

```{=html}
<!-- -->
```
-   October 2017. Enrique and Dan B. Inspected electronics and HV supply
    for debris. Rotated vacuum gauge to face the front. Cleaned the main
    door seal with ethanol. Pumped down to 4.3 Torr with the turbo spun
    up all the way. (It should be 10-2 Torr) There seems to be a large
    vacuum leak in the system. Gun seal seems OK. Next: Squirt alcohol
    (ethanol, isopropanol) into seals and see where the pressure goes
    up.

```{=html}
<!-- -->
```
-   September 2017. vacuum gauge cable has been constructed with serial
    feedback. we now need to experiment talking to and interpreting the
    data coming from the gauge.

```{=html}
<!-- -->
```
-   February 2017. Purchased and installed a more modern vacuum gauge
    (MKS Micropiriani 925) that reads pressure up to atmosphere and has
    a built-in display. This can now be used for vacuum troubleshooting.

```{=html}
<!-- -->
```
-   September, 2015. In checking the Penning vacuum gauge function,
    Ethan located a break in the gauge wiring; the pressure safety
    interlock may be keeping the filament off - a solder point failed at
    the high-voltage coax connector on the vacuum control board. We
    (Ethan, Bobby, Enrique) traced the circuit back and didn't find any
    voltage getting to the high-voltage transformer. Still need to
    figure out where exactly the voltage is failing to make it to the
    gauge circuitry. Ethan will trace the equivalent circuit in his
    board.

```{=html}
<!-- -->
```
-   August, 2015. Hunter, Ethan and Dan worked looking over schematics
    to see why the console reports "filament fail," despite the new,
    continuous filament. Ethan brought in a second 15kV electron gun
    power supply from another Stereoscan SEM. Replacing the gun power
    supply didn't change the "filament fail," status. Still need to
    check the vacuum status.

```{=html}
<!-- -->
```
-   July 18, 2015. Hunter, Enrique and Bobby spent all evening dealing
    with remaining known issues. 1) One of the pump control relays was
    making weak or intermittent contact. The relay was removed and found
    to be cracking (photo). A replacement relay (24VDC - 120VAC 15A) was
    found in the basement storage and soldered in with extra cables for
    redundancy and flexibility (the original cables are brittle). 2) The
    Viewsonic Composite-to-VGA converter and a suitable LCD were located
    and connected. 3) The video output was non-functional again. However
    good video could be produced by tapping the output connector on the
    control board. This lead to finding a broken CCTV BNC connector
    lead, which was soldered back to working condition. 4) Connections
    for the SE detector, the electron optics and the electron gun were
    completed following the manual and the schematics. The filament
    leads were tested to be continuous. 5) The stage contact alarm
    connector seems to have an internal short and sounds an alarm
    whether connected or not. It was left disconnected. 6) We began
    creating an index of the schematics noting which connector is listed
    where.

Remaining issues or suspected issues: The vacuum gauge indicator doesn't
light up. This is either a problem with the gauge or indicative of a
leak. We ran out of time to do an extended (30min+) vacuum test. We
should also measure the gauge output manually. The system indicates
"Filament Fail," despite the continuity check. This could be an
interlock with the vacuum gauge, or stage current alarm. Lastly, though
the video data overlay was OK, the data displayed (mag, working
distance) was unstable and may indicate bad data reaching the processor.

-   Saturday's working group of summakor and me ..... spent a lot of
    time reconfiguring the area to get back to the status of the last
    time I had worked on it a few weeks ago and found some minor missing
    things, such as a viewsonic composite/svido to VGA converter box. if
    found, please put with A/V gear or on the SEM. right now there's a
    large CRT TV on it that ... works...

```{=html}
<!-- -->
```
-   Determined that the turbo pump and roughing pump will work 100%
    reliably in proper wiring sequence - prior issues with starting the
    roughing pump and the turbo pump not running have been reduced down
    to one open-air relay. There are two above a torrid transformer on
    the column to the right of the Interlock and AUX boards. Either due
    to dirt or damage, it requires pressure applied from the top USING A
    WELL INSULATED PUSHING DEVICE THAT DOESN'T HAVE A CHANCE TO POSSIBLY
    ARC OR BUZZ YOU ... results in the proper operational sequence, when
    the column vac button is engaged, of the roughing pump pulling
    pressure down to turbo levels, then the turbo operationg. The Vac
    valve that appeared to be potentially broken works 100%. Reconnected
    #5 on the main PSU as well. [Hunterkll](User:Hunterkll)
    ([talk](User_talk:Hunterkll)) 17:34, 12 May 2015 (PDT)

```{=html}
<!-- -->
```
-   Dan Barlow and 'Hunter' have determined the vacuum pump and sensor
    control board should be operational once a few configuration jumpers
    are set correctly. [Mirage335](User:Mirage335)
    ([talk](User_talk:Mirage335)) 07:44, 21 August 2014 (PDT)

```{=html}
<!-- -->
```
-   After more thought, I've come to the conclusion that the column
    isn't actually missing a gasket on the specimen chamber mating
    surface. The column fits into a tapered bore inside the top of the
    chamber, and at the very tip of the column is a thick rubber fitting
    with a small hole for the beam to pass through. It's this very small
    air path that gets pumped down when the vacuum is operating, and the
    surface that makes the pressure seal is the rubber tip to the bottom
    of the taper, not the two flat disks where the column is bolted in.
    [Plasma](User:Plasma)
    ([talk](User_talk:Plasma)) 21:05, 22 April 2014 (PDT)

```{=html}
<!-- -->
```
-   The replacement O-ring appears to fit on the side vent pipe of the
    SEM. With some help I was able to remove the column and do a
    cleaning of all the surfaces, save for the two detectors. It would
    appear we're missing a gasket for the column to chamber mounting
    interface, however. 4" ID, 4 3/8" OD, 1/8" thickness. I'll look to
    see what I can find.

Without that gasket it'd be a metal to metal vacuum fitting, and that
doesn't seem right.

There's still some contamination on the bottom of the column I couldn't
get off with just acetone. I'll try M.E.K. next time.
[Plasma](User:Plasma) ([talk](User_talk:Plasma))
11:12, 22 April 2014 (PDT)

-   Latest version of Xilinx ISE software does not support Spartan 3E
    board. Probably need 10.x version from
    <http://www.xilinx.com/webpack/classics/wpclassic/> .
    [Mirage335](User:Mirage335)
    ([talk](User_talk:Mirage335)) 06:43, 12 April 2014 (PDT)

```{=html}
<!-- -->
```
-   Dan Barlow commented the following on our mailing list, April 4,
    2014:

1.  Ran the Edwards vane pump. Checked the oil. Looked up the specs and
    maintenance requirements.

-\> I recommend not doing anything else to this pump unless there is an
issue. It uses Ultragrade 19 oil, 0.6 Liter which is only about \$17
plus shipping, but the current oil looks good.

1.  Removed the Pfeiffer TPH190 turbo pump from the accordion flange and
    evaluated its mechanical condition.

<http://wiki.hacdc.org/index.php/File:TurboConverted.avi> It appears the
pump was intended to hang from the plinth, but the glue holding the
rubber donuts to the accordion flanges has failed. This is by far the
easiest thing to fix, yay. I replaced the turbo but its cleats are only
finger tight.

1.  Identified and installed the vacuum system control cabling. Had to
    fix one bent pin. The final cable from the turbo controller to the
    turbo itself is NOT connected, so as to avoid accidental activation.
2.  Identified starting backing vacuum for the Turbo, supposedly
    \<5x10\^-1 Torr to start, \<5x10\^-2 torr (warning possible unit
    conversion failure, anyway the safety interlock should handle this)
    back pressure for efficient operation to provide 10\^-5 in the
    chamber. The thing moves 190 liters per SECOND and rotates around
    30000 RPM. It has a magnetic bearing in the top high vacuum side and
    a oil lubricated ceramic bearing at the roughing end.
3.  Identified alternate high vacuum options in case the turbo doesn't
    work. Looks like we could build an ion/titanium sublimation pump
    with our existing equipment and while not as fast it certainly
    works.

-   To help keep a TCO log, I am noting that research on replacement
    electronics systems cost 5 hours.
    [Mirage335](User:Mirage335)
    ([talk](User_talk:Mirage335)) 17:14, 3 April 2014 (PDT)

```{=html}
<!-- -->
```
-   From Tim: the red vacuum gauge sticking out of the back of the
    chamber is a cold cathode vacuum gauge. They're pretty reliable, but
    it could fail to read vacuum, indicating it needs to be cleaned.
    [Plasma](User:Plasma)
    ([talk](User_talk:Plasma)) 13:07, 2 April 2014 (PDT)

```{=html}
<!-- -->
```
-   The following steps need to be performed on the Edwards roughing
    pump:

```{=html}
<!-- -->
```
-   -   Replace the oil
    -   Inspect and clean the inlet-filter
    -   Clean or replace the gas-ballast filters
    -   Clean the motor fan-cover
    -   Test the motor condition

Refer to pg. 38 of the user instruction manual

[Plasma](User:Plasma) ([talk](User_talk:Plasma))
23:02, 1 April 2014 (PDT)

-   Use \~\~\~\~ to automatically sign edits with username, date, and
    time. [Mirage335](User:Mirage335)
    ([talk](User_talk:Mirage335)) 08:21, 1 April 2014 (PDT)

```{=html}
<!-- -->
```
-   March 31st: Cleaned the plinth and took photographs of the vacuum
    components. [Available
    here](https://dl.dropboxusercontent.com/u/45972/sem/sem_cleaning/index.html).
    -Dan K.

```{=html}
<!-- -->
```
-   ~~Oil diffusion~~Turbo molecular pump was hanging due to the lip
    falling out of the rubber suspension. Could be cleaned and probably
    popped back in.

```{=html}
<!-- -->
```
-   Broken switch on roughing pump was bypassed internally. Plugging in
    the outlet should activate the pump. (This pump normally runs 24/7
    when the machine is operational.)

```{=html}
<!-- -->
```
-   Compressed air needed to get more dust out

```{=html}
<!-- -->
```
-   March 30th: Moving complete! The SEM is now in the workshop

```{=html}
<!-- -->
```
-   March 29th: Awaiting pick-up and installation (March 29th and 30th).

```{=html}
<!-- -->
```
-   March 23rd: A space in the workshop has been cleared. Photo:
    <http://i.imgur.com/BDNWL5z.jpg>

[Category:Stereoscan](Category:Stereoscan)
