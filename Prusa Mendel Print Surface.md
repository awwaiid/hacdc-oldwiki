# Swapping Materials {#swapping_materials}

Changing from glass to acrylic or polycarbonate beds is **easy**. **Just
remember the following:**

1.  For glass, use the laser cut foam washers, and don't over tighten.
2.  Ordinary glass needs the laser cut plastic as heat spreader and
    thermal resistor. Not recommended for other materials.
3.  For plastic (acrylic/polycarbonate), don't set the bed too warm, or
    the printed part will be non-removable.

The full print bed stackup is:

1.  Bottom. MDF backing attached to LM8UU bearings and timing belt.
2.  Printed, plastic, leveling mat. See "Leveling" section below for
    details.
3.  Laser cut foam mat. Serves as thermal insulator, provides a notch
    for wiring, and slightly improves flatness.
4.  PCB heater.
5.  Optional. Laser cut red plastic, clear plastic, or silicone. Mostly
    serves as heat spreader and thermal resistor, sometimes necessary
    for ordinary glass.
6.  **User-selected print surface.** Glass, plastic, the choices are
    elaborated in the "Surface Materials" section.
7.  Foam washers. These are laser cut from the same material as the foam
    mat, and should not be reused once crushed. Extras are stored in a
    glass jar.
8.  M3 screws and washers. These are bolted directly through mounting
    holes in all other layers, including glass.

# Surface Materials {#surface_materials}

By default, we are using an ordinary glass print surface, which has been
cut, drilled, and bolted onto the printer. Other surfaces are available,
and we plan to upgrade to pyroceramic glass as the default print
surface.

## Glass

Glass is an ideal print surface material. It binds strongly to the
plastic while warm, and releases the part once cool. Additionally, glass
is somewhat rigid, flattening out the print surface.

Obviously, is all good for first layer alignment, warp prevention, and
easy part removal at the end of a job.

**Please be careful to use the laser cut foam washers for installing
glass, and apply as little pressure as possible.** Tighten all the
screws a quarter rotation at a time, just until the glass stops moving
downward.

### Ideal Glass Surface {#ideal_glass_surface}

Pyroceramic Glass, 9" \* 9", Four Mounting Holes. Recommend against the
[similar bed design
here](http://devdonkey.blogspot.ca/2013/04/custom-heated-build-platform-for-prusa.html).
The wiring cutout and larger 9.5" \* 9.5" size may contribute
unnecessarily to thermal stress.

Can be ordered from One Day Glass.

### Ordinary Glass {#ordinary_glass}

Ordinary glass can be purchased from a variety of stores, cut to size,
the drilled with a dremel and the cylindrical diamond abrasion tool.
After a little practice, new glass beds can be manufactured with just a
few dollars and 20 minutes.

Tenleytown Ace Hardware is especially helpful, offering cutting service
with the glass.

Unfortunately, ordinary glass does tolerate thermal stress well.
Although we are in theory using a PCB heater to evenly warm the bed, in
practice the thermal gradient from center to outside edge can be high as
30C. Catastrophic failure becomes likely given mechanical stress, spot
heating/cooling from some 3D printed parts, or microfractures on a
poorly cut edge. Further, ordinary glass may be less rigid, prone to
representing complex warped shapes underneath it.

Ordinary glass surfaces should be double pane and no larger than 8.75"
\* 8.75" . Optionally add the thin laser cut red plastic, clear plastic,
or silicone sheet between ordinary glass and the PCB heater. This will
mitigate rapid or uneven heating.

## Plastics

Plastics tend to offer extremely tough adhesion, without the quick
release behavior offered by glass. While this may be helpful at times,
care is needed to prevent parts from permanently binding to the print
surface, even if paper or kapton tape layers are used.

**When printing on these surfaces, please set the bed temperature as low
as possible. Recommend no more than 45C for PLA.**

Additionally, plastic surfaces are inherently less rigid than glass,
particularly if thinner than \~5mm.

### Heavy Acrylic {#heavy_acrylic}

An 8.25mm acrylic sheet has been salvaged from a disassembled LCD
monitor, and laser cut to fit. At this thickness, rigidity seems to be
exceptional. Probably the best choice for laying down a paper tape or
kapton printing surface.

### Polycarbonate

A 5.75mm polycarbonate sheet has been cut and drilled to fit our
printer.

# Leveling

**Suggest others do not attempt this without prior experience.** Anyone
contemplating this **exercise in frustration** needs a *lot of patience
and a fire extinguisher*. Additionally, the end result is difficult to
undo if incorrect.

Built-in alignment between extruder positioning system and print surface
is badly warped on our aging Prusa Mendel, taking as many as six
polynomial orders to accurately characterize. Consequently, the only
reliable process for realigning this complex system is rather
complicated, involving a 3D printed and heat-polished leveling mat. It
is roughly equivalent to using a CNC mill to finish off its own table.

## Step 1 {#step_1}

Use a CAD program to generate a large rectangular object covering most
of the print surface **at least three layers high**. This is our
'leveling mat'.

## Step 2 {#step_2}

**Disassemble** the print bed down to an **intermediate surface**
(preferably the hard MDF backing), cover with paper tape. This is the
print surface for our 'leveling mat'.

## Step 3 {#step_3}

Carefully **move the Z-axis endstop** to match extruder depth with the
new print surface.

## Step 4 {#step_4}

**Abort**! If you have started printing the leveling mat, you probably
didn't set the Z-axis endstop position well enough. When this happens,
do not wait for the printer to put down more than one layer of the
leveling mat - it may become infeasible to remove.

Use **PLA material**, and **retry printing** the leveling mat until the
first layer is clearly adhered to the intermediate surface.

## Step 5 {#step_5}

There will be some rough areas on the printed mat. **Heat polishing
solves that.** Bolt the PCB heater on top of this leveling mat, bolt
laser cut foam on top of that, and the heavy acrylic print surface on
top of that. Ensure the whole assembly is evenly clamped down under
significant pressure.

Heat to \~90C for 5 minutes, and **have a fire extinguisher handy**.
Generally, when the underside of the MDF hits 40-50C, heat polishing
will be complete.

## Step 6 {#step_6}

Unbolt the heat polishing assembly, and check the leveling mat. Should
be **silky smooth**, with no bumps larger than 0.05mm. If not, repeat
Step 5 until it is.

## Step 7 {#step_7}

**Reassemble** the print bed as it was before, carefully. If lucky, it
should be possible to keep extruder nozzle aligned to print surface
within \<0.15mm at all positions.

If unlucky, not only will the print surface remain warped, but the old
leveling mat will need to be removed to repeat the process. Since the
leveling mat can adhere very strongly, this can be excruciatingly
difficult.

[Category:PrusaMendel](Category:PrusaMendel)
