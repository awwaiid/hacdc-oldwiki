This is the exhaust nozzle to transition from the header on the back
panel of the chassis to the 4 inch flexible metal exhaust duct which
goes to the exhaust fan.

//James Sullivan //exhaust nozzle for laser cutter to connect to 4"
exhaust hose //dimensions in millimeters //parametric version //4-20-17
//OpenSCAD version 2015.03-1 \$fn=80; nid=60; //nozzle inner diameter
nod=80; //nozzle outer diameter mod=100; //maximum outer diameter sh=30;
//step height sw=5; //step width oah=50; //over-all height tlw=3; //top
ledge width bcd=46.8\*2; //bolt circle diameter bhd=3.6; //bolt hole
diameter fw=12; //foot width fh=15; //foot height fod=108; //foot
outside dimension, from outside edge to outside edge
fid=(nid+nod)/2;//foot inside dimension, from inside edge to inside edge
difference(){ //nozzle rotate_extrude (angle=360,convexity=4)
{polygon(points=\[\[nid/2,0\],\[nod/2,0\],\[mod/2,sh\],\[mod/2-sw,sh\],\[mod/2-sw,oah\],\[mod/2-sw-tlw,oah\]\]);};
//nozzle itself for (angle=\[0:90:270\]){ //screw access cuts
rotate(\[0,0,angle\]) translate(\[bcd/2,0,-5\]) rotate(\[0,6,0\])
cylinder(d=bhd\*3.5,h=oah+10); } } module foot(){ difference(){
translate(\[fid/2,-fw/2,0\]) cube(\[(fod-fid)/2,fw,fh\]); //foot
translate(\[bcd/2,0,-5\]) cylinder(d=bhd,h=25); //bolt hole } } for
(angle=\[0:90:270\]){ rotate(\[0,0,angle\]) foot(); }
