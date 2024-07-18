![](OpticalTableRobot.png "OpticalTableRobot.png"){width="400"}

Multi-tool CNC platform in progress atop the optical table to enable
ultra-precise fabrication on a massive scale. Derived from
[FlexReplicator](https://github.com/mirage335/FlexReplicator). Tool
compatible with
[FlexReplicator](https://github.com/mirage335/FlexReplicator),
[TazMega](https://github.com/mirage335/Taz_Mega),
[TazStiff](https://github.com/mirage335/TazStiff),
[MightyTool](https://github.com/mirage335/MightyTool), and related
projects.

This is the kind of machine one might use to laser cut giant tractor
parts, 3D print large herringbone power transmissions for lost PLA
casting, or carry out a VLSI production run. Or of course, typical laser
paper cutting.

# Status

Assembled and operational.

# Features

-   Approximately 7'x2'x1.5' build area.
-   Built on 100W Laser Cutter (tube down ATM).
-   Rock-solid, supported by optical table and 40 series extrusions.
-   Supports multiple tools and capabilities, starting with 3D printing
    and Laser Cutting.
-   Simultaneous multi-tool use will enhance utility, such as milling
    down 3D printed layers.

# Hardware

-   Part of design hosted on
    [github](https://github.com/HacDC/OpticalTableRobot).
-   Rest of design hosted at [The FossCar
    Project](http://fosscar.faikvm.com/trac/wiki/LargePrinter).

```{=html}
<!-- -->
```
-   3D printed parts are hosted at [Julia Longtin's Kallithea
    instance](http://kalli1.faikvm.com/HacDC/OpticalTableRobot/files/tip/).

The microcontroller we are using is a RAMBO board.

# Software

## User Interface {#user_interface}

We are using Pronterface and Pronsole from the PrintRun package.

I am taking PNG snapshots of STL files using [A Customized
STLTools](https://github.com/jhdulaney/stltools).

## Embedded Controller {#embedded_controller}

The Optical Table robot is running [The Marlin
Firmware](https://github.com/MarlinFirmware/Marlin).

For laser cutting purposes, we need to merge what is running on the
machine with [The K40
Firmware](https://github.com/lansing-makers-network/buildlog-lasercutter-marlin).

### Issues

Note that these issues are with the current Marlin Firmware. (FIXME:
which version?)

-   Y minimum endstop not functional.
-   Uptime of around 4-6 hours.

## 3D Printing {#d_printing}

For slicing 3d printable objects, We are using
[Slic3r](https://github.com/alexrj/Slic3r).

For object design, we are using
[ImplicitCAD](https://github.com/colah/ImplicitCAD/).

## Laser Cutting {#laser_cutting}

For designing cut out parts, we are moving to using
[ImplicitCAD](https://github.com/colah/ImplicitCAD/).

# Tools

## IR Laser {#ir_laser}

Tested. Mirrors are in place, but laser tube has died.

## Extruders

In progress. Works just like any other 3D printer. Plan on at least two
nozzles, one for high-precision (\<0.35mm), one for high-speed (\>1mm).

## Mill

In progress. Standard 120V AC drill, connected to control circuitry by
SSR.

## Pick And Place {#pick_and_place}

In Progress. camera system, part feeders, and vacuum based pick up and
rotate tool will need to be added.

## Liquid Deposition {#liquid_deposition}

In Progress. Epson piezoelectric print heads are useful for this.

## VLSI Projection Lithography {#vlsi_projection_lithography}

In progress. Modified (ultraviolet) DLP projector and camera mounted to
microscope, used for high-resolution patterning. Absolute accuracy
(inter-frame) is expected to be \~2um, while relative accuracy
(intra-frame) is expected to be \<0.5um, scalable down to
diffraction-limited performance.

# Processes

## Casting

Direct metal printing thus far is either highly expensive, low-strength,
or both. Compromise is to 3D print a plastic (PLA) part, then cast it to
metal. Besides low cost, this process can be used to achieve parts
traditionally infeasible, like pre-assembled herringbone-gear power
transmissions.

# Pricing

As with other HacDC tools, operators are asked to pay for consumables
used only for heavy usage. However, this machine can easily consume a
few hundred dollars of filament in one job...

# Safety

Usual safety precautions apply.

ClassIV lasers can typically cause catastrophic retina damage will
instantly upon viewing the projected spot. Ideally, a 'defense-in-depth'
approach should be taken combining safety glasses and guards at all
times.

Somewhat less true of CO2 lasers, as the far-infrared wavelength cannot
be focused by the lens in human eyes. Nonetheless, polycarbonate safety
glasses should be used, and walls should be in place to keep the
collimated beam on the table.

# TODO

1.  Fix the policy around the HacDC basement, so volunteers can work
    with less politics.
2.  Replace the laser tube. Maybe try a cheap, expendable tube for the
    first few hundred hours.
3.  Find out why the microcontroller locks up when firing up the laser
    every 3-4 hours.
4.  Trim the Z threaded rods.
    1.  these need trimmed, while on the machine, until the end is at
        exactly the height of the bottom of the connecting bar, on the
        top of the gantry.
5.  Print new X ends.
6.  Print a more adjustable Z endstop.
7.  Place the electronics in an enclosure.
8.  make the display unit function.
9.  Add cable chains.

## Upgrades

For absolute maximum performance, consider the following upgrades.

-   Interferometric linear optical encoders.
-   Vectran rope timing belt replacements.
-   Angle iron brackets reinforced by welded plate.

## Saftey

1.  Add walls, to keep the collimated beam on the table.
2.  Add a polycarbonate lid.
3.  Add an exhaust system.

## Usability

1.  Add OctoPi or similar web interface.

# Troubleshooting

When troubleshooting precision errors and planning upgrades, it is
helpful to review the most likely causes.

1.  Inadequate or excessive wheel pressure (check eccentric spacers).
2.  Poor alignment along axes with multiple drivers.
3.  Twisting at or near linear motion carriages.
4.  Backlash at boots joining X and Z axes.
5.  Separation between highly stiff (table, 40 series extrusions) and
    less stiff (20 series extrusions) materials.
6.  Warping of stiff materials (should not ever occur, would imply gross
    overloading and abuse exceeding several hundred pounds force).

[Category:OpticalTable](Category:OpticalTable)
[Category:3D_Printing](Category:3D_Printing)
