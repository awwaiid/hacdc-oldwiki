As of 2017.02.10 the Lulzbot Mini has been repaired and has a brand new
extruder head. This extruder head uses **NinjaFlex (TM) rubber filament
only!**

Cura users:

1\. Download the newest version of the Lulzbot Edition of Cura from
<https://www.lulzbot.com/cura> 2. Install and start Cura 3. From the
menus: **Machine** -\> **Add New machine** -\> **Lulzbot Mini** 4. From
the menus: **Machine** -\> **Machine Settings** 5. **Change Tool Head**
-\> **Flexystruder v2** 6. **E-steps per 1mm filament** -\> **918** 7.
**OK** 8. For your print material, choose **NinjaFlex**

The recommendation is **220 C** for the melting temperature of the
material, and it is currently advisable to lay down some glue.

Full Flexystruder head installation and initial setup instructions at
<https://ohai.lulzbot.com/project/flexystruder-install-lulzbot-mini/accessories/>
but unless something goes horribly wrong, you should not need to mess
with these instructions.

The official word on clearing jams / clogs, which helped the FIRST time
it jammed, but not the second:

:   

    :   So if you have done cold pulls on a normal extruder its the same
        concept for the flexystruder. Heat up the tool head to printing
        temp. (well say 230) Then manually extrude some filament through
        the hotend by manually turning the large gear on the toolhead
        counter clockwise. Once you get a little string of filament
        coming out drop the temp of the toolhead by 100 degrees while
        slowly extruding a little more filament. Then once the tool head
        gets to the lower temp (say 130) manually retract the filament
        by rotating the large gear clockwise while pulling up on the
        filament with your hand. Try this 4-5 times and see what
        happens. Let us know if it works.

And, even more horribly wrong instructions:
<https://ohai.lulzbot.com/project/flexystruder_assembly/>

## About that ... {#about_that_...}

On 2020.01.20 once again, I attempted the afore-mentioned **cold pull**
with more success: I attribute the success to using slightly more force
and a lot less speed (and a lot more patience) when manually rotating
the large gear in either direction.

## Self-reporting

Upon connecting, the Lulzbot Mini reported:

    $ pronsole.py
    Welcome to the printer console! Type "help" for a list of available commands.
    offline&gt; connect /dev/ttyACM0
    start
    Printer is now online
    Marlin 1.1.5
    Last Updated: Jan 22 201809:13:46 | Author: (Aleph Objects Inc., LulzBot Git Repository)
    Compiled: Jan 22 2018
    Free Memory: 5336  PlannerBufferBytes: 1232
    V40 stored settings retrieved (498 bytes; crc 4399)
    G21    ; Units in mm
    Filament settings: Disabled
    M200 D3.00
    M200 D0
    Steps per unit:
    M92 X100.50 Y100.50 Z1600.00 E833.00
    Maximum feedrates (units/s):
    M203 X300.00 Y300.00 Z8.00 E40.00
    Maximum Acceleration (units/s2):
    M201 X9000 Y9000 Z100 E1000
    Acceleration (units/s2): P&lt;print_accel&gt; R&lt;retract_accel&gt; T&lt;travel_accel&gt;
    M204 P2000.00 R3000.00 T2000.00
    Advanced: S&lt;min_feedrate&gt; T&lt;min_travel_feedrate&gt; B&lt;min_segment_time_ms&gt; X&lt;max_xy_jerk&gt; Z&lt;max_z_jerk&gt; E&lt;max_e_jerk&gt;
    M205 S0.00 T0.00 B20000 X12.00 Y12.00 Z0.40 E10.00
    Home offset:
    M206 X0.00 Y0.00 Z0.00
    Auto Bed Leveling:
    M420 S0
    PID settings:
    M301 P28.79 I1.91 D108.51
    M304 P294.00 I65.00 D382.00
    Z-Probe Offset (mm):
    M851 Z-1.38
    Stepper motor currents:
    M907 X1300 Z1630 E1250
    ttyACM0 PC&gt;

Important tidbits from the official Lulzbot keychain trinket G-Code:

    ;This Gcode has been generated specifically for the LulzBot Mini
    ;Basic settings: Layer height: 0.25 Walls: 1.2 Fill: 20
    ;Filament Diameter: 2.9
    ;Nozzle Size: 0.6
    ...
    M140 S40     ; get bed heating up
    ...
    M109 R230    ; set extruder temp and wait

So, set bed temperature to 40° C, and hot end temperature to 230° C.

[Category: 3D Printers](Category:_3D_Printers)
