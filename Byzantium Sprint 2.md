Summary: Build at least one long-haul link to bridge two meshes.

Planning meeting: Thu Mar 3 2011 after the bike maintenance class (done)
Planning meeting #2: Wed Mar 16 2011 after the elements of computing
class (doneish)

**Sprint Date: Fri-Sun March 25-27**
[Inventory](Byzantium_Sprint_2_Inventory)

### Schedule

FRI: 8:00pm Pizza, sprint 1 recap, and prep (mostly ripping thing apart
and some assembly) SAT:

-   Noon Brunch and final assembly followed by bench tests and midrange
    tests depending on speed of success
-   Dinner Time: Dinner outside the space. This must occur outside the
    space.
-   9:00pmish? Discussion and general planning for Sunday optionally
    followed by more testing/making

SUN:

-   Noon Brunch prep for long distance tests followed by long distance
    tests
-   Dinner Time: Dinner outside the space. This must occur outside the
    space.
-   9:00pmish? Discussion and planning for the next sprint

### Stuff to bring (proposed) {#stuff_to_bring_proposed}

-   FMRS/GMRS radios that you wouldn't mind hacking.
-   Childrens' walkie-talkies. [User:Drwho](User:Drwho) knows
    where to buy cheap pairs of them locally.
-   Webcams *that are known to work with Linux*. That's closer to black
    magick than computer science, so do your homework first (or on your
    smartphone while at the store). The feature to look for is called
    [UVC](http://en.wikipedia.org/wiki/USB_video_device_class) though
    webcam boxes still might not mention it.
-   Laser pointers (the more exotic the colors the better). Buy them
    when you find them. When you go looking for them you can never find
    them.
-   Really bright LEDs
-   Photocells, photoresistors, photodetectors.
-   Microcontrollers. They may come in handy for modulating/demodulating
    signals.
-   Hackable wireless access points. Here are some
    [examples](http://www.newegg.com/Product/ProductList.aspx?Submit=ENE&DEPA=0&Order=BESTMATCH&Description=dd+wrt)
    that might work.
-   old headphones/headsets/stereo audio cables and phone cords for
    cutting up and making into modem to radio connectors

### Radio

-   radio shack/hardware store high bandwidth unlicensed spectrum
-   Hacked FRS/GMRS radios
    -   [Text messages over
        walkie-talkies.](http://takethingsapart.blogspot.com/2010/07/note-before-constructing-device-such-as.html)
    -   [Forum post with some
        ideas.](http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1270645507)
    -   Pros:
        -   cheap
        -   longish range (35mi allegedly)
    -   Cons:
        -   Need an automated PTT switch or two radios per node
-   Develop improvised antennae to improve signal quality, distance
    covered.
    -   anything + aluminium foil = bouncy bouncy for radio waves

The FCC has designated a number of channels in the 27 MHz band that can
be used for signaling and radio control. They are unnumbered and
in-between CB channels 1-13
([source](http://forum.servomagazine.com/viewtopic.php?f=1&t=2736))

### Optical

-   Modified Ronja-like
    -   with lasers
    -   with balloon targets
    -   with lasers and balloon targets
    -   with lasers and self-adhesive mirrored decals.
-   All Electronics Magazine had a couple of articles on building
    lasercomm devices on the cheap. Somebody remind the Doctor to go
    through his magazine collection.
-   [How to make a simple laser
    communicator.](http://www.make-digital.com/make/vol16/?pg=69#pg69)
    (I do have this issue. Have bought parts to build a pair of
    transceivers. --The Doctor)
-   [Handbook of Optical Through-the-Air
    Communications](http://www.imagineeringezine.com/files/air-bk2.html)
    is a good read on the basics of an LED-based hardware setup, though
    he's aiming at voice comms. (Elliot)

### Inspiration

-   [Ronja](Ronja)

### Homework

-   read up on [Ronja](http://ronja.twibright.com/)
-   read up on FMRS/GMRS
-   read up on and talk to the HacDC Spaceblimp team about soundcard
    modems: like [this](http://www.baycom.org/~tom/ham/soundmodem/)
    (also available via apt [like so](Notes_on_Soundmodem))
    -   [Howto](http://www.linux-ax25.org/wiki/Soundmodem)(go here last
        it's a bit short on soundmodem specific info)
    -   [Notes on Soundmodem](Notes_on_Soundmodem)
    -   [Soundmodem in the
        field.](http://www.qbjnet.com/packet.html#soundmodem)
-   Read up on [AX.25](AX.25).

### Goals (proposed) {#goals_proposed}

-   Optimize for hackability. Could your average geek build a few of
    these using junk around zir house and deploy them in an emergency
    situation?
    -   not a chance
-   Determine the optimum speed in bits per second for a mesh-to-mesh
    link.
    -   very crazy slow (we didn't bother measuring it was so slow)
-   Measure the bandwidth of a point-to-point long haul connection at a
    particular distance.
    -   again to slow to bother
-   Determine the maximum practical distance for a long haul connection
    between two meshes in an urban environment.
    -   didn't get that far
-   Mathematically describe the way to maximize throughput with a
    minimum number of nodes.
    -   didn't get that far
-   Run an ssh session over whatever link is established.
    -   done
-   Interact with a web page over whatever link is established.
    -   connection was too unstable to get this far
-   Develop methods to minimize latency.
    -   tweak the source and transmitter volume A LOT until the it's
        perfect
-   Determine the efficiency of the mesh routing protocol we settle on.
    -   didn't get this far
    -   How many active nodes per mesh can be reasonably supported
        before connectivity breaks down?
        -   to be determined

### Apps running on Windbringer (laptop/node) to prove functionality {#apps_running_on_windbringer_laptopnode_to_prove_functionality}

-   [status.net v0.9.6](http://status.net/open-source)
-   [Mediawiki](http://www.mediawiki.org/wiki/MediaWiki)

### Lessons Learned {#lessons_learned}

-   "how hard can it be" ... oops :(
    -   very. soundmodem is finicky and creates unstable connections 20%
        packet loss at best 80-90% avg.
    -   Don't forget network latency of 35,500ms over a distance of
        eight feet.
-   "What could possibly go wrong?" ... oops :(
    -   everything
    -   [There are no experimental failures. There is only more
        data.](http://drwho.virtadpt.net/archive/2011/04/14/project-byzantium-development-sprint-2)

Let's see how much of [Project FabFi](http://fabfi.fablab.af/) we can
make use of!

```{=mediawiki}
{{Template:Byzantium}}
```
