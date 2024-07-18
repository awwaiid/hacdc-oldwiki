This is a collection of ImplicitCAD files for an assortment of objects.
Enjoy! (Note that versions fudged for HacDC's miscalibrated Rostock &
compiled .stl files are available for many of these at HacDC in the
ImplicitCAD/radioshack_box directory on the renderadmin computer.) 3D
printer parts: module
minireelholder(Tr,Hl,Hs,Vl,Pt,Ph,Mx,Mr,Wt,Tt,T,Mt,Tl,Cr,Br,Hr,Cc,E)
/\*reel holder for Lulzbot MINI; long bolt goes thru large washer, reel
holder, reel holder cap, large washer, & wing nut\*/ {difference()
{union() {linear_extrude(T)
polygon(\[(Tr,Tr-Hs),(Tr+Hs/2+Cc-Hl,Tr-Hs),(Tr-Hl,Tr-Hs/2+Cc),(Tr-Hl,Vl),(Tr+Pt-Hl,Vl),(Tr+Pt-Hl,Vl-Ph),(Tr+Pt+Mx-Hl,Vl-Ph),(Tr+Pt+Mx+Mr-Hl,Vl-Ph-Mr),(Tr+Pt+Mx+Mr-Hl,Tr+Cc),(Tr+Pt+Mx+Mr+Cc-Hl,Tr),(Tr/2,Tr),(Tr,Tr/2)\]);
/\*main body\*/ cylinder(r=Cr,h=T); /\*tube end\*/
translate(Tr+Pt+Mx-Hl,Vl-Ph-Mr,0) cylinder(r=Mr,h=Mt); /\*extended mount
connector\*/ translate(Pt+Tr+Mx-Mr-Hl,Vl-Ph-Mr-E,0) cube (2\*Mr,E,Mt);
/\*mount connector brace\*/ difference() {cylinder(r=Tr,h=Tl+T); /\*reel
tube\*/ translate(0,0,Wt) cylinder(r=Tr-Tt,h=Tl+T); } } /\*hollow tube
core\*/ translate(Tr+Pt+Mx-Hl,Vl-Ph-Mr,-1) cylinder(r=Hr,h=Mt+2);
/\*mount bolt hole\*/ translate(0,0,-1) cylinder(r=Br,h=T+2); } }
/\*reel bolt hole\*/ Tr=25; /\*tube radius\*/ Hl=165; /\*horizontal
length\*/ Hs=27.5; /\*horizontal side\*/ Vl=57.5; /\*vertical length\*/
Pt=13.8; /\*protrusion thickness\*/ Ph=13; /\*protrusion height\*/
Mx=5.7; /\*mount hole inset\*/ Mr=7; /\*mount radius\*/ Wt=5; /\*wall
thickness\*/ Tt=5; /\*tube thickness\*/ T=15; /\*arm thickness\*/
Mt=27.5; /\*mount thickness\*/ Tl=70; /\*tube length\*/ Cr=7.5; /\*core
thickness\*/ Br=3.5; /\*bolt hole radius\*/ Hr=2.45; /\*mounting hole
radius\*/ Cc=5; /\*corner cut\*/ E=10; /\*mount extension brace
length\*/
minireelholder(Tr,Hl,Hs,Vl,Pt,Ph,Mx,Mr,Wt,Tt,T,Mt,Tl,Cr,Br,Hr,Cc,E);
module minireelcap(Er,Et,Tr,Tt,Th,Br) {difference() {union()
{cylinder(r=Er,h=Et); cylinder(r=Tr,h=Et+Th); } translate(0,0,Et)
cylinder(r=Tr-Tt,h=Th); translate(0,0,-1) cylinder(r=Br,h=Et+Th+2); } }
Er=35; /\*end radius\*/ Et=5; /\*end thickness\*/ Tr=19.75; /\*tube
radius\*/ Tt=5; /\*tube thickness\*/ Th=5; /\*tube height\*/ Br=3.5;
/\*bolt radius\*/ minireelcap(Er,Et,Tr,Tt,Th,Br); Parts for Lulzbot
Taz - 2 short pieces of drive belt are needed. 4 bolts go thru a washer,
pulleyend, a small gap (\~2 mm), pulleymounttaz, a washer, & a nut;
adjust so that all 4 gaps are as similar as possible. Press a short
piece of belt against the main belt so that the teeth mesh. Slip the end
(it should be quite difficult but doable) into the channel in
jointbeltbed so the end of the short piece is where the channel changes
width and pull tight. Feed the belt around both pulleys. Pull tight &
press the other short piece of belt against the main belt just past the
other position in jointbeltbed where the channel changes width. Slip the
belt into the channel (this is one of those brilliant ideas that never
actually work in practice but this time it really did work!). Tighten
the 4 bolts evenly until the belt is tight. Slowly move the bed back &
forth. If the belt moves to the top or bottom of the pulley in
pulleymounttaz loosen the 2 bolts that the belt moved away from a half
turn & tighten the 2 bolts the belt moved towards an equal amount.
Repeat until the belt stays centered. Add a 2nd nut on all 4 bolts.
module
Tazmotormount(X,Y,Z,BLx,BRx,Ex,Ez,Ew,El,Eh,Mz,Mh,Mx,My,Sx,Sy,Sl,Sw,Wl,Wy,At,Hx,Hy,Hr,Bx,B1z,B2z,Br)
{difference() {union() {translate(-X/2-BLx,-Y/2,0) cube(BLx,Y+At,Z);
/\*left brace\*/ translate(X/2,-Y/2,0) cube(BRx,Y+At,Z); /\*right
brace\*/ translate(-X/2-BLx,Y/2,0) cube(BLx+X+BRx,At,Z); /\*attachemnt
plate\*/ translate(-X/2,-Y/2,Mz) cube(X,Y,Mh); /\*motor mount\*/ }
translate(-Mx/2,-My/2,0) cube(Mx,My,Z); /\*motor hole center\*/
translate(Mx/2,0,0) cylinder(r=My/2,h=Z); /\*motor hole right\*/
translate(-Mx/2,0,0) cylinder(r=My/2,h=Z); /\*motor hole left\*/
translate(Sx,-Sy,0) cylinder(r=Sw/2,h=Z); /\*slot 1 left\*/
translate(Sx+Sl,-Sy,0) cylinder(r=Sw/2,h=Z); /\*slot 1 right\*/
translate(Sx,-Sy-Sw/2,0) cube (Sl,Sw,Z); /\*slot 1 center\*/
translate(Sx,Sy,0) cylinder(r=Sw/2,h=Z); /\*slot 2 left\*/
translate(Sx+Sl,Sy,0) cylinder(r=Sw/2,h=Z); /\*2 right\*/
translate(Sx,Sy-Sw/2,0) cube(Sl,Sw,Z); /\*2 center\*/
translate(-Sx-Sl,Sy,0) cylinder(r=Sw/2,h=Z); /\*3 left\*/
translate(-Sx,Sy,0) cylinder(r=Sw/2,h=Z); /\*3 right\*/
translate(-Sx-Sl,Sy-Sw/2,0) cube(Sl,Sw,Z); /\*3 center\*/
translate(-Sx-Sl,-Sy,0) cylinder(r=Sw/2,h=Z); /\*4 left\*/
translate(-Sx,-Sy,0) cylinder(r=Sw/2,h=Z); /\*4 right\*/
translate(-Sx-Sl,-Sy-Sw/2,0) cube(Sl,Sw,Z); /\*4 center\*/
translate(-X/2-BLx+Ex,-Y/2-1,Ez) cube(Ew,Wy+Wl+1,Eh); /\*endstop\*/
translate(-X/2-BLx+Ex,Wy-Y/2,0) cube(Ew,Wl,Ez+1); /\*wire hole\*/
translate(-X/2-BLx+Hx,-Y/2+Hy,-1) cylinder(r=Hr,h=Z+2); /\*hole\*/
translate(Bx,At,B1z) rotate(\[-90,0,0\]) cylinder(r=Br,h=Y+1);
/\*mounting hole 1\*/ translate(Bx,At,Z-B2z) rotate(\[-90,0,0\])
cylinder(r=Br,h=Y+1); /\*hole 2\*/ translate(-Bx,At,Z-B2z)
rotate(\[-90,0,0\]) cylinder(r=Br,h=Y+1); /\*hole 3\*/
translate(-Bx,At,B1z) rotate(\[-90,0,0\]) cylinder(r=Br,h=Y+1); /\*hole
4\*/ } } X=46; /\*motor mount length\*/ Y=42; /\*width\*/ Z=35;
/\*height\*/ BLx=13; /\*left brace width\*/ BRx=5; /\*right brace
width\*/ Ex=2; /\*endstop inset\*/ Ez=10; /\*endstop bottom\*/ Ew=7;
/\*endstop width\*/ El=30; /\*endstop length\*/ Eh=21; /\*endstop
height\*/ Mz=10; /\*motor mount bottom\*/ Mh=8; /\*motor mount
thickness\*/ Mx=7; /\*motor hole length\*/ My=28.4; /\*motor hole
width\*/ Sx=12.5; /\*slot x position\*/ Sy=16; /\*slot y position\*/
Sw=2; /\*slot width\*/ Sl=5.5; /\*slot length\*/ Wl=12; /\*wire hole
length\*/ Wy=27; /\*wire hole y position\*/ At=5; /\*attachment plate
thickness\*/ Hx=Ex+Ew/2; /\*hole x inset\*/ Hy=5; /\*hole y inset\*/
Hr=2.75; /\*hole radius\*/ Bx=17; /\*mounting hole x position\*/ B1z=5;
/\*bottom z position\*/ B2z=10; /\*top z position\*/ Br=2; /\*radius\*/
Tazmotormount(X,Y,Z,BLx,BRx,Ex,Ez,Ew,El,Eh,Mz,Mh,Mx,My,Sx,Sy,Sl,Sw,Wl,Wy,At,Hx,Hy,Hr,Bx,B1z,B2z,Br);
module pulleyend(X,Y,Wt,Wd,B,Bz,Bb,Br,Rr,Rx,Rz,Rb,Po,Ph,Pw,Pr,Pb,Bt)
/\*object prints on back - print with support everywhere & brim\*/
{difference() {union() {linear_extrude(Y)
polygon(\[(0,0),(X,0),(X,Bz+B),(X-Rx+Rr+Wt,Rz+Rr+Wt),(Rx-Rr-Wt,Rz+Rr+Wt),(0,Bz+B)\]);
/\*end\*/ cube(B+Wt,Wt,Wd); /\*foot L\*/ translate(X-B-Wt,0,0)
cube(B+Wt,Wt,Wd); /\*R\*/ cube(Wt,Bz,Wd); /\*side L\*/
translate(X-Wt,0,0) cube(Wt,Bz,Wd); /\*R\*/ translate(0,Bz-Wt,0)
cube(B+Wt,Wt,Wd); /\*bar base L\*/ translate(X-B-Wt,Bz-Wt,0)
cube(B+Wt,Wt,Wd); /\*R\*/ translate(B,0,0) cube(Wt,Rz-Rr,Wd); /\*support
L\*/ translate(X-B-Wt,0,0) cube(Wt,Rz-Rr,Wd); /\*R\*/
translate(Rx-Rr-Wt,Rz-Rr-Wt,0) cube(2\*Rr+2\*Wt,2\*Rr+2\*Wt,Wd); /\*rod
socket L\*/ translate(X-Rx-Rr-Wt,Rz-Rr-Wt,0)
cube(2\*Rr+2\*Wt,2\*Rr+2\*Wt,Wd); /\*R\*/ translate(B,Rz+Rr+Wt-Ph,0)
cube(X-2\*B,Ph,Bt); /\*pulley brace\*/ } translate(Rx,Rz,-1)
cylinder(r=Rr,h=Wd+2); /\*rod hole left\*/ translate(X-Rx,Rz,-1)
cylinder(r=Rr,h=Wd+2); /\*right\*/ translate(0,Bz+B/2,Wd/2+Y/2)
rotate(\[0,90,0\]) cylinder(r=Bb,h=X); /\*bar bolt holes\*/
translate(0,Rz,Wd/2+Y/2) rotate(\[0,90,0\]) cylinder(r=Rb,h=Rx); /\*rod
bolt hole left\*/ translate(X-Rx,Rz,Wd/2+Y/2) rotate(\[0,90,0\])
cylinder(r=Rb,h=Rx); /\*right\*/ translate(B/2,Bz+B/2,-1)
cylinder(r=Br,h=Y+2); /\*bar end hole L\*/ translate(X-B/2,Bz+B/2,-1)
cylinder(r=Br,h=Y+2); /\*R\*/ translate(X/2-Po-Pw/2+Pb,Rz+Rr+Wt-Pb,-1)
cylinder(r=Pr,h=Bt+2); /\*pulley bolt 1\*/
translate(X/2-Po+Pw/2-Pb,Rz+Rr+Wt-Pb,-1) cylinder(r=Pr,h=Bt+2); /\*2\*/
translate(X/2-Po+Pw/2-Pb,Rz+Rr+Wt-Ph+Pb,-1) cylinder(r=Pr,h=Bt+2);
/\*3\*/ translate(X/2-Po-Pw/2+Pb,Rz+Rr+Wt-Ph+Pb,-1)
cylinder(r=Pr,h=Bt+2); /\*4\*/ } } X=200; /\*end length\*/ Y=5; /\*end
thickness\*/ Wt=5; /\*wall thickness\*/ Wd=25; /\*wall depth\*/ B=20.1;
/\*bar size\*/ Bz=19.95; /\*bar z\*/ Bb=2.5; /\*bar side hole radius\*/
Br=2.5; /\*bar end hole radius\*/ Rr=5.2; /\*rod radius\*/ Rx=25; /\*rod
x\*/ Rz=70; /\*rod z\*/ Rb=2.75; /\*rod side hole radius\*/ Po=13.5;
/\*pulley offset\*/ Ph=27.5; /\*pulley height\*/ Pw=42; /\*pulley
width\*/ Pr=1.6; /\*pulley hole radius\*/ Pb=4; /\*pulley hole inset\*/
Bt=12; /\*pulley brace thickness\*/
pulleyend(X,Y,Wt,Wd,B,Bz,Bb,Br,Rr,Rx,Rz,Rb,Po,Ph,Pw,Pr,Pb,Bt); module
pulleymounttaz(Bw,Bh,m,Pr,Pw,Rr,Br,Tw,Sw,Ch,Si,Sr) /\*object prints
upright - print with support everywhere & brim\*/ {difference()
{linear_extrude(Pw+Sw\*2)
polygon(\[(0,0),(Bw,0),(Bw,Bh),(Bw-Bh,Bh),(Bw/2+1.21\*Tw,Ch-0.71\*Tw),(Bw/2+Tw/2,Ch),(Bw/2-Tw/2,Ch),(Bw/2-1.21\*Tw,Ch-0.71\*Tw),(Bh,Bh),(0,Bh)\]);
/\*body\*/ translate(Bw/2,Pr+m,Sw) cylinder(r=Pr,h=Pw); /\*pulley\*/
translate(Bw/2,m+Pr,-1) cylinder(r=Rr,h=Pw+2\*Sw+2); /\*shaft\*/
translate(Bw/2,m+Pr,Pw+2\*Sw-Si) cylinder(r=Sr,h=Sw); /\*shaft head
inset\*/ translate(Bh/2,-1,Bh/2) rotate(\[-90,0,0\])
cylinder(r=Br,h=Bh+2); /\*bolt hole 1\*/ translate(Bw-Bh/2,-1,Bh/2)
rotate(\[-90,0,0\]) cylinder(r=Br,h=Bh+2); /\*2\*/
translate(Bw-Bh/2,-1,Pw+2\*Sw-Bh/2) rotate(\[-90,0,0\])
cylinder(r=Br,h=Bh+2); /\*3\*/ translate(Bh/2,-1,Pw+2\*Sw-Bh/2)
rotate(\[-90,0,0\]) cylinder(r=Br,h=Bh+2); /\*4\*/ } } Bw=42; /\*base
width\*/ Bh=8; /\*base height\*/ m=0.5; /\*minimum base thickness\*/
Pr=15; /\*pulley radius\*/ Pw=17.5; /\*pulley width\*/ Rr=4; /\*shaft
radius\*/ Br=1.6; /\*bolt radius\*/ Tw=10; /\*top width\*/ Sw=6.5;
/\*side width\*/ Ch=27; /\*center height\*/ Si=2.5; /\*shaft head
inset\*/ Sr=7; /\*shaft head radius\*/
pulleymounttaz(Bw,Bh,m,Pr,Pw,Rr,Br,Tw,Sw,Ch,Si,Sr); module
jointbeltbed(W,L,H,Cd,Cs,Ce,N,Ch,Os,S,D,El,Ed,Eh,Ew,Bs,Br,Bh,Cr,Bw,Ex,Hr,Hh)
/\*object prints upside down; print with brim\*/ {difference() {union()
{translate(-L/2,-W/2,0) cube(L,W,H); /\*body\*/ translate(-Cs,-W/2,0)
cube(Cs-Cd,W/2-S/2+Os,Ch); /\*guide L\*/ translate(Cd,-W/2,0)
cube(Cs-Cd,W/2-S/2+Os,Ch); /\*R\*/ linear_extrude(Ch)
polygon(\[(-Ce,S/2+Os),(-N,S/2+Os),(-N,D-S/2+Os),(-Cd,D-S/2+Os),(-Cd,W/2),(-Ce,W/2)\]);
/\*connector L\*/ linear_extrude(Ch)
polygon(\[(Ce,S/2+Os),(N,S/2+Os),(N,D-S/2+Os),(Cd,D-S/2+Os),(Cd,W/2),(Ce,W/2)\]);
/\*R\*/ translate(Ex-Bw,-W/2-El,0) cube(Bw,El,H); /\*endstop base\*/
translate(Ex-Ed,-W/2-El,0) cube(Ed,Ew,Eh); /\*endstop\*/ }
translate(0,0,-1) cylinder(r=Br,h=H+2); /\*center hole\*/
translate(-Bs,0,-1) cylinder(r=Br,h=H+2); /\*L hole\*/
translate(-Bs,0,H-Hh) cylinder(r=Hr,h=H); /\*L bolt head inset\*/
translate(Bs,0,-1) cylinder(r=Br,h=H+2); /\*R hole\*/
translate(Bs,0,H-Hh) cylinder(r=Hr,h=H); /\*R inset\*/
translate(-Cd/2-Cs/2,-W/2,Bh) rotate(\[-90,0,0\]) cylinder(r=Cr,h=W+1);
/\*connector hole L\*/ translate(Cd/2+Cs/2,-W/2,Bh) rotate(\[-90,0,0\])
cylinder(r=Cr,h=W+1); /\*R\*/ } } W=20; /\*base width\*/ L=110; /\*base
length\*/ H=8; /\*base height\*/ Cd=10; /\*connector inside\*/ Cs=25;
/\*guide outside\*/ Ce=35; /\*connector out side\*/ N=20; /\*double belt
end\*/ Ch=28; /\*connector height\*/ Os=0.5; /\*belt offset\*/ S=2.4;
/\*belt thickness\*/ D=3.5; /\*doubled belt thickness\*/ El=18;
/\*endstop length\*/ Ed=5; /\*endstop depth\*/ Eh=20; /\*endstop
height\*/ Ew=12; /\*endstop width\*/ Ex=46; /\*endstop position\*/
Bs=49; /\*bolt spacing\*/ Br=2; /\*bolt radius\*/ Bh=24; /\*connector
bolt height\*/ Cr=1.6; /\*connnector bolt radius\*/ Bw=10; /\*endstop
base width\*/ Hr=2.9; /\*bolt head radius\*/ Hh=3; /\*head height\*/
jointbeltbed(W,L,H,Cd,Cs,Ce,N,Ch,Os,S,D,El,Ed,Eh,Ew,Bs,Br,Bh,Cr,Bw,Ex,Hr,Hh);
/\*the item that holds the threaded z rod. (use 45mm M3 bolts with
narrow heads)\*/ module
jointrodzx(L,Lc,Le,We,Wc,H,Rr,Ry,Cr,Cz,B2r,B2xy,B1r,B1x,B1z,B2a)
/\*print with support touching buildplate & brim; object prints upright
from side: x=length,y=width,z=height\*/ {difference() {linear_extrude(H)
polygon(\[(0,0),(L,0),(L,We),(L-Le,Wc),(Le,Wc),(0,We)\]); /\*bolt niche
1\*/ translate(0,0,-1) linear_extrude(B1z+Lc-B1x+1)
polygon(\[(-1,We),(Lc,We),(Le,Wc)\]); /\*niche 2\*/ translate(0,0,-1)
linear_extrude(B1z+Lc-B1x+1) polygon(\[(L-Lc,We),(L+1,We),(L-Le,Wc)\]);
/\*niche 3\*/ translate(0,0,H-B1z-Lc+B1x) linear_extrude(B1z+Lc)
polygon(\[(L-Lc,We),(L+1,We),(L-Le,Wc)\]); /\*niche 4\*/
translate(0,0,H-B1z-Lc+B1x) linear_extrude(B1z+Lc)
polygon(\[(-1,We),(Lc,We),(Le,Wc)\]); /\*rod hole\*/translate(L/2,Ry,-1)
cylinder(r=Rr,h=H+2); /\*coupler protrusion\*/translate(L/2,Ry,H-Cz)
cylinder(r=Cr,h=Cz+1); /\*coupler hole
1\*/translate(L/2-B2xy/2-B2a/2,Ry-B2xy/2+B2a/2,-1)
cylinder(r=B2r,h=H+2); /\*hole
2\*/translate(L/2+B2xy/2+B2a/2,Ry-B2xy/2+B2a/2,-1)
cylinder(r=B2r,h=H+2); /\*hole
3\*/translate(L/2+B2xy/2-B2a/2,Ry+B2xy/2+B2a/2,-1)
cylinder(r=B2r,h=H+2); /\*hole
4\*/translate(L/2-B2xy/2+B2a/2,Ry+B2xy/2+B2a/2,-1)
cylinder(r=B2r,h=H+2); /\*mount hole 1\*/translate(B1x,-1,B1z)
rotate(\[-90,0,0\]) cylinder(r=B1r,h=We+2); /\*hole
2\*/translate(L-B1x,-1,B1z) rotate(\[-90,0,0\]) cylinder(r=B1r,h=We+2);
/\*hole 3\*/translate(L-B1x,-1,H-B1z) rotate(\[-90,0,0\])
cylinder(r=B1r,h=We+2); /\*hole 4\*/translate(B1x,-1,H-B1z)
rotate(\[-90,0,0\]) cylinder(r=B1r,h=We+2); } } L=47; /\*full length\*/
Lc=9; /\*center length\*/ Le=16.2; /\*end length\*/ We=6; /\*end
width\*/ Wc=22; /\*width at rod\*/ H=36; /\*height of the part.\*/
Rr=4.3; /\*rod radius\*/ Ry=10.85; /\*rod position\*/ Cr=5.2; /\*coupler
protrusion radius\*/ Cz=2; /\*coupler protrusion amount\*/ B2r=1.9;
/\*coupler hole radius\*/ B2xy=11.2; /\*coupler hole separation\*/
B1r=1.6; /\*mounting hole radius\*/ B1x=4.6; /\*mounting hole x inset\*/
B1z=5.6; /\*mounting hole z inset\*/ B2a=0.4; /\*coupler hole
asymmetry\*/
jointrodzx(L,Lc,Le,We,Wc,H,Rr,Ry,Cr,Cz,B2r,B2xy,B1r,B1x,B1z,B2a); module
probemount(a,b,c,d,e,f,g,i,p,rs,rp,s1,s2,h) /\*This is to mount a probe
on the Taz printhead, 1 piece version - March 16, 2018 version\*/
{linear_extrude(h) {difference()
{polygon(\[(0,0),(a,0),(a,b),(d,b),(d,0),(d+a+i,0),(d+a+i,e-d-a-i+p+f),(p+f,e),(p-f,e),(0,e+f-p)\]);
translate(s1,g) circle(r=rs); translate(s2,g) circle(r=rs);
translate(p,c) circle(r=rp); } } } a=20; /\*projection width\*/ b=27;
/\*projection depth\*/ c=41.25; /\*probe center\*/ d=50; /\*edge
distance\*/ e=55.5; /\*mount depth\*/ f=14.25; /\*remainder\*/ g=13;
/\*screw y location\*/ i=5; /\*extra projection width\*/ p=35; /\*probe
position\*/ rs=2; /\*screw hole\*/ rp=9.25; /\*probe hole\*/ s1=10;
/\*screw x location\*/ s2=60; h=1; /\*thickness\*/
probemount(a,b,c,d,e,f,g,i,p,rs,rp,s1,s2,h); module
probemount2A(a,b,c,d,dps,e,f,g,i,p,rs,rp,rps,s1,s2,h) /\*2 part version,
part A - August 14, 2018 version\*/ {linear_extrude(h) {difference()
{polygon(\[(0,0),(a,0),(a,b),(d,b),(d,0),(d+a+i,0),(d+a+i,e-d-a-i+p+f),(p+f,e),(p-f,e),(0,e+f-p)\]);
translate(s1,g) circle(r=rs); translate(s2,g) circle(r=rs);
translate(p,c) circle(r=rp); translate(p,c+dps) circle(r=rps);
translate(p-0.866\*dps,c-dps/2) circle(r=rps);
translate(p+0.866\*dps,c-dps/2) circle(r=rps); } } } a=20; /\*projection
width\*/ b=27; /\*projection depth\*/ c=41.25; /\*probe center\*/ d=50;
/\*edge distance\*/ dps=16.75; /\*probe-screw distance\*/ e=63; /\*mount
depth\*/ f=6.75; /\*remainder\*/ g=13; /\*screw y location\*/ i=5;
/\*extra projection width\*/ p=35; /\*probe position\*/ rs=2; /\*screw
hole\*/ rp=9.25; /\*probe hole\*/ rps=0.5; /\*probe screw hole\*/ s1=10;
/\*screw x location\*/ s2=60; h=3; /\*thickness\*/
probemount2A(a,b,c,d,dps,e,f,g,i,p,rs,rp,rps,s1,s2,h); module
probemount2B(dps,h,rp,rps,r3,w) /\*2 part version, part B - August 14,
2018 version\*/ {linear_extrude(h) {difference()
{polygon(\[(rp/r3-2\*dps/r3,rp+w),(2\*dps/r3-rp/r3,rp+w),(rp/r3+dps/r3+r3\*w/2,dps-rp-w/2),(2\*rp/r3-dps/r3+r3\*w/2,-dps-w/2),(dps/r3-2\*rp/r3-r3\*w/2,-dps-w/2),(-rp/r3-dps/r3-r3\*w/2,dps-rp-w/2)\]);
translate(-r3\*dps/2,dps/2) circle(r=rps); translate(r3\*dps/2,dps/2)
circle(r=rps); translate(0,-dps) circle(r=rps); circle(r=rp); } } }
dps=16.75; /\*probe-screw distance\*/ h=3; /\*thickness\*/ rp=9.25;
/\*probe hole\*/ rps=0.5; /\*screw hole\*/ r3=1.732; w=5; /\*minimum
width of edge\*/ probemount2B(dps,h,rp,rps,r3,w); module
couplerrods1(L1,L2,Cr,Wr,Wh,Br,R1r,R2r) /\*print with support touching
buildplate & brim - object prints on side\*/ {difference() {union()
{rotate(\[0,90,0\]) cylinder(r=Cr,h=L1+L2); /\*body\*/
translate(L1/2-Wr,-Cr/2,0) cube(2\*Wr,Cr,Wh); /\*bolt connection 1\*/
translate(L1/2,Cr/2,0) cylinder(r=Wr,h=Wh); /\*bolt 1-1\*/
translate(L1/2,-Cr/2,0) cylinder(r=Wr,h=Wh); /\*1-2\*/
translate(L1+L2/2-Wr,-Cr/2,-Wh) cube(2\*Wr,Cr,2\*Wh); /\*bolt connection
2\*/ translate(L1+L2/2,Cr/2,0) cylinder(r=Wr,h=Wh); /\*bolt 2-1\*/
translate(L1+L2/2,-Cr/2,0) cylinder(r=Wr,h=Wh); /\*2-2\*/ }
translate(-1,0,0) rotate(\[0,90,0\]) cylinder(r=R1r,h=L1+L2+2); /\*rod 1
hole\*/ translate(L1,0,0) rotate(\[0,90,0\]) cylinder(r=R2r,h=L2+1);
/\*2 hole\*/ translate(-1,-Cr-1,-Cr-1) cube(L1+L2+2,2\*Cr+2,Cr+1);
/\*remove half\*/ translate(L1/2,Cr/2,-Cr) cylinder(r=Br,h=2\*Cr);
/\*bolt hole 1-1\*/ translate(L1/2,-Cr/2,-Cr) cylinder(r=Br,h=2\*Cr);
/\*1-2\*/ translate(L1+L2/2,Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*2-1\*/
translate(L1+L2/2,-Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*2-2\*/ } }
L1=15; /\*side 1 length\*/ L2=15; /\*2 length\*/ Cr=13.5; /\*coupler
radius - must be \>2\*R2r+2\*Wr\*/ Wr=4.45; /\*washer radius\*/
Wh=sqrt((3\*Cr/2-Wr)\*(Cr/2+Wr)); /\*washer height\*/ Br=1.55; /\*bolt
radius\*/ R1r=2.4; /\*rod 1 radius\*/ R2r=4; /\*rod 2 radius - must be
\>=R1r\*/ couplerrods1(L1,L2,Cr,Wr,Wh,Br,R1r,R2r); module
couplerrodsN1(L1,L2,Cr,Wr,Wh,Br,R1r,R1n,R2r) /\*with notch; print with
support touching buildplate & brim - object prints on side\*/
{difference() {union() {rotate(\[0,90,0\]) cylinder(r=Cr,h=L1+L2);
/\*body\*/ translate(L1/2-Wr,-Cr/2,0) cube(2\*Wr,Cr,Wh); /\*bolt
connection 1\*/ translate(L1/2,Cr/2,0) cylinder(r=Wr,h=Wh); /\*bolt
1-1\*/ translate(L1/2,-Cr/2,0) cylinder(r=Wr,h=Wh); /\*1-2\*/
translate(L1+L2/2-Wr,-Cr/2,-Wh) cube(2\*Wr,Cr,2\*Wh); /\*bolt connection
2\*/ translate(L1+L2/2,Cr/2,0) cylinder(r=Wr,h=Wh); /\*bolt 2-1\*/
translate(L1+L2/2,-Cr/2,0) cylinder(r=Wr,h=Wh); /\*2-2\*/ }
translate(-1,0,0) rotate(\[0,90,0\]) difference()
{cylinder(r=R1r,h=L1+L2+2); /\*rod 1 hole\*/
translate(-3\*R1r+R1n,-2\*R1r,-1) cube(2\*R1r,4\*R1r,L1+2); /\*notch\*/
} translate(L1,0,0) rotate(\[0,90,0\]) cylinder(r=R2r,h=L2+1); /\*2
hole\*/ translate(-1,-Cr-1,-Cr-1) cube(L1+L2+2,2\*Cr+2,Cr+1); /\*remove
half\*/ translate(L1/2,Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*bolt hole
1-1\*/ translate(L1/2,-Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*1-2\*/
translate(L1+L2/2,Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*2-1\*/
translate(L1+L2/2,-Cr/2,-Cr) cylinder(r=Br,h=2\*Cr); /\*2-2\*/ } }
L1=15; /\*side 1 length\*/ L2=15; /\*2 length\*/ Cr=13.5; /\*coupler
radius - must be \>2\*R2r+2\*Wr\*/ Wr=4.45; /\*washer radius\*/
Wh=sqrt((3\*Cr/2-Wr)\*(Cr/2+Wr)); /\*washer height\*/ Br=1.55; /\*bolt
radius\*/ R1r=2.4; /\*rod 1 radius\*/ R1n=0.55; /\*rod 1 notch\*/ R2r=4;
/\*rod 2 radius - must be \>=R1r\*/
couplerrodsN1(L1,L2,Cr,Wr,Wh,Br,R1r,R1n,R2r); box1-box4 are boxes that
fit the parts drawers that were used at Radio Shack (sort of; there is
so much random variation in the drawers that the boxes are sometimes too
loose & sometimes too tight): module
box1(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin) /\*type 32\*/
{difference()/\*remove inside & notch\*/ {linear_extrude(H)/\*make
solid\*/
polygon/\*outside\*/(\[(0,SW+PB+PL\*cos/sin),(PL,SW+PB),(PL,SW/2+TT/2),(0,SW/2+TT/2),(0,SW/2-TT/2),(PL,SW/2-TT/2),(PL+SW/2-TT/2,0),(W-PL-SW/2+TT/2,0),(W-PL,SW/2-TT/2),(W,SW/2-TT/2),(W,SW/2+TT/2),(W-PL,SW/2+TT/2),(W-PL,SW+PB),(W,SW+PB+PL\*cos/sin)/\*back\*/,(W,UL-PB-PL\*cos/sin),(W-PL-PB\*sin/cos+G\*sin/cos,UL-G),(PL+PB\*sin/cos-G\*sin/cos,UL-G),(0,UL-PB-PL\*cos/sin)/\*front\*/\]);
translate(0,0,BT)/\*move up to leave bottom\*/ linear_extrude(H)/\*make
solid\*/ difference()/\*round off inside corners\*/
{polygon/\*inside\*/(\[(WT,SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,SW+PB+WT\*sin),(PL+WT,SW+PB),(PL+WT,WT),(W-PL-WT,WT),(W-PL-WT,SW+PB),(W-PL-WT\*cos,SW+PB+WT\*sin),(W-WT,SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*back\*/,(W-WT,UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT/cos-(PB-WT-G)\*sin/cos,UL-WT-G),(PL+WT/cos+(PB-WT-G)\*sin/cos,UL-WT-G),(WT,UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*front\*/\]);
translate(PL,SW+PB)/\*back left corner\*/ circle(r=WT);
translate(W-PL,SW+PB)/\*right\*/ circle(r=WT); } translate
(PL+2\*WT,UL-WT-G-1,FH)/\*move to front\*/
cube/\*notch\*/(W-2\*PL-4\*WT,WT+2,H); } } WT=2.5; /\*wall thickness\*/
BT=WT; /\*bottom thickness\*/ FH=48; /\*front height\*/ H=68;
/\*height\*/ PL=2.7; /\*prong length\*/ PB=1.1; /\*prong bulge\*/
SW=2.65; /\*slot width\*/ TT=2.05; /\*tab thickness\*/ UL=26.8; /\*unit
length\*/ W=127.8; /\*width\*/ G=0.2; /\*gap between boxes\*/
cos=0.6428; /\*angle 50\*/ sin=0.766;
box1(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin); module
box2(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin) /\*type 32\*/
{difference()/\*remove inside & notch\*/ {linear_extrude(H)/\*make
solid\*/
polygon/\*outside\*/(\[(0,SW+PB+PL\*cos/sin),(PL,SW+PB),(PL,SW/2+TT/2),(0,SW/2+TT/2),(0,SW/2-TT/2),(PL,SW/2-TT/2),(PL+SW/2-TT/2,0),(W-PL-SW/2+TT/2,0),(W-PL,SW/2-TT/2),(W,SW/2-TT/2),(W,SW/2+TT/2),(W-PL,SW/2+TT/2),(W-PL,SW+PB),(W,SW+PB+PL\*cos/sin)/\*back\*/,(W,UL-PB-PL\*cos/sin),(W-PL,UL-PB),(W-PL,UL+SW+PB),(W,UL+SW+PB+PL\*cos/sin)/\*right\*/,(W,2\*UL-PB-PL\*cos/sin),(W-PL-PB\*sin/cos+G\*sin/cos,2\*UL-G),(PL+PB\*sin/cos-G\*sin/cos,2\*UL-G),(0,2\*UL-PB-PL\*cos/sin)/\*front\*/,(0,UL+SW+PB+PL\*cos/sin),(PL,UL+SW+PB),(PL,UL-PB),(0,UL-PB-PL\*cos/sin)/\*left\*/\]);
translate(0,0,BT)/\*move up to leave bottom\*/ linear_extrude(H)/\*make
solid\*/ difference()/\*round off inside corners\*/
{polygon/\*inside\*/(\[(WT,SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,SW+PB+WT\*sin),(PL+WT,SW+PB),(PL+WT,WT),(W-PL-WT,WT),(W-PL-WT,SW+PB),(W-PL-WT\*cos,SW+PB+WT\*sin),(W-WT,SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*back\*/,(W-WT,UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,UL-PB-WT\*sin),(W-PL-WT,UL-PB),(W-PL-WT,UL+SW+PB),(W-PL-WT\*cos,UL+SW+PB+WT\*sin),(W-WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right\*/,(W-WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT/cos-(PB-WT-G)\*sin/cos,2\*UL-WT-G),(PL+WT/cos+(PB-WT-G)\*sin/cos,2\*UL-WT-G),(WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*front\*/,(WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,UL+SW+PB+WT\*sin),(PL+WT,UL+SW+PB),(PL+WT,UL-PB),(PL+WT\*cos,UL-PB-WT\*sin),(WT,UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left\*/\]);
translate(PL,SW+PB)/\*back left corner\*/ circle(r=WT);
translate(W-PL,SW+PB)/\*right\*/ circle(r=WT);
translate(W-PL,UL-PB)/\*right side rear\*/ circle(r=WT);
translate(W-PL,UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,UL-PB)/\*left side rear\*/ circle(r=WT);
translate(PL,UL+SW+PB)/\*front\*/ circle(r=WT); }
translate(PL+2\*WT,2\*UL-WT-G-1,FH)/\*move to front\*/
cube/\*notch\*/(W-2\*PL-4\*WT,WT+2,H); } } WT=2.5; /\*wall thickness\*/
BT=WT; /\*bottom thickness\*/ FH=48; /\*front height\*/ H=68;
/\*height\*/ PL=2.7; /\*prong length\*/ PB=1.1; /\*prong bulge\*/
SW=2.65; /\*slot width\*/ TT=2.05; /\*tab thickness\*/ UL=26.8; /\*unit
length\*/ W=127.8; /\*width\*/ G=0.2; /\*gap between boxes\*/
cos=0.6428; /\*angle 50\*/ sin=0.766;
box2(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin); module
box3(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin) /\*type 32\*/
{difference()/\*remove inside & notch\*/ {linear_extrude(H)/\*make
solid\*/
polygon/\*outside\*/(\[(0,SW+PB+PL\*cos/sin),(PL,SW+PB),(PL,SW/2+TT/2),(0,SW/2+TT/2),(0,SW/2-TT/2),(PL,SW/2-TT/2),(PL+SW/2-TT/2,0),(W-PL-SW/2+TT/2,0),(W-PL,SW/2-TT/2),(W,SW/2-TT/2),(W,SW/2+TT/2),(W-PL,SW/2+TT/2),(W-PL,SW+PB),(W,SW+PB+PL\*cos/sin)/\*back\*/,(W,UL-PB-PL\*cos/sin),(W-PL,UL-PB),(W-PL,UL+SW+PB),(W,UL+SW+PB+PL\*cos/sin)/\*right1\*/,(W,2\*UL-PB-PL\*cos/sin),(W-PL,2\*UL-PB),(W-PL,2\*UL+SW+PB),(W,2\*UL+SW+PB+PL\*cos/sin)/\*right2\*/,(W,3\*UL-PB-PL\*cos/sin),(W-PL-PB\*sin/cos+G\*sin/cos,3\*UL-G),(PL+PB\*sin/cos-G\*sin/cos,3\*UL-G),(0,3\*UL-PB-PL\*cos/sin)/\*front\*/,(0,2\*UL+SW+PB+PL\*cos/sin),(PL,2\*UL+SW+PB),(PL,2\*UL-PB),(0,2\*UL-PB-PL\*cos/sin)/\*left2\*/,(0,UL+SW+PB+PL\*cos/sin),(PL,UL+SW+PB),(PL,UL-PB),(0,UL-PB-PL\*cos/sin)/\*left1\*/\]);
translate(0,0,BT)/\*move up to leave bottom\*/ linear_extrude(H)/\*make
solid\*/ difference()/\*round off inside corners\*/
{polygon/\*inside\*/(\[(WT,SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,SW+PB+WT\*sin),(PL+WT,SW+PB),(PL+WT,WT),(W-PL-WT,WT),(W-PL-WT,SW+PB),(W-PL-WT\*cos,SW+PB+WT\*sin),(W-WT,SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*back\*/,(W-WT,UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,UL-PB-WT\*sin),(W-PL-WT,UL-PB),(W-PL-WT,UL+SW+PB),(W-PL-WT\*cos,UL+SW+PB+WT\*sin),(W-WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right1\*/,(W-WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,2\*UL-PB-WT\*sin),(W-PL-WT,2\*UL-PB),(W-PL-WT,2\*UL+SW+PB),(W-PL-WT\*cos,2\*UL+SW+PB+WT\*sin),(W-WT,2\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right2\*/,(W-WT,3\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT/cos-(PB-WT-G)\*sin/cos,3\*UL-WT-G),(PL+WT/cos+(PB-WT-G)\*sin/cos,3\*UL-WT-G),(WT,3\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*front\*/,(WT,2\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,2\*UL+SW+PB+WT\*sin),(PL+WT,2\*UL+SW+PB),(PL+WT,2\*UL-PB),(PL+WT\*cos,2\*UL-PB-WT\*sin),(WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left2\*/,(WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,UL+SW+PB+WT\*sin),(PL+WT,UL+SW+PB),(PL+WT,UL-PB),(PL+WT\*cos,UL-PB-WT\*sin),(WT,UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left1\*/\]);
translate(PL,SW+PB)/\*back left corner\*/ circle(r=WT);
translate(W-PL,SW+PB)/\*right\*/ circle(r=WT);
translate(W-PL,UL-PB)/\*right1 rear\*/ circle(r=WT);
translate(W-PL,UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,UL-PB)/\*left1 rear\*/ circle(r=WT);
translate(PL,UL+SW+PB)/\*front\*/ circle(r=WT);
translate(W-PL,2\*UL-PB)/\*right2 rear\*/ circle(r=WT);
translate(W-PL,2\*UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,2\*UL-PB)/\*left2 rear\*/ circle(r=WT);
translate(PL,2\*UL+SW+PB)/\*front\*/ circle(r=WT); } translate
(PL+2\*WT,3\*UL-WT-G-1,FH)/\*move to front\*/
cube/\*notch\*/(W-2\*PL-4\*WT,WT+2,H); } } WT=2.5; /\*wall thickness\*/
BT=WT; /\*bottom thickness\*/ FH=48; /\*front height\*/ H=68;
/\*height\*/ PL=2.7; /\*prong length\*/ PB=1.1; /\*prong bulge\*/
SW=2.65; /\*slot width\*/ TT=2.05; /\*tab thickness\*/ UL=26.8; /\*unit
length\*/ W=127.8; /\*width\*/ G=0.2; /\*gap between boxes\*/
cos=0.6428; /\*angle 50\*/ sin=0.766;
box3(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin); module
box4(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin) /\*type 32\*/
{difference()/\*remove inside & notch\*/ {linear_extrude(H)/\*make
solid\*/
polygon/\*outside\*/(\[(0,SW+PB+PL\*cos/sin),(PL,SW+PB),(PL,SW/2+TT/2),(0,SW/2+TT/2),(0,SW/2-TT/2),(PL,SW/2-TT/2),(PL+SW/2-TT/2,0),(W-PL-SW/2+TT/2,0),(W-PL,SW/2-TT/2),(W,SW/2-TT/2),(W,SW/2+TT/2),(W-PL,SW/2+TT/2),(W-PL,SW+PB),(W,SW+PB+PL\*cos/sin)/\*back\*/,(W,UL-PB-PL\*cos/sin),(W-PL,UL-PB),(W-PL,UL+SW+PB),(W,UL+SW+PB+PL\*cos/sin)/\*right1\*/,(W,2\*UL-PB-PL\*cos/sin),(W-PL,2\*UL-PB),(W-PL,2\*UL+SW+PB),(W,2\*UL+SW+PB+PL\*cos/sin)/\*right2\*/,(W,3\*UL-PB-PL\*cos/sin),(W-PL,3\*UL-PB),(W-PL,3\*UL+SW+PB),(W,3\*UL+SW+PB+PL\*cos/sin)/\*right3\*/,(W,4\*UL-PB-PL\*cos/sin),(W-PL-PB\*sin/cos+G\*sin/cos,4\*UL-G),(PL+PB\*sin/cos-G\*sin/cos,4\*UL-G),(0,4\*UL-PB-PL\*cos/sin)/\*front\*/,(0,3\*UL+SW+PB+PL\*cos/sin),(PL,3\*UL+SW+PB),(PL,3\*UL-PB),(0,3\*UL-PB-PL\*cos/sin)/\*left3\*/,(0,2\*UL+SW+PB+PL\*cos/sin),(PL,2\*UL+SW+PB),(PL,2\*UL-PB),(0,2\*UL-PB-PL\*cos/sin)/\*left2\*/,(0,UL+SW+PB+PL\*cos/sin),(PL,UL+SW+PB),(PL,UL-PB),(0,UL-PB-PL\*cos/sin)/\*left1\*/\]);
translate(0,0,BT)/\*move up to leave bottom\*/ linear_extrude(H)/\*make
solid\*/ difference()/\*round off inside corners\*/
{polygon/\*inside\*/(\[(WT,SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,SW+PB+WT\*sin),(PL+WT,SW+PB),(PL+WT,WT),(W-PL-WT,WT),(W-PL-WT,SW+PB),(W-PL-WT\*cos,SW+PB+WT\*sin),(W-WT,SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*back\*/,(W-WT,UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,UL-PB-WT\*sin),(W-PL-WT,UL-PB),(W-PL-WT,UL+SW+PB),(W-PL-WT\*cos,UL+SW+PB+WT\*sin),(W-WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right1\*/,(W-WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,2\*UL-PB-WT\*sin),(W-PL-WT,2\*UL-PB),(W-PL-WT,2\*UL+SW+PB),(W-PL-WT\*cos,2\*UL+SW+PB+WT\*sin),(W-WT,2\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right2\*/,(W-WT,3\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT\*cos,3\*UL-PB-WT\*sin),(W-PL-WT,3\*UL-PB),(W-PL-WT,3\*UL+SW+PB),(W-PL-WT\*cos,3\*UL+SW+PB+WT\*sin),(W-WT,3\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin)/\*right3\*/,(W-WT,4\*UL-PB-WT/sin-(PL-WT)\*cos/sin),(W-PL-WT/cos-(PB-WT-G)\*sin/cos,4\*UL-WT-G),(PL+WT/cos+(PB-WT-G)\*sin/cos,4\*UL-WT-G),(WT,4\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*front\*/,(WT,3\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,3\*UL+SW+PB+WT\*sin),(PL+WT,3\*UL+SW+PB),(PL+WT,3\*UL-PB),(PL+WT\*cos,3\*UL-PB-WT\*sin),(WT,3\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left3\*/,(WT,2\*UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,2\*UL+SW+PB+WT\*sin),(PL+WT,2\*UL+SW+PB),(PL+WT,2\*UL-PB),(PL+WT\*cos,2\*UL-PB-WT\*sin),(WT,2\*UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left2\*/,(WT,UL+SW+PB+WT/sin+(PL-WT)\*cos/sin),(PL+WT\*cos,UL+SW+PB+WT\*sin),(PL+WT,UL+SW+PB),(PL+WT,UL-PB),(PL+WT\*cos,UL-PB-WT\*sin),(WT,UL-PB-WT/sin-(PL-WT)\*cos/sin)/\*left1\*/\]);
translate(PL,SW+PB)/\*back left corner\*/ circle(r=WT);
translate(W-PL,SW+PB)/\*right\*/ circle(r=WT);
translate(W-PL,UL-PB)/\*right1 rear\*/ circle(r=WT);
translate(W-PL,UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,UL-PB)/\*left1 rear\*/ circle(r=WT);
translate(PL,UL+SW+PB)/\*front\*/ circle(r=WT);
translate(W-PL,2\*UL-PB)/\*right2 rear\*/ circle(r=WT);
translate(W-PL,2\*UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,2\*UL-PB)/\*left2 rear\*/ circle(r=WT);
translate(PL,2\*UL+SW+PB)/\*front\*/ circle(r=WT);
translate(W-PL,3\*UL-PB)/\*right3 rear\*/ circle(r=WT);
translate(W-PL,3\*UL+SW+PB)/\*front\*/ circle(r=WT);
translate(PL,3\*UL-PB)/\*left3 rear\*/ circle(r=WT);
translate(PL,3\*UL+SW+PB)/\*front\*/ circle(r=WT); } translate
(PL+2\*WT,4\*UL-WT-G-1,FH)/\*move to front\*/
cube/\*notch\*/(W-2\*PL-4\*WT,WT+2,H); } } WT=2.5; /\*wall thickness\*/
BT=WT; /\*bottom thickness\*/ FH=48; /\*front height\*/ H=68;
/\*height\*/ PL=2.7; /\*prong length\*/ PB=1.1; /\*prong bulge\*/
SW=2.65; /\*slot width\*/ TT=2.05; /\*tab thickness\*/ UL=26.8; /\*unit
length\*/ W=127.8; /\*width\*/ G=0.2; /\*gap between boxes\*/
cos=0.6428; /\*angle 50\*/ sin=0.766;
box4(BT,FH,H,PL,PB,SW,TT,UL,W,WT,G,cos,sin); dna.txt - Sept. 10, 2019
dnaa.escad, rnaa.escad, etc. print schematic but fairly realistic puzzle
piece-like representations of the nucleotides that make up DNA & RNA.
They can be printed in various sizes; the standard size (n=1) is very
roughly 20 x 25 x 12 mm while double size (n=2) is twice that. The size
should not be set below n=1 but can be made as large as can be printed.
A standard size piece takes roughly 5 minutes to print making them good
demonstration & test objects; print time goes up as roughly the square
of the size. The following files have been prepared (all files should be
printed with Platform adhesion type=None; all files with built-in
support (the support parameters may need to be adjusted individually for
different printers) should be printed with Support type=None; all others
should be printed with Support type=Touching buildplate unless otherwise
stated); the standard .escad files are shown below while the Rf.escad &
.stl files are available at HacDC: dnaa - deoxyadenosine monophosphate:
dnaa.escad - default is double size, set n=1 for standard size
dnaas.escad - built-in support, default is standard, set n=2 for double
size dnaa1Rfs.escad - built-in support, standard size fudged for HacDC's
miscalibrated Rostock dnaa2Rf.escad - double size fudged for Rostock
dnaa1s.stl - standard size with built-in support dnaa2.stl - double size
dnaa1Rfs.stl - standard size with support for Rostock dnaa2Rf.stl -
double size for Rostock dnac - deoxycytidine monophosphate: dnac.escad -
default is double size, set n=1 for standard dnacs.escad - with support,
default is standard, set n=2 for double dnac1Rfs.escad - standard size
with support for Rostock dnac2Rf.escad - double size for Rostock
dnac1s.stl - standard size with support dnac2.stl - double size
dnac1Rfs.stl - standard size with support for Rostock dnac2Rf.stl -
double size for Rostock dnag - deoxyguanosine monophosphate:
dnag.escad - no support used, print with Support type=None, default is
standard size, set n=2 for double dnag1Rf.escad - print with Support
type=None, standard size for Rostock dnag2Rf.escad - print with Support
type=None, double size for Rostock dnag1.stl - print with Support
type=None, standard size dnag2.stl - print with Support type=None,
double size dnag1Rf.stl - print with Support type=None, standard size
for Rostock dnag2Rf.stl - print with Support type=None, double size for
Rostock dnat - thymidine monophosphate: dnat.escad - default is double
size, set n=1 for standard dnats.escad - with support, default is
standard size, set n=2 for double dnat1Rfs.escad - standard size with
support for Rostock dnat2Rf.escad - double size for Rostock dnat1s.stl -
standard size with support dnat2.stl - double size dnat1Rfs.stl -
standard size with support for Rostock dnat2Rf.stl - double size for
Rostock dnat1Rfs190.gcode - standard size ready-to-print gcode for
Rostock, printhead temperature=190 C dnat1Rfs195.gcode - standard size
gcode for Rostock, temperature=195 C dnat1Rfs200.gcode - standard size
gcode for Rostock, temperature=200 C dnat1Rfs205.gcode - standard size
gcode for Rostock, temperature=205 C dnat1Rfs210.gcode - standard size
gcode for Rostock, temperature=210 C dnat1Rfs215.gcode - standard size
gcode for Rostock, temperature=215 C rnaa - adenosine monophosphate:
rnaa.escad - default is double size, set n=1 for standard rnaas.escad -
with support, default is standard size, set n=2 for double
rnaa1Rfs.escad - standard size with support for Rostock rnaa2Rf.escad -
double size for Rostock rnaa1s.stl - standard size with support
rnaa2.stl-double size rnaa1Rfs.stl - standard size with support for
Rostock rnaa2Rf.stl - double size for Rostock rnac - cytidine
monophosphate: rnac.escad - default is double size, set n=1 for standard
rnacs.escad - with support, default is standard size, set n=2 for double
rnac1Rfs.escad - standard size with support for Rostock rnac2Rf.escad -
double size for Rostock rnac1s.stl - standard size with support
rnac2.stl - double size rnac1Rfs.stl - standard size with support for
Rostock rnac2Rf.stl - double size for Rostock rnag - guanosine
monophosphate: rnag.escad - no support used, print with Support
type=None, default is standard size, set n=2 for double rnag1Rf.escad -
print with Support type=None, standard size for Rostock rnag2Rf.escad -
print with Support type=None, double size for Rostock rnag1.stl - print
with Support type=None, standard size rnag2.stl - print with Support
type=None, double size rnag1Rf.stl - print with Support type=None,
standard size for Rostock rnag2Rf.stl - print with Support type=None,
double size for Rostock rnau - uridine monophosphate: rnau.escad -
default is double size, set n=1 for standard rnaus.escad - with support,
default is standard size, set n=2 for double rnau1Rfs.escad - standard
size with support for Rostock rnau2Rf.escad - double size for Rostock
rnau1s.stl - standard size with support rnau2.stl - double size
rnau1Rfs.stl - standard size with support for Rostock rnau2Rf.stl -
double size for Rostock Modified bases: rnat - ribosylthymine
monophosphate: rnat.escad - default is double size, set n=1 for standard
rnats.escad - with support, default is standard size, set n=2 for double
rnat1Rfs.escad - standard size with support for Rostock rnat2Rf.escad -
double size for Rostock rnat1s.stl - standard size with support
rnat2.stl - double size rnat1Rfs.stl - standard size with support for
Rostock rnat2Rf.stl - double size for Rostock rnapsu - pseudouridine
monophosphate: rnapsu.escad - default is double size, set n=1 for
standard rnapsus.escad - with support, default is standard size,set n=2
for double rnapsu1Rfs.escad - standard size with support for Rostock
rnapsu2Rf.escad - double size for Rostock rnapsu1s.stl - standard size
with support rnapsu2.stl - double size rnapsu1Rfs.stl - standard size
with support for Rostock rnapsu2Rf.stl - double size for Rostock rnai -
inosine monophosphate: rnai.escad - default is double size, set n=1 for
standard rnais.escad - with support, default is standard size, set n=2
for double rnai1Rfs.escad - standard size with support for Rostock
rnai2Rf.escad - double size for Rostock rnai1s.stl - standard size with
support rnai2.stl - double size rnai1Rfs.stl - standard size with
support for Rostock rnai2Rf.stl - double size for Rostock rnam1i -
1-methylinosine monophosphate rnam1i.escad - default is double size, set
n=1 for standard rnam1is.escad - with support, default is standard size,
set n=2 for double rnam1i1Rfs.escad - standard size with support for
Rostock rnam1i2Rf.escad - double size for Rostock rnam1i1s.stl -
standard size with support rnam1i2.stl - double size rnam1i1Rfs.stl -
standard size with support for Rostock rnam1i2Rf.stl - double size for
Rostock rnacm - 2'-O-methylcytidine monophosphate: rnacm.escad - default
is double size, set n=1 for standard rnacms.escad - with support,
default is standard size, set n=2 for double rnacm1Rfs.escad - standard
size with support for Rostock rnacm2Rf.escad - double size for Rostock
rnacm1s.stl - standard size with support rnacm2.stl - double size
rnacm1Rfs.stl - standard size with support for Rostock rnacm2Rf.stl -
double size for Rostock Other: ddC - dideoxycytidine monophosphate
ddC.escad - default is double size, set n=1 for standard ddCs.escad -
with support, default is standard size, set n=2 for double
ddC1Rfs.escad - standard with support for Rostock ddC2Rf.escad - double
size for Rostock ddC1s.stl - standard size with support ddC2.stl -
double size ddC1Rfs.stl - standard size with support for Rostock
ddC2Rf.stl - double size for Rostock Printing the various
dnat1Rfs###.gcode files can be used to determine optimum printhead
temperature for the current Rostock filament; just compare the print
quality of the pieces & use whatever temperature works best. Warning:
The pieces are a choking hazard. Nucleic acids are long chains of
nucleotides; each piece represents a nucleotide. Nucleotides are made up
of a base (the vertical part; adenine, cytosine, guanine, & thymine in
DNA; adenine, cytosine, guanine, & uracil in RNA), a sugar (the flat
part except for the knob; deoxyribose in DNA, ribose in RNA), & a
phosphate (the knob). The base joined to the sugar without the phosphate
is known as a nucleoside (deoxyadenosine (dA), deoxycytidine (dC),
deoxyguanosine (dG), & thymidine (T) for DNA, adenosine (A), cytidine
(C), guanosine (G), & uridine (U) for RNA (yes, adenine & guanine are
bases while adenosine & guanosine are nucleosides but inconsistently
cytosine is a base while cytidine is a nucleoside)). The nucleotides are
called deoxyadenosine monophosphate (dAMP), deoxycytidine monophosphate
(dCMP), etc. In DNA & RNA G pairs with C while A pairs with T or U; note
how the vertical zig-zags of the bases fit together (DNA & RNA can pair
with themselves or each other in largely the same way). DNA stores
information and is normally double stranded (the famous double helix).
RNA is used to transfer information or is structural and is usually
single stranded (with many small double-stranded regions where it pairs
with another part of itself). The model correctly shows single-stranded
RNA & DNA being more flexible than double-stranded, but is far too rigid
in both cases. With these pieces it is possible to explain some features
of nucleic acids: It is easy to see how double-stranded DNA can
replicate - just separate the two strands and make new strands by
selecting the pieces that fit together correctly. Since G pairs with C &
A pairs with T double-stranded DNA contains the same amount of G & C and
the same amount of A & T (this does not apply to single-stranded nucleic
acids (i.e., most RNA)) but the amount of G & C need not be the same as
the amount of A & T. Which do you think would be more stable: DNA with a
high G & C content or DNA with a high A & T content? Can you figure out
why DNA uses T (which takes the cell more raw material to produce)
instead of U (hint: C can occasionally degrade to U)? DNA contains the
information for producing proteins made up of 20-22 different amino
acids strung together in a row (just as DNA is composed of the 4
different nucleotides A, C, G, & T strung together) plus a stop signal.
Three consecutive nucleotides in DNA code for 1 amino acid in a protein.
Can you figure out why 3 nucleotides are used? Modified nucleic acids
that contain 2 or 4 additional nucleotides besides A, C, G, & T have
been created. Can you figure out how DNA could have 8 different bases
and still replicate normally? DNA & especially RNA can contain modified
bases. These range from the simple (thymine instead of uracil in RNA
(rT)) to the complex (ms2t6A) to the downright weird (pseudouridine) to
the absurd (glutamylQ). Their functions vary & can be mysterious; new
modifications are still being found. Modified bases may form unmodified
base pairs (U & rT pair with A in the same way) but sometimes form
different base pairs (converting A to I causes it to pair with C) or are
unable to form any base pair (m1I). Pieces have been made for rT, I,
m1I, Cm, & pseudouridine in RNA. I occurs in tRNA at a position that is
flexible, allowing it to shift around & form unconventional "wobble"
pairs with U & even A in addition to the standard C. Do you see how this
might happen? What other wobble pairing might you expect? Also included
is the nucleotide form of ddC, a drug used against HIV. How do you think
it blocks HIV? It, along with the similar ddA, etc., is also used to
determine the sequence of nucleotides in DNA & RNA. Do you see how this
can be done (hint: it is possible to separate DNA molecules by length)?
module ddC(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*dideoxycytosine
monophosphate (ddCMP), from anti-HIV drug ddC & terminator ddCTP used in
DNA sequencing; set n=1 for standard size, n=2 for double size; print
with Support type=Touching buildplate & Platform adhesion type=None;
July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,3\*f),(8\*f,3\*f),(8\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytidine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx+3\*ll/4+ls,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*outer circle 2\*/ circle(r=ll/4-lt);
/\*inner circle 2\*/ } translate(lx+ll+ls-lt,ly,0) cube(lt,ll,t+lh);
/\*bar 2\*/ translate(lx+3\*ll/2+2\*ls,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} } } n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=4\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=0.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter
spacing\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
ddC(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
ddCs(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd) /\*dideoxycytosine
monophosphate (ddCMP), from anti-HIV drug ddC & terminator ddCTP used in
DNA sequencing; set n=1 for standard size, n=2 for double size; includes
support, print with Support type=None & Platform adhesion type=None;
July 8, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,3\*f),(8\*f,3\*f),(8\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytidine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx+ll/2-lt,ly,0) cube(lt,ll,t+lh); /\*d
bar\*/ translate(lx+3\*ll/4+ls,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*outer circle 2\*/ circle(r=ll/4-lt);
/\*inner circle 2\*/ } translate(lx+ll+ls-lt,ly,0) cube(lt,ll,t+lh);
/\*2nd d bar\*/ translate(lx+3\*ll/2+2\*ls,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+st+sg)\]);
/\*support\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=4\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=0.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt;
/\*letter spacing\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ st=0.6; /\*support thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7;
/\*support distance\*/ ddCs(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd);
module dnaa(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*deoxyadenosine
monophosphate (dAMP); n=1 is standard, n=2 is double size; print with
Support type=Touching buildplate & Platform adhesion type=None; July 11,
2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,8\*n+g),(14\*f-g,8\*n+g),(14\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*adenine\*/ translate(lx/2+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx/2+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx/2+ll/2+ls,ly,t) linear_extrude(lh)
polygon(\[(0,0),(k\*lt,0),(ll/2,ll-2\*k\*lt),(ll-k\*lt,0),(ll,0),(ll/2,ll)\]);/\*A
square inverted V\*/ translate(lx/2+ll/2+ls,ly,t) linear_extrude(lh)
polygon(\[(ll/6+lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3+lt/2),(ll/6+lt/4,ll/3+lt/2)\]);/\*bar\*/
} } n=2; /\*z size\*/ f=n; /\*x & y size,normally same as n\*/ g=0.25;
/\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y thickness, normally
same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f; /\*letter
thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter x\*/
ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
dnaa(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
dnaas(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd) /\*deoxyadenosine
monophosphate (dAMP); n=1 is standard, n=2 is double size; includes
support, print with Support type=None & Platform adhesion type=None;
July 8, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,8\*n+g),(14\*f-g,8\*n+g),(14\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*adenine\*/ translate(lx/2+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx/2+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx/2+ll/2+ls,ly,t) linear_extrude(lh)
polygon(\[(0,0),(k\*lt,0),(ll/2,ll-2\*k\*lt),(ll-k\*lt,0),(ll,0),(ll/2,ll)\]);/\*A
square inverted V\*/ translate(lx/2+ll/2+ls,ly,t) linear_extrude(lh)
polygon(\[(ll/6+lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3+lt/2),(ll/6+lt/4,ll/3+lt/2)\]);/\*bar\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n-g)
polygon(\[(8\*f+sd,tf+sg),(11\*f+sg,tf+sg),(11\*f+sg,-sg),(8\*f+sd,-sg),(8\*f+sd,-sg-st),(11\*f+sg+st,-sg-st),(11\*f+sg+st,tf+sg+st),(8\*f+sd,tf+sg+st)\]);
/\*support1\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(10\*f+sd,tf+sg),(14\*f+sg,tf+sg),(14\*f+sg,-sg),(10\*f+sd,-sg),(10\*f+sd,-sg-st),(14\*f+sg+st,-sg-st),(14\*f+sg+st,tf+sg+st),(10\*f+sd,tf+sg+st)\]);
/\*support2\*/ } } n=1; /\*z size\*/ f=n; /\*x & y size,normally same as
n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter
x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4;/\*support gap\*/ sd=0.7; /\*support distance\*/
dnaas(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd); module
dnac(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*deoxycytidine monophosphate
(dCMP); n=1 is standard, n=2 is double size; print with Support
type=Touching buildplate & Platform adhesion type=None; July 11, 2019\*/
{union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx+ll+ls,ly+ll/2,t) linear_extrude(lh) difference()
{circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt); /\*inner
circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/ } } }
n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally same
as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normnally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=1.25\*f; /\*letter
x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
dnac(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
dnacs(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd) /\*deoxycytidine
monophosphate (dCMP); standard size with support, print with Support
type=None & Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx+ll+ls,ly+ll/2,t) linear_extrude(lh) difference()
{circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt); /\*inner
circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/ }
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+st+sg)\]);
/\*support\*/ } } n=1; /\*z size\*/ f=n; /\*x & y size, normally same as
n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=1.25\*f; /\*letter
x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7; /\*support distance\*/
dnacs(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd); module
dnag(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*deoxyguanosine monophosphate
(dGMP); n=1 is standard, n=2 is double size, print with Support
type=None & Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(14\*f-g,0),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*guanine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*d outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/ } translate(lx+ll/2-lt,ly,0) cube(lt,ll,t+lh);
/\*bar\*/ translate(lx+ll+ls,ly+ll/2,t) linear_extrude(lh) difference()
{circle(r=ll/2); /\*G outer circle\*/ circle(r=ll/2-lt); /\*inner
circle\*/ polygon(\[(0,0),(ll,0),(ll,ll)\]); /\*wedge\*/ }
translate(lx+ll+ls,ly+ll/2-lt/2,t) linear_extrude(lh)
polygon(\[(0,0),(ll/2-lt,0),(ll/2,lt/2),(ll/2,lt),(0,lt)\]); /\*bar\*/ }
} n=1; /\*z size, 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=f;
/\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt;/\*letter spacing\*/
k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
dnag(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
dnat(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*thymidine monophosphate (TMP);
n=1 is standard, n=2 is double size; print with Support type=Touching
buildplate & Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f-g,8\*n-g),(6\*f-g,12\*n),(3.464\*f,12\*n),(2.464\*f,13.732\*n),(1.098\*f,14.098\*n),(-0.634\*f,13.098\*n),(-f,11.732\*n),(0,10\*n)\]);
/\*thymine\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll/2-lt/2,0),(ll/2+lt/2,0),(ll/2+lt/2,ll-lt),(ll,ll-lt),(ll,ll),(0,ll),(0,ll-lt),(ll/2-lt/2,ll-lt)\]);
/\*T\*/ } } n=2; /\*z size\*/ f=n; /\*x & y size, normally same as n\*/
g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f; /\*letter
thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter x\*/
ly=7\*f; /\*letter y\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ dnat(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
dnats(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*thymidine
monophosphate (TMP); n=1 is standard, n=2 is double size; includes
support, print with Support type=None & Platform adhesion type=None;
July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*deoxyribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f-g,8\*n-g),(6\*f-g,12\*n),(3.464\*f,12\*n),(2.464\*f,13.732\*n),(1.098\*f,14.098\*n),(-0.634\*f,13.098\*n),(-f,11.732\*n),(0,10\*n)\]);
/\*thymine\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll/2-lt/2,0),(ll/2+lt/2,0),(ll/2+lt/2,ll-lt),(ll,ll-lt),(ll,ll),(0,ll),(0,ll-lt),(ll/2-lt/2,ll-lt)\]);
/\*T\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+sg+st)\]);
/\*support\*/ } } n=1; /\*z size\*/ f=n; /\*x & y size, normally same as
n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter
x\*/ ly=7\*f; /\*letter y\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f;
/\*circle gap\*/ st=0.6; /\*support thickness\*/ sg=0.3; /\*support
gap\*/ sd=0.7; /\*support distance\*/
dnats(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnaa(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*adenosine monophosphate (AMP);
n=1 is standard, n=2 is double size; print with Support type=Touching
buildplate & Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,8\*n+g),(14\*f-g,8\*n+g),(14\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*adenine\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(0,0),(k\*lt,0),(ll/2,ll-2\*k\*lt),(ll-k\*lt,0),(ll,0),(ll/2,ll)\]);/\*A
square inverted V\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll/6+lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3+lt/2),(ll/6+lt/4,ll/3+lt/2)\]);/\*bar\*/
} } n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnaa(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnaas(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*adenosine
monophosphate (AMP); n=1 is standard, n=2 is double size; includes
support, print with Support type=None & Platform adhesion type=None;
July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,8\*n+g),(14\*f-g,8\*n+g),(14\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*adenine\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(0,0),(k\*lt,0),(ll/2,ll-2\*k\*lt),(ll-k\*lt,0),(ll,0),(ll/2,ll)\]);/\*A
square inverted V\*/ translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll/6+lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3-lt/2),(5\*ll/6-lt/4,ll/3+lt/2),(ll/6+lt/4,ll/3+lt/2)\]);/\*bar\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n-g)
polygon(\[(8\*f+sd,tf+sg),(11\*f+sg,tf+sg),(11\*f+sg,-sg),(8\*f+sd,-sg),(8\*f+sd,-sg-st),(11\*f+sg+st,-sg-st),(11\*f+sg+st,tf+sg+st),(8\*f+sd,tf+sg+st)\]);
/\*support1\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(10\*f+sd,tf+sg),(14\*f+sg,tf+sg),(14\*f+sg,-sg),(10\*f+sd,-sg),(10\*f+sd,-sg-st),(14\*f+sg+st,-sg-st),(14\*f+sg+st,tf+sg+st),(10\*f+sd,tf+sg+st)\]);
/\*support2\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4;/\*support gap\*/ sd=0.7; /\*support distance\*/
rnaas(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnac(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg)/\*cytidine monophosphate (CMP); n=1
is standard, n=2 is double size; print with Support type=Touching
buildplate & Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} } } n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnac(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnacs(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*cytidine monophosphate
(CMP); n=1 is standard, n=2 is double size; includes support, print with
Support type=None & Platform adhesion type=None; July 11, 2019\*/
{union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+st+sg)\]);
/\*support\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7; /\*support distance\*/
rnacs(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnag(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*guanosine monophosphate (GMP);
n=1 is standard, n=2 is double size; print with Support type=None &
Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(14\*f-g,0),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*guanine\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*G outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,0),(ll,ll)\]); /\*wedge\*/ }
translate(lx+ll/2,ly+ll/2-lt/2,t) linear_extrude(lh)
polygon(\[(0,0),(ll/2-lt,0),(ll/2,lt/2),(ll/2,lt),(0,lt)\]); /\*bar\*/ }
} n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnag(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnau(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*uridine monophosphate (UMP); n=1
is standard, n=2 is double size; print with Support type=Touching
buildplate & Platform adhesion type=None; July 22, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f,0),(6\*f,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f,8\*n-g),(6\*f,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*uracil\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*U outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(-ll,0),(ll,0),(ll,ll),(-ll,ll)\]); /\*top
half\*/ } translate(lx,ly,t) linear_extrude(lh)
polygon(\[(0,ll/2),(lt,ll/2-0.2),(lt,ll),(0,ll)\]); /\*L side\*/
translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll-lt,ll/2-0.2),(ll,ll/2),(ll,ll),(ll-lt,ll)\]); /\*R side\*/
} } n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally
same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x &
y thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnau(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnaus(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*uridine monophosphate
(UMP); n=1 is standard, n=2 is double size; includes support, print with
Support type=None & Platform adhesion type=None; July 11, 2019\*/
{union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f,0),(6\*f,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f,8\*n-g),(6\*f,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*uracil\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*U outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(-ll,0),(ll,0),(ll,ll),(-ll,ll)\]); /\*top
half\*/ } translate(lx,ly,t) linear_extrude(lh)
polygon(\[(0,ll/2),(lt,ll/2-0.2),(lt,ll),(0,ll)\]); /\*L side\*/
translate(lx,ly,t) linear_extrude(lh)
polygon(\[(ll-lt,ll/2-0.2),(ll,ll/2),(ll,ll),(ll-lt,ll)\]); /\*R side\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+sg+st)\]);
/\*support\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7; /\*support distance\*/
rnaus(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnacm(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*2'-O-methylcytidine
monophosphate, modified base; n=1 is standard size, n=2 is double; print
with Support type=Touching buildplate & Platform adhesion type=None;
July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(14\*f,f),(15\*f,2\*f),(15\*f,4\*f),(14\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*2-O-methylribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/
} translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} translate(lx+1.104\*ll+ls,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*1st m loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+1.604\*ll-lt+ls,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*2nd loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+0.854\*ll+ls,ly,t) cube(lt,ll/2,lh); /\*bar\*/
translate(lx+1.354\*ll-lt+ls,ly,t) cube(lt,ll/4,lh); /\*center\*/
translate(lx+1.854\*ll-2\*lt+ls,ly,t) cube(lt,ll/4,lh); /\*end\*/ } }
n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size, normally same
as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=4.5\*f; /\*letter size\*/
lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=f;
/\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/
k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnacm(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
rnacms(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd)
/\*2'-O-methylcytidine monophosphate, modified base; n=1 is standard
size, n=2 is double; includes support, print with Support type=None &
Platform adhesion type=None; July 11, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(14\*f,f),(15\*f,2\*f),(15\*f,4\*f),(14\*f,5\*f),(12\*f,5\*f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*2-O-methylribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/
} translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,8\*n+g),(10\*f-g,8\*n+g),(10\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*cytosine\*/ translate(lx+ll/2,ly+ll/2,t) linear_extrude(lh)
difference() {circle(r=ll/2); /\*C outer circle\*/ circle(r=ll/2-lt);
/\*inner circle\*/ polygon(\[(0,0),(ll,-ll),(ll,ll)\]); /\*R quadrant\*/
} translate(lx+1.104\*ll+ls,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*1st m loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+1.604\*ll-lt+ls,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*2nd loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+0.854\*ll+ls,ly,t) cube(lt,ll/2,lh); /\*bar\*/
translate(lx+1.354\*ll-lt+ls,ly,t) cube(lt,ll/4,lh); /\*center\*/
translate(lx+1.854\*ll-2\*lt+ls,ly,t) cube(lt,ll/4,lh); /\*end\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(8\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+st+sg)\]);
/\*support\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=4.5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt;
/\*letter spacing\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ st=0.6; /\*support thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7;
/\*support distance\*/
rnacms(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd); module
rnai(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*inosine monophosphate (IMP),
modified base found mainly in tRNA; n=1 is standard size, n=2 is double;
print with Support type=Touching buildplate & Platform adhesion
type=None; July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,4\*n+g),(14\*f-g,4\*n+g),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*hypoxanthine\*/ translate(lx+ll/2-lt/2,ly,0) cube(lt,ll,t+lh);
/\*I\*/ } } n=2; /\*z size 1=standard,2=double\*/ f=n; /\*x & y size,
normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/
tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f; /\*letter
size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter height\*/
lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnai(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnais(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*inosine monophosphate
(IMP), modified base found mainly in tRNA; n=1 is standard size, n=2 is
double; includes support, print with Support type=None & Platform
adhesion type=None; July 11, 2019\*/ {union() {linear_extrude(t)
difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,4\*n+g),(14\*f-g,4\*n+g),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*hypoxanthine\*/ translate(lx+ll/2-lt/2,ly,0) cube(lt,ll,t+lh);
/\*I\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n-g)
polygon(\[(8\*f+sd,tf+sg),(11\*f+sg,tf+sg),(11\*f+sg,-sg),(8\*f+sd,-sg),(8\*f+sd,-sg-st),(11\*f+sg+st,-sg-st),(11\*f+sg+st,tf+sg+st),(8\*f+sd,tf+sg+st)\]);
/\*support1\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(10\*f+sd,tf+sg),(14\*f+sg,tf+sg),(14\*f+sg,-sg),(10\*f+sd,-sg),(10\*f+sd,-sg-st),(14\*f+sg+st,-sg-st),(14\*f+sg+st,tf+sg+st),(10\*f+sd,tf+sg+st)\]);
/\*support2\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4;/\*support gap\*/ sd=0.7; /\*support distance\*/
rnais(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnam1i(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg) /\*1-methylinosine
monophosphate (m1IMP), modified base found in tRNA; set n=1 for standard
size, n=2 for double; print with Support type=Touching buildplate &
Platform adhesion type=None; July 15, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,4\*n+g),(15\*f,4\*n+g),(16\*f,5\*n+g),(16\*f,7\*n-g),(15\*f,8\*n-g),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*1-methylhypoxanthine\*/ translate(lx+ll/4,ly+ll/4,t)
linear_extrude(lh) difference() {circle(r=ll/4); /\*m 1st loop\*/
circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+3\*ll/4-lt,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*2nd loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx,ly,t) cube(lt,ll/2,lh); /\*bar\*/
translate(lx+ll/2-lt,ly,t) cube(lt,ll/4,lh); /\*middle\*/
translate(lx+ll-2\*lt,ly,t) cube(lt,ll/4,lh); /\*end\*/
translate(lx+ll-lt+ls,ly,0) cube(lt,ll,t+lh); /\*1\*/
translate(lx+ll+2\*ls,ly,0) cube(lt,ll,t+lh); /\*I\*/ } } n=2; /\*z
size, n=1 standard size,n=2 double\*/ f=n; /\*x & y size, normally same
as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=f; /\*letter x\*/
ly=7\*f; /\*letter y\*/ ls=1.5\*lt; /\*letter spacing\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/
rnam1i(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg); module
rnam1is(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd) /\*1-methylinosine
monophosphate (m1IMP), modified base found in tRNA; set n=1 for standard
size, n=2 for double; support included, print with Support type=None &
Platform adhesion type=None; July 15, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(8\*f,0),(8\*f,4\*n),(10\*f-g,4\*n),(10\*f-g,4\*n+g),(15\*f,4\*n+g),(16\*f,5\*n+g),(16\*f,7\*n-g),(15\*f,8\*n-g),(14\*f-g,8\*n-g),(10\*f-g,8\*n-g),(10\*f-g,12\*n),(7.464\*f,12\*n),(4\*f,10\*n),(0,10\*n)\]);
/\*1-methylhypoxanthine\*/ translate(lx+ll/4,ly+ll/4,t)
linear_extrude(lh) difference() {circle(r=ll/4); /\*m 1st loop\*/
circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx+3\*ll/4-lt,ly+ll/4,t) linear_extrude(lh) difference()
{circle(r=ll/4); /\*2nd loop\*/ circle(r=ll/4-lt); /\*inner circle\*/
polygon(\[(-ll,-ll),(ll,-ll),(ll,0),(-ll,0)\]); /\*remove bottom\*/ }
translate(lx,ly,t) cube(lt,ll/2,lh); /\*bar\*/
translate(lx+ll/2-lt,ly,t) cube(lt,ll/4,lh); /\*middle\*/
translate(lx+ll-2\*lt,ly,t) cube(lt,ll/4,lh); /\*end\*/
translate(lx+ll-lt+ls,ly,0) cube(lt,ll,t+lh); /\*1\*/
translate(lx+ll+2\*ls,ly,0) cube(lt,ll,t+lh); /\*I\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n-g)
polygon(\[(8\*f+sd,tf+sg),(11\*f+sg,tf+sg),(11\*f+sg,-sg),(8\*f+sd,-sg),(8\*f+sd,-sg-st),(11\*f+sg+st,-sg-st),(11\*f+sg+st,tf+sg+st),(8\*f+sd,tf+sg+st)\]);
/\*support1\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(10\*f+sd,tf+sg),(15\*f+sg,tf+sg),(15\*f+sg,-sg),(10\*f+sd,-sg),(10\*f+sd,-sg-st),(15\*f+sg+st,-sg-st),(15\*f+sg+st,tf+sg+st),(10\*f+sd,tf+sg+st)\]);
/\*support2\*/ } } n=1; /\*z size, 1=standard size,2=double\*/ f=n; /\*x
& y size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ ls=1.5\*lt;
/\*letter spacing\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ st=0.6; /\*support thickness\*/ sg=0.4;/\*support gap\*/ sd=0.7;
/\*support distance\*/
rnam1is(n,g,t,ll,lt,lh,lx,ly,ls,k,f,tf,cg,st,sg,sd); module
rnapsu(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*pseudouridine monophosphate,
modified base found in many RNAs; n=1 is standard, n=2 is double size;
print with Support type=Touching buildplate & Platform adhesion
type=None; July 11, 2019\*/ {union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,7\*f-tf/2,0) rotate(\[0,90,0\])
linear_extrude(tf)
polygon(\[(0,0),(0,4\*f),(-t,4\*f),(-4\*n,2\*f+tf/2),(-4\*n,2\*f-tf/2),(-t,0)\]);
/\*joint\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f-g,8\*n-g),(6\*f-g,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*uracil\*/ translate(lx+ll/2,ly+ll,t) linear_extrude(lh) difference()
{circle(r=ll/2); /\*psi outer circle\*/ circle(r=ll/2-lt); /\*inner
circle\*/ polygon(\[(-ll,0),(ll,0),(ll,ll),(-ll,ll)\]); /\*top half\*/ }
translate(lx+ll/2-lt/2,ly,t) linear_extrude(lh)
polygon(\[(0,0),(lt,0),(lt,ll),(0,ll)\]); /\*bar\*/ } } n=2; /\*z size,
1=standard,2=double\*/ f=n; /\*x & y size, normally same as n\*/ g=0.25;
/\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y thickness, normally
same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f; /\*letter
thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter x\*/
ly=7\*f; /\*letter y\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ rnapsu(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnapsus(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*pseudouridine
monophosphate, modified base found in many RNAs; n=1 is standard, n=2 is
double size; includes support, print with Support type=None & Platform
adhesion type=None; July 11, 2019\*/ {union() {linear_extrude(t)
difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,7\*f-tf/2,0) rotate(\[0,90,0\])
linear_extrude(tf)
polygon(\[(0,0),(0,4\*f),(-t,4\*f),(-4\*n,2\*f+tf/2),(-4\*n,2\*f-tf/2),(-t,0)\]);
/\*joint\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f,0),(6\*f,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f,8\*n-g),(6\*f,12\*n),(3.464\*f,12\*n),(0,10\*n)\]);
/\*uracil\*/ translate(lx+ll/2,ly+ll,t) linear_extrude(lh) difference()
{circle(r=ll/2); /\*psi outer circle\*/ circle(r=ll/2-lt); /\*inner
circle\*/ polygon(\[(-ll,0),(ll,0),(ll,ll),(-ll,ll)\]); /\*top half\*/ }
translate(lx+ll/2-lt/2,ly,t) linear_extrude(lh)
polygon(\[(0,0),(lt,0),(lt,ll),(0,ll)\]); /\*bar\*/
translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(6\*f+sd,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6\*f+sd,-sg),(6\*f+sd,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6\*f+sd,tf+sg+st)\]);
/\*support\*/ } } n=1; /\*z size 1=standard,2=double\*/ f=n; /\*x & y
size, normally same as n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z
thickness\*/ tf=t; /\*x & y thickness, normally same as t\*/ ll=5\*f;
/\*letter size\*/ lt=0.65\*f; /\*letter thickness\*/ lh=0.7; /\*letter
height\*/ lx=1.5\*f; /\*letter x\*/ ly=7\*f; /\*letter y\*/ k=1.118;
/\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle gap\*/ st=0.6; /\*support
thickness\*/ sg=0.4; /\*support gap\*/ sd=0.7; /\*support distance\*/
rnapsus(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); module
rnat(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg) /\*ribosylthymine monophosphate =
5-methyluridine monophosphate, n=1 is standard size, n=2 is double;
modified nucleotide found in tRNA; print with Support type=Touching
buildplate & Platform adhesion type=None; July 22, 2019\*/ {union()
{linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f-g,8\*n-g),(6\*f-g,12\*n),(3.464\*f,12\*n),(2.464\*f,13.732\*n),(1.098\*f,14.098\*n),(-0.634\*f,13.098\*n),(-f,11.732\*n),(0,10\*n)\]);
/\*thymine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*r outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/
polygon(\[(-ll,0),(0,0),(ll,ll),(ll,-ll),(-ll,-ll)\]); /\*remove
bottom\*/ } translate(lx,ly,0) cube(lt,ll/2,t+lh); /\*bar\*/
translate(lx+0.427\*ll,ly,t) linear_extrude(lh)
polygon(\[(ll/2-lt/2,0),(ll/2+lt/2,0),(ll/2+lt/2,ll-lt),(ll,ll-lt),(ll,ll),(0,ll),(0,ll-lt),(ll/2-lt/2,ll-lt)\]);
/\*T\*/ } } n=2; /\*z size\*/ f=n; /\*x & y size, normally same as n\*/
g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y thickness,
normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f; /\*letter
thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter x\*/
ly=7\*f; /\*letter y\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f; /\*circle
gap\*/ rnat(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg); module
rnats(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd) /\*ribosylthymine
monophosphate = 5-methyluridine monophosphate, n=1 is standard size, n=2
is double; modified nucleotide found in tRNA; includes support, print
with Support type=None & Platform adhesion type=None; July 11, 2019\*/
{union() {linear_extrude(t) difference()
{polygon(\[(0,0),(2.5\*f,0),(2.5\*f,3\*f),(7.5\*f,3\*f),(7.5\*f,0),(10\*f,0),(10\*f,f),(12\*f,f),(12\*f,7\*f-tf/2),(16\*f-tf,9\*f-tf),(16\*f-tf,9\*f),(12\*f,11\*f-tf/2),(7\*f,14\*f),(3\*f-cg,14\*f),(3\*f-cg,18\*f),(0,18\*f)\]);
/\*ribose\*/ translate(5\*f,3\*f) circle(r=3\*f); /\*socket\*/ }
translate(1.5\*f-cg/2,18.5\*f,0) cylinder(r=3\*f-cg,h=t);
/\*knob(phosphate)\*/ translate(12\*f-tf,9\*f,0) rotate(\[90,0,0\])
linear_extrude(tf)
polygon(\[(0,0),(6\*f-g,0),(6\*f-g,4\*n+g),(10\*f-g,4\*n+g),(10\*f-g,8\*n-g),(6\*f-g,8\*n-g),(6\*f-g,12\*n),(3.464\*f,12\*n),(2.464\*f,13.732\*n),(1.098\*f,14.098\*n),(-0.634\*f,13.098\*n),(-f,11.732\*n),(0,10\*n)\]);
/\*thymine\*/ translate(lx+ll/4,ly+ll/4,t) linear_extrude(lh)
difference() {circle(r=ll/4); /\*r outer circle\*/ circle(r=ll/4-lt);
/\*inner circle\*/
polygon(\[(-ll,0),(0,0),(ll,ll),(ll,-ll),(-ll,-ll)\]); /\*remove
bottom\*/ } translate(lx,ly,0) cube(lt,ll/2,t+lh); /\*bar\*/
translate(lx+0.427\*ll,ly,t) linear_extrude(lh)
polygon(\[(ll/2-lt/2,0),(ll/2+lt/2,0),(ll/2+lt/2,ll-lt),(ll,ll-lt),(ll,ll),(0,ll),(0,ll-lt),(ll/2-lt/2,ll-lt)\]);
/\*T\*/ translate(12\*f-tf-g,9\*f-tf,0) linear_extrude(4\*n)
polygon(\[(6.7\*f,tf+sg),(10\*f+sg,tf+sg),(10\*f+sg,-sg),(6.7\*f,-sg),(6.7\*f,-sg-st),(10\*f+sg+st,-sg-st),(10\*f+sg+st,tf+sg+st),(6.7\*f,tf+sg+st)\]);
/\*support\*/ } } n=1; /\*z size\*/ f=n; /\*x & y size, normally same as
n\*/ g=0.25; /\*gap\*/ t=1.5\*n; /\*z thickness\*/ tf=t; /\*x & y
thickness, normally same as t\*/ ll=5\*f; /\*letter size\*/ lt=0.65\*f;
/\*letter thickness\*/ lh=0.7; /\*letter height\*/ lx=1.5\*f; /\*letter
x\*/ ly=7\*f; /\*letter y\*/ k=1.118; /\*sqrt(5)/2\*/ cg=0.12\*f;
/\*circle gap\*/ st=0.6; /\*support thickness\*/ sg=0.3; /\*support
gap\*/ sd=0.7; /\*support distance\*/
rnats(n,g,t,ll,lt,lh,lx,ly,k,f,tf,cg,st,sg,sd); test objects: module
testcube(R) /\*this just prints a 5 mm cube; good test & demo program
that only takes a couple minutes to print\*/ cube(R); R=5; testcube(R);
module calsquare(D) /\*this prints 4 squares at the corners of a square
bed; if the distance between adjacent squares is not the same the
printer is miscalibrated; if the diagonal distances are not the same the
x & y axes are not perpendicular\*/ {union() {cube(5,5,1);
translate(D,0,0) cube(5,5,1); translate(0,D,0) cube(5,5,1);
translate(D,D,0) cube(5,5,1); } } D=250; calsquare(D);
