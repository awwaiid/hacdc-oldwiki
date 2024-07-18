HacDC's Cube 3D Printer. IS GONE as of 2016.
[thumb\|upright=4\|right](File:Cube.jpg)

## Current Machine Status {#current_machine_status}

Cube printer has been officially moved out of HacDC. Currently living at
Makersmiths, recommissioning is underway. Please direct requests
regarding this machine to [Mirage335](User:Mirage335)
([talk](User_talk:Mirage335)).

## General Info {#general_info}

Model: 3D Systems Cube 2ND Generation

## Printing Procedures {#printing_procedures}

***Instructions are mostly complete but there are still gaps. If this is
your 1st print with this machine you may want to ask one of the 3D
printer folks for help (We're usually around on Thursday
evenings).***--[Nostromo](User:Nostromo)
([talk](User_talk:Nostromo)) 15:44, 11 February 2015 (PST)

### 3D File Preparation {#d_file_preparation}

The cube uses proprietary slicer software to convert a ".stl" file to a
".cube" file which is what the cube printer understands.

1.  Power on the Laptop labelled "THE LAPTOP FOR THE CUBE"
2.  Open the "Cube Software"
3.  Import your .stl file
4.  Settings

::\* Raft: Isn't needed as the bed is pretty level

::\* Print Mode

::\*\* Hollow: (Quick) The software will print the walls of your model
but put only enough infill to keep the model together. Not to be used
for structural components.

::\*\* Strong: the software will calculate and print your model to
withstnd a moderate amount of stress (arbitrary). The print will have
enough infill to fulfill this "strong" requirement

::\*\* Solid: Printer will print your model with 100% infill. Will take
the longest amount of time.

1.  Heal ''(This corrects any missing of difficient triangles in the
    model so the software can calculate the actual shape of the model)'
2.  Center
3.  Build (This will create the the .cube file in the same directory as
    the .stl file)
4.  Attach the USB Key and save to the root folder of the thumbdrive

At this point a .cube file has been generated and you're ready to move
on to the next step.

### Powering on the Cube {#powering_on_the_cube}

1.  Make sure the Cube is located on a level surface and the filament
    feed tube isn't being bent (By a shelf etc..)
2.  Make sure the power brick is plugged in all the way
3.  Press the button just below the screen (Screen should wake up)
4.  You're almost ready to print

### Before You Start The Print!! {#before_you_start_the_print}

Make sure you have the following items:

-   Elmer's Washable School Glue Stick (Purple Glue Stick)
-   Tweezers (Need this to remove the extruder drippings just before the
    print starts)

#### Prep the Print Bed (IMPORTANT) {#prep_the_print_bed_important}

1.  Remove the glass build plate from the cube (Held on with a magnet so
    it should just pop off)
2.  Undo the binder clips to remove the mirrored piece of glass
    (Remember where the binder clips are positioned)
3.  Wash/dry the mirrored glass in the sink (Be careful as it's fragile
    and the edges are sharp)
    -   if you break the glass don't fret we have replacements. Just
        make sure to let someone know and record it in the operators log
        so we know to replace it :-).
4.  Do a final clean of the mirrored glass using glass cleaner and a
    paper towel
5.  Use the glue stick to apply a thin layer of glue to the entire
    surface of the mirrored glass THOROUGHLY (This is so the plastic
    will stick but will still be removable when done)
6.  Reattach the mirrored glass to the build plate with the binder clips
    -   Make sure that the clips wont obstruct the movement of the build
        plate
    -   Best place for the clips are on the right side (Front and Back)

### Start the Print {#start_the_print}

1.  Eject the USB Key marked "Cube Firmware" from the Laptop and attach
    to the cube on the right hand side
2.  Navigate though the LCD menu and find the file you uploaded
3.  Select it and your print should start
    -   If you see a message about there not being enough filament just
        ignore it and continue the print (We reload the cartridges so
        the cartridge capacity indicator is off)
4.  After about 10? seconds the print head will move to about 1/2" above
    the build plate
5.  It will now begin heating up the extruder.
6.  Use with the tweezers to remove any filament that comes out as it
    heats up the extruder for about 30? seconds.
7.  When the head starts moving again remove your hands and tweezers as
    it's about to start printing
8.  Now watch the magic begin :-)

### Monitoring the Print {#monitoring_the_print}

Now that the cube has started printing it's important to keep an eye on
it. If at any time you see an issue please cancel the print by hitting
the "Stop" button on the display. Here are some things that are cancel
worthy:

-   You hear a ticking sound coming from the extruder (Extruder is
    jammed SEE BELOW)
-   The extruder is hitting the binder clips (Clips weren't positioned
    correctly)
-   The extruder is bumping over some plastic that hardened in the wrong
    place
-   The print has obviously failed (Help us save plastic and prevent a
    mess)
