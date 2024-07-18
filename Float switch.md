This is the source code for the float switch 3d printed parts for the
water level detector for the [Cheap Chinese
Laser](Cheap_Chinese_Laser). It is made in two parts: the
head and the base. You also need 4 pieces of 1/4-20 all thread to
connect the two of them and 8 nuts. The base is internally threaded. The
head needs nuts top and bottom. Washers would be good too.

![](Float-switch-head.stl "Float-switch-head.stl") rendered on 5/1/2017

![](Float-switch-base.stl "Float-switch-base.stl") rendered on 5/7/2017

    /*
    low water level detector
    safety interlock for cheap Chinese laser at Hac DC
    This water level detector is a two piece assembly connected by threaded rod.  This model uses 1/4-20 rod.  The lower foot has a 40mm home in the bottom to insert a pingpong ball as the float.
    James Sullivan
    5-8-17
    Mk 5 - removed tolerance variable and adjusted threads, ppbd, and head threaded rod holes diameters
    OpenSCAD version 2015.03-1 
    */
    ppbd=41;    //ping pong ball diameter, includes 1mm tolerance
    ppbw=2.7;   //ping pong ball weight in grams
    shd=2;  //switch hole diameter
    shp=10; //switch hole pitch, i.e. center to center spacing of mounting holes on microswitch
    wlh=200;    //water level height
    sbw=6;  //switch body width
    nfw=4;  //nut face width, switch mounting nuts
    nt=1;   //nut thickness, switch mounting nuts
    thick=5;    //thickness
    eps=0.1;    //epsilon
    br=50;      //base radius
    rod=25.4/4; //rod outer diameter
    tpi=20;     //threads per inch
    td=13.74/tpi;   //thread depth
    fph=25.4*5/tpi;//foot pillar height
    bfw=ppbd+2*thick;  //base flange width
    $fn=48; 
    function mod(num,den) = num - floor(num/den)*den; 
    //dimensions taken from Front Door Switch Holder
    wr=4;           //wrench size for nuts width across flats
    nh=1;           //nut height, depth of nut sockets

    //head
    module head() {
        color("cyan") difference(){
            union(){
                for(angle=[45:90:315]){
                    rotate([0,0,angle]) translate([ppbd/2+rod/2+td,0,0]) cylinder(d=rod+thick*2,h=thick); //leg cylinders
                }
                cylinder(h=thick,r=ppbd/2+rod/2+td-thick/2);
            }
            translate([0,0,-thick/2]) cylinder(h=thick*2,r=ppbd/2+rod/2-3*thick/2);  //center bore to reduce material amount and print time
            for(angle=[45:90:315]){
                rotate([0,0,angle]) translate([ppbd/2+rod/2+td,0,-thick/2]) cylinder(d=rod*1.1,h=thick*2); //leg holes for threaded rods
            }
        }
        translate([sbw/2,(ppbd+rod-2*thick)/(-2),0]) cube([thick,ppbd+rod-2*thick,thick]);  //support for switch mounting block
        translate([sbw/2,shp/2,thick]) difference(){ //switch mounting block, aligned with z-plane and x-plane, centered on y-plane
            translate([0,-shp/2-nfw,0]) color("green") cube([thick,shp+2*nfw,2*nfw]);
            for (y=[-shp/2,shp/2]) {
                translate([thick/2,y,nfw]) rotate([0,90,0]) cylinder(d=shd,h=thick*2,center=true);    //screw holes
                translate([sbw-nh,y,nfw]) union(){  //nut sockets
                    for (ang=[0,120,240]) rotate([ang,0,0]) cube([nh*2,wr,wr/sqrt(3)],center=true);
                }
            }
            translate([sbw/2+thick,bfw/2-nfw-shp,nfw]) union(){  //center nut socket
                cube([nh*2,wr,wr/sqrt(3)],center=true);
                rotate([120,0,0]) cube([nh*2,wr,wr/sqrt(3)],center=true);
                rotate([240,0,0]) cube([nh*2,wr,wr/sqrt(3)],center=true);
            }
        }
    }

    module socket(nd,tpi,tl,thick) {
        //nd = nominal diameter
        //tpi = threads per inch
        //tl = thread length
        ror=nd/2;       //rod outer radius
        pitch=25.4/tpi; //thread pitch in mm
        td=13.74/tpi;   //thread depth in mm
        rir=ror-td;     //rod inner radius
        sor=ror+thick;  //socket outer radius
        vert= [for (ang=[0:360/$fn:720]) ang<=90 ? [cos(ang),sin(ang)]*rir : 
            ang<202.5 ? [cos(ang),sin(ang)]*(rir+td*(ang-90)/112.5) : 
            ang<=247.5 ? [cos(ang),sin(ang)]*ror : 
            ang<360 ?[cos(ang),sin(ang)]*(rir+td*(360-ang)/112.5) : 
            [cos(ang),sin(ang)]*sor];
        path1=[for(p=[0:$fn]) p<$fn ? p : 0 ];
        path2=[for(p=[$fn:2*$fn]) p<2*$fn ? p : $fn ];
        color("green") difference(){
            linear_extrude(height=tl,center=false,convexivity=20,twist=tl/25.4*tpi*360){
                polygon(points=vert,paths=[path1,path2]);
            }
            translate([0,0,tl-ror*tan(30)]) cylinder(r2=ror,r1=0,h=ror*tan(30));  //inlet chamfer
        }
    }


    //foot
    module foot(){
        difference(){
            union(){
                translate([0,0,thick/2]) cube([ppbd+2*thick,ppbd+2*thick,thick],center=true);
                for (angle=[45:90:315]){
                    rotate([0,0,angle]){
                        translate([ppbd/2+rod/2+13.74/tpi,0,thick]) socket(rod*1.1,tpi,fph,thick);  //pillar
                        translate([0,-thick,0]) cube([br-thick,thick*2,thick]); //leg
                        translate([br-thick,0,0]) cylinder(r=thick,h=thick);    //foot
                    }  //end rotate
                }  //end for
            }  //end union
            translate([0,0,-eps/2]) cylinder(d=ppbd,h=fph+eps+thick); //ping pong ball entry
        }   //end difference
    }   //end foot module
        

    //head();
    foot();

[Category: CheapChineseLaser](Category:_CheapChineseLaser)
