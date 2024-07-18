    //Front Door Switch Holder
    //Mark 5
    //James Sullivan
    //4/28/17
    //OpenSCAD version 2015.03-1 
    //HacDC, cheap Chinese laser, K40, 40 watt
    //This part holds 2 microswitches to shut down the laser power supply if the cutting chamber door or the control equipment chamber door is opened
    thick=5;    //thickness of part
    metal=1;    //metal thickness
    slot=16;    //width of slot in mount, width of flange on machine, full width outside to outside!
    //height=16;    //z distance of mount, extrusion height, installed length
    pin=1.25;   //switch hold radius
    pitch = 10 ; //switch hole center-center distance
    ph = 9;     //pin height, centerline of screw holes above flange top
    height = pitch + 6 * pin;   //z distance of mount, extrusion height, installed length
    wr=4;           //wrench size for nuts width across flats
    nh=1;           //nut height, depth of nut sockets
    lfw=15;     // left flange width, distance from left face of machine flange to right face of left mounting post
    nhl = slot + lfw + 2 * nh;  //nut hole length
    tw=slot+lfw+2*thick;    //total width
    $fn=40;
    difference(){
        union(){
            translate([-lfw,0,0]) cube([tw,thick,height]); //top horizontal
            translate([thick+metal,-thick-metal,0]) cube([slot+thick-metal,thick,height]); //lower horizontal
            translate([-lfw,0,0]) cube([thick,ph+3*pin,height]); //far left vertical
            translate([0,-metal-thick*1.5,0]) cube([thick,metal+thick*2.5,height]); //left vertical
            translate([thick+metal,-1.5*thick-metal,0]) cube([thick,thick*1.5,height]); //center vertical
            translate([slot+thick,-metal-thick,0]) cube([thick,metal+thick+ph+3*pin,height]); //right vertical
            translate([0,0,height/2]) cube([thick*2,thick*2,height],center=true);  //fillet material
            }
        translate([-1.5*thick-lfw,ph,(height-pitch)/2]) rotate([0,90,0]) cylinder(r=pin,h=tw+2*thick);  //bolt hole
        translate([-1.5*thick-lfw,ph,(height+pitch)/2]) rotate([0,90,0]) cylinder(r=pin,h=tw+2*thick);  //bolt hole
        translate([nhl/2-lfw+thick-nh,ph,(height-pitch)/2]) union(){  //nut sockets
            cube([nhl,wr/sqrt(3),wr],center=true);
            rotate([120,0,0]) cube([nhl,wr/sqrt(3),wr],center=true);
            rotate([240,0,0]) cube([nhl,wr/sqrt(3),wr],center=true);
            }
        translate([nhl/2-lfw+thick-nh,ph,(height+pitch)/2]) union(){  //nut sockets
            cube([nhl,wr/sqrt(3),wr],center=true);
            rotate([120,0,0]) cube([nhl,wr/sqrt(3),wr],center=true);
            rotate([240,0,0]) cube([nhl,wr/sqrt(3),wr],center=true);
            }
        translate([-thick,-thick,-height/2]) cylinder(r=thick,h=height*2);  //corner fillet
        translate([thick/2-lfw,thick/2,-height/2]) rotate([0,0,180]) difference(){ //left round
            cube([thick,thick,height*2]);
            cylinder(d=thick,h=height*2);
        }
        translate([slot+thick*3/2,-thick/2-metal,-height/2]) rotate([0,0,-90]) difference(){ //right round
            cube([thick,thick,height*2]);
            cylinder(d=thick,h=height*2);
        }
    }

![](Fdsh-v5.stl "Fdsh-v5.stl")

[Category:CheapChineseLaser](Category:CheapChineseLaser)
