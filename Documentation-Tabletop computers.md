Using the tabletop computers Terms - move over means to use the touch
pad to move the arrow on the screen to the described position click on
means to move the arrow to the described position & then press either
click button type means to type what is described type: means to type
the characters that follow the space after : enter means to type what is
described (if anything) & then press the Enter key (at right) enter:
means to type the characters that follow the space after : & then press
Enter To use a tabletop computer (should be stored on the Tabletop
Computer cart to the right of the laser cutter; make sure there is a USB
drive glued into the back) - Dec. 26, 2019: C.1 Plug the round connector
of a tabletop computer power supply (19-20V; they should be on the cart
next to the computers) into the hole at the left of the back of the
computer. C.2 Plug the power supply into an outlet that has power. C.3
Slide the silver latch at the front of the computer to the right & open
the computer. C.4 Push the power button in the right end of the hinge (3
green lights should briefly come on at the center back of the computer,
then the left one should come back on & stay on) C.4 If the display
states Strike the F1 key to continue then press F1 (at left of back) C.5
At Login: (it takes a long time to appear) enter: hacdc C.6 At Password:
enter standard password To use the computer for general use (Linux) -
Dec. 12, 2019: G.1 Click on Applications (top left of display) G.2 Move
over System Tools (at bottom of new list) G.3 Click on MATE Terminal
(middle of 2nd list; new window should appear) To use the computer to
access the internet - Dec. 12, 2019: I.1 Click on Applications (top left
of display) I.2 Move over Internet (middle of new list) I.3 Move over
directly to the right to Chromium Web Browser in the 2nd list I.4 Click
on the desired web browser To shut off the computer - Dec. 12, 2019: S.1
Click on System (top left of display) S.2 Click on Shut Down on new list
S.3 To speed things up click on Shut Down at bottom right of new window
If the computer isn't responding at all hold down the power button in
the right end of the hinge until it shuts off To update the software -
Feb. 23, 2020: U.1 In a MATE terminal (see To use the computer for
general use (Linux) above) enter: sudo apt update U.2 If the terminal
displays \[sudo\] password for hacdc: then enter standard password U.3
Optional - to see what updates exist enter: sudo apt list --upgradable
\| most U.4 Optional - to see how much space is available on the USB
drive enter: df -h U.5 enter: sudo apt full-upgrade U.6 When the
terminal states how much additional disk space will be used and asks Do
you want to continue? \[Y/n\] enter: y U.7 If at any point the terminal
states that a file has been modified and asks what you would like to do
about it (keep your currently-installed version is preselected) note the
file name and enter U.8 If the terminal states that xdm must be stooped
before the upgrade & If you want to interrupt the upgrade now and
continue later, please answer No to the question below. \<Ok\> (\<Ok\>
should be preselected) enter U.9 If the terminal asks Do you want to
upgrade glibc now? \<Yes\> \<No\> (Yes should be preselected) enter U.10
If the terminal states Display manager must be restarted manually...
(\<Ok\> should be preselected) enter U.11 If the terminal states The
grub boot loader was previously installed to a disk that is no longer
present, ... & asks for GRUB install devices: enter space (selects
first) down arrow space (selects second too) tab U.12 If the terminal
asks for any other input (an option should be preselected as the
default) enter U.13 When the update is finished enter: sudo shutdown -r
now U.14 If the graphical display (not just a text display like the
terminal) reappears (it takes a while) after logging in skip steps
U.15-U.18 U.15 enter: sudo apt-get purge xserver-xorg-video-intel U.16
sudo shutdown -r now U.17 sudo apt-get install xserver-xorg-video-intel
U.18 sudo shutdown -r now U.19 In a MATE terminal enter: emacs -nw
update.txt U.20 Enter or change the date of the update U.21 Enter or
change the list of files that weren't updated because they had been
modified (see step U.7) U.22 Type Ctrl x Ctrl s Ctrl x Ctrl c To install
minicom - Dec. 23, 2019: M.1 If a MATE Terminal is already displayed
then skip steps M.2-M.4 M.2 Click on Applications at top left M.3 Move
over System Tools M.4 Click on MATE Terminal M.5 Enter: sudo apt install
minicom M.6 If the screen displays \[sudo\] password for hacdc: then
enter standard password M.7 If the display asks Do you want to continue?
\[Y/n\]: then enter: y M.8 When hacdc@XXXXXXX:\~\$ (where XXXXXXX is the
computer name) appears (it takes a while) enter: sudo minicom -s M.9
Press down arrow twice to move highlighted line down to: Serial port
setup M.10 Enter M.11 If A - Serial Device : is /dev/ttyACM0 then skip
M.12-M.14 M.12 At Change which setting? type: a M.13 Use the Backspace
key to change /dev/modem to /dev/ttyACM0 M.14 Enter M.15 Enter M.16
Press down arrow twice to move highlighted line down to Screen and
keyboard M.17 Enter M.18 At Change which setting? (Esc to exit) if Q -
Local echo : is no then type: q M.19 If T - Add carriage return : is no
then type: t M.20 Enter M.21 Press down arrow to move highlighted line
down to Save setup as dfl M.22 Enter (Configuration saved should appear
briefly) M.23 Press down arrow 3 times to move highlighted line to Exit
from Minicom M.24 Enter M.25 Enter: sudo usermod -G dialout hacdc M.26
Click on System at top towards left M.27 Click on Log Out hacdc... M.28
To speed things up click on Log Out at lower right of new window M.29 At
Login: enter hacdc M.30 At Password: enter standard password M.31 Repeat
steps M.2-M.4 M.32 emacs -nw installed.txt M.33 Add minicom (in
alphabetical order if a list already exists) M.34 Type Ctrl x Ctrl s
Ctrl x Ctrl c (always hold down the Ctrl key while pressing the
following letter) M.35 Enter minicom To rename the computer - Jan. 13,
2020: N.1 Enter: sudo -i N.2 If the display shows \[sudo\] password for
hacdc: then enter standard password N.3 cd /etc/ N.4 Enter: nano
hostname N.5 Change the name to the new name N.6 Type Ctrl x N.7 At Save
modified buffer? type: y N.8 At File Name to Write: hostname enter N.9
Enter: nano hosts N.10 Change the name on the 2nd line to the new name
N.11 Type Ctrl x N.12 At Save modified buffer? type: y N.13 At File Name
to Write: hosts enter N.14 Enter: reboot
