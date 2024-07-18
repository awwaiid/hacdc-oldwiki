I thought it would be good to keep a log of what's going on.
Contributions encouraged. Note that many entries extend into the morning
of the following day. Aug. 14, 2018 The box2 print on the Taz had
finished but was about a mm short, presumably due to a likely z axis
skipping problem. I later stopped someone else's print because filament
had stopped extruding, then noticed that the new filament guide tube was
missing & the reel, which had been changed (light green), was on
backwards. I fixed the reel and the print worked (but looked sloppy). I
found the missing tube on the previous reel (white), reinstalled it,
and, after adjusting the printhead height, started another box2. I also
redesigned the probe mount for the Taz (probemount2A.escad &
probemount2B.escad (both at renderadmin/ImplicitCAD/radioshack_box)).
Neither regular printer was working. Aug. 16 The box2 print failed due
to the same intermittent connection failure that's been plaguing the
printer. Had delayed monthly meeting. Julia worked extensively to fix
the z axis skipping but the z axis now keeps getting badly out of level
between the 2 sides so the Taz is unusable. On the other hand, after
turning on the controller (it was off but I think it was on on Aug. 14),
both regular printers are now working. Aug. 20 Julia located a good
design for a replacement extruder for the Ultimaker. Julia worked on the
Taz. It it now working but the z axis still seems to be skipping & the
intermittent disconnect problem is probably still there. There is now a
box for RODS. Caution: It is dangerously topheavy. Aug. 23 A box again
printed successfully but was a mm short. Julia rebuilt the Taz. Started
another box but the filament stopped feeding; shut printer off. I added
documentation to the Wiki on the laser cutter but unfortunately broke
the front panel (flimsy plastic); I was able to sort of fix it by adding
washers. Sept. 1 Rewired laser cutter (details in Cheap Chinese Laser
entry). The laser should now be ready for testing by an expert. Several
people from Nova Labs visited. They said Nova Labs would probably help
HacDC fix broken equipment (if we can get it there). Sept. 3 Tom showed
up to test the laser cutter. Manual firing worked but safeties did not.
Got computer control of mirrors working but computer did not fire laser.
See Cheap Chinese Laser entry for details. Due to the Wiki being
uneditable the log was not updated. To summarize some of what happened:
Julia replaced the power supply for the 3D printer computer monitor
which may have been causing the random printer disconnections. She found
that one roll of filament was causing problems because it needed to be
extruded at 230 C (no simple way to test this). She also added heat
sinks on the Taz z axis controller & stepper motors which solved the
skipping problem. The Wiki was cleaned up (causing the above-mentioned
uneditability). A test piece (the "sphinx") for the new Ultimaker
extruder was printed. Oct. 4 The basement was found open & the lock for
the outer grate is missing; it was temporarily replaced with a
combination lock (contact Julia if you need the combination). Oct. 5
There was considerable chaos with Nick & people looking for him showing
up at different times (finally resolved). The phone doesn't work. New
parts for the Taz z axis are here. The science event list was finally
updated (about time). Started printing a box4. Oct. 8 Phone is working.
box4 & an Arduino cover printed well; started a box3. Finished design
(still need to set values) for z-x rod joint for improved Taz z axis
drive & the sphinx. Oct. 9 box3 printed well, started another. Only 4
people (including a new member) at the monthly meeting; little to
report. Finished design for general pulley mount. Oct. 11 box3 failed
due to filament stripping. Successfully printed stenograph machine
stand. Started printing test body for new Ultimaker extruder. Fixed Cura
so it will work for Rostock; tabletop computers D8PGDD1, 1M0QJH1,
5VVYKH1, & DJ7VKC1 now work. Determined that problem with some faulty
tabletop computers was the USB drive and rewrote one drive. Created new
HacDC hacks entry on Blabber to document fixes like how to change the
cordless phone ring & fix Cura. Oct. 15 Extruder body print failed due
to filament stripping but several other prints worked. The Algix
filament was found to print well at an unusually low 180 C. Julia worked
on the Rostock. Oct. 18 The Taz jammed & Julia cleared a clog from the
printhead. The Algix filament did not print satisfactorily. A print with
leftover filament worked but a new roll of filament had problems with
stripping. A member swapped a nonworking (regular) Kodak printer for a
working (after a little work) Epson one. A visitor tried to use the CNC
mill (note that the parallel cable connects to the upper connector on
the computer) but the y axis would not move. Oct. 19 The filament on the
Taz may require a higher temperature; testcube printed fine at 225 C.
The boxes have been recompiled for the Rostock (box1t32Rf.gcode etc. in
/ImplicitCAD/Radioshack_box on renderadmin) and the zero-thickness
problem eliminated. Tried to print a box3 at 225 but the filament
started feeding erratically and the printhead now seems completely
jammed like before. Oct. 22 Julia worked on both the Taz & Rostock.
Additional cleaning of the feed gear and shifting the printhead down
seems to have fixed the Taz problem (which may be the result of a tiny
fan starting to fail); also the current filament should be printed at
229 C. The Rostock works but the fan may need to be turned off (set fan
speed to 0) or down and there seems to be a loose connection (causing
the temperatures to read def). Started printing (Taz) test body for new
Ultimaker extruder. Oct. 23 HacDC has 2 new voltmeters (labeled HacDC 1
& 2). Extruder body test print successful. Attempt to print a box4 on
Taz failed, possibly since it started at 215 C. Cleaned feed gear &
successfully started a box3 at 229 C. After a false start printed a box1
on Rostock. Rostock printhead will not go above \~210 C and will drop
when fan comes on, possibly crashing the print (def problem mentioned
above). Immediately set fan speed to 0 when it comes on (typically when
the first layer is completed). Started a box2 on Rostock. Oct. 25 Both
boxes printed successfully. The Rostock temperature will plummet & crash
the print if the fan is at 30%; at 25% the temperature doesn't seem to
go over around 218. After a false start part of a kayak holder started
printing OK on the Taz. Another object was successfully printed on the
Rostock but an attempt to print another box resulted in everything going
wrong - the printer behaved erratically, the printhead scraped the tape
but then was in the air after being adjusted, the outer tube came off
the extruder, & the short outer tube piece with a burnt end in the
printhead clogged at the unburnt end. Oct. 29 Kayak holder part printed
successfully. Nick dropped off 2 computers. Julia fixed the Rostock and
found that the CNC mill was clogged & needed cleaning. Found that
ImplicitCAD seems to get stuck on a certain rotate. The Taz printed
another (small) object and started printing another copy of the sphinx
(first copy is missing) while the Rostock started printing a box1. Oct.
30 Sphinx & box1 both successful. Started a box3 on both printers - the
Rostock is printing wobbly. Put big metal case under table by SEM with
computers inside (but wiring should be adjusted). Killed 2 flying bugs
over the last 2 days (hopefully that's all of them). Nov. 1 Both boxes
printed. The distortion (about warp factor 3) with the Rostock was from
a loose printhead - fixed. A couple first-timers visited. Julia reflowed
the graphics chip from an iMac G5 after a replacement for the badly
burned-out halogen bulb for the soldering system was found in the
basement but didn't have time to complete the repair. Some small items
were printed on the Taz. Started printing another box3 on the Rostock &
a test of the redesigned sphinx for the new Ultimaker extruder on the
Taz. Nov. 5 The sphinx printed but the box3 stopped partway thru; both
printers seem to have disconnected (the Taz after finishing), possibly
due to a power fluctuation. The iMac repair worked (amazing) after a
couple damaged connectors were fixed. Another small Taz print worked
along with a test piece for the improved Taz z axis and a box4 was
started on the Taz & a box2 on the Rostock. Tom got a new laser printer
working (HP_Laserjet_Professional_P1606dn, can print double sided). An
inkjet printer was successfully disassembled without ruining the
controller. The inner door to the basement was open & the light was on
but the outer door was still padlocked (opened from inside?). Nov. 7
Both boxes printed but there was still some distortion from the Rostock.
Started printing another Taz z axis test piece & a box4. Nov. 8 Both
prints worked. Small prints were done on both printers. A modified z
axis test piece was printed on the Taz and the next version started. The
Rostock again had a problem with not moving, not as bad as last time but
it still seems to have caused the printhead to clog. Nov. 11 Test piece
printed. Air conditioner was on - why? Printed an improved test piece -
very close to final form. Started a box3 Nov. 12 Box3 printed. Printed a
revised test piece. Julia unclogged the Rostock & found that the
printhead heaters had weakened greatly (replacements ordered). The
partially disassembled printer from Nov. 5 was apparently ruined. The
problem with the intermittent failure of the Rostock to move may have
been due to loose belts which have been tightened. The Rostock fan power
supply was left unplugged to avoid having to turn the fan off (why
didn't we think of this foolproof solution before?). The Rostock clogged
repeatedly but finally worked (the third time's the charm). Another
version of the Taz test piece was printed and seems perfect. The Rostock
print crashed again - apparently the power supply is for another fan
connection that isn't being used (so much for foolproof). (That power
supply is actually for a fan on the extruder & was later plugged back
in.) The belt tightening & unclogging procedures for the Rostock have
been documented. Started box3s on both printers. The missing bathroom
key turned up on the floor by the Taz. Nov. 13 Both boxes printed.
Monthly meeting canceled - too few showed up. One visitor who was
interested in repairing an old radio. Taz y-axis motor mount designed
(but most parameters need to be added). Started a box2 on Rostock & box4
on Taz. Nov. 15 Both boxes printed but the box2 was a bit short because
the Rostock ran out of filament. Two new people visited. Assigned values
so a trial version of the Taz motor mount is ready to print. Printed a
production version of the Taz z axis joint (but a minor change should be
made and the position of the rod hole may also need to be changed).
Printed half of a coupler for the new Taz z axis rod & started the other
half. Nov. 19 Coupling printed. Small items printed. Installed coupling
on testbed Taz; satisfactory. Measured rod position & adjusted z axis
joint design accordingly. Designed improved generic coupling, printed
test piece, adjusted design, & printed production version. Started
printing new version of joint. Nov. 23 Z axis joint printed & it was
installed on the testbed Taz & measured; some adjustments were made to
the design and, after printing another coupling half, the revised joint
was printed. It was just right so started printing another. Nov. 26
Joint printed (the filament broke leaving less than a foot left when the
print finished, a clear violation of Murphy's Law). Julia dropped off
filament for the Taz & Rostock, and parts. Printed 2 coupling halves
(Taz, leaving about a foot of unused filament on one reel) & test motor
mount for 2nd Taz (Rostock). Started another joint (Taz) & endpiece for
2nd Taz (Rostock). Nov. 29 Joint & endpiece printed. One hole in
redesigned coupling turned out to be too big & at least one motor rod is
notched; redesigned coupling accordingly and printed notched version.
Found that ImplicitCAD would not compile some rotates because it ran out
of RAM. Belt was installed on one side of the optical table. Started
redesigning printer endpiece & motor mount as single stronger piece. The
Rostock jammed extremely badly. A couple small items printed on the Taz.
Started printing unnotched half of coupler. Dec. 1 Coupler printed.
Installed revised coupler on 2nd side of testbed Taz. Coupler seems fine
but rod was off by about .5 mm so joint does not seem to be exactly same
on both sides. Printed another coupler half & started a 2nd. Dec. 3
Coupler printed. Julia worked her magic & got both the Rostock & CNC
mill working including replacing the failing heaters in the Rostock
printhead (so the fan should no longer be turned off). Printed 3 more
coupler halves. Started a box 2 on Rostock & box4 on Taz. Dec. 6 Boxes
printed. Was able to move new z axis on testbed Taz. Julia brought in 4
laptop video cameras but was unable to get any of them to work yet. Test
print of body for new Ultimaker extruder brought in. Installed new z
axis parts on Taz; rods were off by \~1.7 mm vs. \~.5 on the testbed
Taz. New z axis works but printer needs to be adjusted - DO NOT USE the
Taz. Started a box4 on Rostock. Dec. 10 Box printed. Started a box1 but
it failed because one of the arms came loose at the top - fixed. One of
the upgraded rods on the Taz wobbled badly which turned out to be due to
an old part that was known to be warped. Shimming it with washers mostly
eliminated the wobble. Taz has been recalibrated and is ready for use
(so the z axis upgrade project has been successfully completed!). The
"supercomputer" originally built to compile a huge fluidics chip was
brought back in operation. Preliminary design of the motor mount
endpiece for the Taz is complete. One of the laptop cameras was found to
be incompatible with the current version of Linux altho a driver existed
for it. Started printing box1s on both the Rostock & Taz but the Rostock
stopped dead & the 3D printer computer will not respond (screen stays
black) altho the Taz is still printing away normally. Dec. 11 Box1
printed but had a small shift part way up. 3D computer worked after
restarting & reconnecting USB cable. Started a box4 on Rostock and a
test piece for the new Taz motor mount end on the Taz. Found that Cura
works for the Rostock on computers 1LDNKH1 & 7KDNKH1. Dec. 13 Test
endpiece & box4 both printed. Corrected flaws in endpiece and, after a
series of infuriating false starts, and discovering that excess belt on
the Taz bed was snagging the main part of the belt and folding it so it
snagged itself instead, started printing the revised endpiece & the
other (pulley) endpiece. Dec. 17 Both parts printed. Designed & printed
test piece for pulley mount for 2nd Taz. Modified endpieces & started to
reprint both. Dec. 18 Both parts printed. Some parameters were corrected
but there are unresolved problems: The pulley sticks out of the side of
the pulley mount which will prevent it from fitting into the endpiece,
the new belt is only about 12 mm below the top of the endpiece but the
bottom of the pulley mount side is about 12 mm below the top of the
endpiece, & the notch for the belt at the motor mount is too narrow and
cannot be made much wider without reaching the bolt slots. Monthly
meeting was fairly well attended. HacDC's rent will be going up
significantly posing a serious problem. There was also a significant
cost resolving the legal issue with Nancy. Small item printed on Taz.
Started printing latest test version of pulley end & mount for Taz. Dec.
20 Objects printed. Pulley endpiece redesigned which should solve all
the problems. A visitor wanted help developing a sleep aid light.
Started printing latest test endpiece. Dec. 24 Endpiece printed. Broke
testbed Taz endpiece pulley mount trying to remove pulley for
examination but was able to remove pulley, make necessary measurements,
and complete design of the pulley mount. Printed test pieces for 2
different versions & started a box3. Dec. 27 box3 printed (with hardly
any leftover filament, another violation of Murphy's Law). Julia brought
more filament (1 reel for Taz (seems to work at 215 C) & 2 for Rostock)
& a high-resolution still camera (entrusted to Bobby). She installed the
test pieces in the testbed Taz with satisfactory results; adjustments
were made to endpiece designs. Piece holding belt to bed needs to be
replaced. Small drone camera mount printed. Printed production version
of pulley mount for testbed Taz and started motor endpiece and (to use
up remaining filament) a box1 on Rostock. Dec. 30 Objects printed, but
motor endpiece had lifted off bed; Julia had started another that
printed with a shift and some possible separation. Small item printed.
Started the production version of the pulley endpiece and a hopeful
replacement for the belt-bed joint. Dec. 31 Endpiece printed but it &
joint were backwards (WARNING: Bobby is terrible at thinking in 3
dimensions) altho basic idea of new joint was found to work. Another
test joint was printed and design further adjusted. Heater installed in
testbed Taz. Rather chaotic time with Julia's going-away party
simultaneous with trying to get major work done. Adjusted level of
Rostock bed with significant improvement (but need to document
procedure). Started printing corrected pulley endpiece & box2. Jan. 2,
2019 Objects printed but endpiece lifted off bed; will hopefully still
be usable. Added Rostock bed leveling to instructions. Printed another
test joint. Replaced right bed leveling bolts on Taz with slightly
longer ones to make adjusting easier. Started printing another version
of the joint & a box4. Jan. 3 Objects printed. Test joint seems fine;
belt attachment method seems to work very well. Several items printed
but multiple object print failed because Taz ran out of filament -
always check & it is best to print one object at a time; it should be
faster & if something goes wrong you won't end up with multiple failed
prints. Tom replaced the keyboard on a visitor's laptop. Jan. 5
Installed motor endpiece, pulley endpiece, pulley mount, & belt-bed
joint in testbed Taz. Appears satisfactory; made a few minor adjustments
to designs. Jan. 6 Julia took the Taz. Jan. 7 Tom did an amazing job to
get the testbed (now only) Taz working under manual control (but it
needs to be calibrated as well as set up for computer control). Some
Ultimaker extruder parts printed but another print stopped dead - the
dreaded disconnect problem. Jan. 8 At the monthly meeting the entire
contents of the basement were declared outgoing so a major clearing out
can be done, possibly at the end of March. If you want anything in the
basement mark it or otherwise make it known. (The miter saw, one fire
extinguisher, & a clip-on light socket are on loan from Bobby.) Jan. 10
Several visitors. One wanted to print rubber with the Mini but it
wouldn't connect. A print on the Rostock failed because the design was
too thin. Kevin got the Mini to connect but didn't get it unclogged &
was unable to get the replacement Taz to respond. Installed setscrew in
Taz endstop. Some sorting done. Jan. 17 A visitor tried to do a test
print on the Rostock but it didn't work, probably due to a software
problem since the old testcube printed fine. Kevin got the replacement
Taz to move and discovered that it is version 1 rather than version 2 &
a bunch of documentation for it. Jan. 18 After some problems getting the
TV screen to work (documentation needed), movie night (The Martian) was
successful altho turnout was rather low. Hot melt glued USB drives to
several tabletop computers & some sorting was done. Jan. 21 It is now
possible to routinely connect to the replacement Taz & give it commands.
Attempts to read the current values of the parameters (which should be
done before the firmware is updated) have been unsuccessful. Documented
inductive sensor for Taz autoleveling in 3Ddoc.txt. Jan. 28 Two people
successfully printed a bunch of small objects on the Rostock. Feb. 4
Several objects were successfully printed on the Rostock & Mini. Design
for Taz belt-bed joint was adjusted to recover 10 mm of y capacity. Feb.
7 A bunch of rubber objects were printed on the Mini. Feb. 11 There was
a moderate leak in the basement. The source is unknown; the leak had
probably stopped when it was found. Object printed successfully. Feb. 14
Kevin was able to read & modify the firmware for the Taz. End cap for
new reel holder for the Mini was printed & the holder started. Feb. 15
Print failed; the intermittent printer disconnect problem recurred (the
print separated from the bed as well). Trying long prints is not
recommended until this problem can be corrected. Movie night OK. The
space behind the basement wall is not unexcavated dirt but a concrete
tunnel. HacDC may be able to use this for storage. Feb. 18 Object
printed. Kevin was able to change the calibration of the Taz z-axis but
the results were inconsistent. Started printing (after unclogging
Rostock extruder; 160 seems to be too cool when removing the old
filament, try 180) improved version of the new reel holder for the Mini.
Feb. 19 Reel holder printed, was installed on Mini, & is almost perfect!
Fairly busy monthly meeting. Gasket printed on Mini but needs redesign.
Feb. 21 HacDC has disposed of the CRISPR refrigerator. Feb. 22 The door
to the basement was open (but the grate was locked). Temporary access
has been cleared to the corner behind the SEM. Several power cords that
didn't go to anything were removed, significantly reducing the snakepit
coefficient. Necessary measurements were marked and the remaining 3
reinforcing boards (remember those) for the shelves were cut. Bobby's
miter saw & clip-on light (bulb left on shelf) have been removed (only
thing of his left is the fire extinguisher). Boards for shelves by door
are OK (still need to be installed) but board for corner behind SEM was
cut wrong (too long) & will have to be recut. Feb. 23 The basement was
cleared out. Much (maybe too much) of the contents were left outside the
church by the trash bins. The (2nd) replacement air conditioner was
installed. HacDC proved helpful to the Positive Force music show held
that day. An attempt to install the recut reinforcing board failed
because the existing shelf board was warped and the large C clamp could
not be found; the reinforcing board was also badly bowed. Another
(long-lost) copy of the board showed up that was straight; it was marked
and will be used instead. Feb. 25 Small object printed after the first
attempt failed when the filament broke & the 2nd attempt failed when the
filament tangled on the reel. One small reinforcing board was installed
on the shelf above the door. Feb. 28 Kevin tried to get the Ultimaker to
work but failed; the feed tube apparently needs to extend further into
the extruder. Some stuff was cleared out of the space. The last 2
reinforcing boards for the shelving were installed (a little painting
remains to be done). March 4 After over 3 years, the shelves are finally
finished. The floor was vacuumed while the corner behind the SEM was
accessible. Other than possible sealing around the new air conditioner
all work in the corner has apparently been completed. Several visitors
came by. March 7 Sealing done around new air conditioner; table & SEM
moved back. Many new visitors. Knobs printed on new Monoprice printer.
March 11 Object printed on new printer. March 12 Sparsely attended
monthly meeting. Some largely cosmetic rearranging of the wiring over
the sink was done but the internet no longer worked. March 14 It turned
out that the power strip right above the sink had gotten turned off;
flipping the switch restored the internet. Two people brought pies (Pi
Day). Drone flew around the space. Extensive rearranging of the wiring
was done; this time the phone & internet both worked afterwards. The
power strip directly over the sink is no longer required for the
internet (the long power strip one shelf up definitely is; leave it on)
preventing a recurrence of the previous problem. March 15 Almost all
items remaining in the back part of the basement were moved to the front
except a large whiteboard, the CNC mill, & the contents of the CNC mill
supply shelf. Movie night: Gravity. More wiring was sorted out & network
connections mapped. It was found that the TP-Link Switch is connected to
a 12V supply instead of the correct 9V; this should be corrected. March
18 Objects printed on Monoprice after adjusting printhead height & on
Mini with some delamination. Preliminary network wiring diagram
prepared. TP-Link Switch power supply replaced with correct 9V supply;
internet & phone both worked afterwards. March 21 - With
light-to-moderate rain, there was a puddle a couple feet wide over the
drain outside the basement, indicating that this was the probable source
of the leak. Mike will try to snake the drain. Object printed on
Monoprice. Remainder of HacDC network wiring was traced and labeled;
numerous cables & power supplies that didn't go anywhere were removed
(and temporarily piled up under the electronic workbench). Renderadmin
computer was crashed in the process but Kevin was able to restart it
successfully. March 25 Network wiring diagram (upstairs; the basement is
completely separate) completed (& it fails a sanity check). Power
supplies drawer organized; supplies now have color-coded twist ties (AC
is black, solid color is voltage (i.e., white=9V), white with bands is
thick band-narrow band with thin ring if a decimal (i.e., wide brown,
gap (invisible narrow white)-green ring is 19.5V). Object printed on
Mini after printhead was unclogged. 3D printer computer replaced
(everything seems to work) & test print on Mini worked. March 28 Object
printed on Monoprice. Rostock successfully tested with new 3D printer
computer. Note: To send gcode files to the new 3D printer computer use
scp filetoprint.gcode hacdc@pronterhost.hacdc.org:/home/hacdc with
standard (not 3D printer computer) password. Use Ctrl-Alt-F# to select a
terminal instead of Alt-F#. Pronsole is still pronsole (previous
statement was wrong). Use load /home/hacdc/filetoprint.gcode to load
file once sent. Octoprint is now running providing a completely
different way to use the printers. Documentation will have to be
prepared & existing instructions redone. April 1 Rostock print worked.
New 3D printer computer has been switched to Ubuntu Linux. April 4
Objects printed on Rostock. Preliminary instructions for printing with
new 3D printer computer written (on blabber). April 9 Average turnout
for the monthly meeting. A likely rat was spotted scurrying under the
radio equipment. April 11 Objects printed on Rostock altho there was a
problem with an incorrect dimension but it then jammed. It was unjammed
(if a piece of filament gets jammed in the feed tube unscrew BOTH ends &
use the thick wire feed tube snake (standing up on the outlet box behind
& to right of Rostock) to force the piece out (CAREFULLY use pliers to
force the snake into the tube if necessary)) and successfully reprinted
object. A visitor got a flex sensor to work with a microcontroller.
April 15 Preliminary revised instructions for printing on the Rostock
(with pronsole) completed (at
/ImplicitCAD/radioshack_box/ins3DRostockpronsole.txt on renderadmin
computer). April 25 Rostock jammed with filament apparently melted to
feed tube connector. Bobby gave up; James resorted to cutting off the
connector (which can't be done much more without shortening the tube too
much) and got the Rostock extruding again. However, 2 attempts to print
both failed when the NOZ: def problem recurred (with a thermistor
disconnect error message on the computer). April 29 It was found that
the USB connector on the Monoprice 3D printer had broken. It may still
be possible to use the Monoprice with an SD card but not otherwise. A
visitor worked on a product he is developing for motorized skateboards.
Small object printed on Ultimaker. 4 prototype "DNA" pieces printed on
Rostock. May 2 4 small "puzzle pieces" representing the 4 nucleotides of
DNA have been designed. Besides making a fairly good schematic
representation of DNA, they are good test & example objects that only
take roughly 5 minutes each to print. They are available in the
ImplicitCAD/radioshack_box directory on the renderadmin computer as
dnaa.stl, dnac.stl, dnag.stl, & dnat.stl as well as compiled for the
Rostock as dnaaRf.gcode etc. A visitor worked on getting flex sensors
for a glove to work with a microcontroller. May 5 Moderately sized
object printed on Rostock. Numerous DNA "puzzle pieces" printed to
perfect design. DNA & RNA (rnaa.stl, rnac.stl, rnag.stl, rnau.stl, &
compiled Rostock versions (rnaaRf.gcode etc.)) versions are complete.
May 9 Instructions for printing on the Rostock with the new 3D printer
computer using pronsole (the old way) are in the Rostock (yellow) folder
with the 3D printer instructions (full & quick versions; also available
in the ImplicitCAD/radioshack_box directory on the renderadmin computer
as ins3DRostockpronsole.txt & ins3DRostockpronsolequick.txt). After
repeated attempts, the Mini successfully printed a small object. The
failure of attempts to print a large object on the Rostock was found to
be due to the gcode setting the bed temperature to 60 C after the first
layer had printed, crashing the program since the Rostock doesn't have a
working bed heater; changing the gcode solved that problem. May 14 The
monthly meeting was mainly about getting ready for the Dupont
Underground event May 16. The instructions for using the Mini (&
Rostock) with pronsole have been updated (ins3DMinipronsole.txt &
ins3DMinipronsolequick.txt in the ImplicitCAD/radioshack_box directory
on the renderadmin computer). An introduction to the DNA & RNA "puzzle
pieces" has been written (dna.txt also in ImplicitCAD/radioshack_box).
May 20 Some more DNA & RNA pieces were printed and the introduction
rewritten. Pieces bent, were very difficult to remove brim from, & did
not fit together properly. May 21 Scheduled planning meeting never
happened; only 1 person showed up. More pieces printed satisfactorily;
problem was largely due to removing pieces before they had cooled (which
seems to take much longer when room is warmer). Instructions for using
Rostock & Mini with pronsole revised again. May 23 Print on Rostock
stopped. Several more DNA pieces printed (works much better without
brim) but will be redesigned. Large print on Ultimaker failed due to
separation from the bed. Instructions for Rostock & Mini corrected. June
3 The clogged connector on the Rostock feed tube was drilled out (use a
5/64" bit in a hand drill) but a swollen piece of filament remained in
the tube & one of the connectors came off when it was pulled out.
Putting the connector back on didn't work. The feed tube was replaced
but the short tube in the printhead was also clogged. Drilling with a
1/16" bit made it possible to remove the tube & further drilling (with
both bits) managed to clear it. The Rostock successfully printed a test
cube. The z-axis switch on the Taz was tested & it works. June 6 A
visitor worked on a stenography machine computer mount. DNA piece
redesigned but did not print properly; the support (both with Everywhere
& Touching buildplate) did not print. June 10 It was realized that the
extrusion rate of the Rostock had not been fully adjusted to compensate
for the fudge factor; it needs to be divided by the square of the fudge
factor rather than just the fudge factor. The new value is
Steps/MM:680.4 (not precise). The DNA piece design was further modified
but the support still would not print even with the angle for support
set to 0. The Monoprice board needs to be replaced. The Taz z-axis
problem still seems intractable. June 11 Routine monthly meeting except
HacDC website was updated. Test prints on the Rostock also failed to
print support with thin or short overhangs. It was found that reducing
the Shell thickness in Cura solved the problem for thin overhangs but
not for short overhangs. Large bread slicer part printed on Ultimaker;
partially detached from bed but may still be usable. Rostock maintenance
instructions (ins3DRostockmaint.txt) updated including instructions for
trying to clear filament clogs. June 13 Loose connector on Taz fixed
which seemed to solve the z-axis endstop problem. With considerable
fudging (Cura gcode wouldn't work properly) the Taz was made to print a
test object. Z-axis well calibrated; x & y still need adjusting. Rest of
Rostock instructions redone (but still need instructions for printing
with new method & new instructions for new 3D printer computer). Another
part for bread slicer printed (separated again but usable) & yet another
started but the extruder failed. The missing support appeared when the
size of the DNA piece was doubled. June 17 Taz printed good cube.
Ultimaker fixed & large print started. Rostock clogged again but a group
effort got it going again (maybe HacDC will be able to keep things going
without Julia). Final (hopefully) design of DNA piece printed (A) & 2nd
piece (T) designed & printed (both double size). June 20 Several guests;
one started learning to solder, another how to 3D print. Another bread
slicer part printed on Ultimaker. All 8 DNA & RNA pieces now in final
form but problem of support not printing is unresolved; must be printed
double sized (dnaa2Rf.stl, dnac2Rf.stl, dnag2Rf.stl, dnat2Rf.stl,
rnaa2Rf.stl, rnac2Rf.stl, rnag2Rf.stl, & rnauRf2.stl prefudged for the
Rostock) to avoid that problem; several were printed. Paper tray for
copier stopped fitting; problem identified and fixed (fix still needs to
be documented). June 24 Object printed on Rostock. Visitor wanted to use
a laser cutter. DNA & RNA pieces redesigned again & finally completed;
added some modified RNA bases (T (same T as in DNA, found in tRNAs) &
pseudouridine (psu; downright weird, found in many RNAs); most were
printed (still double size). June 27 Object printed on Rostock. Test
object printed on Ultimaker and firmware updated. DNA piece programs
cleaned up, modified base I added, & numerous pieces printed. DNA piece
documentation (dna.txt in ImplicitCAD/radioshack_box directory on
renderadmin computer) updated; double size versions ready for general
use. Documentation on adjusting the Brother printer paper tray added
(disregard 1st try) to HacDC hacks on blabber. July 1 Light had been
left on in entryway. 3 guests showed up. Some of the DNA pieces were
resigned yet again; problem of support not printing was eventually
solved by including support in the object itself but even then the
support did not print if it was .5 mm or less thick; .6 printed.
Numerous pieces printed. Standard size C,G, & T for DNA and C,G,U,T, &
pseudoU for RNA now ready to use. July 6 Because of poor print quality
of small objects on the Rostock an effort was made to optimize the
settings (dnatRf.stl makes an excellent test object). The temperature
was reduced from 215 C to 205, 200, or 195, the shell thickness reduced
from 1 mm to .5 (with the Fill Density increased to 90), or the filament
feed rate reduced from 680.4 Steps/MM to 646.4. 205 C seems best for the
current filament with no change to anything else. DNA pieces finally
finished (but still have to convert some of the .escad files to .stl
files). Numerous pieces printed. Added ddC, a drug used against HIV also
used to sequence DNA. Updated "instruction manual" for the pieces
(dna.txt in /ImplicitCADS/radioshack_box directory on Renderadmin
computer along with the .escad & .stl files). July 8 Several (paper)
printers were fiddled with. DNA pieces further revised & finally (famous
last words) finished altho not all of the .escad files have been
compiled into .stl files (so there may be a few typos). See (revised)
dna.txt for details. July 9 Several visitors toured the basement.
Monthly meeting well attended, uneventful, except for noting that HacDC
will use up its cash reserves in 5 months at the current rate. DNA piece
designs compiled (1Rfs (standard with support for Rostock), 2Rf (double
size for Rostock), 1s (standard with support), & 2 (double size) .stl
files) & errors corrected; many pieces printed. July 11 Outer door was
open & door to roof was ajar but cover was on opening to roof (earlier
in the week someone had been working on the roof). Monoprice printer
connector fixed but there is another problem. Plans made for prototype
3D printing course. One final DNA (actually RNA) piece added (Cm),
programs cleaned up, & dna.txt updated (see for details; gcode files can
be used to determine best printing temperature for Rostock filament);
numerous pieces printed & complete set given to HacDC. July 15 Yet
another RNA piece (m1I) added, dna.txt documentation finalized, &
numerous pieces printed. Project completed (at last!). Trial 3D printing
class held successfully (but test print failed at last minute when
printer was mistakenly unplugged). Science event list finally updated.
July 18 Taz printed a slightly-out-of-calibration cube. Repeated
attempts to print RNA pieces revealed that there is an intermittent
(which is why the Taz sometimes didn't respond at all) & the z axis has
a skip (not sure which side). When the Taz worked the flat part of the
pieces was really good but the vertical part looked like a tumor (worse
at 215 C temperature but still terrible at 200 & 195). It might need
better filament, another fan, or something else (what it really needs
is, of course, Julia). July 22 It was determined that the Taz moves well
at standard speed when commanded by gcode but moves roughly when told to
move at a lower speed either by gcode or with the move command.
Instructions for 3D printer computer updated (about time). July 25
Attempt to print on the Ultimaker failed because of an apparent bug in
the slicer. Test prints on Rostock showed that changing the size of the
print area had no effect on the miscalibration problem. July 29 A
visitor had a long discussion about getting started (i.e., electronics).
Tom returned. Aug. 1 The Ultimaker was printing too stringy. Adjusting
the settings helped. Aug. 8 Large object started on Ultimaker. A visitor
was given an extensive introduction to 3D printing. Aug. 15 Another
large object started on Ultimaker (previous successful). Aug. 23 Movie
night (The Right Stuff) sparsely attended. First piece of preliminary
documentation on ATmega328P microcontroller written (Micro1.txt in
renderadmin/ImplicitCAD/radioshack_box directory). Aug. 26
Microcontroller documentation partially rewritten as micro1.txt.
Possible rodent spotted in space (too briefly to positively identify).
Aug. 28 Microcontroller documentation additionally rewritten as
micro2.txt. Aug. 29 Tristan left a bunch of stuff to be retrieved
Monday. micro2.txt rewritten. Event list mostly updated. Sept. 2
hacdc-openwrt did not work (HacDC Channel 1 did). micro2.txt rewritten
yet again. Sept. 5 micro1.txt & micro2.txt rewritten again.
Modifications made to 3D printer computer; Rostock now will not move
horizontally. Window above left air conditioner was found to be open at
top & closed - should be checked regularly. Sept. 9 Minor changes made
to micro1.txt & micro2.txt. Rostock now moves in all directions but
didn't print properly; height may be off. Can't connect to Mini. No
change with Taz. Synthesizer worked on. Sept. 10 Monthly meeting was
well attended but uneventful, several new members. Major effort launched
to move files from obscure ImplicitCAD/radioshack_box directory on
renderadmin to wiki; see wiki.hacdc.org/index.php/Categories Sept. 19
micro1.txt & micro2.txt heavily rewritten. Had visitor from Dublin,
Ireland & another who was looking for a laser cutter. Sept. 28 The
renderadmin computer would not connect. micro1.txt & micro2.txt heavily
rewritten yet again; now available at
wiki.hacdc.org/index.php/Documentation-ATmega_microcontroller Sept. 30
Attempt to fix Rostock ruined printhead nozzle. Unable to fix
renderadmin computer. Large amount of documentation added to wiki - 3D
printing, CAD, equipment (see wiki.hacdc.org/index.php/Categories). Oct.
3 Renderadmin computer fixed. Started tracing laser cutter power supply
circuitry to compare with extra power supply previously traced. Oct.4
Found apparently leaky diode in laser cutter power supply & disconnected
(not needed; for on board TEST button). Still have to finish
reassembling, but laser cutter may be fixed! Oct. 7 Further testing
confirmed that D15 in the power supply was leaky, which would be
expected to cause precisely the firing-when-it-shouldn't problem that
had been observed. This is basic Electronics 101 stuff that should have
been found a year ago, demonstrating that (1) As claimed, Bobby is
suffering from a severe case of overload-induced incompetence and (2)
There is a severe lack of electronics know-how in HacDC since someone
else should also have found this. Traced out circuit board for power
supply in laser (designated PS1); it is almost identical to the extra
power supply (PS0) in the cabinet. Kevin started working on the software
for controlling the laser cutter but it wouldn't compile. The power
supply was reassembled & temporary spacers installed so the controller
resting on the power supply no longer blocks the power supply fan.
Testing showed that the enable (P) signal now correctly controls the
laser so the safeties work; however, no cutting was observed, probably
because the optics are totally misaligned, dirty, or fried. Instructions
for operating the laser cutter were written and posted on the wiki
(wiki.hacdc.org/index.php/Documentation-Laser_cutter-K40). Someone
brought in some no-longer-usable amazon dash units. Caught a quick
glimpse of a critter scurrying under the amateur radio equipment -
again, DO NOT LEAVE FOOD OUT! Oct. 8 Further testing revealed that
mirror 2 (forward-to-right) is totally misaligned so the beam completely
misses mirror 3 (right-to-down). The laser definitely works; it set
paper towels on fire (oops!). James aligned mirror 2. Instructions for
how to adjust the stationary mirrors added to wiki. Oct. 10 Tom got the
laser cutter computer running but was unable to control the laser
cutter. Oct. 14 Nothing newsworthy. Got 74ACT323 IC to work. Oct. 17
Roof was open (someone from the church had been working up there); after
it was reported to Mike a guard finally closed it. Only 2 people showed
up & little happened. Oct. 21 Work done on synthesizer. Couldn't find
basement keys. Oct. 24 Only 2 people again. There are now fairly
well-located & clearly labeled kill switches for all the 3D printers,
electronics workbench, laser cutter, & microwave. Oct. 25 Moderate
turnout for Movie Night (Hackers). Config file for laser cutter read
from Smoothieboard SD card. Config file sends laser fire PWM to pin 2.4.
Laser cutter had nothing connected to pin 2.4. Fire pin on ACR board was
connected to adjacent pin 2.6. Connector moved. That should fix the old
problem of the computer not being able to fire the laser. Now all that
is needed is to figure out why the computer can't control the laser at
all. Oct. 28 Unable to fix Monoprice 3D printer. Tom got computer
control of the laser cutter movement working and a mechanical problem
went away after moving the laser by hand but the computer still couldn't
fire the laser (even after fixing a possible problem with the
Smoothieboard config file not inverting the signal). Despite problems
with multiple meters being dead, the problem was traced to the ACR board
(signal in, no signal out). An attempt was made to connect the fire
signal directly to the laser power supply but the Smoothieboard SD card
failed. Oct. 31 Only 3 people total. A visitor needed to replace the
driver board on their 3D printer. Nov. 4 Had 2 visitors, one from
India/Japan. Nov. 18 Only 4 people. Regular printer (Brother) wouldn't
print altho it made copies. Nov. 21 No regular open house because of
HacDC Happy Hour event. Minimal people around. A new SD card has been
obtained for the lacer cutter Smoothieboard. Printer still not working.
Nov. 25 New SD card installed in laser cutter but no further progress
made in getting laser to fire correctly. Nov. 28 Started tracing
circuitry on laser cutter ACR board. Dec. 2 Had several visitors
including one from England. There was a small puddle in the middle of
the basement; watch for leaks. Dec. 5 Small turnout. A couple visitors.
Traced more on ACR board. Dec. 9 More work done on visitor's laptop.
Something shorted & damaged a component; computer still seemed to work
but there may be a problem with the screen. Mini didn't work; probably
clogged again. Continued tracing circuitry on laser cutter ACR board but
some traces on PC board are too obscured to follow. Dec. 10 Meeting not
held because of low turnout. Traced more on ACR board (but tracing fire
command seems doubtful because of obscured traces). Dec. 12 Visitors
helped work on laser cutter. Smoothieboard does not appear to be
producing fire signal; perhaps board failed when SD card did. Documented
(wiki.hacdc.org/index.php?title=Documentation-Laser_cutter-K40) how to
directly control Smoothieboard from tabletop computer. Unconfirmed
report that James died! Dec. 16 Started documenting tabletop computers
(wiki.hacdc.org/index.php?title=Documentation-Tabletop_computers). Dec.
23 Tabletop computers 1LDNKH1, 1M0QJH1, 5VVYKH1, 7KDNKH1, & DJ7VKC1 all
now have cura, emacs, meshlab, & minicom installed (the others that were
on the tabletop computer cart (7Y5MPD1 & CPV3HF1) are not usable because
they are missing the USB drive with the OS). A file named installed.txt
has been added with an incomplete list of the software installed on each
computer (which should be updated whenever more software is installed).
Dec. 26 Attempt to use Monoprice via HacDC network failed. Renderadmin
computer would not connect. Dec. 30 It was determined that the problem
with the renderadmin connection was outside of HacDC. (It is possible to
connect by using ssh renderadmin@jobs.local instead.) Jan. 2, 2020
Monoprice works from front panel with SD card (leave in printer) but
format may not work with all systems. Gcode files can be transfered to
the SD card using USB adapter attached to front of printer. Mini
partially (extruder gear but not hot end) unjammed. Documentation added
for computer network & Mini printhead disassembly (partial). Jan. 6
HacDC now has a replacement for the Rostock printhead nozzle but needs a
different mounting piece. The calendar on the HacDC website no longer
works. Jan. 9 Larger than usual turnout, including a couple old members
who worked on 3D printers. The Ultimaker is now working & an apparently
intermittent short in the Taz z endstop was fixed (at least for now).
Jan. 12 New USB drive prepared for one of the tabletop computers that
was missing one. Tom left a miter saw he was working on in the storage
bathroom and used the machine shop. Jan. 16 More work done on miter saw.
Attempt to update tabletop computer failed because of inability to
respond to warning message about GRUB; amazingly, the computer still
worked after being shut off. There was a small leak in the basement.
Jan. 20 Mini unclogged, printed objects. No leak in basement. Jan. 21
Good turnout for monthly meeting including HARC guys. Several new
members joined. Little overall change in finances. Major discussion on
planning for future. Considerable support for getting rid of SEM.
Decided to do a much needed inventory (planned start Jan. 28). Jan. 23
Wiki limited due to maintenance. Jan. 27 Wiki largely fixed. Decided to
schedule electronics lab sessions (see HacDC website) on Mondays. Jan.
28 The inventory turned into a cleanout of the space (not basement) with
lots of stuff going into outgoing instead of figuring out what HacDC
had. The SEM console was largely disassembled. Jan. 30 Visitor worked on
laser cutter. Feb. 3 Visitor worked on laser cutter & got computer
control to move the mirrors again. Monoprice working well using microSD
card (SD card adaptor on front). Carbon monoxide meter showed 0 but
carbon dioxide meter showed high levels that at one point exceeded 1000
ppm which can cause impairment. Feb. 6 Further work on the laser cutter
again seemed to show the fire signal going into the ACR board but not
coming out. Attempting to bypass the ACR board by connecting the
Smoothieboard output directly to the fire position on the power supply
was partially successful - the computer could fire the laser but the
safeties did not work properly. The laser would not fire if the
controller door safety switch was open but once the laser was firing
opening the safety switch did not halt firing (except twice) altho the
switch did halt firing in manual mode and switching from auto to manual
halted firing which did not resume when switched back to auto until the
safety switch was closed. This behavior seemed impossible but later
examination of the circuit revealed feedback that can explain how, but
not why, it happens. Tom dismantled old hard drives. Feb. 7 More hard
drives disassembled. Feb. 10 Turnout poor for electronics introduction.
The laser cutter no longer kept firing when the safety switch was opened
(no idea why). However, it did fire on low when commanded to fire at a
power level of 0. A glow was noticed around the final mirror which was
found to have cracked apart and was replaced. Laser cutter rewired so
that the Beam Current knob will now control the current in auto as well
as manual mode (which will make debugging safer and provide a convenient
way to test a program if it is ever fixed). Feb. 11 Fairly good turnout
for monthly meeting. HacDC has been offered exhibit space at the USASEF
& is looking for ideas on what to show. The laser cutter Smoothieboard
PWM fire output became highly distorted when it was connected to the
power supply fire input. The Smoothieboard output did not seem to be
open drain as it was configured to be; switching to a different pin
(from 2.4 to 2.5) gave open drain but had no effect on the distortion.
There also seems to be a loose contact in the safety switches that
occasionally prevents the laser from firing. Feb. 13 Only Kevin & Bobby.
Kevin found that the printer computer would not boot up. Feb. 15
Moderate turnout for Capture the Flag. Preliminary inventory of space
(not basement) done. Feb. 17 Laser cutter seems to act differently each
time; minimal progress. New extruder installed on Rostock but not yet
working. Radon detector put in basement (but wasn't reset - will have to
start over). Metal saw loaned to HacDC & put in basement. Space
rearranged (mainly VR stuff moved to other side). Tabletop computers
DJ7VKC1, 1LDNKH1, & 7Y5MPD1 updated and update procedure documented
(wiki.hacdc.org/index.php/Documentation-Tabletop_computers). Feb. 20
Masonry blade for new saw brought in. Radon detector showed low one-day
Rn level, reset for long-term reading. Temporary terminal strip
installed in laser cutter to aid debugging but some connections are
inconveniently short. Further testing indicated Smoothieboard output is
not open drain which could be the cause of incorrect firing. Work done
on getting supercomputer running. All working tabletop computers updated
(5VVYKH1 doesn't work, most likely because an update was halted halfway
thru at 3:30AM Tuesday morning) & new file update.txt created giving the
date of the most recent update & any files that were not updated because
they had been modified. Discovered a few cases where programs that had
definitely been installed (listed in installed.txt) were no longer
present. Feb. 24 Hardly any turnout for electronics course. Laser cutter
seemed to work at one point after adding a diode in series with the fire
line to raise the voltage from .3 & 3.3 V to 1 & 4 V. After cleaning up
the control wiring snakepit it again seemed to work (but the safety
switch under the control panel doesn't work reliably). Feb. 27 Ultimaker
not working. March 2 Signal lights for safety switches on laser cutter
added. Computer control of laser cutter worked fine from 3D printer
computer but tabletop computers were unable to control laser cutter.
Laser cutter cut extremely poorly; power was coming out of second mirror
but was barely getting to cutting surface indicating a problem with the
final mirror. Mar. 5 Additional cleaning of the final mirror & lens
fixed the poor cutting by the laser cutter. There is still a problem of
cutting being significantly weaker to the left. Mar. 6 Letting the laser
cutter run longer revealed that it was not moving correctly, probably
because the software control was totally improvised. Mar. 9 Small
turnout for electronics course. Work done on Rostock. There seems to be
a problem with the temperature sensing. The square glass bed broke
(there were plenty of replacements). Mar. 10 Annual meeting with board
election (as a slate). Some rearranging done; switches are now in one of
the Radio Shack drawers divided into push (lots), toggle (lots), slide
(1), rotary (0), & key (2) and LEDs are in a bin above the electronics
workbench. Mar. 12 Church closed for all sizable events; HacDC events
canceled thru at least March 29 - expect few updates. Mike reported that
an antenna on the roof seemed to be leaning precariously. Inner door to
space wasn't shut.
