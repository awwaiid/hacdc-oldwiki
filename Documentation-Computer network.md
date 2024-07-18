HacDC computer network - Jan. 2, 2020 Tabletop computer terms - move
over means to use the touch pad to move the arrow on the screen to the
described position click on means to move the arrow to the described
position & then press either click button type means to type what is
described type: means to type the characters that follow the space after
: enter means to type what is described (if anything) & then press the
Enter key (at right) enter: means to type the characters that follow the
space after : & then press Enter It is possible to connect to devices on
the network using the internet or using the local network. To connect
using the internet: 1. Enter ssh systemname@machinename.hacdc.org (i.e.,
ssh renderadmin@jobs.hascdc.org) 2. At Password: enter standard password
To connect using the HacDC network: 1. Enter ssh
systemname@machinename.local (i.e., ssh renderadmin@jobs.local) 2. If
the system asks Are you sure you want to continue connecting (yes/no)?
enter: yes 3. At Password: enter standard password To check if it is
possible to communicate with a device: 1. Open a MATE terminal (if not
already present; see Documentation-Tabletop_computers) 2. Enter ping
machinename.hacdc.org or ping machinename.local (i.e., ping jobs.local)
3. If it responds \## bytes from ###... it is communicating 4. To stop
pinging type Ctrl C To determine the path to the address the computer is
connected to: 1. Enter mtr address (i.e., mtr jobs.hacdc.org) 2. When
finished click on Quit If the network will not connect: 1. Try using the
other connection method (.local if .hacdc.org doesn't work or vice
versa) 2. Check if it is possible to communicate by using ping (see
above) 3. If it is not communicating stop here & get help 4. Enter mtr
address (i.e., mtr jobs.hacdc.org) 5. Look at the column labeled Loss;
if any of the values are close to 100% that could be the problem 6.
Click on Quit 7. If there was a problem with the path restart the
computer & hope it uses a different path this time Components of the
network: Renderadmin computer (large computer at left under table below
clock) - for converting .escad files to .stl files for 3D printing
etc. - machine name=jobs, system name=renderadmin 3D printer computer
(Dell Optiplex 760 to left of Rostock) - controls Rostock, Mini, & Taz
3D printers - machine name=pronterhost, system name=hacdc Classroom TV
computer (large Sharkoon below big screen) - controls screen - machine
name=classroom-tv, system name=hacdc Laser cutter computer (small
computer in cabinet below laser cutter) - controls laser cutter Here is
the current HacDC network wiring: On floor below clock - Netgear ProSAFE
16-Port Gigabit Click Switch 1 - gray - TP-Link Router 2 2 - gray -
Printer (paper) computer 14 - white - open (by laser cutter) 16 -
orange - renderadmin computer others - no connection On bottom shelf
over sink - LinkSys VOIP Voice Phone - phone cable - Uniden EX18560
phone Internet - blue - LinkSys switch 6 C7 TP-Link AC1750 Wireless
Dual-Band Gigabit Router Internet - blue - D-Link switch Ethernet 1 -
gray - open 2 - yellow - TP-Link switch 7 Middle shelf - D-Link Wireless
AC750 Dual-Band Router DIR-817LW LAN 4 - blue - TP-Link switch 8
Internet - gray - LinkSys switch 5 TP-Link TL-SG1008D Gigabit Switch 1 -
yellow - wall socket 2 - gray - Netgear switch 1 3 - blue - 3D printer
computer 4 - no connection 5 - black - Linksys switch 1 6 - no
connection 7 - yellow - TP-Link router Ethernet 2 8 - blue - D-Link
router LAN 4 Linksys Gigabit 8-Port Workgroup Switch (note that the
connections on this switch are numbered from right to left while the
TP-Link switch is left-to-right) 1 - black - TP-Link switch 5 2 - no
connection 3 - gray - open (below HARC) 4 - black - open (below HARC)
5 - gray - D-Link router Internet 6 - blue - Linksys VOIP Voice Internet
7 - blue - open (below HARC) 8 - no connection On table below TV
screen - D-Link igreen DGS-1005D switch 1 - blue - TP-Link router
Internet 2 - gray - open 3-4 - no connection 5 - yellow - TV computer If
I read this right 3 of the 4 switches are unnecessary!
