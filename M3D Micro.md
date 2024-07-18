The space has a highly modified M3D Micro (donated by Andrew Barabasz)
that is fully compatible with the RepRap protocol, using a custom
firmware known as iMe. Cura and Printrun are known to work with the
printer as-is, and should work with any other slicer as long as it is
configured correctly.

The following information assumes the use of a Cura/Printrun setup, if
yours is different, configure accordingly.

# Configuration

Printer is available on `/dev/ttyACM1` running at 115200 baud.

When the printer is power-cycled, the firmware starts up in **bootloader
mode** and will not receive gcode commands. To enable the printer, use
`m33-manager` (check software section) to switch it to firmware mode.

## Extruder Config {#extruder_config}

-   **Printer type:** Custom FDM Printer
-   **Nozzle size:** 0.35mm
-   **Material size:** 1.75mm
-   **G-code flavor:** RepRap
-   **Retraction length:** 2mm (important!)

## Start G-code {#start_g_code}

    G28; set home position
    M106 S255; turn on fans

    ; prime the extruder
    G92 E0;
    G0 F2100 X8 Y104 Z0.270;
    G1 F600 X40 Y104 E10.0;
    G92 E0;

## End G-code {#end_g_code}

    G91; relative positioning
    G1 E-0.5 F300; release pressure
    G1 Z+0.5 F{travel_speed}; retract filament
    G1 Z+6 F{travel_speed}; move up z

    ; turn off printer
    M104 S0; turn off extruder
    M107; turn off fans
    M18; turn off steppers
    G90; absolute positioning
    ;{profile_string}

# Maintenance

You can use `pronsole` or `m33-manager` to run these gcode commands
directly.

## Printer calibration {#printer_calibration}

    G30; calibrate bed depth
    G32; calibrate bed tilt

## Insert new filament {#insert_new_filament}

    M104 S200; turn on the extruder
    G1 F100 E100; pull in new plastic

## Replacing filament {#replacing_filament}

    M104 S200; turn on the extruder
    G1 F60 E60; soften up plastic
    G1 F-60 E-60; retract old plastic
    G1 F100 E100; pull in new plastic

# Software

## M33 Manager {#m33_manager}

**Github:**
<https://github.com/donovan6000/iMe/tree/master/M33%20Manager>\
**Binaries:**
[Linux](https://raw.githubusercontent.com/donovan6000/iMe/master/M33%20Manager/M33%20Manager%20Linux.zip),
[macOS](https://raw.githubusercontent.com/donovan6000/iMe/master/M33%20Manager/M33%20Manager%20macOS.dmg),
and
[Windows](https://raw.githubusercontent.com/donovan6000/iMe/master/M33%20Manager/M33%20Manager%20Windows.zip).

## Stock M3D Drivers (only historical) {#stock_m3d_drivers_only_historical}

**Website:** <https://support.printm3d.com/892707-M3D-Micro-Downloads>\
**Documentation:**
<http://printm3d.com/files/software/linux/README-1.5.0.70.pdf>

## Included

-   M3D Switching Adaptor - Output 5.0 V, 4.0 A,
    ![](Positive_Tip_Plug.svg "Positive_Tip_Plug.svg") (Negative ring,
    positive tip) ![](Dc.svg "Dc.svg"){width="75"} (DC)
-   [USB 1.0 cable](https://en.wikipedia.org/wiki/USB) (Type-A male
    ![](USB_Type-A_receptacle.svg "USB_Type-A_receptacle.svg"){width="75"}
    to Type-B male
    ![](USB_Type-B_receptacle.svg "USB_Type-B_receptacle.svg"){width=""
    height="60"})

[Category:3D_Printing](Category:3D_Printing)
[Category:Equipment](Category:Equipment)
[Category:3D_Printers](Category:3D_Printers)
