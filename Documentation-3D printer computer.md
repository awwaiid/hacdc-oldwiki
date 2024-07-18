ins3Dcomp.txt - July 25, 2019 version To shut down the computer &
optionally restart it from the main screen (WARNING: will stop printing
in progress): L.1 Ctrl Alt F1 (Always hold the Ctrl & Alt keys down when
pressing the other key (F1 in top row not F & 1)) L.2 Click on the icon
at the bottom left of the monitor that looks like part of a clock face
L.3 Move the cursor over Leave at the bottom right of the window that
appears L.4 To shut down & restart the computer click on Restart L.5 To
shut down the computer click on Shut Down L.6 Optional: click on OK to
speed things up To shut down the computer & optionally restart it from a
terminal (WARNING: Will stop printing in progress): S.1 If there is no
terminal window on the monitor: Ctrl Alt F2 (Always hold the Ctrl & Alt
keys down when pressing the other key (F2 in top row not F & 2)) S.2 If
the last line on the terminal window is not pronterhost login: skip
S.3-S.4 S.3 pronterhost login: hacdc S.4 At password: enter standard
password S.5 If the last line is offline\> or starts with the name of a
printer: exit S.6 To shut down & restart the computer: sudo shutdown -r
now S.7 To shut down the computer: sudo shutdown -h now S.8 At \[sudo\]
password for hacdc: enter standard password ins3Dcompprob.txt - July 22,
2019 version If all else (i.e., see If a terminal does not respond at
all below) fails and 3D printer computer does not respond at all: !.1:
If horizontal power strip left of Taz is off (no orange light in switch
at wall end of sockets) turn it on (light should come on) !.2 Make sure
3D printer computer is plugged in to power strip !.3 Make sure 3D
printer computer monitor is plugged in to power strip !.4 If monitor is
off (no orange light in power (rightmost) button at bottom) push button
(light should come on) !.5 If a printer is printing normally wait until
it finishes or get expert help !.6 If there is no green light on in
power button in center of front of 3D printer computer skip steps
!.7-!.9 !.7 Push power button !.8 Wait until green light in button goes
off & stays off !.9 Turn off all printers !.10 Turn on any printers that
are to be used !.11 Push power button on 3D printer computer !.12 If
green light doesn't come on STOP & get expert help !.13 If screen does
not eventually (it takes quite a while for it to start up) come on STOP
& get expert help If a terminal does not respond at all (i.e., terminal
5): T.1 Ctrl Alt F2 (always hold the Ctrl & Alt keys down when pressing
the other key (F2 in top row not F & 2)) T.2 If this terminal is not
responding skip T.3 T.3 If the bottom line does not start with a printer
in use skip T.4-T.16 T.4 Ctrl Alt F6 T.5 If this terminal is not
responding skip T.6 T.6 If the bottom line does not start with a printer
in use skip T.7-T.16 T.7 Ctrl Alt F3 T.8 If this terminal is not
responding skip T.9 T.9 If the bottom line does not start with a printer
in use skip T.10-T.16 T.10 Ctrl Alt F4 T.11 If this terminal is not
responding skip T.12 T.12 If the bottom line does not start with a
printer in use skip T.13-T.16 T.13 Ctrl Alt F5 T.14 If this terminal is
not responding skip T.15 T.15 If the bottom line does not start with a
printer in use skip T.16 T.16 In the unlikely event you get here all the
terminals are either in use or broken; you can either get expert help,
stop one of the printers, or wait for one of them to finish and use the
terminal that was controlling that printer T.17 If the bottom line is
not pronterhost login: skip T.18-T.19 T.18 pronterhost login: hacdc T.19
At Password: enter standard password T.20 If the bottom line starts
offline\> or the name of a printer that is not in use: exit T.21 ps
auxwww \| grep tty# where \# is the number of the nonworking terminal
(i.e., ps auxwww \| grep tty5) T.22 The display should show a list with
a name (user; i.e., root or demo), an integer (process ID), 2 decimal
numbers (% used of CPU & memory), 2 integers, tty#, some characters
(status), a time (start), a time (CPU used), and a name (command),
including one entry ending with /bin/login -- and another ending with
-bash; DISREGARD any entry where tty# is not the number of the
nonworking terminal; if there are no other entries skip T.23-T.28 T.23
sudo kill -9 \# where \# is the process ID (1st integer, 2nd column) of
an entry with the correct tty# other than the ones ending /bin/login --
or -bash \*\*\*WARNING\*\*\* - make sure the number is correct! T.24 At
\[sudo\] password for hacdc: enter standard password T.25 Ctrl Alt F#
where \# is the number for the terminal that was not responding T.26 If
the terminal now responds STOP HERE - DONE T.27 Ctrl Alt F\$ where \$ is
the number for the terminal you were using T.28 Repeat steps T.21-T.27
until only the 2 entries with login & bash remain T.29 sudo kill -9 \#
where \# is the process ID (right after demo) in the line ending -bash
\*\*\*WARNING\*\*\* - make sure the number is correct! T.30 At \[sudo\]
password for hacdc: enter standard password T.31 Ctrl Alt F# where \# is
the number for the terminal that was not responding T.32 If the terminal
now responds STOP HERE - DONE T.33 Ctrl Alt F\$ where \$ is the number
for the terminal you were using T.34 sudo kill -9 \# where \# is the
process ID (right after root) in the line ending with /bin/login --
\*\*\*WARNING\*\*\* - make sure the number is correct! T.35 At \[sudo\]
password for hacdc: enter standard password If this doesn't fix the
problem get expert help If the computer states \[ERROR\] Can't read from
printer (disconnected?) (SerialException): device reports readiness to
read but returned no data (device disconnected or multiple access on
port?) more than 1 terminal may be connected to the printer. R.1 If you
are using terminal 2 skip R.2-R.3 R.2 Ctrl Alt F2 (always hold the Ctrl
& Alt keys down when pressing the other key (F2 in top row not F & 2))
R.3 If the bottom of the display shows the printer you are using:
disconnect R.4 Repeat R.1-R.3 for terminal 3 & Ctrl Alt F3, terminal 4 &
Ctrl Alt F4, terminal 5 & Ctrl Alt F5, & terminal 6 & Ctrl Alt F6
