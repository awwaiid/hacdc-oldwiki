Precisely manufacturing circuit boards with the CNC Mill can be
moderately high-quality (10-15mil resolution), cheap, and fast.

Note this page reflects *direct* single-layer PCB manufacture.
Higher-precision double-layer boards are made by CNC drilling *followed
by photolithography*. Slightly different settings (eg. milldrill) and a
different process are used as documented at
[:Category:Photolithography_PCB_Fab](:Category:Photolithography_PCB_Fab).

## gEDA

The ideal tool for the artwork is probably gEDA. Start by making a
schematic, convert it to a pcb file, export that as a gerber file, and
use pcb2gcode to convert to gcode.

### gEDA_Template

Empty gEDA project structured for easy customization, documentation,
licensing, and manufacturing. Adds automatic generation for BOM files
HacDC CNC Mill compatible ngc files, and oshpark compatible gerbers.

<https://github.com/mirage335/gEDA_Template>

### pcb2gcode

Place the following lines (or similar) into a file called millproject in
the same folder as the gerber files. Then execute pcb2gcode in that
folder.

``\
`# You may want to uncomment and change those in local project files`\
`front=PCB.top.gbr`\
`back=PCB.bottom.gbr`\
`outline=PCB.outline.gbr`\
`drill=PCB.plated-drill.cnc`\
``\
``\
`# The board outline is 10mil wide, no holes`\
`fill-outline = yes`\
`outline-width = 0.0334646       #0.85 mm bit.`\
``\
`# parameters for isolation routing / engraving / etching`\
`#offset=1                   #voronoi regions (commented out)`\
`offset=0.010                #Small PCB bit. Don't break it!!!`\
`zwork=-0.019685     #0.5mm below touch off.`\
`zsafe=0.19685           #5mm above table.`\
`mill-feed=1.9685        #50mm/min. Always go slow here.`\
`mill-speed=10000`\
``\
``\
`# parameters for cutting out boards`\
`cutter-diameter=0.0334646       #0.85 mm bit.`\
`zcut=0                                  #Right on the table.`\
`cut-feed=0.19685                    #25mm/min. Going slow because this really should be done in many passes.`\
`cut-speed=10000`\
`cut-infeed=0.00393701           #Lowers Z 0.1mm each pass. DOES NOT WORK.`\
``\
``\
`# drilling parameters`\
`zdrill=0                            #Right on the table.`\
`zchange=0.19685         #5mm above table.`\
`drill-feed=0.984252     #25mm/min`\
`drill-speed=10000`\
`drill-front=true`

The resulting \*.ngc files can be loaded onto the CNC mill's dedicated
computer and into the controller software (Mach3).

### Cavets

-   The drill.ngc file may not include M3, particularly if
    milldrill=true is used. Uncorrected, this breaks the milling bit.
-   The pcb2gcode utility does not support drill-front and milldrill
    simultaneously. Consequently, you may want to ignore/delete the
    toolchange commands (matching regular expression \^T.\* ) in
    drill.ngc. The M0 commands may also be annoying.
-   Mach3 seems to go about some funny business loading ngc files. For
    best results, explicitly set the first line of an ngc file before
    starting.
-   Milling the back side of circuit boards requires somewhat precise
    alignment. However, this is definitely possible.
-   Using double-sided copper clad board with through-hole components
    will necessitate milling out the back side.

```{=html}
<!-- -->
```
-   Newer versions of gEDA offer direct pcb file to gcode conversion.
    This is untested, and does not seem to offer as much control over
    the results as pcb2gcode.
-   All areas around the copper traces (excess copper) should be
    grounded (ie. tied to a power rail), and wires will need to be
    soldered to power, input, and output connections. Be sure to include
    enough space in your design to accommodate this.

## Milling

### Practice

Touch off the Z axis to 0.0 while it is above the milling surface. Then
execute your NGC file, and carefully observe the results step by step.
Practicing on air this way greatly reduces the risk of making coasters
or damaging the mill.

### Copper Clad Board

Ideally, we are milling isolation paths between PCB traces on a copper
clad board. These boards can be obtained at RadioShack, and other
places.

### Correct Bit

-   The above millproect file is intended for our 0.01" end mill. That
    bit is relatively expensive, so try not to break it.

```{=html}
<!-- -->
```
-   Multiple shallow passes with the narrowest possible spade bit can be
    used for milling slightly higher-quality circuit boards.

```{=html}
<!-- -->
```
-   A scribing bit may be used to cut isolation traces in spraypaint,
    which can be followed by chemical etching. Short of
    photolithography, this is the highest quality process, but requires
    the milling table to be exactly level.

```{=html}
<!-- -->
```
-   If even higher-quality or double-layer boards are required (eg. fine
    pitch SMT), photolithography becomes more effective.

### Multiple Passes

Setting "zwork = 0" and using a spade bit allows extremely fine
isolation paths to be developed after multiple passes. This technique is
sometimes helpful for surface mount devices.

First touch off the mill's Z axis to 0.0 when it is barely touching the
copper clad board. Now execute a PCB milling NCG script. After milling a
pass at this depth, all traces should be clearly visible but not
electrically isolated.

With the first milling pass complete, execute "g0 z-0.001", and touch
off the mill's Z axis to 0.0. Executing the NGC script again will repeat
the PCB milling at a slightly lower depth.

Finally, blow/brush all dust off the PCB, and test traces for electrical
isolation with a continuity tester. If none of the traces short circuit,
switch to an ohm meter, and make sure all of the traces are completely
open circuits. It is not uncommon to find multi-megaohm connections
between traces.

If the isolation paths are not electrically isolated, mill another pass,
going slightly deeper. Once electrically isolated, mill one more pass to
ensure long-term reliability and minimize soldering issues.

## Examples

Some high-quality board have already been manufactured at HacDC, and
will be added to this wiki as examples.

[Category:CNC_Mill](Category:CNC_Mill)
