**OFFLINE**

### Overview

Before you start, it's nice to have the big picture. Here's an outline
of the steps that you'll be taking, and why you take them.

-   Download the replicator-G software that controls the machine. (Note:
    Apparently only versions 0025 and earlier work with this machine's
    current firmware.)

```{=html}
<!-- -->
```
-   Download/create a 3-D model in .stl format.

```{=html}
<!-- -->
```
-   Using skeinforge, (some python routines bundled with replicator-G)
    turn the 3-D model into a toolpath for the bot's extruder head to
    follow. At this point the toolpath will be in an industry-standard
    text format called "gcode".

```{=html}
<!-- -->
```
-   Warm up the machine. (You could have been doing this all along...)

```{=html}
<!-- -->
```
-   Convert the gcode into the makerbot's native format (.s3g) and send
    it across. This is done transparently in one step when you press the
    "Build" button.

```{=html}
<!-- -->
```
-   Confirm that the test extrusion worked.

```{=html}
<!-- -->
```
-   Watch it print. Let it cool a bit when it's done. Hooray!

The rest of this page is a step-by-step that you can follow. Enjoy.

#### Printing computer {#printing_computer}

If you haven't brought a computer or can't for some reason (or would
rather just bring in a file to print), there's an orange Vaio netbook in
the space (hopefully stored close to the Makerbot) with ReplicatorG
already set up properly. The password is taped to the lid of the
computer, and ReplicatorG can be found under Activities (in the top
right of the screen) in the "Other" category of "Applications" or in the
left-hand favorites section (yellow box that says "ReplicatorG" on it).
It's also got OpenSCAD installed, if you're tweaking or making a model.
(It's in the Applications/Other category in Activities.)

### Set up the Software Side {#set_up_the_software_side}

Get your bits set up.

-   Download version 25 of replicator-G:
    [replicat.org](http://replicat.org/)

```{=html}
<!-- -->
```
-   Run it at least once. It creates a secret .replicatorg directory in
    your home directory.

```{=html}
<!-- -->
```
-   Replace the \~/.replicatorg/machines.xml file it creates with the
    one found here: [Makerbot
    machines.xml](Makerbot_machines.xml). If you don't do
    this, you will **fail** when using the makerbot in the space. (Ugh.
    They've moved the location of the machines.xml file in version
    replicatorG-0022. The path to machines.xml will depend on the
    version you install. Placing "machines.xml" into the "machines"
    directory in the install directory seems to work.) You will know you
    have it right when you see "Andy Walker's Cupcake with 4 axis board"
    in the Machine...Driver pulldown menu. (Current as of Jan 2011)

```{=html}
<!-- -->
```
-   Download something fun to print. If this is your first time,
    something cool but quick like the [penny bottle
    opener](http://www.thingiverse.com/thing:1813) or a
    [dodecahedron](http://www.thingiverse.com/thing:198) is a good idea.
    You should now have a .stl file.

```{=html}
<!-- -->
```
-   Open up your .stl file in replicator-G. You should see a 3-D
    representation of it on a wireframe of the build platform. If it's
    too big, scale it. I always press "Move...Center" which puts the
    object on the build platform for you.

```{=html}
<!-- -->
```
-   Feel free to follow the [replicator-G usage
    tutorial](http://replicat.org/usage), but start the machine warming
    up first. (Next step.) That way, the ten minutes you spend monkeying
    with replicator-G will serve double-duty as time warming up the
    machine.

### Fire up the Machine {#fire_up_the_machine}

Here we connect to the machine, and start it warming up.

-   Make sure the power switches on the power supply and the bot itself
    are flipped on.

```{=html}
<!-- -->
```
-   Plug in the USB cable that's coming out of the Makerbot.

```{=html}
<!-- -->
```
-   Select Machine...Driver and choose Andy's Cupcake. (You \_did\_
    replace the machines.xml file in the step above, right?)

```{=html}
<!-- -->
```
-   Select Machine...Serial Port and choose /dev/ttyUSB\*

```{=html}
<!-- -->
```
-   The top bar should now be green and the machine's name ("Slick")
    visible. If not, try clicking on the disconnect and re-connect
    icons. The next time you connect, replicator-G will remember these
    settings and it should just connect automagically.

```{=html}
<!-- -->
```
-   The four-way arrow icon opens up the Control Panel. Do that.

```{=html}
<!-- -->
```
-   On the right-hand side are controls for temperatures. Since it takes
    a while to heat up, we're going to pre-heat the machine now. Set the
    extruder temperature for 220 and the build platform for 100
    (celcius). You will need to wait at least 5 minutes (maybe 10) until
    it's ready to go. \_DO NOT\_ start extruding when the extruder
    temperature gets up to 220 -- the thermistor is on the outside of
    the barrel and it heats up before the plastic is melted. You need to
    wait another five minutes after it says it's at 220.

```{=html}
<!-- -->
```
-   On the left are the platform controls. Honestly, it's easiest to
    zero the machine by hand. Press the "Set Zero" button. Now, push the
    platform so that the nozzle is in the center, and using the crank on
    the top right of the machine, lower the nozzle until it's almost
    touching the platform (0.1-0.2 mm above).

```{=html}
<!-- -->
```
-   (Optional manual test extrusion) If it's been at temperature for
    more than five minutes already and the extruder head is good and
    hot, you can raise the nozzle (press z+ to step up 10mm) and do a
    test extrusion. Type "255" into the PWM box at the top right, and
    select "Forward". In a few seconds, you should see hot plastic
    noodle extruding. Congrats. Now press "Stop". If you do a test
    extrusion, be sure to place the nozzle back down at zero when you're
    done.

### Build the G-code for your Model {#build_the_g_code_for_your_model}

G-code describes the path that the extruder head needs to follow to make
your object, along with temperatures and motor speeds and other
necessary details. Skeinforge is the program that turns your 3-D model
into the g-code tool path for the machine. (This is where many bodies
are buried.) Skeinforge is part of the replicator-G package that you've
already downloaded. You're gonna need to click some buttons.

[Media: cupcake_raftless.tgz](Media:_cupcake_raftless.tgz)

-   While the bot is warming up, press the "Generate GCode" button. It
    will open up a dialog box with a choice something like
    "cupcake-mk4-heated-platform-abs". Select that. Check the "Use raft"
    checkbox if it's not already.

```{=html}
<!-- -->
```
-   For now, we'll be using the vanilla settings, but if you were going
    to change some of the skeinforge parameters, you'd click "Edit" or
    "Create" to edit or duplicate and edit the skeinforge settings to
    your liking.

```{=html}
<!-- -->
```
-   OK, I lied. There's one setting you might want to change.
    (Optional.) With "cupcake-mk4-heated-platform-abs" selected, click
    "Edit" and then "Raft". Set "Interface Layers" to 1. Press save and
    close.

```{=html}
<!-- -->
```
-   Back at the first menu, pressing "OK" will start compiling. This can
    take a while. Good thing the machine is warming up... Pace around
    expectantly for a few minutes.

```{=html}
<!-- -->
```
-   When it's done, you should have a tab labelled "gcode". Click it if
    you want to see what gcode is like.

```{=html}
<!-- -->
```
-   The leftmost button on the top row (arrow pointing to a ghostly
    jelly bean) enables you to simulate the build. Click it, wait a few
    seconds, and then watch as it traces out the planned object path.
    Cool, huh? This will be an important pre-flight check in the future,
    once you get used to what it means.

### Print

Here goes nothing...

-   Are you ready to rumble?

```{=html}
<!-- -->
```
-   Has the extruder heated up? When you see a little bit of plastic
    oozing out from the tip of the extruder, you know you're ready.
    (Feel free to re-open the control panel to check that it's at temp
    for a while.)

```{=html}
<!-- -->
```
-   Does the machine think it's at zero? (Feel free to re-open the
    control panel and press "Set Zero" again.)

```{=html}
<!-- -->
```
-   Is the nozzle physically at zero? (Move the nozzle to the center of
    the platform, almost touching.)

```{=html}
<!-- -->
```
-   Press the arrow-pointing-to-solid-jelly-bean button ("Build") to
    start the build!

```{=html}
<!-- -->
```
-   The nozzle will rise up. In a few seconds, it will run a test
    extrusion. If it worked, pull the extra plastic off of the extruder
    and click "yes" and it will start the print in earnest.

```{=html}
<!-- -->
```
-   (If it didn't extrude, you'll need to see the section on
    troubleshooting.)

```{=html}
<!-- -->
```
-   The nozzle will move back down to the zero position and it'll start
    printing out the raft.

```{=html}
<!-- -->
```
-   The first layer of the raft is slow and low, and ends up being fat.
    That's to make it stick better to the platform.

```{=html}
<!-- -->
```
-   The next layer (or layers) are skinnier. They're just there to get
    the height right and the surface level. They will peel off your
    model when it's all done.

```{=html}
<!-- -->
```
-   Watch in amazement for a few minutes. It's neat.

### While Printing... {#while_printing...}

You're going to have some down-time here. Feel free to grab a drink. But
don't stray too far from the machine. It needs babying.

-   First thing to check is that the filament is unspooling properly.
    Sometimes it kinks up. You may want to rotate the whole reel until
    there's a decent amount of slack for insurance. (Mostly historical
    -- the current skate-bearing spool has not failed yet.)

```{=html}
<!-- -->
```
-   Smell that? That's the smell of melting ABS in the morning. It's
    probably toxic. Don't inhale directly above the machine.

```{=html}
<!-- -->
```
-   Is everything sticking to the platform? Are the platform lights
    going on and off? These are good signs. It means the heater's
    working and around the right temperature.

```{=html}
<!-- -->
```
-   Is the raft peeling up and jamming the head? Press stop. Do over
    from the pre-heat instructions onward. This time, you might try
    putting the nozzle closer to the platform, which can help. Of
    course, too close and it won't extrude right. The raft will also
    peel if the build platform is not yet up to temperature. Check that
    it's hit 100C.

```{=html}
<!-- -->
```
-   Listen to the noises. It'll change when it transitions from a solid
    layer to a fill layer as the pattern changes. Get to know these
    noises and you won't have to watch it so closely.

```{=html}
<!-- -->
```
-   Relax. It takes a while.

```{=html}
<!-- -->
```
-   When it's done, wait another minute or so for the part to cool down.

```{=html}
<!-- -->
```
-   Sometimes you'll need to peel it off the platform. I use a tiny
    screwdriver tip under the raft corners.

```{=html}
<!-- -->
```
-   Peel off the raft from your part.

```{=html}
<!-- -->
```
-   Feel free to trim off the excess plastic bits that inevitably stick
    out. Diagonal wire cutters are good for this.

```{=html}
<!-- -->
```
-   You win. Nice part.

```{=html}
<!-- -->
```
-   You can stop here, or download another file and repeat. If you're a
    tuner (and you know if you are) read on.

### Writeup

-   Head on over to [Makerbot Operators
    Log](Makerbot_Operators_Log) and write up what you've
    done. Heck, include pictures if you're feeling swanky.

```{=html}
<!-- -->
```
-   Did the machine work? Did it have troubles in places? What was
    non-intuitive? We want to know!

### Advanced Tricks for Your Second Print {#advanced_tricks_for_your_second_print}

There's a bunch of options in rendering to g-code that you may be
interested in changing. You should probably preview your model before
printing it out. Read this section while you're watching it print, but
don't change anything until it's done -- there's a glitch where
sometimes it will abort your print if you try to render g-code.

-   See how it's doing multiple laps around the perimeter? That's a
    setting in skeinforge. "Fill..Solid Surface Thickness (layers)" I
    often set it down to 2 instead of the default 3.

```{=html}
<!-- -->
```
-   See how much fill it's making? Another setting in Fill. "Infill
    Solidity (ratio)". The default is 0.20. I usually use 0.15.

```{=html}
<!-- -->
```
-   If the raft took "forever" and you're impatient, feel free to drop
    "Raft...Interface Layers" down to 1 or even 0.

```{=html}
<!-- -->
```
-   As you saw, there's a billion skeinforge parameters. The defaults
    aren't bad for most models, but sometimes you'll want to change
    them, even on a per-model basis. I have more than ten tuned-up
    skeinforge preference sets. I'll have to share some.

### Quirks

-   The z-axis lead screws are modified and super-beefy on Andy's bot.
    You'll need to modify your machines.xml file to get it to work. See
    [Makerbot machines.xml](Makerbot_machines.xml).

```{=html}
<!-- -->
```
-   The motor-driver board is also non-standard now. We're using John
    Yang's 4-axis motor controller board, which lets us do 1/16th step
    [microstepping](http://en.wikipedia.org/wiki/Stepper_motor#Microstepping).
    This means that the steps-per-mm in machines.xml needed to be
    multiplied by eight relative to the default half-stepping. See
    [Makerbot machines.xml](Makerbot_machines.xml).

```{=html}
<!-- -->
```
-   As noted above, the temperature indicated on the nozzle is \_not\_
    the interior temperature that's relevant for melting the plastic,
    but the exterior temperature right next to the heating elements.
    You'll need to give it 5 min or so to soak in and melt the plastic.

```{=html}
<!-- -->
```
-   The heated build platform solved our problems with the model
    warping, but getting a raftless print to adhere to the bed is a
    50/50 proposition, especially with thin or detailed first layers.
    (The tip of the [whistle](http://www.thingiverse.com/thing:1222) for
    instance, is problematic.) Sometimes you can get away with printing
    onto the Kapton surface, but sometimes you need the blue painters
    tape for extra adhesion.

### Troubleshooting

Here I list all the things that can go wrong. And they will...

[Category:Makerbot](Category:Makerbot)
