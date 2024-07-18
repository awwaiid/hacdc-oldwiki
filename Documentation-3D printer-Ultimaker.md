ins3DUltiSD.txt - June 13, 2022 version To print from an SD memory card:
U.1 Sometimes glue (glue stick (PVA)) should be put on the bed; it is
currently unclear when glue should be used U.2 Make sure there is
sufficient correct filament on the spool U.3 Turn on UltiMaker (power
switch is in back on left) U.4 Insert SD card (SD card must be left in
until print is finished) U.5 Select PRINT by turning dial U.6 Press dial
U.7 Select desired file by turning dial U.8 Press dial U.9 Wait for
printer to start and make sure it is printing properly
ins3DUltimaint.txt - Oct. 1, 2019 Leveling: L.1 Turn on power switch in
back if it is off L.2 Select MAINTENANCE by turning dial L.3 Press dial
L.4 Select BUILD-PLATE by turning dial L.5 Press dial L.6 Select
CONTINUE by turning dial L.7 Press dial L.8 Turn knob under front right
corner of bed below printhead until there is about a 1 mm gap between
the tip of the printhead and the bed L.9 Press dial L.10 Turn knob under
back center of bed below printhead until there is about a 1 mm gap
between printhead tip & bed L.11 Press dial L.12 Turn knob under front
left of bed below printhead until there is about a 1 mm gap between
printhead tip & bed L.13 Press dial L.14 Slide a sheet of paper between
printhead and bed (front right) then adjust knob until paper binds very
slightly L.15 Press dial L.16 Slide the paper between printhead & bed
(center back) and adjust knob until paper binds very slightly L.17 Press
dial L.18 Slide the paper between printhead & bed (front left) and
adjust knob until paper binds very slightly L.19 Press dial L.20 Slide
the paper between printhead & bed (front right) again and adjust knob if
needed so paper binds very slightly. L.21 Press dial (Instructions for
changing the filament have been deleted since they are outdated because
the extruder has been replaced) Calibrating the filament feed rate R.1
Connect the USB port on a tabletop computer to the port on the Ultimaker
with the appropriate cable R.2 Login: hacdc R.3 At Password: enter
standard password R.4 If the MATE Terminal icon is on the screen double
click on it and skip R.5-R.7 R.5 Click on Applications (top left) R.6
Select System Tools R.7 Click on MATE Terminal R.8 pronterface R.9 Click
on downward arrowhead under & just to right of help (at top) R.10 Click
on 250000 (connection speed) R.11 Click on Connect R.12 Heat: 185 R.13
If the nozzle is close to the bed or a print: move z 20 R.14 Wait for
the nozzle to heat to around 185 C R.15 Mark the filament at a known
distance from where it enters the feed mechanism (i.e., 120 mm) R.16
Extrude - At Length: enter a distance somewhat smaller than the mark
(i.e., 100 mm) R.17 Click on Extrude R.18 Wait until the Ultimaker
finishes extruding R.19 If the mark has entered the feed mechanism
repeat steps R.15-R.19 with a longer distance to the mark R.20 Measure
the distance from the mark to where the filament enters the feed
mechanism (i.e., 22.4 mm) R.21 Repeat R.15-R.20 using the same distance
to the mark & Length:; if the result is the same skip R.22-R.24 R.22
Follow the instructions at If the filament is not feeding properly: in
ins3DUltiprob.txt R.23 Repeat R.15-R.20 R.24 Repeat R.15-R.20 again with
the same distance to the mark & Length:; if the result is not the same
STOP and get expert help R.25 Subtract the distance to the mark from the
oringinal distance to determine how much filament was actually extruded
(i.e., 120-22,4 = 97.6 mm) R.26 At bottom right left of Send: M503 R.27
Click Send R.29 Find the line that starts echo: M92 & note the number
after E at the end of this line (i.e., 2158.32) R.29 Multiply this
number by the value of Length: (i.e., 2158.32 x 100 = 215832) R.30
Divide the result by the actual length of filament used (i.e., 215832 /
97.6 = 2211.39); this is the new value for E R.31 M92 E# where \# is the
new value (i.e., M92 E2211.39) R.32 Click Send R.33 M503 R.34 Click Send
R.35 Verify that E has the new value (i.e., E2211.39) R.36 Repeat
R.15-R.20 with a longer length (i.e., mark at 205 & extrude 200) R.37
Subtract the distance to the mark from the original distance to the mark
to determine how much filament was extruded R.38 If the actual length is
correct skip R.39; if it is way off STOP & get expert help (if help is
not available set Heat: to off or turn off Ultimaker) R.39 Repeat
R.26-R.35 R.40 M500 R.41 Click Send; the screen should state that the
new value was stored in EEPROM R.42 Heat: Click on Off
ins3DUltimaint.txt - May 8, 2018
