![](Tbh.stl "Tbh.stl")

    <nowiki>
    //Terminal Block Holder v2 - reduced height from 15 to 10 and raised screw hole 2mm by reducing end width (EW) from 12 to 8.
    //James Sullivan
    //5/1/17
    //OpenSCAD version 2015.03-1 
    //HacDC, cheap Chinese laser, K40, 40 watt
    //These parts hold a terminal block for landing of the wires going to the safety interlock switches.  It is designed to use self threading
        screws without nuts.  Handedness is based upon which end of the terminal strip the mount sets on when looking at the terminal strip.
        The right piece goes toward the back of the machine, and the left piece goes toward the front.  The first version was too tall to slide
        on the front of the chassis and too long to fit on the back, so both dimensions are reduced here in version 2.
    thick=5;    //thickness of part
    metal=1;    //metal thickness of the chassis sheet metal
    slot=16;    //width of slot in mount, width of flange on machine, full width outside to outside!
    height = 10;    //z distance of mount, extrusion height, installed length
    tw=slot+2*thick;    //total width
    $fn=40;
    bhd=4.0;    //bolt hole diameter
    et=4.0;     //end thickness between bolt hole perimeter and square end
    ew=8.0;     //end width: height of mounting boss
    foo=6.7;    //width of cylinders
    foo2=8.7;   //thickness of terminal strip in axial direction of mounting screws
    rd=2.8;     //root diameter of mounting screws
    module right(){ difference(){
        union(){
            cube([tw,thick,height]); //top horizontal
            translate([thick+metal,-thick-metal,0]) cube([slot+thick-metal,thick,height]); //lower horizontal
            translate([0,-metal-thick*1.5,0]) cube([thick,metal+thick*2.5,height]); //left vertical
            translate([thick+metal,-1.5*thick-metal,0]) cube([thick,thick*1.5,height]); //center vertical
            translate([slot+thick,-metal-thick,0]) cube([thick,metal+thick*2,height]); //right vertical
            translate([thick*2,-ew-metal,0]) cube([slot-thick,ew,height+bhd+2*et]);
        }
        translate([0,-ew/2-metal,height+et+bhd/2]) rotate([0,90,0]) cylinder(d=rd,h=tw);    
    }}

    right();
    translate([0,-ew*2-metal*3,0]) mirror([0,1,0]) right();
    </nowiki>

[Category: CheapChineseLaser](Category:_CheapChineseLaser)
