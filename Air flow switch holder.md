This is the OpenSCAD code to create a wafer air flow sensor (and
backflow preventer) to hold a microswitch to stop the laser from firing
if the exhaust flow stops. Dimensions have been set to match the exhaust
nozzle. The current version of the header doesn't quite match, even
though the nozzle was reverse engineered from it.

This was printed on 5/1 and it has some issues.

1.  The arms which hold the switch body interfere with the flap plate.
2.  The flap plate axis of rotation could be lowered to improve the
    balance.
3.  The thickness of the wafer can be increased to reduce the warpage of
    the piece.

Model was redesigned on 5/5:

1.  Switch holder moved to side from top center
2.  Flap axis of rotation lowered
3.  Up arrow added
4.  Thickness increased from 3 to 5 mm
5.  Wire holes relocated 180°

You can find the stl file here
![](Airflow-switch.stl "Airflow-switch.stl")

    <nowiki>
    /*
    exhaust airflow detector
    safety interlock for cheap Chinese laser at Hac DC
    This switch is a lug style wafer for insertion between the exhaust collector and the exhaust nozzle on the back of the laser chassis.
      When the exhaust fan is running and air is flowing the switch will operate to allow the laser to fire.  This switch is upstream of
      the exhaust fan so air will leak into the exhaust stream, not exhaust leaking out into room air.
    James Sullivan
    5-5-17, v2
    OpenSCAD version 2015.03-1 

    --dimensions from mating exhaust nozzle--
    nid=60;     //nozzle inner diameter
    nod=80;     //nozzle outer diameter
    mod=100;    //maximum outer diameter
    sh=30;      //step height
    sw=5;       //step width
    oah=50;     //over-all height
    tlw=3;      //top ledge width
    bcd=46.8*2; //bolt circle diameter
    bhd=3.6;    //bolt hole diameter
    fw=12;      //foot width
    fh=15;      //foot height
    fod=108;    //foot outside dimension, from outside edge to outside edge
    fid=(nid+nod)/2;//foot inside dimension, from inside edge to inside edge
    */
    fid=60;  //flange inner diameter, same as nid
    fod=80;  //flange outer diameter, same as nod
    bhd=3.6; //bolt hole diameter
    bcd=93.6;//bolt circle diameter
    thick=5; //thickness of flange - originally 3, but warped when removing from printer bed
    flap=3;  //thickness of flap - originally 3, but warped when removing from printer bed
    hph=bhd*2;   //hinge pin height above center line, i.e. butterfly offset.  Reduce to make switch more sensitive.  Increse to make switch more stable. - originally 10
    sfw=fid-thick*2; //switch flap width - originally sqrt(fid*fid-4*hph*hph)
    shd=2;  //switch hole diameter
    shp=10; //switch hole pitch, i.e. center to center spacing of mounting holes on microswitch
    srh=12;  //switch roller height, i.e. height above switch hole centerline where switching action occurs
    sbw=6;  //switch body width
    nfw=5;  //nut face width
    nt=1;   //nut thickness
    $fn=80;

    difference(){ //wafer body
        union(){
            cylinder(d=fod,h=thick);    
            for(ang=[0,90]){
                rotate([0,0,ang]) hull(){  //lugs
                    translate([bcd/2,0,0]) cylinder(d=3*bhd, h=thick);
                    translate([-bcd/2,0,0]) cylinder(d=3*bhd, h=thick);
                }
            }
            translate([sfw/2+thick/2,0,thick]) rotate([-90,0,0]) cylinder(d1=shd*1.6,d2=0,h=shd*2);//up direction arrow head
            translate([sfw/2+thick/2,0,thick]) rotate([90,0,0]) cylinder(d=shd*0.8,h=shd*2); //up direction arrow shaft
        }
        translate([0,0,-thick/2]) intersection(){ //bore
            cylinder(d=fid, h=2*thick);           //circular top and bottom
            cube([sfw,fod,thick*4],true);         //vertical left and right
        }
        for (angle=[0:90:270]){ //bolt holes in lugs
            rotate([0,0,angle]) translate([bcd/2,0,-thick/2]) cylinder(d=bhd,h=thick*2);
        }
        for (angle=[235:5:245]){  //wire holes through flange
            translate([0,0,thick-flap/2]) rotate([0,90,angle]) cylinder(d=1,h=bcd/2);
        }
        translate([0,hph,flap/2]) rotate([0,90,0]) cylinder(d=1,h=bcd+4*bhd,center=true);  //hinge pin axle hole
    } //end of wafer body
    translate([-thick/2-sfw/2,0,flap/2+srh]){   //switch holder
        difference(){
            union(){
                cube([thick,shp+3*shd,3*shd],center=true);//mount flange
                color("blue") translate([0,0,-srh/2-flap/4+thick/2-3*shd/4]) cube([thick,shp+3*shd,srh+flap/2-thick-3*shd/2],center=true); //support for mount flange
                translate([-thick/2,0,-shd*2]) cylinder(d2=shd*1.6,d1=0,h=shd*2.0);//flow direction arrow head
                translate([-thick/2,0,-shd/2]) cylinder(d=shd*0.8,h=shd*2.0); //flow direction arrow shaft
            }
            for (dy=[-shp/2,shp/2]) {
                translate([0,dy,0]) rotate([0,90,0]) cylinder(d=shd,h=2*thick,center=true);   //bolt holes
                for (angle=[0:120:240]){
                    translate([-thick/2,dy,0]) rotate([angle,0,0]) cube([nt*2,nfw,nfw/sqrt(3)],center=true); //nut sockets
                }
            }
        }
    }

    translate([0,fid/2+bcd/2+bhd*2,0]) difference(){    //flap disk
        intersection(){   //bore
            cylinder(d=fid-0.5, h=flap);  //circular top and bottom
            cube([sfw-0.5,fod,flap*2],true);    //vertical left and right
        }
        translate([0,hph,flap/2]) rotate([0,90,0]) cylinder(d=1,h=bcd+4*bhd,center=true);  //hinge pin axis
    }
    </nowiki>

[Category: CheapChineseLaser](Category:_CheapChineseLaser)
