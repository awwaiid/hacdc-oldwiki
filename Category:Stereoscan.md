HacDC is in the process of refurbishing a scanning electron microscope:
a Cambridge Stereoscan 200.

![SEM in workshop](SEM_install_1_thumb.jpg "SEM in workshop")

# Current Status {#current_status}

Roughing pump works, turbo spins up to full speed for a while but then
slows down. The vacuum controls operate but don't light up as expected,
and the pressure readout is not showing a reading. The console turns on
and produces video output with the correct data overlay. The filament
control reads "bad filament," despite the filament continuity being OK.
There is an interlock between the pressure gauge and console that may be
keeping the filament off. We'll need to verify the pressure gauge output
and see how to trigger that interlock.

We received and installed an MKS Micropiriani 925 vacuum gauge that
measures vacuum up to atmosphere. After pumping down, we bottom out at
.34 torr. There is a gross leak in the tube on the side of the machine.
we are now reverse engineering the electronics. we have replaced the
seals on the up-tube, and are working on controlling the column with a
microcontroller, rather than the giant desk-sized console.

See [Stereoscan_Operators_Log](Stereoscan_Operators_Log) for
details.

# Documentation

-   A suspected leak between the main imaging chamber and the top of the
    electron gun cylinder is preventing the chamber from reaching
    pressures low enough to sustain a proper beam. The plumbing
    connecting the two consists of two elbow brackets. The top and
    bottom of the long elbow bracket use 2-1/4" diameter black rubber
    (Viton?) gaskets/O-rings. The bottom elbow bracket uses a 2-3/4"
    gasket to couple to the chamber proper, and has an adapter between
    2-3/8" and the 2-1/4" at the bottom of the long elbow bracket. These
    are compression-style fittings; the rubber is compressed between two
    metal pieces and completes the seal.

\[Image of Vacuum Bracket\](https://i.imgur.com/3k8zrL5.png)

## Manuals and Images {#manuals_and_images}

-   the web archive's copy of RIT's [Stereoscan 200 Operating
    Instructions](https://web.archive.org/web/20050221031305/www.rit.edu/~bekpph/sem/S200.html)
-   [Stereoscan 200 Operating
    Instructions](:File:Stereoscan_200_Operating_Instructions.pdf)
-   [Stereoscan Student
    Guide](:File:Stereoscan_Student_Guide.pdf)
-   Vacuum gauge: Edwards Penning CP25-k:
    <http://www.idealvac.com/files/manuals/Edwards_CP25K_Cold_Cathode_Gauge_Sensor_Manual.pdf>
-   [925 MicroPirani (TM) Vacuum Pressure Transducer RS232 / 485 /
    Display Operation and Installation
    Manual](https://www.mksinst.com/Docs/R/925man-revh.pdf)
-   Roughing Pump: Edwards E2M-12 255 LPM two stage oil filled rotating
    vane pump
    ![](Edwards_E2M2_to_E2M12_Users_Instruction_Manual.pdf "Edwards_E2M2_to_E2M12_Users_Instruction_Manual.pdf")
-   Turbo Pump: Pfeiffer Balzers TPH 190

:   [Pfeiffer Balzers TPU TPH 170
    manual](:File:Balzers_TPU-TPH_170.pdf)
:   Similar but smaller unit manual
    ![](Pfeiffer_Balzers_TPH_TPU_110_.pdf "Pfeiffer_Balzers_TPH_TPU_110_.pdf")
:   Table of pumps to compatible controllers
    ![](Pfeiffer_table.pdf "Pfeiffer_table.pdf")

    :   View of pump 1
        [Media:PfeifferTHP190_1.gif](Media:PfeifferTHP190_1.gif)
    :   View of pump 2 (connector side)
        [Media:PfeifferTHP190_2.gif](Media:PfeifferTHP190_2.gif)
    :   View of pump 3 (other side)
        [Media:PfeifferTHP190_3.gif](Media:PfeifferTHP190_3.gif)

-   Turbo Pump Controller: [Pfeiffer Balzers TCP 300
    Controller](:File:Pfeiffer_Balzers_TCP-300_Controller.pdf)

## Original

-   [Stereoscan 200 dimensions](http://i.imgur.com/rMErvPd.png)

```{=html}
<!-- -->
```
-   [S200 operating instructions (2 MB
    zip)](https://dl.dropboxusercontent.com/u/45972/sem/s200.zip)

```{=html}
<!-- -->
```
-   [Edwards E2M-12 roughing pump user instruction
    manual](http://www.idealvac.com/files/ManualsII/Edwards_E2M2_to_E2M12_Users_Instruction_Manual.pdf)

## 757 Labs

Previous owners (757 Labs, another hackerspace) attempting repairs
compiled some information at:

-   <http://757labs.org/2012/09/scanning-electron-microscope-update/>
    ([archival link -- text only](http://pastebin.com/hSiu4Urs))
    ([Internet
    Archive](https://web.archive.org/web/20140401150504/http://757labs.org/wiki/Projects/SEM))

```{=html}
<!-- -->
```
-   <http://757labs.org/wiki/Projects/SEM> ([archival link -- text
    only](http://pastebin.com/vWPj8eHu))

## Additional Resources {#additional_resources}

-   The original S200 operating instructions are available at the space
    in a three-ring binder near the machine.

```{=html}
<!-- -->
```
-   If possible, members will also have access to a PDF copy of
    *Scanning Electron Microscopy - A Student's Handbook*, 1980,
    self-published by Michael Postek, et al. This book was widely used
    by microscopists and is still regarded as a good learning reference,
    but the original binding is rare and prone to falling apart. It
    might be possible to use the PDF copy for private, educational use.

## More Photos {#more_photos}

-   [SEM install and
    overview](https://dl.dropboxusercontent.com/u/45972/sem/sem_install/index.html)

```{=html}
<!-- -->
```
-   [Close-ups of assembly and components](http://imgur.com/a/uR7Yv#0)

```{=html}
<!-- -->
```
-   [Cleaning and vacuum
    components](https://dl.dropboxusercontent.com/u/45972/sem/sem_cleaning/index.html)

# Contacts

We have a list here of HacDC members who are responsible for the SEM,
including people that should be notified about problems.

[Mirage335](User:Mirage335)
([talk](User_talk:Mirage335)) Custom electronic control
replacement circuitry.

[Juri\_](User:Juri) Julia Longtin, Juri\_ on IRC. SEM repair
project.

[Category:Equipment](Category:Equipment)
