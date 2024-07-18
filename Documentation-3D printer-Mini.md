ins3DMinipronsolequick.txt - May 23, 2019 version The Mini is for
printing with rubbery filament. This covers common situations; if
something else is encountered consult the full instructions
(ins3DMinipronsole.txt) Q.1 In MATE Terminal: cura (program to convert
surface representation(.stl) to 3D printer instructions(.gcode)) Q.2
When Cura control display appears click on Machine (at top) Q.3 Click on
LulzBot Mini Q.4 At Fill - Fill density (%): enter desired value (i.e.,
20 for prototypes) Q.5 At Speed and temperature - Printing temperature
(C): 220 Q.6 At Speed and temperature - Bed temperature (C): 70 Q.7 At
Support - Support type: select None, Touching buildplate, or Everywhere
(depends on object to be printed;if in doubt select Everywhere) Q.8 At
Support - Platform adhesion type: select None, Brim, or Raft (depends on
object; if in doubt select Brim) Q.9 Click on LOAD MODEL (top center of
Cura window) Q.10 Click on filetoprint.stl (scroll down if needed; i.e.,
testcube.stl) Q.11 Click on Open (lower right) Q.12 Put glue (purple
glue stick (PVA)) on Mini bed Q.13 Check that there is sufficient
correct (rubbery) filament on reel (the following steps may take a long
time) Q.14 When SAVE GCODE lights up (just to right of LOAD MODEL) click
on it; if a removable drive message does not appear skip Q.15-Q.17 Q.15
Click on Custom file destination Q.16 Click on OK Q.17 Click on hacdc
Q.18 When Save toolpath window appears click on Save (bottom right) Q.19
When Cura states (at bottom) Saved as /home/hacd... (with a large X to
the right) click on tiny x at far right top of Cura (to close Cura) Q.20
scp filetoprint.gcode hacdc@pronterhost.hacdc.org:/home/hacdc (i.e.,
testcube.gcode; send to 3D printer computer) Q.21 At Password: enter
standard password Q.22 If Mini power is off turn it on (rocker switch on
left; red light in switch should come on) Q.23 At 3D printer computer
(keyboard usually on Taz):Ctrl Alt F3 (always hold Ctrl & Alt down when
pressing the other key (F3 (at top) not F & 3)) Q.24 If the monitor
(above Taz on left) shows a final line starting with a printer in use
see full instructions Q.25 If the monitor shows a final line that starts
with offline, MINI, ROSTOCK, or TAZ skip Q.26-Q.28; \[nnnnn@pronterhost
\~\]\$ where nnnn is anything skip Q.26-Q.27; anything else other than
pronterhost login: see full instructions Q.26 pronterhost login: hacdc
Q.27 At Password: enter standard password Q.28 pronsole Q.29 connect
/dev/MINI Q.30 load /home/hacdc/filetoprint.gcode (i.e.,
/home/hacdc/testcube.gcode) Q.31 Wait until the monitor states the file
is loaded (may take a while) Q.32 If the final line does not show MINI
in green see full instructions Q.33 print Q.34 Wait for Mini to start
and check that it is printing OK Q.35 Wait - printing large objects can
take an extremely long time ins3DMinipronsolequick.txt - May 23, 2019
version ins3DMinipronsole.txt - May 23, 2019 version The Mini is for
printing with rubbery filament. This is the full detailed instructions
for using the Mini with pronsole (the old way). Many of the steps (i.e.,
M.1-M.4) can usually be skipped; see ins3DMinipronsolequick.txt for
minimal instructions. M.1 Make sure long power strip above microwave
oven is on (orange light on in switch at right end) M.2 Make sure Mini
is plugged in to long power strip M.3 Make sure 3D printer computer
(Dell computer left of Rostock) is plugged in to horizontal power strip
just to left of Taz M.4 Make sure the 3D printer computer monitor (above
& to left of Taz) is plugged into power strip left of Taz M.5 If the
power strip left of Taz is off (no orange light) turn it on ((switch at
wall end; orange light in switch should come on) M.6 If the 3D printer
computer is off (no green light in power button in center of front above
silver Dell logo) press the power button (light should come on) M.7
Check that there is sufficient correct (rubbery) filament on the reel
M.8 If the filament diameter is not written on the reel measure the
diameter (calipers are in the Measurement bin) in several places and
write the average diameter on the reel M.9 At the tabletop computer in
MATE Terminal: cura (program to convert surface representation(.stl) to
3D printer instructions(.gcode)) M.10 If Basic appears at the top left
when the Cura control display appears click on it & skip M.11-M.13 M.11
Click on Expert M.12 Click on Switch to full settings... M.13 At Profile
copy click No M.14 If Quality is not immediately below Basic click on
Basic M.15 Click on Machine (at top) M.16 Click on LulzBot Mini M.17 At
Fill - Fill density (%): enter desired value (i.e., 20 for prototypes)
M.18 At Speed and temperature - Printing temperature (C): 220 M.19 At
Speed and temperature - Bed temperature (C): 70 M.20 At Support -
Support type: select None, Touching buildplate, or Everywhere (depends
on object to be printed;if in doubt select Everywhere) M.21 At Support -
Platform adhesion type: select None, Brim, or Raft (depends on object;
if in doubt select Brim) M.22 At Filament - Diameter (mm): enter
diameter written on reel M.23 Click on LOAD MODEL (top left of image)
M.24 If you don't see the file to print (i.e., testcube.stl) click on
hacdc & scroll down if needed M.25 Click on filetoprint.stl (i.e.,
testcube.stl) M.26 Click on Open (lower right) M.27 Put glue (purple
glue stick (PVA)) on Mini bed (some of the following steps may take a
long time); if you do not want to change a dimension of the object or
make its mirror image skip M.28-M.35 M.28 When the object appears on
right click on it; if you do not want to make a mirror image skip
M.29-M.30 M.29 Click on MIRROR (right icon of 3 at bottom left of image)
M.30 Click on the new icon above MIRROR with the correct reflection
plane (MIRROR Z, MIRROR Y, MIRROR X); if you do not want to change a
dimension skip M.31-M.35 M.31 Click on SCALE (center icon of 3 at bottom
left of image) M.32 At X: enter number to scale x direction by (i.e., .5
to shrink to half width); to scale all directions (x, y, & z) by the
same amount skip M.33-M.35 (Cura will do it automaticly) M.33 Click on
lock to right of Uniform Scale M.34 At Y: enter number to scale y
(depth) by M.35 At Z: enter number to scale z (height) by M.36 When SAVE
GCODE lights up (just to right of LOAD MODEL) click on it; if a
removable drive message does not appear skip M.37-M.39 M.37 Click on
Custom file destination M.38 Click on OK M.39 Click on hacdc M.40 When
Save toolpath window appears enter file name (i.e., testcubeM.gcode)
after Name: (at top) M.41 Click on Save (bottom right) M.42 When Cura
states (at bottom) Saved as /home/hacd... (with a large X to the right)
click on tiny x at far right top of Cura (to close Cura) M.43 scp
filetoprint.gcode hacdc@pronterhost.hacdc.org:/home/hacdc (i.e.,
testcubeM.gcode; send to 3D printer computer; note that it may be
necessary to wait later (at M.68) for this to finish) M.44 At Password:
enter standard password M.45 If Mini power is off (no red light in
rocker switch on left) turn it on (light should come on) M.46 At 3D
printer computer (keyboard usually on Taz):Ctrl Alt F3 (always hold Ctrl
& Alt down when pressing the other key (F3 (at top) not F & 3)) M.47 If
the monitor (above Taz on left) does not show a final line starting with
a printer in use skip M.48-M.52 M.48 Ctrl Alt F2 M.49 If the final line
does not start with a printer in use skip M.50-M.52 M.50 Ctrl Alt F6
M.51 If the final line does not start with a printer in use skip M.52
M.52 Ctrl Alt F5 M.53 If the monitor is blank or only shows a flashing
dash wait a minute M.54 Press Backspace & hold it down if anything is
disappearing from the window M.55 If the monitor shows a final line that
is just a flashing dash press Enter M.56 If the monitor shows a final
line that starts offline, MINI, ROSTOCK, or TAZ skip M.57-M.66;
\[nnnnn@pronterhost \~\]\$ where nnnn is anything skip M.57-M.65;
pronterhost login: skip M.57-M.63 M.57 If either Rostock or Taz printer
is in use \*\*\*STOP\*\*\* & either wait for the printers to finish or
get expert help M.58 Ctrl Alt F1 M.59 Click on 3 dots & \> symbol in
lower left corner of monitor M.60 Move cursor over Leave at lower right
corner of new window M.61 Click on Reboot M.62 Click on OK M.63 When
monitor comes back on (it takes a while):Ctrl Alt F3 M.64 pronterhost
login: hacdc M.65 At Password: enter standard password M.66 pronsole
M.67 connect /dev/MINI M.68 load /home/hacdc/filetoprint.gcode (i.e.,
/home/hacdc/testcubeM.gcode; it may be necessary to wait for the file to
finish transferring from the other computer (step M.43)) M.69 Wait until
the monitor states the file is loaded (may take a while) M.70 If the
final line begins with MINI in green skip M.71-M.81 M.71 disconnect M.72
connect /dev/MINI M.73 Wait a minute M.74 Enter M.75 If the final line
has MINI in green skip M.76-M.81 M.76 Turn off Mini power (rocker switch
on left) M.77 Wait a minute M.78 Turn on Mini power M.79 Wait a couple
minutes M.80 Repeat steps M.72-M.75 M.81 STOP & get expert help M.82
print M.83 Wait for Mini to start and check that it is printing OK M.84
Wait - printing large objects can take an extremely long time
ins3DMinipronsole.txt - May 23, 2019 version ins3DMinimaint.txt - Jan.
2, 2020 Disassembling & unclogging the printhead - Note: All bolts are
hex bolts unless otherwise stated\*\*\*Incomplete preliminary
version\*\*\* U.1 Unplug the Mini U.2 Discnnect the USB cable U.3 Lift
the Mini down onto a table U.4 Remove the 2 bolts from the top of the
printhead mount (above horizontal rod) U.5 Remove the cover U.6
Disconnect the newly exposed connector U.7 While holding the printhead,
remove the 3 big bolts & washers from the back of the mount (printhead
will come off) U.8 Remove 2 or 3 bolts holding motor (motor will come
off) U.9 Remove big nut holding big black gear U.10 Remove washer U.11
Remove bearing U.12 Remove gear (with washers, bearing, & black washer
on it) if possible U.13 Remove bolt holding tiny fan (fan will come off)
U.14 Remove 2 bolts at bottom holding fan together (fan will come off)
U.15 Remove 2 bolts holding base of fan (base will come off) U.16 Remove
2 bolts with washers that hold printhead together (printhead & nuts will
come apart) U.17 Remove any stuck filament from the gear area by pulling
on the filament & turning the gear (if stuck in place) back & forth
Temporary - reverse steps to reassemble; the fan end of the bottom part
goes to the right, the gap in the metal piece goes in the back, the
wires to the hot end go in back to the right, & the "tail" (motor
holder) on the top piece goes to the right
