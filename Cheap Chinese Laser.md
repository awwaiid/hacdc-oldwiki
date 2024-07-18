**WARNING: Working on the laser cutter poses hazards far beyond anything
many people have encountered.**

-   The laser beam can blind instantly. It is invisible. It can reflect
    unexpectedly. Operating the laser with the cover open (normally
    blocked) is a really bad idea.
-   The laser runs off of high power high voltage. Unlike household
    current this can kill you even if you just come close to it. Think
    lightning-in-a-box. Always turn the power switch off and unplug the
    plug at the back of the laser cutter (so you know it's the right
    one) before working on it. In addition, high voltage power supplies
    can hold a charge after they've been turned off so you can still get
    zapped for a while after everything's been shut off. If at all in
    doubt get expert advice.
-   Freak accidents happen.
-   On the other hand, just using the laser cutter poses far less risk.
    Take standard precautions.

[Cheap Chinese Laser](Cheap_Chinese_Laser)

This is the page dealing with the [Cheap Chinese
Laser](Cheap_Chinese_Laser) at [HacDC](https://www.hacdc.org)
in the upstairs room at St. Stephen and the Incarnate church in
Washington, DC. This page replaces [PA
LaserCutter](PA_LaserCutter) page from some years ago. It had
high ideals, but poor execution.

## Introduction

HacDC has a K40, 40W, CO2, water cooled, laser for CNC cutting of
various materials, aka a cheap Chinese laser. It allegedly used to work
just fine, but someone decided that wasn't good enough so she ordered
and half-ass installed some new parts that only half-ass work. After our
intrepid hero, [James](user:James), fully-assed the
installation of the new parts, the laser still only half-ass worked.
[Tom](user:Tom) was railroaded into helping with the
software, but even so the dynamic duo couldn't get the damn thing to
work. Then one day at work, boredom struck in a meeting and James had
the idea to create this wiki page to guide others through the confusion
and misinformation that plagues most equipment at HacDC and often
results in subpar operation. I beseech you, dear reader, to continue
your edification on our topic at hand and become your own evil
arch-villain with laser powers. (Sharks sold separately.)

## Components

### Chassis

The chassis is the laser itself, the blue metal box with 3 flip up lids.

-   The main lid users deal with is for the **cutting chamber** on the
    left front of the machine. It includes an orange plastic window. The
    cutting chamber contains the transverse and longitudinal axes, aka X
    and Y. X goes left to right, and Y goes back to front. The material
    to be cut goes in this chamber.
-   The second flip up lid is for the **controls and power supplies
    chamber**. This lid contains the front panel controls and
    indicators. There are two control boards, the [Smoothie
    board](http://smoothieware.org/smoothieboard-v1) and the K40 ACR
    plug-and-play board which connects the Smoothie board to the machine
    hardware. There are two power supplies as well, the control power
    supply which is right below the control boards and the high-voltage
    (and I mean real high voltage, like around 15kV, not those
    namby-pamby B.S. 120VAC "high voltage" warning labels) laser tube
    power supply which creates enough voltage to excite the electrons in
    the CO2 molecules to a higher energy level so they emit coherent
    light when they drop down to a lower energy level. For more about
    this exciting process, read a science book.
-   The third lid covers the **laser tube chamber** at the back of the
    chassis. You don't really need to mess with these last two lids
    unless you are modifying the equipment or troubleshooting a failure.
    The first 2 lids have interlock switches so the laser will not fire
    if any one is open (unless you turn the SAFETIES switch off, in
    which case, it's your own darn fault for burning out your eye; as we
    say in Charlotte, "you did it to yourself") but the laser tube cover
    does not yet (it should; the high voltage is probably the most
    dangerous thing in the space).

### Exhaust

The exhaust system sucks smoke from the laser chassis cutting chamber
and sends it outside through a window. It was cobbled together using a
fan and housing salvaged from a prior laser cutter and is mostly held
together with zipties and metal duct tape. Seriously. I'm not kidding.
Actual zipties and duct tape. (I'd like to give a shout-out to Home
Depot for selling me the roll of metal tape for only one cent.) If any
part of the whole laser system is going to crap out, this would be a
good part to bet on. It also uses 4" diameter (that's 105mm for those of
you on the metric system) flexible metal clothes dryer exhaust duct to
carry the exhaust gasses. There are custom-made, 3d-printed transiton
pieces at the back of the laser chassis which replace the original
feeble exhaust system. Read about them on the [K40 Exhaust
Assembly](K40_Exhaust_Assembly) page.

### Cooling

The cooling system presently consists of a 5 gallon pail in the roller
cabinet with a submersible pump. The water should be replaced with
distilled. (The pump power cord got a new plug. It stays plugged in much
better than the original cheap Chinese plug.) If the water doesn't flow,
the laser will burnout. Sadness. The cooling system presently only works
based on the heat capacity of the water in the bucket. Once the water
heats up, you just need to wait for it to cool back down all by itself.
You can read about other people with more sophisticated refrigerated
cooling systems, but this was quick and easy, like a virgin on prom
night. Julia has mentioned she's got some thermoelectric coolers in
hiding for this project. We'll cross that bridge when we get everything
else running first. The cooling system will have 3 interlocks: low water
level, low flow, and high temperature.

### Computer

This is CNC equipment. The first C is for Computer. (No, not for cookie,
but we often have cookies anyway.) You need a computer with a USB port.
You need computer software. I hope we can have a computer dedicated to
the laser, but let's be real, that's not likely to happen. I hope Tom
will fill out this section.

### Software

Hey, kids! [Ubuntourist](user:Ubuntourist) here. In the
software department, we are using a
[LaserWeb](https://github.com/LaserWeb/LaserWeb4/wiki) AppImage
(currently version 4.0 as of 2018.09). However, additional tools
include:

-   [VisiCut](http://visicut.org/) - a user-friendy,
    platform-independent tool for preparing, saving and sending jobs to
    Lasercutters
-   [GCodeTools](http://www.cnc-club.ru/forum/viewtopic.php?t=35) -
    Inkscape plugin / extension
    -   [Usage
        "Manual"](http://www.cnc-club.ru/forum/viewtopic.php?p=101#p101)
    -   [Tutorial: Area
        processing](http://www.cnc-club.ru/forum/viewtopic.php?p=341#p341)
    -   [Tutorial: Make some gears using Gcode tools and Gear
        extension](http://www.cnc-club.ru/forum/viewtopic.php?p=194#p194)

### Cabinet

The cabinet is what the chassis sits on. The cabinet has wheels. It's
made of particle board and painted white. The left door has upper and
lower latches inside which hold it shut, so don't yank on it. The
cabinet houses the cooling system, the 12V accessory power supply, the
power strip which all the line voltage equipment plugs into: exhaust
fan, cooling pump, laser chassis, 12V power supply (marginal one
installed currently to power the cutting chamber accessory lights).

## Safety Interlocks

**Only some of these safeties (cutting chamber cover, control cover, &
water level) are installed presently.** Don't go futzing around with
stuff unless you know exactly what you are doing. And tell James or Tom.
For troubleshooting purposes, there is a safety override switch on the
control panel (SAFETIES; middle of three).

### Ventilation

1.  Exhaust - If the exhaust fan isn't moving air, we don't want the
    laser to fire and make lots of smoke which would then fill the room
2.  Lens - Eventually we plan to install an air shroud nozzle around the
    laser lens to keep smoke from coating the lens and reducing cutting
    power.

### Coolant

1.  Level - Installed
2.  Flow
3.  Temp

### Doors

1.  Cutting Chamber - Installed
2.  Control Chamber - Installed
3.  Laser Chamber - Probably not going to install this switch because
    the door is in back and control panel space is at a premium
4.  Cabinet - Probably not going to install this switch because there's
    not much harm in the cabinet and control panel space is at a premium

## Workflow

### Prestart

1.  Come up with design
2.  Create SVG using software like [Inkscape](https://inkscape.org/)
3.  Upload SVG to computer

### Startup

1.  Roll cabinet out from under shelf
2.  Get extension cord out of cabinet and plug laser into extension cord
    and extension cord into live receptacle
3.  Turn on laser master power switch (power strip inside the wooden
    cabinet)
4.  Close cabinet door
5.  Load material to be cut in cutting chamber
6.  Shut lid on cutting chamber
7.  Turn on laser cutter power switch

### Operations

1.  Ensure all safety interlocks are operable by checking indicator
    lights
    1.  You can skip this step for now since the lights don't work
2.  Do software stuff
    1.  Connect to LaserWeb server at [192.168.26.122 Port
        8000](http://192.168.26.122:8000/) from HacDC network
    2.  Clear LaserWeb 4 upgrade warning popup
    3.  Click on Settings on left edge of page
    4.  Click on BACKUP at top of setting pane
    5.  Click on Restore from file
    6.  Upload <file:Laserweb-settings-backup.json> file
    7.  Click Save
    8.  Observe messages "Saved Settings" and "Please refresh page for
        settings to take effect"
    9.  Refresh webpage
    10. Clear LaserWeb 4 upgrade warning popup, again
    11. Load SVG file of cutting paths by dragging and dropping into the
        web browser window
    12. Click Generate G-Code (on CAM menu)
    13. Click Connect at the top of the webpage
    14. If a popup appears, choose Option 1
    15. Click Jog on left edge of the window
    16. Click home and observe the gantry move to the home position in
        the far left corner of the cutting chamber
3.  Run program without laser powered on to observe tool path and ensure
    material to be cut is properly arranged in the cutting chamber
    1.  Click check outline and observe the laser move
        1.  Check that material is fully under the travel area
        2.  Check that your design is the size you expect it to be (25.4
            for mm)
        3.  If the size is not right, go to the Settings page and adjust
            the DPI setting on the Size menu
4.  Run program with laser powered on to cut material
    1.  Click run gcode
    2.  Watch for things catching fire

### Shutdown

1.  Turn off laser chassis and master power switches
2.  Unplug laser and extension cord
3.  Coil up and store extension cord
4.  Shut cabinet door
5.  Roll cabinet back under the shelf
6.  Continue with your evil plans for world domination

## Custom Wiring

Julia had some LED strips she wanted installed. We succeeded. They
illuminate when the main power is turned on.
![](Laser-leds1.jpg "Laser-leds1.jpg")

They are white LEDs but the orange laser viewing window colors them.

![](Laser-leds2.jpg "Laser-leds2.jpg")

Sully really likes relays and discrete, analogue circuits, so he jimmied
up a bunch of stuff to make it less likely for you to poke your eye out
or burn out the laser.

The laser power supply from the factory takes input from 3 front panel
controls: off-on laser switch, momentary-on laser switch, power control
potentiometer knob. The off-on switch was a cheap latching push button
which was connected to the leftmost two terminals of the 6 terminal plug
with black wires. It was replaced with an off-on, metal, toggle switch
on 3-23-17. The middle two terminals of the block connect to the
momentary on push button switch on the front panel which causes the
laser to fire (when the left two terminals are shorted together by the
toggle switch). The right 3 terminals (which overlap with the right
center terminal going to the push button switch) connect to the front
panel potentiometer which controls the laser current. Do not turn the
knob to full clockwise, because increasing the laser firing current past
a certain point doesn't provide any benefit and just reduces the tube
lifespan. The plan is to parallelize the push button firing switch with
a solid-state relay controlled directly by the Smoothie board and
bypassing the K40 ACR board (which was supposed to make the Smoothie
board plug-and-play, but as mentioned earlier did a halfassed job). The
potentiometer will be connected to a 3PDT switch for computerized or
manual power level control. A PWM to DC circuit will do the automatic
control and the original pot will remain for the manual control.

The safety interlocks are basically a whole bunch of microswitches in
series so if any one of them gets tripped the left two pins of the power
supply 6 pin connector won't be shorted together and the laser won't
fire. There's also a plan to have lights illuminate to show which
safeties are operating properly or tripped. Plus indicator lights are
cool. And for the remaining manual firing switches we plan on getting
those flip-up red covers like in those military movies where they're
firing nuclear missiles and stuff like that. These would aid in
troubleshooting, and look really cool, even if they are kinda spendy.
Man, this is really turning into a wall of text. Someone should do
something about this sometime. Anyway, schematic drawings would go here,
or links to them would go here.

**Terminal Block Connections**

1.  Cutting chamber door safety switch - common
2.  Cutting chamber door safety switch - n.o.
3.  Cutting chamber door safety switch - n.c.
4.  Control chamber door safety switch - common
5.  Control chamber door safety switch - n.o.
6.  Control chamber door safety switch - n.c.
7.  Cooling water level float safety switch - common
8.  Cooling water level float safety switch - n.o.
9.  Cooling water level float safety switch - n.c.
10. 
11. 
12. 
13. 
14. 
15. 12VDC / Cutting Chamber LED positive
16. Hour meter / 12VDC / Cutting Chamber LED ground
17. Hour meter positive
18. Laser fire switch positive - shorts to ground (below) to fire laser
19. Laser power supply power level control potentiometer GND
20. Auto power control voltage divided between +V and GND - connects to
    auto-hand control panel switch and to PWM-DC converter circuit
    output
21. Laser power supply power level control potentiometer +V

  Connectors at front of bottom power supply (4, 6, & 4 connections)
  --------------------------------------------------------------------
  Position
  Left
  Center
  Right
  Connectors at front of middle power supply are labeled

## Custom Parts

Images of custom parts like the exhaust nozzles and eventually a new
control panel and source files for 3d printed or laser cut parts can go
here.

[CCL front panel](CCL_front_panel)

[Air flow switch holder](Air_flow_switch_holder)

[Exhaust nozzle](Exhaust_nozzle)

[Terminal block holder](Terminal_block_holder)

This image is colored for 3d printing using it as a height map:
black=0mm, gray=1mm, white=2mm. 174mm wide, 184mm tall. The SVG file was
created by a Ruby program to modularize the positions and sizes of
cutouts for switches, knobs, lamps, etc.

<file:Control-panel.png>

## Bill of Materials, a.k.a. Donation Wishlist, and Hardware Store Shopping List {#bill_of_materials_a.k.a._donation_wishlist_and_hardware_store_shopping_list}

1.  Laser goggles
2.  USB A-B cord, i.e. printer cable, which doesn't suck
3.  Solid state relays -- we used
    [1](http://www.clare.com/home/pdfs.nsf/www/LBA110.pdf/$file/LBA110.pdf)
    this one. --This should move to custom parts and off the wishlist
    (JS 4-20).
4.  Stuff to cut
    1.  1/8" Baltic birch plywood
    2.  Plastic sheets, e.g. acrylic
    3.  Masonite?
5.  Cabinet reinforcements
    1.  dimensional lumber, e.g. 2x4, 2x2, 1x3
    2.  unidirectional casters
6.  Cooling system stuff
    1.  Distilled water
    2.  Float switch
    3.  Thermocouple or thermistor/RTD temperature sensor probe
    4.  Radiator and fans
    5.  Solid state heat pump
    6.  Working water fountain chiller (for future use on the 100W
        downstairs)
    7.  PLC/Microcontroller with A/D inputs for temperature probe
        conditioning and temp display (advanced task)
7.  Green connectors for smoothieboard and laser power supply
    [2](https://www.amazon.com/uxcell-Terminals-Pitch-Mount-Terminal/dp/B00E6Q4FE6/ref=sr_1_9?ie=UTF8&qid=1493691567&sr=8-9&keywords=pluggable+terminal+block+connector)

## To-Do Tasks

1.  Airflow switch housing
    1.  manufacture
    2.  install
2.  Coolant interlocks
    1.  Flow sensor
        1.  design
        2.  manufacture
        3.  install
    2.  Temp sensor
        1.  design
        2.  manufacture
        3.  install
3.  Door switches
    1.  Cabinet door
    2.  Laser tube chamber door
4.  Chassis wiring
    1.  Wire up the safety switches as they are installed
    2.  Draw a wiring diagram of custom components
5.  CNC firing control - This svg file can be used to test run the
    laser: [Laser circle test](Laser_circle_test)
    1.  find firing signal on Smoothie board
    2.  in the config you specify this with laser_module_ttl_pin
    3.  determine relay requirements
    4.  purchase and receive relay
    5.  install firing relay
6.  software
    1.  determine best software to use
    2.  develop workflows for various programs and operating systems
    3.  update this page to explain the above
    4.  We're gonna use Laserweb I think so setup a RasPi or something
        as a Laserweb server.
    5.  backup the raspi so when the sdcard fails we don't have to
        rebuild it.

## Completed Tasks

If you do work on the laser, please record it here.

  Task                                                                                                                                                                                                                        Fixer                                      Date         Notes
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ------------------------------------------ ------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Create Wiki page                                                                                                                                                                                                            [James](user:James)             3/24/2017    Ongoing updates needed
  Install operational exhaust system                                                                                                                                                                                          James                                      2/2017       Still needs interlocks
  Install cooling system                                                                                                                                                                                                      James                                      2/2017       Air cooling or refrigeration could be added
  Connect control power supply to switched mains                                                                                                                                                                              James                                      3/2017       Done
  Get x and y axis movements working                                                                                                                                                                                          [Tom](user:Tom)                 3/2017       Firing still needs to be fixed
  Replaced cooling pump power cord plug                                                                                                                                                                                       James                                      3/26/2017    
  Installed door closure bolts on left cabinet door                                                                                                                                                                           James                                      3/26/2017    
  Installed cutting chamber illumination LEDs and 12VDC power supply                                                                                                                                                          James                                      3/26/2017    
  Control + interlock circuits design/brainstorm session                                                                                                                                                                      James + Tom                                3/27/2017    See webpages below for Smoothieboard help
  Mocked up and tested control circuit for PWM from smoothieboard                                                                                                                                                             James + Tom                                3/27/2017    <http://smoothieware.org/laser-cutter-guide>
  Scoped out various pins on the smoothieboard to find PWM out                                                                                                                                                                James + Tom                                3/27/2017    <http://smoothieware.org/smoothieboard-v1>
  Removed control panel                                                                                                                                                                                                       James                                      3/30/17      Don't mess with nothing until a new one gets installed!
  Tried to 3d print a new control panel                                                                                                                                                                                       James                                      4/2/17       Lulzbot Taz either didn't extrude or made bird poop. :( It's too bad we don't have a working laser cutter.
  Adjusted program size parameters based on failed print and added ammeter mounting screw holes to control panel design                                                                                                       James                                      4/11/17      Still need to upload new SVG here and print it
  Ordered self adhesive cable tie mounting squares and SSR for PWM-\> DC                                                                                                                                                      Tom                                        4/11/17      Delivery expected Thursday
  Design 3d-printed mounting bracket/clip to hold switches for door interlocks                                                                                                                                                James + Tom                                4/15/17      Impromptu Saturday night productivity session.
  Design, breadboard and test PWM circuit with solid state relay and newly determined time constant                                                                                                                           James + Tom                                4/15/17      Impromptu Saturday night productivity session.
  Uploaded exhaust nozzle and exhaust flow switch scad files                                                                                                                                                                  James                                      4/20/17      Flow switch needs printing and Tom's nacelle needs dimension tweeking.
  Tried printing control panel on the Ultimaker^2^                                                                                                                                                                            James                                      4/25/17      Print failed twice, but third time looked good before I left.
  Installed control panel 3d printed on Tuesday                                                                                                                                                                               James                                      4/27/17      Controls and indicators are installed but not operational, yet. It looks sweet! Could be thicker, maybe 4mm. Dimensions could use tweeking too: toggle switches moved down, corner radii reduced,...
  Uploaded source code and stl for water level float switch and for terminal block holders. Installed v5 of door switch holder and soldered wires to switches.                                                                James                                      5/1/17       Still need to print float switch parts and terminal block holders. New parts fit well. A very productive day overall.
  Installed terminal block with manually modified v1 terminal block holder parts. Wired up cutting chamber and control chamber door safety switches. Connected laser power supply wiring to new control panel switches.       James                                      5/4/17       Need to adjust terminal block holder dimensions and reprint.
  Uploaded v2 source code and stl for terminal block holder.                                                                                                                                                                  James                                      5/5/17       Need to print float switch parts and terminal block holders.
  Printed and installed new terminal block holders (v2). Printed new air flow switch and water level float switch head and base. Remodeled exhaust header.                                                                    James                                      5/6/17       Holders fit great. Base, not so much.
  Reprinted water level float switch base. Investigated PWM output from Smoothieboard.                                                                                                                                        James + Tom                                5/7/17       Pin 4.2 and GND work for PWM signal. PWM to DC breadboard isn't working. Laser power supply 5V circuit for safety switches doesn't have enough current to illuminate the trouble lamps on front panel.
  Install float switch.                                                                                                                                                                                                       James                                      5/11/17      Not seeming to function as of 5/14 - remains conductive even when open?
  Successful CNC laser firing on circle laser test.                                                                                                                                                                           James + Tom                                5/14/17      Some kind of beam splitting or 2-layer reflection is going on. PWM out can be set using laser_module_pwm_pin in smoothieboard config.
  Setup the auto-man power level control switch. General stuff.                                                                                                                                                               James + Tom                                5/28/17      We've got some stray AC current in the case.
  Installed RasPI as webhost. Replaced USB cable.                                                                                                                                                                             James + Tom                                6/4/17       [Laserweb server](http://192.168.26.122:8000/), from HacDC network
  Test cut Pepe the frog on opaque acrylic with painters tape mask.                                                                                                                                                           James + [Andrew](user:Andrew)   6/5/17       Auto fire signal still isn't working.
  Added circuitry to breadboard to automate the firing signal.                                                                                                                                                                James                                      6/6/17       Will test on Thursday.
  Test fire was successful. Operations section updated.                                                                                                                                                                       James                                      6/8/17       Fully automatic operations achieved!
  Unsuccessful work to connect hour meter.                                                                                                                                                                                    James                                      6/11/17      Don't use laser for now. I'm waiting on some parts to make a soldered accessory board.
  Strip boards arrived and I fabbed a circuit card to control the power, fire the laser, and drive the hour meter. It still needs to be connected and tested.                                                                 James                                      6/17/17      Don't use laser for now. Accessory board needs testing.
  After several rounds of testing, the problem with the board is still undetermined. SSRs might be fried. Tom is researching bulk buy. Thanks, Tom.                                                                           James                                      6/22/17      Laser only works with manual fire and power control.
  Work on firing up the laser directly from smoothieboard pinouts PWM and TTL. TTL (1.30) to Laser LO and PWM (2.4) to 5v control. Problem: PWM out looks like it is 3.3v logic. Problem: TTL needs to drive the hourmeter.   Tom + Forrest                              8/1/2017     Configured TTL in config and changed PWM period to 20 from 200. DANGER: LASER FIRES AT ALL TIMES WHEN CONNECTED TO PWM.
  Fix issue with leaky voltage or improper configuration why does the laser fire too much                                                                                                                                     Oni                                        08/10/2017   Attached manual fire ground. Removed and put-back small laser fire wire and ground to the smoothieboard. This appeared to fix laser autofire issue. Not 100% sure about that. Removed 2nd and 3rd mirror to find them damaged. Took photos and sought advice on their state. Put mirrors back in place but alignment is needed. Best to wait for new mirrors in the meantime.
  Alignment and knackered mirrors                                                                                                                                                                                             Oni                                        08/28/2017   Removed mirror 2 and 3, replacing with new mirrors. Mirror 1 should probably be checked at some point as well. Adjusted the alignment on mirrors 1 and 2. Reduced the torque on the adjustment screws to 'finger-tight'. Alignment on 3rd mirror is dead centre across the entire bed. This should improve cutting power across the entire range. Might be worth ordering another set of spare mirrors and a lens for future repairs. Laser appears to fire correctly, respecting interlocks and fire control.

Sept. 1, 2018 - Independent examination revealed multiple issues: 1.
Closed loop in wiring - resolved (A loop can act like a transformer and
couple noise into the wiring.) Removed. 2. AUTO/MAN switch did not
affect control of laser firing, only laser current - partially resolved
(This may explain unexpected firing of laser.) Rewired so FIRE switch
has no effect in AUTO mode and controller cannot fire laser while in MAN
mode. However, setting switch on MAN does not stop the controller; it
can continue moving the mirrors and could resume firing the laser the
instant the switch is returned to AUTO. Therefore, always HALT AUTOMATIC
OPERATION BEFORE USING MANUAL CONTROL. 3. A loose connection around the
Laser Current meter could result in deadly high voltage appearing in the
control circuitry - resolved Added shunt diode to clamp voltage to \<1V.
4. Interlock switches not connected - resolved Connected (cutting
chamber door, electronics cover, water level). Terminal block positions
10 & 11 are allocated for additional switches. 5. Missing interlock
switches - not resolved (laser tube cover, water flow, & water
temperature) New wiring is color coded (but old wiring is not): Black -
ground connection Green - safety switches White - control & temporary
Some of the wiring is rather sloppy and should probably be redone once
all the bugs are out of it. A loose wire to the power socket & the
exhaust duct (may have just come loose) were also reconnected. The laser
cutter should now be ready for testing by an expert. Oops, left out 6.
No manual control for laser position - unresolved Sept. 3 Tom showed up
to test the laser cutter. It fired under manual control but the safeties
did not stop it from firing. Tried other firing pin (C3) - same result.
Completely disconnected wire to enable pin (C2) & then also tried
disconnecting the diode I added - laser still fired, suggesting faulty
power supply. Laser did not move in y direction when commanded by
computer but moved in both x & y when commanded to move in x direction.
Tom moved a connector on the ACR board - problem solved. Mirrors now
move correctly under computer control but computer could not fire laser.
Left with enable disconnected. Time to examine power supply schematic.

## Additional Reading

1.  [Laser blog](http://howell.seattle.wa.us/essays/lasercutter.shtml)
2.  [Reddit K40 wiki](https://www.reddit.com/r/lasercutting/wiki/k40)
3.  [Light Object laser
    retailer](http://www.lightobject.com/Default.aspx)

[Category:Equipment](Category:Equipment)
[Category:LaserCutter](Category:LaserCutter)
[Category:Projects](Category:Projects) [Category:Ongoing
Projects](Category:Ongoing_Projects) [Category:Project
Awesome](Category:Project_Awesome)
[Category:CheapChineseLaser](Category:CheapChineseLaser)
