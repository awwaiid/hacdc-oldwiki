#### When you use the Cupcake, please add notes here. Newest at top. {#when_you_use_the_cupcake_please_add_notes_here._newest_at_top.}

-   April 11, 2013 (mirage335) Motor drive electronics apparently
    removed. Non-functional.

```{=html}
<!-- -->
```
-   November 19, 2012 (mirage335) After months disuse, makerbot still
    preforms as before. Still useful when RepRap is down or out of PLA
    plastic.

```{=html}
<!-- -->
```
-   July 15, 2012 (mirage335) Extruder seems to have a loose grip on the
    plastic feed. For now, it is possible to get things going smoothly
    by force-feeding the plastic during the first two or three minutes
    of printing.

```{=html}
<!-- -->
```
-   May 20, 2012 (mirage335) Printed a test object (wheel), works quite
    well. A little excess drooping plastic threads, but probably par for
    the type of part and nothing that can't be cleaned up.

```{=html}
<!-- -->
```
-   September 26, 2011 (Justin) Made my first couple of prints! Via
    [PaulForest on Thingiverse](http://www.thingiverse.com/PaulForest),
    I found cookie cutters for
    [Pac-Man](http://www.thingiverse.com/thing:8432) and [a
    ghost](http://www.thingiverse.com/thing:8434). They were generated
    with this [cookie cutter
    maker](http://local-guru.net/blog/pages/cookiecutter-editor) written
    in Processing, so I tweaked the ghost a bit and printed one of each.
    The Pac-Man cutter's thicker wall separated from the bottom when I
    was trying to pull it off of the raft. (Side note: The default
    Skeinforge settings that came with my Windows ReplicatorG install
    made what looked like an absurdly large raft. It also assumed the
    build platform was huge, so the first couple of times it tried to
    print past the side of the platform. Not sure why that is.) Either
    way, they seem to have turned out fine, though I haven't made any
    cookies with them yet: <http://yfrog.com/g099agej>

```{=html}
<!-- -->
```
-   August 2, 2011 (Elliot) After a week of playing around, and a bunch
    of prints, the cupcake breaks again! Yet again, the heater filament
    failed high-resistance. I replaced it with John's cemented barrel
    heater (Thanks LJ) which rocks. Here's a time-lapse video of me
    fixing it. Needs a soundtrack!
    (http://www.youtube.com/watch?v=fff5scSJA74) Afterwards, ran a 50
    min print on it with no issues. Might need tweaking on the PID
    params or some better insulation, but it's up and running again.

```{=html}
<!-- -->
```
-   July 19, 2011 (Elliot) The cupcake rides again! I cleaned out the
    barrel and re-wrapped the nichrome barrel heater. Using a 100k
    thermistor from John Yang straightened all of the temperature
    control problems out. We're back in bees-wax! Printed a groovy
    hollow pyramid to celebrate (http://www.thingiverse.com/thing:8757).

```{=html}
<!-- -->
```
-   June 12, 2011 (Elliot) I gave up on the experimental hot end because
    it doesn't seem to transfer heat into the barrel fast enough with
    the result that it was very very hard to push filament through. I
    found some nichrome wire (7 ohms worth) and re-wrapped the barrel in
    the old style. Grrr... So it wasn't the fault of the experimental
    heater core. Even though it's wrapped in nichrome as originally, the
    hot end is still exhibiting the same failure -- extrudes around 2cm
    then stalls, stripping the teeth. In the process, I managed to fook
    up the teflon insulator -- time to order a new one. Might just
    scrounge the entire (working) head off the reprap in the interim.
    This one probably needs a thorough reaming and cleaning out before
    it'll run again.

```{=html}
<!-- -->
```
-   June 11, 2011 (Elliot) R. Mark Adams dropped a high-temp thermistor
    by the space, so I'm working on the hot end again. I set up the
    extruder thermistor for 10K resistance, and the rest looked good
    (beta = 4450, base = 25). Tested with a cup of hot water at 83 C and
    it read spot on. I declare it calibrated. (Also changed platform
    thermistor to 10K.) On first warm-up, it looks like the new heater
    will work, but the PID coefficients are horribly wrong and it's
    overshooting the set temperature by quite a lot. Tweaked a little
    bit, ended up with P=8, I=0.1, D=12. Not perfect, but not patient
    enough to tune further ATM.

```{=html}
<!-- -->
```
-   May 30, 2011 (Elliot) OK, so I re-flashed the firmware on both the
    extruder (firmware 2.4) and the motherboard (firmware 2.3). If
    someone wants to order a new thermistor for the hot end, that'd be
    swell. In the process of updating the firmware, we lost the
    thermistor calibration for the HBP, so it'll need re-calibrating
    (it's 110 C is only warm to the touch). Not sure that the
    all-aluminum hot end heater is getting hot enough -- there was much
    resistance when I tried to run filament through it. It'll probably
    need re-jiggering.

```{=html}
<!-- -->
```
-   May 29, 2011 (Elliot) Busted even worse now, and I'm in Germany
    until June 8th. Sorry y'all. The symptoms: The heater core works,
    but is slow. The replacement thermistors I ordered were low-temp and
    burned out, so there's no temp feedback. (I've stuck one into the
    thermistor input directly, you can verify that it reads temperature
    nearly-correctly. It will fail at 150 degrees, though.) The motor
    control seems to be not responding, as do the heated platform and
    nozzle heaters. Is there something wrong in the 12v power section of
    the board? Are \_all\_ the FETs burned out? I've double-checked the
    wiring, but if someone else would go over it, that'd be swell.
    Extruder motor works when plugged into external 12v. Extruder
    hot-end is only on finger-tight. If you get it working enough,
    tighten it back down before use.

```{=html}
<!-- -->
```
-   May 23, 2011 (Elliot) Well, the bot is slightly hosed now. I was
    printing out a bit for a visitor as a demo (figures!) and the heater
    gave up the ghost -- some of the nichrome wire fatigued and broke. I
    decided the necessary hot-end rebuild would be a good opportunity to
    machine out an aluminum cylinder, cut out alu shims to wedge three
    suitable power resistors inside, and use that as a barrel heater. It
    works, but takes ten minutes or so to heat up. And then the
    thermistor we've been using died (open-circuit) leaving the temp
    sensor always reading 255 degrees C. So now we've got an
    experimental (slightly slow) heater design with no temperature
    feedback. Sub-optimal. This will not stand! Stay tuned.
    ![](cupcake_heater0.jpg "cupcake_heater0.jpg"){width="100"}
    ![](cupcake_heater1.jpg "cupcake_heater1.jpg"){width="100"}

```{=html}
<!-- -->
```
-   May 16, 2011 (Elliot) OK, so nobody has been writing stuff down in
    the log. Booo!! I re-levelled the bed last night. Should be good for
    printing raftless now. I'm working on a no-tweak-necessary profile
    for a recent skeinforge that'll allow raftless printing. I think
    we'll need a z-minimum endstop to make that work.

```{=html}
<!-- -->
```
-   Mid April, 2011 (Elliot) Printed out wheels, gears, a carriage, and
    a bowing arm for Alberto and my art project "Carrier". On display at
    the Artisphere until June 18th. I'll have to do a thorough writeup.

```{=html}
<!-- -->
```
-   March 20, 2011 (Will G) Printed a bottle opener. Had to back the
    blue filament out and refeed it, since it stopped feeding after 20
    seconds. After clipping and refeeding the filament, the makerbot
    happily printed my bottle opener.

```{=html}
<!-- -->
```
-   Feb 20, 2011 (Elliot) Saw that the bearing that holds the motor gear
    in place was slipping out (for the last time!). Measured the
    diameter of the hole, SCADed up a part, printed it up, and acetoned
    it in place. Now the bearing is (forever?) captive.

```{=html}
<!-- -->
```
-   Feb 3, 2011 (Elliot) Came in to find a relay attached to the
    extruder head motor. Removed it (because I do PWM) and discovered
    why it was there -- the motor was stopping intermittently. After
    replacing the power cable and a few other things, I finally
    scavenged the (new) motor off of the RepRap, and that did the trick.
    Printed a few piezo-disc holders for an art piece.

```{=html}
<!-- -->
```
-   Jan 30, 2011 (Elliot) Found out what was wrong with the extruder
    head (just after Xaq left, as usual) which was that the bearing that
    holds the motor spindle in place had worked out, so that the motor
    was no longer held tight against the sprung pulley wheel bearing.
    Unscrewed the motor from the mount, pushed the bearing back in, and
    it's working again. Next time the extruder head is off, we should
    probably epoxy the bearing in or something. Printed out a new
    [Z-crank](http://www.thingiverse.com/thing:975) and then got to work
    on Xaq's Mendel X-end-motor piece. This was quite hard to get it
    working with raftless. The tricks: slow the first layer speed down
    to 0.7 on the infill, 0.45 on the perimeter, and 0.9 for the
    flow-rate multiplier to keep it from getting too gunky. I also
    started the prints off with the head a lot closer to the platform
    than normal. This seemed to squish it down hard, while not putting
    down so much plastic that it got the hairy over-extrusion condition,
    which then catches the head on the next pass. It's hard to quantify
    all this -- we should get a z-axis end-stop installed to establish a
    reference point.

```{=html}
<!-- -->
```
-   Jan 27th, 2011 (Xaq) After a couple weeks of basically flawless
    printing, the extruder motor seems to be giving up. I saw this today
    and on Tuesday when Pete was printing a Wade's: after a little over
    an hour, the extruder motor just stops. After the failure,
    attempting to control extrusion through the control panel also
    fails. Pete fixed it on Tuesday by toggling to motor back and forth
    (I think), but I am not sure how he did that so I am giving up for
    today. These motors are notorious in the reprap-blogosphere for
    suckiness, it may be time for a geared stepper....

```{=html}
<!-- -->
```
-   Jan 11th, 2011 (Xaq, Peter (?), Elliot) Peter (?) was printing out
    Mendel parts in three (?) five-hour batches and during a four-hour
    print, the machine failed. It looks like the barrel clogged up
    somehow and the resistance messed up the feed section. Specifically,
    the [retaining ring](http://www.thingiverse.com/thing:1004) was all
    bent and the motor shaft had come out of its bearing. Xaq broke the
    hot-end down and cleaned it all out, and we re-assembled the head.
    We already had a retaining ring printed out from before (it's a
    common superstition to have an extra on hand, and now I see why) so
    it was just a question of assembly. We noticed that the printed
    retaining ring design isn't quite centered on the dimple in the
    [brutstruder](http://www.thingiverse.com/thing:4036). A little work
    with a file makes it fit right. We then printed out another
    replacement retaining ring for next time and tossed it in the reprap
    box.

```{=html}
<!-- -->
```
-   Jan 3, 2011 (Elliot, John) Printed out a bunch of cool, small
    objects for people to see. Then printed out a [bolt-hobbing tool
    attachment](http://www.thingiverse.com/thing:3780) for the lathe b/c
    John wanted a [hobbed bolt](http://www.thingiverse.com/image:20063)
    for his Mendel. Then we hobbed it on the lathe and it was rad. The
    hobbing tool now sits in the reprap box, waiting expectantly for you
    to use it.

```{=html}
<!-- -->
```
-   Dec 30th, 2010 (Will.) Printed out a test cube with the new
    machines.xml file. Printed some tiny, flat whistles. Found out that
    whistles are hard to print.

```{=html}
<!-- -->
```
-   Dec 27, 2010. (John, Elliot) swapped out the makerbot standard 1/2
    microstepping stepper controllers for a 4-axis board using pololu
    controllers in 1/16 configuration. The bot is much quieter with the
    1/16 microstepping. You will have to **update your machines.xml**
    ([Makerbot machines.xml](Makerbot_machines.xml)) to use
    the new 1/16 configuration.

```{=html}
<!-- -->
```
-   Dec 20, 2010. (Will.) Printer a bunch of snowflakes for the holiday
    party. Experimented with raftless printing. Taught Eric how to use
    the makerbot.

```{=html}
<!-- -->
```
-   Dec 20, 2010. (Eric.) Found Will and makerbot in working condition.
    Printed pretty birthday snowflakes.
    ![](_makerbot_snowflakes.jpg "_makerbot_snowflakes.jpg"){width="100"}

```{=html}
<!-- -->
```
-   Dec 19, 2010. (Will.) Found makerbot in working condition. Fired up
    makerbot and extruded some goo for a few minutes, had no problems.
    Printed a large object, makerbot ran without encountering any
    problems.

```{=html}
<!-- -->
```
-   Dec 17, 2010. (Elliot, Will, Speek.) Replaced the stock v4 extruder
    head with a self-printed Brutstruder: ![100
    px](_brutstruder_cupcake.jpg "100 px") Elliot printed some
    multicolour items for his nieces for Xmas, changing the filament a
    bunch of times with no problems. Has the brutstruder fixed our
    filament feed woes?!?!? Stay tuned....

```{=html}
<!-- -->
```
-   Dec 10-Dec 15, 2010. (Elliot, Xaq) Much frustration. On-and-off
    printing, seemingly due to the extruder head not carrying enough
    force. Got it working with the (wider, more round) white filament,
    but still having troubles with the (smaller, slightly-oval) black
    filament. One night when it was working, probably the 13th, Xaq and
    Nick made up a model for a replacement joystick part.
    ![](cupcake_joystick.jpg "cupcake_joystick.jpg"){width="100"}

```{=html}
<!-- -->
```
-   Dec 8, 2010. (Xaq and Elliot.) We spent a few hours trying to figure
    out why the feed wasn't feeding. It would go for a few minutes then
    stall -- white filament or black filament. Xaq was thinking it was a
    rotation thing, and we noticed that the drive wheel wants to twist
    the feedstock around in a circle, putting a twist in it. Elliot
    noticed a ton of back-pressure from the hot end, and wonders if
    that's not to blame.

```{=html}
<!-- -->
```
-   Dec 3, 2010. (Elliot.) Printed out a [bottle
    opener](http://www.thingiverse.com/thing:1842) and it worked just
    perfectly. Noticed that the feed had a kink in it, and clipped and
    re-fed it. It didn't print sucessfully since. Tried to print the
    [whistle](http://www.thingiverse.com/thing:1046) a few times with no
    joy. It would stop feeing a few layers into the print. There's
    something to do with a twist in the feed? Or it the feed slightly
    oval-shaped and slipping? Fed the makerbot the white ABS feed, which
    is slightly thicker, and it printed flawlessly. Hmmm...

```{=html}
<!-- -->
```
-   Nov 29, 2010. (Elliot and Xaq.) While Xaq was in the space, we both
    spent about 2 hours of frustratingly abortive 2-minute prints,
    attempts at raftlessly printing a
    [coathook](http://www.thingiverse.com/thing:49). Shortly after Xaq
    left, Elliot printed a coathook with a raft and it worked well
    enough (with babying on the feed at points). Elliot then printed
    [dino-2s for the brutstruder](http://www.thingiverse.com/thing:1912)
    without rafts with only one flaw in the first of five prints. I'm at
    a loss for what changed: it got later at night, and the machine had
    been in continuous use for longer. I wonder if the bot needs much
    longer to warm up than we thought? Anyway, before printing something
    raftless, I would try printing a rafted small object first as a
    sacrifice to the makerbot gods (or at least to verify that the
    machine is working) because that seems to be a lot less tweaky.

```{=html}
<!-- -->
```
-   Nov 27, 2010. (Elliot.) Printed small odds and ends, just to watch
    it go. Looks great. The new spool which Dan B and I built seems to
    work fine, and certainly won't tangle. Moved it to its own (partly
    mobile) table. I've been working on raftless settings, and it's
    looking great. Printed a few of the heater-retainer collars for
    later in case we need them, and tossed them in the reprap box. It's
    about 5 hours of printing time since the rebuild and it's behaving
    flawlessly. Will this continue? Knock on wood.

```{=html}
<!-- -->
```
-   Nov 26, 2010. (Elliot.) Having broken the hot end of the extruder, I
    needed to fix it. Took it completely apart and soaked all the parts
    in acetone, getting all the melted plastic off. I reinstalled things
    as per the makerbot instructions, with the exception of using teflon
    tape to (electrically) insulate the barrel from the nichrome wire,
    because its original sheathing had come off during removal. Noticed
    that the brass barrel was installed upside-down, so I fixed that.
    The nozzle seems to be flowing a lot now -- so much that I had to
    reconfigure skeinforge to deal with the extra plastic. We'll see if
    it holds up. Printed out a
    [brutstruder](http://www.thingiverse.com/thing:4036) and the plastic
    axles for the new feed spool.

```{=html}
<!-- -->
```
-   Nov 24, 2010. (Elliot and Will G.) Still having problems with
    intermittent extruder stoppage. Will and Elliot removed the hot end
    and cleaned it out. That wasn't the problem. Elliot noticed that the
    idler wheel was binding, fixed that. Still not the problem, though
    it has sufficient strength to push through whatever is giving the
    high back-pressure. Elliot started to re-do the hot end again, and
    probably messed up the heater in the process. Hopefully it's just a
    loose wire, but the insulation and heating element may need to be
    re-worked. Sucks....

```{=html}
<!-- -->
```
-   Nov 20, 2010. (Elliot and Tommy) Noticed that gear motor was out of
    line. Tommy and I added a bearing to it. Extruder still just
    randomly stops extruding after 15 minutes or so.

```{=html}
<!-- -->
```
-   Nov 18, 2010. (Elliot) Printed out some widgets. Extruder head
    stopped extruding halfway through a print, turned out to be due to
    ABS bits fouling up the pushing-gear teeth. Also had some troubles
    with adhesion of the raft to platform.

[Category:Makerbot](Category:Makerbot)
