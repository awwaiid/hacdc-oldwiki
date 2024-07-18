ins3DRostockpronsolequick.txt - May 24, 2019 version This covers common
situations. If something else is encountered consult the full
instructions (ins3DRostockpronsole.txt) \*\*\*NOTE\*\*\* The Rostock is
currently miscalibrated & prints too small in the x & y directions.
These instructions change the scale to compensate. For better results,
multiply all x & y values by 1.065 when designing the object & skip
lines Q.15-Q.19. Q.1 In MATE Terminal: cura (program to convert surface
representation(.stl) to 3D printer instructions(.gcode)) Q.2 When Cura
control display appears click on Machine (at top) Q.3 Click on DeltaBot
Style (yes, Deltabot not Rostock) Q.4 At Fill - Fill density (%): enter
desired value (i.e., 20 for prototypes) Q.5 At Speed and temperature -
Printing temperature (C): 215 (for PLA) Q.6 At Speed and temperature -
Bed temperature (C): 0 (bed heater not working) Q.7 At Support - Support
type: select None, Touching buildplate, or Everywhere (depends on object
to be printed; if in doubt select Everywhere) Q.8 At Support - Platform
adhesion type: select None, Brim, or Raft (depends on object; if in
doubt select Brim) Q.9 Click on LOAD MODEL (top left of image) Q.10
Click on filetoprint.stl (scroll down if needed; i.e., testcube.stl)
Q.11 Click on Open (lower right) Q.12 Put blue masking tape on Rostock
bed Q.13 Put glue (purple glue stick (PVA)) on tape Q.14 Check that
there is sufficient correct filament on reel (the following steps may
take a long time) Q.15 When the object appears on right click on it Q.16
Click on SCALE (center icon of 3 at bottom left of image) Q.17 Click on
lock to right of Uniform Scale Q.18 X: 1.065 Q.19 Y: 1.065 Q.20 When
SAVE GCODE lights up (just to right of LOAD MODEL) click on it; if a
romovable drive message does not appear skip Q.21-Q.23 Q.21 Click on
Custom file destination Q.22 Click on OK Q.23 Click on hacdc Q.24 When
Save toolpath window appears click on Save (bottom right) Q.25 When Cura
states (at bottom) Saved as /home/hacd... (with a large X to the right)
click on tiny x at far right top of Cura (to close Cura) Q.26 scp
filetoprint.gcode hacdc@pronterhost.hacdc.org:/home/hacdc (i.e.,
testcube.gcode; send to 3D printer) Q.27 At Password: enter standard
password Q.28 If Rostock power is off turn it on (rocker switch above &
to left of F4 (may be hidden under removable bed); display should come
on) Q.29 At 3D printer computer (keyboard usually on Taz): Ctrl Alt F4
(always hold Ctrl & Alt down when pressing the other key (F4 (at top)
not F & 4)) Q.30 If the monitor (above Taz to left) shows a final line
starting with a printer in use see full instructions Q.31 If the monitor
shows a final line that starts with offline, MINI, ROSTOCK, or TAZ skip
Q.32-Q.34; \[nnnnn@pronterhost \~\]\$ where nnnnn is anything skip
Q.32-Q.33; anything else other than pronterhost login: see full
instructions Q.32 pronterhost login: hacdc Q.33 At Password: enter
standard password Q.34 pronsole Q.35 connect /dev/ROSTOCK Q.36 load
/home/hacdc/filetoprint.gcode (i.e., /home/hacdc/testcube.gcode) Q.37
Wait until the monitor states the file is loaded (may take a while) Q.38
If the final line does not show ROSTOCK in green see full instructions
Q.39 print Q.40 Wait for Rostock to start and check to see that it is
printing OK Q.41 Wait - printing large objects can take an extremely
long time ins3DRostockpronsolequick.txt - May 24, 2019 version
ins3DRostockpronsole.txt - May 24, 2019 version This is the full
detailed instructions for using the Rostock with pronsole (the old way).
Many of the steps (i.e., R.1-R.7) can usually be skipped; see
ins3DRostockpronsolequick.txt for minimal instructions. \*\*\*NOTE\*\*\*
The Rostock is currently miscalibrated & prints too small in the x & y
directions. These instructions change the scale to compensate. For
better results, multiply all x & y values by 1.065 when designing the
object & use 1 instead of 1.065 at R.37-R.38 or just skip R.32-R.39. R.1
Make sure long power strip above microwave oven is on (orange light on
in switch at right end) R.2 Make sure power strip above sink is plugged
into long power strip R.3 Make sure Rostock fan power supply is plugged
into power strip over sink R.4 Make sure Rostock is plugged into
horizontal power strip just to left of Taz R.5 Make sure 3D printer
computer (Dell computer left of Rostock) is plugged into power strip
left of Taz R.6 Make sure 3D printer computer monitor (above & to left
of Taz) is plugged in to power strip left of Taz R.7 Maker sure power
strip over sink is on R.8 If the horizontal power strip left of the Taz
is off (no orange light) turn it on (switch at wall end; orange light in
switch should come on) R.9 If the 3D printer computer is off (no green
light in power button in center of front above silver Dell logo) press
the power button (light should come on) R.10 Check that there is
sufficient correct filament on the reel R.11 If the filament diameter is
not written on the reel measure the filament diameter (calipers are in
the Measurement bin) in several places and write the average diameter on
the reel R.12 At the tabletop computer in MATE Terminal: cura (program
to convert surface representation(.stl) to 3D printer
instructions(.gcode)) R.13 If Basic is at the top left when the Cura
control display appears skip R.14-R.16 R.14 Click on Expert R.15 Click
on Switch to full settings... R.16 At Profile copy click No R.17 If
Quality is not immediately below Basic click on Basic R.18 Click on
Machine (at top) R.19 Click on Deltabot Style (yes, Deltabot not
Rostock) R.20 At Fill - Fill density (%): enter desired value (i.e., 20
for prototypes) R.21 At Speed and temperature - Printing temperature
(C): 215 (for PLA) R.22 At Speed and temperature - Bed temperature (C):
0 (bed heater not working) R.23 At Support - Support type: select None,
Touching buildplate, or Everywhere (depends on object to be printed; if
in doubt select Everywhere) R.24 At Support - Platform adhesion type:
select None, Brim, or Raft (depends on object; if in doubt select Brim)
R.25 At Filament - Diameter (mm): enter diameter written on reel R.26
Click on LOAD MODEL (top left of image) R.27 If you don't see the file
to print (i.e., testcube.stl) click on hacdc & scroll down if needed
R.28 Click on filetoprint.stl (i.e., testcube.stl) R.29 Click on Open
(lower right) R.30 Put blue masking tape on Rostock bed R.31 Put glue
(purple glue stick (PVA)) on tape (the following steps may take a long
time) R.32 When the object appears on right click on it; if you do not
want to make a mirror image skip R.33-R.34 R.33 Click on MIRROR (right
icon of 3 at bottom left of image) R.34 Click on the new icon above
MIRROR with the correct reflection plane (MIRROR Z, MIRROR Y, or MIRROR
Z) R.35 Click on SCALE (center icon of 3 at bottom left of image) R.36
Click on lock to right of Uniform Scale R.37 At X: enter 1.065 or, to
change the x dimension of the object, 1.065 multiplied by the number to
scale x direction by (i.e, .532 (1.065 x .5) to shrink to half width)
R.38 At Y: enter 1.065 or, to change the y dimension (depth) of the
object, 1.065 multiplied by the number to scale y direction by R.39 To
change the z dimension enter the number to scale the z direction by
(i.e., 2 to double the height) at Z: R.40 When SAVE GCODE lights up
(just to right of LOAD MODEL) click on it; if a removable drive message
does not appear skip R.41-R.43 R.41 Click on Custom file destination
R.42 Click on OK R.43 Click on hacdc R.44 When Save toolpath window
appears enter file name (i.e., testcubeR.gcode) after Name: (at top)
R.45 Click on Save (bottom right) R.46 When Cura states (at bottom)
Saved as /home/hacd... (with a large X to the right) click on tiny x at
far right top of Cura (to close Cura) R.47 scp filetoprint.gcode
hacdc@pronterhost.hacdc.org:/home/hacdc (i.e., testcubeR.gcode; send to
3D printer computer; note that it may be necessary to wait later (at
R.73) for this to finish) R.48 At Password: enter standard password R.49
If Rostock power is off turn it on (rocker switch above & to left of F4
(may be hidden under removable bed); display should come on) R.50 At 3D
printer computer (keyboard usually on Taz):Ctrl Alt F4 (always hold Ctrl
& Alt down when pressing the other key (F4 (at top) not F & 4)) R.51 If
the 3D printer computer monitor (above Taz on left) does not show a
final line starting with a printer in use skip R.52-R.56 R.52 Ctrl Alt
F2 R.53 If the final line does not start with a printer in use skip
R.54-R.56 R.54 Ctrl Alt F6 R.55 If the final line does not start with a
printer in use skip R.56 R.56 Ctrl Alt F5 R.57 If the monitor is blank
or only shows a flashing dash wait a minute R.58 Press backspace & hold
it down if anything is disappearing from the monitor R.59 If the monitor
shows a final line that is just a flashing dash press Enter R.60 If the
monitor shows a final line that starts offline, MINI, ROSTOCK, or TAZ
skip R.61-R.71; \[nnnnn@pronterhost \~\]\$ where nnnnn is anything skip
R.61-R.70; pronterhost login: skip R.61-R.68 R.61 If either Mini or Taz
printer is in use \*\*\*STOP\*\*\* & either wait for the printers to
finish or get expert help R.62 Ctrl Alt F1 R.63 Click on 3 dots & \>
symbol at lower left corner of monitor R.64 Move cursor to Leave at
lower right corner of new window R.65 Click on Reboot in center of
window R.66 Click on OK R.67 Wait for monitor to come back on (it takes
a while) R.68 Ctrl Alt F4 R.69 pronterhost login: hacdc R.70 At
Password: enter standard password R.71 pronsole R.72 connect
/dev/ROSTOCK R.73 load /home/hacdc/filetoprint.gcode (i.e.,
/home/hacdc/testcubeR.gcode; it may be necessary to wait for the file to
finish transferring from the other computer (step R.47)) R.74 If any of
the horizontal rods joining the printhead platform to the 3 support arms
or joining the arms to the movable mounts on the side bars of the frame
have shifted off to the side push them back in so they are centered R.75
Wait until the monitor states the file is loaded (may take a while) R.76
If the final line begins with ROSTOCK in green skip R.77-R.87 R.77
disconnect R.78 connect /dev/ROSTOCK R.79 Wait a minute R.80 Enter R.81
If the final line has ROSTOCK in green skip R.82-R.87 R.82 Turn off
Rostock power (rocker switch on top of & to left of display) R.83 Wait a
minute R.84 Turn on Rostock power R.85 Wait until the regular Rostock
display appears R.86 Repeat steps R.78-R.81 R.87 STOP & get expert help
R.88 print R.89 Wait for Rostock to start and check to see that it is
printing OK R.90 Wait - printing large objects can take an extremely
long time ins3DRostockpronsole.txt - May 24, 2019 version
ins3DRostockstart.txt - June 13, 2019 version If you can't fix a problem
& expert help is not available: !.1 If the Rostock power has already
been turned off STOP here !.2 pause !.3 Press knob on Rostock (to right
of display on base) !.4 Select Adjust Temps by turning knob !.5 Press
knob !.6 Select NOZ Temp: by turning knob !.7 Press knob !.8 Set
temperature to 0 by turning knob !.9 Press knob If printing does not
begin: P.1 If the nozzle temperature stays (it may overshoot for a short
time) above the correct value by more than a few degrees skip P.2-P.19;
if the temperature is below the correct value but rising STOP & wait
(the Rostock is still preparing to print) P.2 Select NOZ Temp: by
following steps !.3-!.7 P.3 Set temperature to 0 by turning knob P.4
Press knob P.5 Press knob again P.6 Set temperature to correct value by
turning knob P.7 Press knob; if the printhead temperature rises skip
P.8-P.17 P.8 Turn the Rostock power off (rocker switch to left & on top
of display) P.9 Wait a minute P.10 Turn Rostock power on P.11 Wait until
the regular display appears on the Rostock P.12 If not using pronsole
start over; if using pronsole: connect /dev/ROSTOCK P.13 If the final
line of the screen starts with ROSTOCK in green skip P.14-P.17 P.14 Wait
briefly & press Enter P.15 If the final line of the screen shows ROSTOCK
in green skip P.16-P.17 P.16 Repeat P.14-P.15 P.17 If ROSTOCK is still
red STOP & get expert help P.18 print; if the printhead heats up STOP
here P.19 STOP & get expert help P.20 Turn the Rostock power off P.21
Get expert help If the display shows NOZ: def or BED: def or you get the
error message: Error:Printer set into dry run mode until restart! D.1
Turn Rostock power off (rocker switch to left & on top of display; may
be covered by square bed) D.2 Make sure bed temperature was set to 0
when stl file was converted to gcode (i.e., when using Cura) D.3 Wait a
minute D.4 Turn Rostock power back on D.5 Wait until regular Rostock
display appears D.6 Start over If you get the error message: Error:One
heater seems decoupled from thermistor H.1 Press knob on Rostock H.2
Select Adjust Temps by turning knob H.3 Press knob H.4 Select BED Temp:
by turning knob H.5 Press knob H.6 Set temperature to 0 C by turning
knob (clockwise for lower) H.7 Press knob H.8 Select NOZ Temp: by
turning knob H.9 Press knob H.10 Set nozzle temperature to correct value
by turning knob H.11 Press knob ins3DRostockend.txt - June 13, 2019
version To remove printed objects from the bed: Z.1 Spread water around
the base of the object so a shallow layer touches it all around Z.2 Wait
until the object has cooled fully and water has soaked in; add more
water as needed to maintain a shallow layer all around Z.3 If the object
is sturdy you can try to remove it by slowly but firmly trying to tilt
it in different directions; if it comes off skip Z.4-Z.8 Z.4 Remove tape
around base of object Z.5 Slice under the object from various directions
with a razor blade (careful!) Z.6 Pry up the object from different
directions with a putty knife or similar item; if the object comes off
skip Z.7-Z.8 Z.7 Wait some more; add more water as needed to maintain a
shallow layer all around Z.8 Repeat steps Z.5-Z.8 Z.9 Dry off the bed
ins3DRostockprob.txt - June 13, 2019 version To pause printing if using
pronsole: P.1 pause (it may take a while to stop) P.2 If you might want
to resume the print avoid moving the printhead unless necessary and only
use the move commands to move it (i.e., move z 10) being careful not to
hit the partial print with the printhead unit & noting how much it is
moved in each direction P.3 To resume printing: If the printhead has not
been moved skip P.4 P.4 Use move commands to move the printhead back to
where it paused (i.e., move z -10) being careful not to hit the partial
print with the printhead unit P.5 resume If you can't fix a problem &
expert help is not available: !.1 If the Rostock power has already been
turned off STOP here !.2 pause !.3 Press knob on Rostock (to right of
display on base) !.4 Select Adjust Temps by turning knob !.5 Press knob
!.6 Select NOZ Temp: by turning knob !.7 Press knob !.8 Set temperature
to 0 by turning knob !.9 Press knob !.10 Get expert help when it becomes
available; it may be possible to resume printing If the nozzle
temperature stays (it may overshoot for a short time) above the correct
value by more than a few degrees: T.1 Turn Rostock power off (rocker
switch to left & on top of display) T.2 Get expert help If the display
shows NOZ: def or BED: def: D.1 Turn Rostock power off (rocker switch
left and on top of display; may be partially covered by square bed) D.2
Turn Rostock power back on (you may need to use a pencil etc. to flip
the switch) D.3 Make sure the bed temperature was set to 0 when the stl
file was converted to gcode (i.e., when using Cura) D.4 Start over If
the display shows gibberish: G.1 If the printer is printing normally
wait until the print finishes G.2 Turn Rostock power off (rocker switch
left and on top of display; may be partially covered by square bed) G.3
Turn Rostock power back on (you may need to use a pencil etc. to flip
the switch) G.4 Start over If the feed gear won't turn: F.1 If the main
display is shown skip F.2-F.4 F.2 Select Previous Screen by turning knob
F.3 Press knob F.4 Repeat steps F.1-F.4 F.5 Press knob (should then show
Printer Settings selected) F.6 Press knob again F.7 Select Disable
Steppers by turning knob F.8 Press knob ins3DRostockmaint.txt - June 13,
2019 version To change Rostock filament: F.1 Make sure new reel has
correct filament F.2 Press knob to right of display on Rostock base F.3
Select Adjust Temp: by turning knob F.4 Press knob F.5 Select NOZ Temp:
by turning knob F.6 Press knob (\> at left of display should change to
\*) F.7 Set temperature to 180 C by turning knob F.8 Press knob F.9 Trim
end of new filament if it is blunt or distorted; try to make it slightly
pointed F.10 Loosen 2 adjacent screws next to large purple gear on feed
mechanism attached to top of Rostock noting how much they were turned
F.11 Measure the diameter of the new filament (calipers are in the
Measurement bin) in several places and write the average diameter on the
reel; note that if the diameter is different gcode should be recompiled
(i.e., with Cura) using the new diameter F.12 Wait until nozzle
temperature reaches about 180 C F.13 Pull filament up until it comes out
of feed mechanism F.14 Select NOZ Temp: by repeating steps F.2-F.6 F.15
Set temperature to 215 C by turning knob F.16 Press knob F.17 Pull old
filament up from above Rostock (i.e., by turning filament reel) out of
hole in top of Rostock above feed mechanism F.18 Unscrew nut on outside
of reel from threaded rod holding reel F.19 Remove washer from threaded
rod F.20 Remove pink reel holder from threaded rod F.21 Remove reel from
threaded rod F.22 Put new reel on threaded rod so filament hangs down
from front of reel as seen from front of Rostock F.23 Put pink reel
holder on threaded rod so new reel is held snugly and is centered on
holders F.24 Put washer back on threaded rod F.25 Screw nut back on
threaded rod until reel holder is held firmly (but reel can still turn
freely) F.26 Insert filament thru hole in top of Rostock above feed
mechanism making sure it is not twisted or tangled F.27 Push end of
filament into hole above purple gear on feed mechanism while turning
purple gear clockwise; if filament enters feed tube (visible in short
exposed section of feed tube just below purple gear) skip F.28-F.30 F.28
Unscrew feed tube below purple gear F.29 Feed filament from below purple
gear into feed tube F.30 Screw filament feed tube back onto feed
mechanism below purple gear F.31 Wait until NOZ Temp reaches around 215
C F.32 Turn purple gear clockwise until filament starts coming out of
extruder head (it will take a while for it to reach the head) F.33
Tighten 2 screws next to purple gear the same amount they were loosened
F.34 If you are going to print now stop here F.35 Select NOZ Temp: by
repeating steps F.2-F.6 F.36 Set temperature to 0 by turning knob F.37
Press knob To set printhead height: Z.1 Press knob to right of display
on base Z.2 Select Advanced Settings by turning knob Z.3 Press knob Z.4
Select Calibration Menu by turning knob Z.5 Press knob Z.6 Select Z
Position by turning knob Z.7 Press knob Z.8 Set printhead to correct
height (barely above bed; it should slightly drag on a sheet of paper)
by turning knob Z.9 Press knob Z.10 Select Set Z Origin by turning knob
Z.11 Press knob Z.12 Select Previous Screen by turning knob Z.13 Press
knob Z.14 Repeat Z.12-Z.13 until you reach the desired display To level
the bed: L.1 Unclip & remove glass bed plate L.2 Clean off any debris on
the Rostock base or the bottom of the plate L.3 Replace & reclip plate
L.4 Make sure the printhead is at the proper height in the center of the
bed (see To set printhead height immediately above) L.5 If bed still
needs leveling turn the vertical screw sticking out of the inside top of
the movable joint where an arm meets a main vertical bar of the frame
less than a full turn clockwise to raise the printhead on that side,
counterclockwise to lower it L.6 Repeat until that side is level L.7
Repeat for other two sides as needed NOTE: Since the Rostock is
currently printing smaller than it should the feed rate has been set
lower than normal to compensate To calibrate the filament feed rate: R.1
Ctrl Alt F4 (always hold the Ctrl & Alt keys down while pressing the
other key (F4 (top row) not F & 4)) R.2 If the screen does not show a
final line starting with a printer that is in use skip R.3-R.7 R.3 Alt
F2 R.4 If the final line does not start with a printer in use skip
R.5-R.7 R.5 Alt F6 R.6 If the final line does not start with a printer
in use skip R.7 R.7 Alt F1 R.8 If the final line starts with offline,
MINI, ROSTOCK, or TAZ skip R.9-R.11; if it is nnnn@pronterhost:\~\$
where nnnn is anything skip R.9-R.10; if it is not pronterhost login:
see ins3Dcompprob.txt R.9 pronterhost login: hacdc R.10 At Password:
enter standard password R.11 pronsole R.12 connect /dev/ROSTOCK R.13 If
the final line shows ROSTOCK in green skip R.14-R.19 R.14 Wait a minute
R.15 Enter R.16 If screen shows ROSTOCK in green skip R.17-R.19 R.17
disconnect R.18 Repeat R.12-R.16 R.19 See ins3Dcompprob.txt R.20 Select
NOZ Temp: by following steps F.2-F.6 R.21 Set temperature to 215 C by
turning knob R.22 Press knob R.23 If the nozzle is close to the bed or a
print: move z 20 R.24 Wait until NOZ Temp: is about 215 C R.25 Mark the
filament at a known distance from where it enters the feed mechanism
(i.e., 120 mm) R.26 extrude \# where \# is somewhat less than the
distance to the mark (i.e., 100 R.27 Wait until the Rostock finishes
extruding R.28 If the mark has entered the feed mechanism repeat
R.25-R.28 with a longer distance to the mark R.29 Measure the distance
from the mark to where the filament enters the feed mechanism (i.e.,
21.6 mm) R.30 Repeat steps R.25-R.29 with the same distance to the mark
& extrude length R.31 If the result is not the same STOP & get expert
help (if help is not available set printhead temperature to 0 or turn
Rostock power off) R.32 Subtract the length remaining (i.e., 21.6 mm)
from the original length to the mark (i.e., 120) to determine how much
filament was actually extruded (i.e., 98.4 mm) R.33 Press knob on
Rostock (to right of display on base) R.34 Select Advanced Settings by
turning knob R.35 Press knob R.36 Select Extruder by turning knob R.37
Press knob R.38 Select Steps/MM: by turning knob R.39 Multiply number
shown (i.e., 798.4) by length that should have been extruded (i.e.,798.4
x 100 = 79840) R.40 Divide by amount that was actually extruded (i.e.,
98.4) to get the correct feed rate (i.e., 79840 / 98.4 = 811.4) R.41
Press knob (\> at left of display should change to \*) R.42 Set
Steps/MM: to correct value by turning knob R.43 Press knob R.44 Repeat
steps R.25-R.29 with a longer length (i.e., mark at 205 mm & extrude
200) R.45 Subtract the length remaining from the original length to
determine the actual length extruded R.46 If display does not still show
Steps/MM: repeat steps R.33-R.38 R.47 If the actual length is correct
skip R.48; if it is way off STOP & get expert help (if help is not
available set printhead temperature to 0 or turn Rostock power off) R.48
Repeat steps R.39-R.43 R.49 Select Previous Screen by turning knob R.50
Press knob R.51 Select Store to EEPROM by turning knob R.52 Press knob
R.53 If you are going to print now stop here R.54 Select Previous Screen
by turning knob R.55 Press knob R.56 Select Adjust Temps by turning knob
R.57 Press knob R.58 Select NOZ Temp: by turning knob R.59 Press knob
R.60 Set temperature to 0 by turning knob R.61 Press knob To tighten a
belt: B.1 Turn off printer B.2 For easier access, move the arm-rod joint
down so the arm tilts up towards the center B.3 Unscrew the 2 hex head
bolts with washer & white spacer at the inside center of the arm-rod
joints B.4 Pull out the narrow vertical piece in the inside center of
the arm-rod joint B.5 While holding the joint, pull up on the LOWER belt
end sticking out from where the removed piece was B.6 While maintaining
tension on the belt, swing the belt end down B.7 While continuing to
maintain tension, replace the narrow vertical piece so the teeth press
against the belt at top & bottom B.8 Replace one of the hex bolts with
the washer & white spacer (the spacer must fit in the hole in the
vertical piece) B.9 Thighten the bolt until it holds the vertical piece
securely B.10 Replace the other bolt, washer, & spacer B.11 Firmly
tighten both bolts B.12 Push the joint back up so the arm tilts down
towards the center To unclog the Rostock printhead: C.1 Unscrew the
coupling (gold color with 6 sides & blue piece at top where filament
enters; CAUTION - may be hot) at the top of the printhead C.2 Press knob
C.3 Select Adjust Temps by turning knob C.4 Press knob C.5 Select NOZ
Temp: by turning knob C.6 Press knob C.7 Set to 215 C by turning knob
C.8 Press knob C.9 Select Previous Screen by turning knob C.10 Press
knob C.11 Select Previous Screen by turning knob C.12 Press knob C.13
Wait until NOZ: reaches around 215 C.14 If there is filament going into
the printhead pull it out (up); if there is a short piece of tubing on
the end of the filament skip steps C.15-C.19 C.15 If the top of the
vertical piece of tubing in the top center of the printhead where the
filament enters is not clogged skip C.16-17 C.16 Using a 1/16" bit in a
hand drill, drill a short distance into the clog being careful to keep
the drill bit centered C.17 Lift out the drill bit; if the piece of
tubing comes out with it skip C.18-C.19 C.18 Screw a fairly long screw
slightly bigger than the filament into the end of the tubing where the
filament enters until the screw catches in the tubing C.19 Pull out the
piece of tubing C.20 If there is a piece of filament sticking out of the
tubing try to pull it out (may take considerable effort) C.21 If there
is still a clog in the tubing push the feed tube snake (should be behind
& to right of Rostock on top of electrical box on wall) or other rigid
straight item into an open end of the tube to try to force the clog out
(may also take considerable effort); if it comes out skip C.22-23 C.22
Using a 1/16" bit in a hand drill, carefully drill out the clog (from
both ends if necessary) C.23 Using a 5/64" bit in a hand drill or your
fingers, drill out the remainder of the clog C.24 Push the tubing back
into the top center of the printhead with the burnt end up (use a pencil
eraser etc. to push it all the way in) C.25 If the filament goes all the
way thru the feed tube & moves freely when the purple feed gear on the
extruder (hanging from the top of the Rostock) is turned skip C.26-C.33;
if the coupling at the end of the feed tube is not clogged skip C.26
C.26 Using a 5/64" bit in a hand drill, carefully drill out the clog
(Caution: the coupling may still be hot) C.27 Unscrew the coupling at
the other end of the feed tube where it connects to the extruder C.28
Try to pull the filament out of the tube; if it won't come out STOP and
get expert help; the tube may need to be replaced C.29 Check if the tube
is clear (i.e., by pushing the feed tube snake thru it); if it isn't &
the clog can't be pushed out STOP and get expert help; the tube may need
to be replaced C.30 If the end of the filament is swollen, damaged, or
blunt trim off any swollen or damaged part and try to make the end
slightly pointed C.31 Insert the end of the filament into the feed tube
C.32 Screw the connector back into the extruder C.33 Feed filament by
turning the purple gear on the extruder clockwise (as viewed from the
front) until it emerges from the other end of the feed tube (requires a
lot of turning; if there is a problem the instructions for changing the
filament may be helpful) C.34 If the end of the filament is swollen,
damaged, or blunt trim off any swollen or damaged part and try to make
the end slightly pointed C.35 Retract excess filament by turning the
purple extruder gear counterclockwise until only a tiny amount sticks
out C.36 Screw the coupling (Caution - it may still be hot) back into
the top of the printhead C.37 Repeat steps C.2-C.6 if needed to select
NOZ temp: C.38 Set temperature to 225 by turning knob C.39 Repeat steps
C.8-C.12 C.40 Wait until NOZ temp: reaches around 225 C.41 Slowly turn
purple gear clockwise (or use the extrude command) until filament starts
to emerge (if the gear becomes hard to turn but no filament comes out it
may have reclogged; start over (it has taken a couple tries before final
success)) C.42 Repeat steps C.2-C.6 C.43 Set NOZ temp: to 215 by turning
knob C.44 Press knob C.45 Put feed tube snake away if you used it C.46
If you are going to print now stop here C.47 Set NOZ temp: to 0 by
turning knob C.48 press knob ins3DRostockmaint - June 13, 2019 version
insCuraaddRostock.txt - How to add the Rostock to Cura (Warning:
instructions are for one specific version of Cura; others may differ but
the basic idea should be the same) - Jan. 4, 2018 version To add the
Rostock to Cura (numbers are for standard filament): R.1 Click on
Machine (top left) R.2 Click on Add new machine... R.3 At Select your
machine (pictures) click on Other Printers R.4 Click on Next R.5 At
Select your machine (list) click on Other R.6 Click on Next R.7 At Other
machine information click on DeltaBot R.8 Click on Next R.9 At Cura
Ready! click on Finish R.10 Click on Machine R.11 Click on Machine
settings... R.12 At Machine settings: Maximum width (mm): 320 R.13
Maximum depth (mm): 320 R.14 Maximum height (mm): 320 R.15 Click on OK
R.16 At Speed and temperature: Printing temperature (C): 215 R.17 Bed
temperature (C): 0 R.18 At Filament: Diameter (mm): 1.75 To fix Cura so
it will compile for the Rostock (Warning: this is for a specific version
of Cura): sudo emacs -nw /usr/share/cura/Cura/util/sliceEngine.py scroll
down to line 359: pos += (objMin + objMax) / 2.0 \* 1000 edit it to: pos
= numpy.add(pos, (objMin + objMax) / 2.0 \* 1000) and save (Ctrl x Ctrl
s)
