Basic instructions for the HacDC **Lulzbot 3D** printers

## Create a model with CAD software {#create_a_model_with_cad_software}

Create your model with [ImplicitCAD](http://www.implicitcad.org/) or
[OpenSCAD](http://www.openscad.org/). Creating your model is beyond the
scope of this document, but the two previous links include
documentation. The model will be saved with the extension or **.escad**
or **.scad** respectively.

## Export CAD model to a STereoLithography (STL) file {#export_cad_model_to_a_stereolithography_stl_file}

Your model should then be exported as a [STereoLithography
file](https://en.wikipedia.org/wiki/STL_%28file_format%29) with the
extension **.stl**. OpenSCAD can do this from the **File -\> Export**
menu. ImplicitCAD appears to use a separate program:

`   $ `**`extopenscad`**` model`**`.escad`**` model`**`.stl`**

## Export STL file to G-code printer instructions file {#export_stl_file_to_g_code_printer_instructions_file}

While the **.escad** and **.scad** files are unique to the apps above,
the **.stl** file is a standard understood by many programs. Some(?)
printers understand STL files directly. Our Lulzbot printers are not
among them. The STL file must be further converted into a series of
instructions that tell the printer exactly how to calibrate, heat, move,
extrude, and cool.

Again there is a widely used standard:
[G-code](https://en.wikipedia.org/wiki/G-code). G-code files, logically
enough, typically have the extension **.gcode**.
[Cura](https://www.lulzbot.com/cura), among other programs, reads STL
files and produces G-code files. [Slic3r](http://slic3r.org/) is another
such program. (See the [Slic3r manual](http://manual.slic3r.org/) for
more info.)

```{=html}
<div style="background-color: #ffff7f; color:#ff0000; font-weight:bold; margin:40px; padding:20px; font-size:120%; border: 1px solid #ff0000;">
```
Use Lulzbot's Cura, not "standard" Cura! The link above will take you to
the right place.

```{=html}
</div>
```
## Finally! From virtual to physical. PRINT! {#finally_from_virtual_to_physical._print}

1.  Turn computer and 3D printer on.
2.  After boot, login as **root**. The password is printed on the
    monitor.
3.  Insert USB stick (or get your **.gcode** to the computer by other
    means).
4.  Start **pronsole**.

  \|Command                     \|Notes
  ----------------------------- ---------------------------------------------------
  \$ **lsblk**                  List USB devices
  \$ **mount /dev/sdb2 /mnt**   Mount USB
  \$ **ls /mnt**                
  \$ **cd /mnt**                
  \$ **ls**                     
  \$ **pronsole**               
  \> **connect**                
  \> **settemp 190**            Remove any filament that may be stuck in extruder
  \> **load ....**              Tab to complete name
  \> **print**                  
  \> **monitor**                
  \> **exit**                   
                                

The Lulzbot Mini will eventually move the extruder head up

  \|Command                     \|Purpose
  ----------------------------- ------------------------------------------
  \$ **pronsole**               
  \> **connect /dev/ttyACM0**   or **connect /dev/ttyACM1**
  \> **home x**                 watch the printers to see which responds
                                

`   login: `**`root`**\
`   $ `**`lsblk`**\
`   $ `**`mount /dev/sdb2 /mnt`**\
`   $ `**`ls /mnt`**\
`   $ `**`cd /mnt`**\
`   $ `**`ls`**\
`   $ `**`pronsole`**\
`   > `**`connect`**\
`   > `**`settemp 190`**\
`   > `**`load`**` ...`\
`   > `**`print`**\
`   > `**`monitor`**\
`   > `**`exit`**

[:Category:3D_Printing](:Category:3D_Printing)
[:Category:Equipment](:Category:Equipment)
[:Category:3D_Printers](:Category:3D_Printers)
[:Category:LulzBotMini](:Category:LulzBotMini)

[Category:3D_Printing](Category:3D_Printing)
[Category:Equipment](Category:Equipment)
[Category:3D_Printers](Category:3D_Printers)
[Category:LulzBotMini](Category:LulzBotMini)