-   Anything else that may damage the printer or waste plastic
-   When the print finishes please turn off the printer *(Hold down the
    button until the cube powers off)*

### Removing the Print from the Build Plate {#removing_the_print_from_the_build_plate}

You're almost done now it's time for the last step. Removing the print
from the build plate.

-   Above all be careful when doing the steps below.
    -   You'll be applying pressure to thin sharp pieces of glass.
    -   You may want to wear safetly gloves which are located in the
        safety equipment bin
-   Remove the build plate and wash off the glue with warm water from
    the sink (Takes a while but it does get warm)
-   Try to loosen the part from the glass by twising and flexing
    (Without breaking the part)
-   Use a utility knife to GENTLY get under the part and pop it off.

### Please Clean up for Others {#please_clean_up_for_others}

Please do the following procedure so the next person can use the machine

-   Wash/dry the build plate/mirrored glass in the sink and put back on
    the machine
-   Put all the tools back in their storage box
-   Make sure you shut off the printer by holding down the button for
    several seconds (*Very Important*)
-   If you we're happy with your experience please consider putting a
    buck or 2 in the tip jar :-)

### Operators Log {#operators_log}

Please provide feedback on our print in the operators log for this
printer [Cube_Operators_Log](Cube_Operators_Log)

## Bed Leveling {#bed_leveling}

*I level the bed once a week so you really shouldn't need to do this
procedure*

-   The bed can be leveled through the software.
-   There is no need to mechanically level the bed.
-   Use a index/business card when going through the leveling procedure.
-   You should feel a slight bit of resistance when moving the card
    in-between the bed and extruder.

## Z Axis Height Adjustment {#z_axis_height_adjustment}

This should allow a index/business card to slide freely underneath it
without feeling like it's dragging.

## Notes

### Refilling the Cartridge {#refilling_the_cartridge}

The cartridge is a 2 part circular container for the filament. It is
held together with 2 snapping clips. Gently depress them to separate the
cartridges hemispheres. Loosely wind the filament to be used so that the
filament can freely exit the cartridge. Visually, this means when you
wind it, the end of the filament should be on the same side as the exit
tube. Carefully snap the hemispheres back together with roughly 7cm out
of the "exit". Be mindful of the guides on the inside of the cartridge
when snapping together. Will post a video later

### Resetting A Cartridge To Full {#resetting_a_cartridge_to_full}

#### Normal Cartridge Operation {#normal_cartridge_operation}

*This is just for some insight so you can see what we're going to do*

1.  **'Before Print**' Printer reads the remaining capacity of the
    cartridge.
2.  **'During Print**' Printer calculates, using a rotary encoder, the
    amount of filament used.
3.  **'After Print**' Printer subtracts the amount of filament used and
    writes it back to the cartridge.

#### Reset Cartridge Hack {#reset_cartridge_hack}

Resetting the cartridge means writing the full/nearly full cartridge
capacity back to the empty cartridge. Essentially resetting the empty
cartridge.

1.  Load cartridge labelled "Printing Cartridge" (Follow the cube
    instructions including feeding the filament etc..).
2.  Remove the "Printing Cartridge" from the cradle while still keeping
    the filament attached to the cube.
3.  Plug the cartridge labelled "Recharge Cartridge" into the cradle
    while keeping the "Printing Cartridge" filament attached.
4.  read the next couple of steps ahead of time, timing is critical.
5.  Start a new print and wait for the actual print to start (Not just
    the heat up).
6.  Once the new print starts immediately swap the cartridges ("Printing
    Cartridge" should wind up in the cradle")
    -   You'll have about a 7 second window to do the swap. If you see
        an error about "Hot Swap" don't worry. Just swap the "Recharge
        Cartridge" back and wait for the error to go away and then
        repeat the last step.
7.  Cancel the print (This is optional since you're already using the
    "Printing Cartridge" filament).
    -   Sometime during the cooldown it programs the Cartridge with the
        remaining filament capacity. Takes about 90 seconds.
8.  Now check the "Cartridge Status" and you should have a reset
    cartridge.

### Wifi Doesn't Work {#wifi_doesnt_work}

We had to restore an old firmware to enable us to use our own filament
and as a result the Wifi access doesn't work. Your better off just
transferring the .cube file to the usb key and printing via the LCD
menu.

### Hacks that Make This Thing Work {#hacks_that_make_this_thing_work}

Firmware is hacked to ignore filament cartridge life (aka you can refill
cartridges) It is important that the firmware is not altered upgraded or
borked.

### Firmware Updates {#firmware_updates}

Please don't because we'll lose the hack that lets us refill the
filament.

[Category:3D_Printing](Category:3D_Printing)
[Category:Equipment](Category:Equipment)
[Category:3D_Printers](Category:3D_Printers)
