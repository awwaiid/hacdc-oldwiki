# Type

![<http://www.taigtools.com/cmill.html>](TAIG_CNC_Mill.JPG "http://www.taigtools.com/cmill.html")

Our CNC mill is a [MicroMill DSLS
3000](http://www.microproto.com/MMDSLS.htm), a [Taig Manufactured CNC
Mill](http://www.taigtools.com/cmill.html).

This mill is generously on loan from the Smithsonian.

We are running [ArtSoft Mach3](http://www.machsupport.com/) for control
software.

# Terms

-   Computer Numerical Control (CNC) - The ability to control a machine
    using mathematical commands
-   Computer Aided Design (CAD) - Software which generates a model which
    a machine can translate into tooling commands for manufacturing.
-   Computer Aided Manufacturing (CAM) - The actual process of
    production from file to finished product.
-   Tooling/tools - The bits used in a mill to actually
-   Milling - The use of a spinning piece of metal to shape an object
    through calculated removal of a media, normally via an X / Y / Z
    axis.
-   Manual Data Input (MDI) - A method for doing manual milling with
    precise control commands.
-   Lathing - The use of a "static" piece of metal to shape an object
    through calculated removal of a media which is in (usually) a
    circular motion.
-   [Mach3](http://www.machsupport.com/) - The software used to
    translate G Code into electrical pulses which can be used by a mill.

# Getting Started

To initially get started with the CNC mill, it's helpful to have a basic
grasp of G Code. How better to get started with this than to begin
playing.

## Turning on the Mill

When turning on the mill there are three primary "light switch" style
switches which should be turned on. The first is on the back of the
black box labeled "MicroProto Systems, MicroMill DSLS 3000". This switch
is located on the back to the right side (imagine reaching around on the
rear right). Flipping the switch "up" should turn this on.

Next, turn on the main control to the spindle. This is achieved via the
light switch on the M3/M5 box. Turn this to the "on" position (flicking
it towards the label M3/M5).

Finally, turn on the spindle on the actual mill. This is in a blue
enameled box residing on the Z axis. Flip this switch "up". If the
spindle immediately starts spinning, this is because someone didn't send
the control command to stop it. This isn't a problem, but we will want
to stop it sooner than later. We will cover this in the next section.

To avoid unexpectedly turning on the spindle motor when powering on the
machine, wait to flip the power switch to the on position until after
EMC2 is running. This will ensure that the parallel port is in the
appropriate state according to the configuration file to keep all motors
off by default.

## Starting Mach3

This can be done by using the icon on the desktop.

## Spindle control and Emergency Stop

If the tooling is clear of all obstacles, you can press *F5* to toggle
the spindle motor on and off.

The switch on the right side of the mill, near the top will cut power to
the spindle. This is the best way to shut it down in an emergency... but
note that the axis can still move after the switch is thrown. Pressing
*Reset* in the interface will signal Mach3 to make an *Emergency Stop*.
You'll see the *Reset* button blink, and the status line at the bottom
will read "E-Stop Triggered, press reset...".

## Making our first motions

### Jog Controls

To start, we're going to use the "jog" functions to move the milling
cutter around and get a feel for what is "positive" and "negative" on
the X, Y, & Z axis.

Especially, when starting out, limit motion to the X and Y axis as this
has the least potential for damaging our tooling (aka, breaking a bit).
As you get a feel for what's positive and negative, we will start using
larger motions.

To start, hit the "tab" key to bring up the Jog controls. The main
settings on this panel are the *Jog mode*, which can be either
*continuous* or *step*. In continuous mode, holding down the motion keys
(described below) will make the axis move continuously, and quite a lot.
In step mode, pressing or holding the motion keys will move only a fixed
step per key-press. The step distance is also configurable on the Jog
control screen. You can hide the jog controls when not in use by
pressing the *Tab* key.

To start, select continuous mode in the jog controls and press the *Left
Arrow* and *Right Arrow*. Notice that the mill table moves left and
right. This is the X axis. Next, press the *Up arrow* and *Down Arrow*
keys briefly, notice that the mill table moves front to back. This is
the Y axis. Finally, press the *Page Up* and *Page Down* keys briefly;
notice that the spindle moves up and down. This is the Z axis. As you
were moving the milling cutter around, you'll notice that the
coordinates are displayed in the main window. This is where you can
quickly survey where your tooling is located.

### Obligatory Setup

Sometimes the *Reset* button in Mach3 will be flashing. This usually
means that you exceeded the movement limits or speed of the mill and the
controller has signaled Mach3 to stop. Often clicking reset is enough to
clear this error.

### Mill Controller Crash

Sometimes the controller will crash, this is usually evidenced by
*Reset* complaining that it cannot clear a limit. It will offer a button
that says "Fix this for me". "Fix this for me" actually redefines what
an error is in the software (e.g. if input low is defined as an error,
then it will redifine error as input high). Instead of clicking *Fix
this*, you should try turning off and on the mill controller using the
switch on the rear, lower-right side. Clicking *Reset* again should
clear the trouble.

### Advanced Manual Control - MDI (Manual Data Input)

Click on the MDI tab in the main Mach3 screen to the MDI Controls
section. Within this section (the line next to input) we can type in
actual G Code to move our tooling around. To start, we're going to use
simple "go to" commands. This will rapidly move the tool to the position
that we tell it to. Note, at any time, we can stop the execution of
these commands by hitting the "stop" button on the screen or typing
ALT-S on the keyboard. The first command we will use is "rapid go to" or
"g0". As an example: make sure the tooling is well clear of the table
using the jog controls and all axis are (roughly) centered. Reset all
axis (X, Y, Z) to zero using the *Zero Axis* button located to the left
of the current axis location. As you click zero axis, you should see the
axis change to -0.0000.

To make our first motion, let's move the X axis to position 0.5. To do
this, enter this command into the box marked *Input*:

` g0 x0.5`

The X axis should begin moving and it should stop 0.5" to the right of
it's initial position.

Additionally, we can give multiple coordinates at once. Now try the
command:

` g0 x0 y0`

This should send our tool back to the starting position. This can make
things go much, much faster for resetting back to the position that you
started with the mill at.

To have more fine grained control we can use the command "g1". There is
nothing that G0 does which G1 cannot. The only difference in syntax is
that we specify the feed rate of the motion as the first option. By
default the mill is set to operate in inches per minute. Thus, unless
you change this (via g code) it should be assumed that this will be the
unit of measure for your commands.

Lets slowly raise our Z axis up one inch:

` g1 f2 z1`

Note, since we were at a position approx 1 inch up and told the mill to
return to zero at a rate of F2 or 2 inches per minute, it will take
approximately 30 seconds for this command to complete. Slow movement of
the tool (especially when 'plunging' the z axis is a good idea as it
allows for time to hit the "esc" key if things start going horribly
wrong).

Now, let's build on some of these together:

` g1 f10 x1 y1 z1`

Whoops, back to zero:

` g1 f5 x0 y0 z0`

When moving back to zero you will see that the mill is moving half of
the original speed (5 inches per minute rather than 10 inches per
minute).

Let's really open this thing up and see what it can do. While watching
this command move notice the *feed rate* indicator in the preview MDI
tab. This will allow you to see the actual speed of the tool.

` g1 f50 x1 y1 z1`

Linear motion is great and all, but how about we dwell outside the
euclidean space for a minute. The next commands that we are going to
learn are G2/G3. G2 will make a clockwise arc while G3 will make a
counterclockwise arc. The command syntax is as follows:

`*G2 - Command`\
`*Fx - Feedrate at X inches per minute`\
`*Xv - Destination X coordinate (in this case end at v)`\
`*Yw - Destination Y coordinate (in this case end at w)`\
`*Ix - X axis center point offset`\
`*Jy - Y axis center point offset`\
`*Za - Interpolated Z axis coordinate (optional)`

To start, lets make a circle:

` g2 f5 x1 y0 i-0.5 j0`

Annnnd we fail. This is because we've given junk data to the mill. Lets
try that again making a circle. Of course, to make a circle, we will
want our beginning (1,1,1) to be the same as our destination (1,1,1)
only changing the X axis center point offset.

` g2 f5 x1 y1 i-0.5 j0`

Fun math bits... run that command again and note the "distance to go" or
"DTG" in the preview area. Note the distance at the immediate start of
plotting our 1 inch diameter circle (2 \* 0.5 X offset). This should be
a predictable [result](http://en.wikipedia.org/wiki/Pi)

# Tool Changing

Use a wrench to gently remove the chuck. Check the toolbox beneath the
mill for different bits and other things as required.

Little force should be required to tighten the chuck; it has been said
that finger-tight is often sufficient.

# When you're done

Please cleanup the mill area and place tooling back into the mill
toolbox under the bench.

Finally, turn off all three power switches noted above.

Thanks

# Caution

Please avoid doing these things, unless you can deal with the
consequences yourself.

-   Don't run the mill too far off axis. The stepper motors will usually
    make a harsh grinding sound when this happens.
-   Don't leave the mill completely unattended. Be prepared to hit the
    *Reset* key within at most a minute of hearing something go wrong.
-   Obviously, don't put your hands in hazardous places.

Otherwise, the mill is robust and newbie friendly.

[Category:CNC_Mill](Category:CNC_Mill)
