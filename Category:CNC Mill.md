![](CNC_Mill_Operational.jpg "CNC_Mill_Operational.jpg"){width="400"}

[right\|400px\|](image:CNC_Mill.jpg)

# Quickstart

1.  Ensure that the switches circled in white in the image to the right
    are in the off position, then turn on the killswitch (Circled in
    red), and turn on the dedicated desktop computer. Mach3 is available
    under MS Windows.
2.  Turn on all three lightswitches: back of the "MicroProto Systems,
    MicroMill DSLS 3000" box, top of the M3/M5 box, and to the side of
    the mill spindle.
3.  Double click the desktop shortcut "CNC_mill" to open software. "Tab"
    key brings up the jog controls.
    1.  You may have to hit reset button before the manual controls will
        work
4.  MDI tab in Mach3 allows manual G-Code entry. This is useful for
    commanding the mill to specific locations (eg. g0 x0 y0 z5) .
5.  Gently change mill bits with crescent wrenches. Finger tight is
    often sufficient.

If, for some reason, you need to turn off the CNC mill while it's
milling, please use the killswitch. It was added to eliminate the need
to stick one's hand in hazardous places.

# Cleanup

1.  Turn off all three power switches noted above.
2.  Shut down dedicated computer.
3.  Please clean up the mill area and place tooling back into the mill
    toolbox under the bench.

# Please Avoid

-   Obviously, don't put your hands in hazardous places.
-   Stay with the mill unless you really know what \_all\_ the risks
    are. Strange things can happen, particularly "dig-in" and g-code
    misinterpretation.
-   Milling the mill itself (or our mounting hardware) is easily
    possible, and a rather expensive mistake.
-   Use G91.1 with certain automatically generated G-Code files (eg.
    pcb2gcode, solidcam). Mach3 seems to default to absolute arc/circle
    center coordinates [which catastrophically enlarges the
    arcs/circles](http://www.cnccookbook.com/CCCNCGCodeArcsG02G03.htm).

Otherwise, the mill is robust and newbie friendly.

[Category:Equipment](Category:Equipment)
