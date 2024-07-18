Tabletop computer terms - move over means to use the touch pad to move
the arrow on the display to the described position click on means to
move the arrow to the described position & then press either click
button type means to type what is described type: means to type the
characters that follow the space after : enter means to type what is
described (if anything) & then press the Enter key (at right) enter:
means to type the characters that follow the space after : & then press
Enter insLaserK40 Instructions for the K40 laser cutter (cheap Chinese
laser cutter) - Nov. 1, 2019 1. Make sure the laser cutter POWER switch
(top panel) is in the OFF position (bottom side down) 2. Make sure the
SAFETIES switch on the laser cutter is in the ON position 3. Make sure
the float switch with 2 ping-pong balls in it is in the bucket in the
cabinet under the laser cutter 4. Make sure the pump is in the bucket 5.
Make sure the end of the 2nd plastic tube (drain line from laser tube)
is in the bucket 6. If water in the bucket does not push the ping-pong
balls up so they close the switch at the top of the float switch add
water until they do (note that the switch is finicky & it may later be
necessary to jiggle the ping-pong balls to get the switch to close) 7.
Make sure the pump is plugged into the power strip at the top right in
the cabinet 8. Make sure the exhaust fan is plugged into the power strip
9. Make sure the computer is plugged into the power strip 10. Make sure
the power cord for the laser cutter (coming down into the right rear of
the cabinet) is plugged into the power strip 11. Make sure the other end
of the power cord is plugged into the back (right side) of the laser
cutter 12. Plug (an extension cord is needed) the white power cord
coming out of the top of the cabinet under the laser cutter into the
long power strip to right of the KILL SWITCH ULTIMAKER WORKBENCH LASER
CUTTER sign 13. Switch on the power strip to right of the KILL SWITCH
sign 14. Switch on the power strip in the cabinet under the laser cutter
15. Make sure the exhaust fan is running 16. Lift the 2nd plastic tube
slightly out of the bucket, make sure water is flowing out of it, &
replace it 17. Place the material to be cut in the laser cutter 18.
Switch the laser cutter POWER switch ON 19. For manual operation set the
CONTROL switch to MANUAL 20. Turn the LASER CURRENT knob all the way
counterclockwise (off) 21. Push the LASER switch to the FIRE position
(it will only fire as long as it is held there) 22. Turn the LASER
CURRENT knob clockwise until the LASER CURRENT meter reaches the correct
level (maximum is about 15mA) 23. When finished turn the LASER CURRENT
knob all the way counterclockwise 24. Turn the POWER switch OFF 25. Turn
off the power strip under the laser cutter 26. Unplug the extension cord
from the power strip to right of the KILL SWITCH sign insLaserK40maint
To adjust the stationary mirrors - Oct. 8, 2019 1. If moving part of the
mirror forward loosen the nuts on the bolts on the back of the mount 2.
Loosen the bolt on the side of the mount that part of the mirror is to
be moved towards 3. Turn the bolt on the opposite side clockwise to move
part of the mirror in the desired direction 4. Repeat steps 1-3 if
needed 5. Tighten the bolts on the side the mirror was moved towards 6.
Tighten the other bolts 7. Tighten the nuts on the bolts on the back To
control the Smoothieboard directly from a tabletop computer using
minicom (minicom should already be installed; if after step 7 the
display states bash: minicom: command not found see
wiki.hacdc.org/index.php/Documentation-Tabletop_computers for
instructions) - Dec. 26, 2019 1. Unplug the laser cutter computer USB
cable from the back of the Smoothieboard 2. Connect another USB cable
from the tabletop computer to the connector in the back of the
Smoothieboard 3. Turn on the computer & log in (see
Documentation-Tabletop_computers for detailed instructions) 4. Click on
Applications at top left 5. Move over System Tools 6. Click on MATE
Terminal in window that just appeared 7. Enter: minicom 8. To show
instructions for controlling the Smoothieboard enter: help 9. When
finished disconnect the tabletop computer USB cable from the
Smoothieboard 10. Reconnect the USB cable from the laser cutter computer
to the Smoothieboard To control the Smoothieboard directly from a
tabletop computer using screen - Dec. 26, 2019 1. Unplug the laser
cutter computer USB cable from the back of the Smoothieboard 2. Connect
another USB cable from the tabletop computer to the connector in the
back of the Smoothieboard 3. Turn on the computer & log in (see
Documentation-Tabletop_computer for detailed instructions) 4. Click on
Applications at top left 5. Move over System Tools 6. Click on MATE
Terminal in window that just appeared 7. Enter: screen /dev/ttyACM0 8.
If the display does not state bash: screen: command not found then skip
steps 9-12 9. Enter: sudo apt install screen 10. If the display shows
\[sudo\] password for hacdc: then enter standard password 11. If the
display asks Do you want to continue? \[Y/n\]: then enter: y 12. Enter:
screen /dev/ttyACM0 13. For instructions type Ctrl a? (hold down Ctrl &
press a, then release both before typing ? (note that characters entered
after Ctrl a will not appear on the display)) 14. To show instructions
for controlling the Smoothieboard enter: help 15. When finished
disconnect the Smoothieboard from the tabletop computer USB cable 16.
Reconnect the USB cable from the laser cutter computer to the
Smoothieboard insLaserK40spec Specifications - K40 power supply - Oct.
8, 2019 The power supply for the K40 (cheap Chinese laser cutter) is a
"4-6-4" type with a 6-terminal connector in the center with a 4-terminal
connector on both sides. L1=G - ground (typically connected to negative
terminal of laser tube, in this case thru a current meter (laser current
on front panel)) L2=G L3=AC - one side of 120VAC power L4=AC - other
side of 120VAC power C1=G C2=P - enable - ground to allow laser to fire
C3=L - laser - ground to fire laser C4=G C5=IN - intensity - analog
laser power control (i.e., in manual mode) C6=5V R1=24V R2=G R3=5V
R4=L - laser - ground to fire laser Note that C3 & R4 are connected on
the power supply PC board as are C6 & R3. The laser power can be
controlled using L by PWM. Note: Diode D15 has been disconnected because
it was leaky; it was only used for an on-board TEST button which is
never used so there is no particular reason to replace it.
