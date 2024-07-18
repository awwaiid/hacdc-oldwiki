Tabletop computer terms - move over means to use the touch pad to move
the arrow on the display to the described position click on means to
move the arrow to the described position & then press either click
button type means to type what is described type: means to type the
characters that follow the space after : enter means to type what is
described (if anything) & then press the Enter key (at right) enter:
means to type the characters that follow the space after : & then press
Enter insCADImp How to use ImplicitCAD on one of the tabletop
computers - Dec. 26, 2019 version I.1 Turn on the computer & log in (see
Documentation-Tabletop_computers for detailed instructions) I.2 Click on
Applications (top left) I.3 Move over System Tools I.4 Click on MATE
Terminal in window that just appeared I.5 To connect (ssh) thru the
HacDC network & perform the following on the renderadmin computer
instead of the tabletop computer type: ssh renderadmin@jobs.hacdc.org
I.6 At renderadmin@jobs.hacdc.org's password: enter standard password
I.7 Enter cd directorybeingused/ (i.e., ImplicitCAD/radioshack_box/) I.8
Enter emacs -nw file.escad (i.e., testcube.escad - editor (one of many
that can be used) for creating or modifying file (in this case object
description)) I.9 Create or modify object description I.10 Type Ctrl X
Ctrl S (saves file) Ctrl X Ctrl C (exits from editor) I.11 Enter make
file.stl (i.e., testcube.stl - convert from object description (.escad)
to surface description (.stl)) I.12 Wait - complex objects can take a
very long time I.13 If there is an error then repeat I.8-I.12 as many
times as necessary I.14 To disconnect from the renderadmin computer
enter: exit I.15 Enter scp
renderadmin@jobs.hacdc.org:/home/renderadmin/directorybeingused/file.stl
./ (i.e.,
renderadmin@jobs.hacdc.org:/home/renderadmin/ImplicitCAD/radioshack_box/testcube.stl
./ - copy source, item, to; copy file back to tabletop computer) I.16 At
Password: enter standard password I.17 Enter meshlab file.stl (i.e.,
meshlab testcube.stl - display object) I.18 At Post-Open Processing:
click on OK I.19 After examining object type Ctrl Q (exits from meshlab)
I.20 Repeat I.5-I.19 as many times as needed
