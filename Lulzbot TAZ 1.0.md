# TAZ v.1.0 Marlin firmware {#taz_v.1.0_marlin_firmware}

Last edited by Ubuntourist (ubuntourist@hacdc.org) (kjc) 2019.02.14

See the [forked Lulzbot TAZ 1.0 git repository on
GitLab](https://gitlab.com/ubuntourist/lulzbot-taz-1.0-marlin-firmware).

(See also the
[README.md](https://download.lulzbot.com/TAZ/1.0/software/current/firmware/Marlin/README.md)
in the [Lulzbot download directory
tree](https://download.lulzbot.com/TAZ/1.0/software/current/firmware/Marlin/)
as well as the 120-page PDF [TAZ 1.0 User
Manual](https://download.lulzbot.com/TAZ/1.0/documentation/current/LulzBot_TAZ-User_Manual-print.pdf)
and the 80-page [RAMBo 1.1B User's
Manual](https://download.lulzbot.com/TAZ/6.0/production_parts/electronics/RAMBo/docs/RAMBo-1.1b-user-manual.pdf)).

## Determining which version of the TAZ and connecting to it

The “newest” addition to our collection of 3D printers is actually the
oldest: The Lulzbot TAZ is actually, a Lulzbot TAZ 1.0 (according to the
serial number on the back: KT-PR0010-5147).

The `index.html` at <http://devel.lulzbot.com/TAZ/> says, among other
things: `*"B" - KT-PR0010 - TAZ 1.0`

Using `minicom`, the baud rate was determined to be **115200**. Sending
`G28` to home it made it grind gears.

    $ pronsole
    offline&gt; connect /dev/ttyACM2 115200
    ttyACM2 21&deg;&gt;

Eventually, I found
<http://download.lulzbot.com/TAZ/1.0/hardware/electronics/RAMBo/> which
identifies the board as “based off of the **Arduino MEGA**” with “5
stepper drivers” and “5 MOSFET switched outputs” with documentation at
<http://reprap.org/wiki/rambo>

As near as I can tell, the latest in firmware and other software lives
at
<http://download.lulzbot.com/TAZ/1.0/software/current/firmware/Marlin/>

Lulzbot offers instructions on [re-flashing your 3D printer’s
firmware](https://www.lulzbot.com/content/re-flashing-your-3d-printers-firmware)
and see also RepRap’s [RAMBo
firmware](https://www.reprap.org/wiki/Rambo_firmware) page.

Because we neither have the original paperwork for the TAZ, nor were the
EEPROM settings previously enabled, we may be forced to determine the
ESTEPS settings via, IMHO, a method fraught with inaccuracy by trying to
[manually calibrate using the OHAI
instructions](https://ohai.lulzbot.com/project/extruder_calibration/calibration/).

## Adding a dynamic symlink to the TAZ…

After massaging the OS with the procedures listed in [Dynamic symlinks
for 3D printers](Dynamic_symlinks_for_3D_printers) we see:

    $ pronsole
    WARNING:root:Could not setup DBus for sleep inhibition: org.freedesktop.DBus.Error.NotSupported: Unable to autolaunch a dbus-daemon without a $DISPLAY for X11
    Welcome to the printer console! Type &quot;help&quot; for a list of available commands.

    offline&gt;
    offline&gt; connect /dev/TAZ 115200
    start          
    Printer is now online
    External Reset 
    Marlin 1.0.0   
    Last Updated: 2013-03-06 | Author: LulzBot
    Compiled: Apr 17 2015
    Free Memory: 5504  PlannerBufferBytes: 1232
    TAZ PC&gt;
    TAZ 21&deg;&gt;

Note the details on the firmware. Namely:

-   Marlin **1.0.0**
-   Last Updated: **2013-03-06** \| Author: **LulzBot**
-   Compiled: **Apr 17 2015**

## Fixing Arduino

The Arduino IDE complains

    Ignoring bad library name &lt;@pronterhost&gt;

    The library &quot;U8glib-new&quot; cannot be used.

    Library names must contain only basic letters and numbers.

    (ASCII only and no spaces, and it cannot start with a number.)

Und zo, after tracking down the symbolic links and such…

    sudo -i
    $ cd /usr/share/arduino/libraries
    $ rm U8glib-new
    $ mv /home/demo/Taz/Marlin/ArduinoAddons/Arduino_1.x.x/libraries/U8glib-new /home/demo/Taz/Marlin/ArduinoAddons/Arduino_1.x.x/libraries/U8glibNew
    $ ln -s /home/demo/Taz/Marlin/ArduinoAddons/Arduino_1.x.x/libraries/U8glibNew .
    $ exit

After switching computers and moving from Debian to Ubuntu Bionic Beaver
(18.04), Arduino has a different complaint:

    arduino "java.lang.NullPointerException thrown while loading gnu.io.RXTXCommDriver"

This is apparently due to the old "OpenJDK is NOT equal to Oracle Java"
problem.

    $ sudo add-apt-repository ppa:linuxuprising/java
     Oracle Java 11 (LTS) and 12 installer for Ubuntu, Linux Mint and Debian.

    Java binaries are not hosted in this PPA due to licensing. The packages in 
    this PPA download and install Oracle Java 11, so a working Internet connection
    is required.

    The packages in this PPA are based on the WebUpd8 Oracle Java PPA packages:
    https://launchpad.net/~webupd8team/+archive/ubuntu/java

    Created for users of https://www.linuxuprising.com/

    Installation instructions (with some tips), feedback, suggestions, bug reports etc.: 

    Oracle Java 11: https://www.linuxuprising.com/2018/10/how-to-install-oracle-java-11-in-ubuntu.html
    Oracle Java 12: https://www.linuxuprising.com/2019/03/how-to-install-oracle-java-12-jdk-12-in.html

    About Oracle Java 10: This version reached the end of public updates, therefore it's no longer 
    available for download. The Oracle Java 10 packages in this PPA no longer worked due to this, 
    so I have removed them. Switch to Oracle Java 11 or OpenJDK 11 instead, which is long term support.
     More info: https://launchpad.net/~linuxuprising/+archive/ubuntu/java
    Press [ENTER] to continue or Ctrl-c to cancel adding it.
    ...
    $ sudo apt install oracle-java12-installer
    ...
    $ sudo apt install oracle-java12-set-default
    ...

Sigh. And that was a no-go. Because we need five different versions of
Java...

    $ sudo add-apt-repository ppa:webupd8team/java
     Oracle Java (JDK) Installer (automatically downloads and installs Oracle JDK8). 
    There are no actual Java files in this PPA.

    Important -> Why Oracle Java 7 And 6 Installers No Longer Work: 
    http://www.webupd8.org/2017/06/why-oracle-java-7-and-6-installers-no.html

    Update: Oracle Java 9 has reached end of life: 
    http://www.oracle.com/technetwork/java/javase/downloads/jdk9-downloads-3848520.html

    The PPA supports Ubuntu 18.10, 18.04, 16.04, 14.04 and 12.04.

    More info (and Ubuntu installation instructions):
    - http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html

    Debian installation instructions:
    - Oracle Java 8: http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html

    For Oracle Java 11, see a different PPA -> 
    https://www.linuxuprising.com/2018/10/how-to-install-oracle-java-11-in-ubuntu.html
     More info: https://launchpad.net/~webupd8team/+archive/ubuntu/java
    Press [ENTER] to continue or Ctrl-c to cancel adding it.

    ...
    $ sudo apt install oracle-java8-installer oracle-java8-set-default
    ...

Gah! This is maddening! Apparently, now Arduino is out of date... again.

    $ sudo apt-get update
    $ sudo apt-get install ubuntu-make
    $ umake ide arduino
    Choose installation path: /home/ubuntourist/.local/share/umake/ide/arduino
    Downloading and installing requirements
    ...
    $ dpkg --get-selections | grep -i arduino
    arduino                                         install
    arduino-core                                    install
    arduino-mighty-1284p                            install
    arduino-mk                                      install
    $ sudo dpkg -P arduino arduino-core arduino-mighty-1284p arduino-mk
    $ sudo -i
    $ cd /opt
    $ cp -rv /home/ubuntourist/.local/share/umake/ide/arduino .
    $ mkdir bin
    $ cd bin
    $ ln -s ../arduino/arduino .
    $ cd /etc/profile.d
    $ cat > opt-bin.sh 
    #!/bin/bash
    # Written by Ubuntourist <ubuntourist@hacdc.org> 2019.04.11 (kjc)
    #
    # Add /opt/bin to the system path so that everyone can find Arduino
    #

    export PATH=$PATH:/opt/bin
    ^D

## Calibrating the TAZ

    $ pronsole
    WARNING:root:Could not setup DBus for sleep inhibition: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.ScreenSaver was not provided by any .service files
    Welcome to the printer console! Type &quot;help&quot; for a list of available commands.
    offline&gt; connect /dev/TAZ 115200
    Printer is now online
    TAZ 21&deg;&gt; move z 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; move x 10
    TAZ 21&deg;&gt; settemp 215
    Setting hotend temperature to 215.0 degrees Celsius.
    TAZ 21&deg;&gt; 
    TAZ 21&deg;/215&deg;&gt; 
    TAZ 21&deg;/215&deg;&gt; 
    TAZ 21&deg;/215&deg;&gt; 
    TAZ 22&deg;/215&deg;&gt; 
       .
       .
       .
    TAZ 215&deg;/215&deg;&gt; 
    TAZ 215&deg;/215&deg;&gt; extrude 10
    TAZ 215&deg;/215&deg;&gt; extrude 10
    TAZ 215&deg;/215&deg;&gt; extrude 10
    TAZ 215&deg;/215&deg;&gt; extrude 40
       .
       .
       .

**NOTE:** Moving Z 10 “mm” resulted in the extruder assembly climbing
WAY too high (especially compared to the multiple X movements which,
even after 7 of them resulted in considerably less distance total.)

(Extrusion repeated until green filament residue became clear filament.)
At which point Bobby took over and deemed the current feed calibration
to be “close enough” but the ESTEPS value is still unknown.

BTW, Bobby says the **Y** calibration is **0.24 mm per step**.

## Fun with Firmware Flashing

Downloading all the firmware:

    $ wget -r -np -R &quot;index.html*&quot; -e robots=off http://download.lulzbot.com/TAZ/1.0/software/current/firmware/Marlin/Marlin/

In order to get the current settings from the TAZ, `EEPROM_SETTINGS`
needs to be *enabled* which is apparently done in `Configuration.h`

Hopefully, the arcane details can be ferreted out of the [Marlin
Configuration,h
documentation](http://marlinfw.org/docs/configuration/configuration.html)

First, `Configuration.h` has ridiculously long lines, now word-wrapped
for sanity.

Next, a more vexing problem, I think: `pronterhost` has
`Arduino v.2.1.0.5+dfsg2-4.1`. *Naturally*, Marlin only offers Arduino
add-ons for `Arduino 0.xx` and `Arduino 1.x.x`.

Fortunately, further research yielded [a tidbit from the Arduino
Playground](https://playground.arduino.cc/Code/Spi): *An SPI library is
now included in the Arduino software. See the SPI library reference for
details.*

    $ cd Marlin/ArduinoAddons
    $ find . -type f

    ./Arduino_0.xx/Gen6/boards.txt
    ./Arduino_0.xx/libraries/SPI/keywords.txt
    ./Arduino_0.xx/libraries/SPI/SPI.cpp
    ./Arduino_0.xx/libraries/SPI/SPI.h
    ./Arduino_0.xx/libraries/LiquidCrystal/keywords.txt
    ./Arduino_0.xx/libraries/LiquidCrystal/LiquidCrystal.cpp
    ./Arduino_0.xx/libraries/LiquidCrystal/LiquidCrystal.h
    ./Arduino_0.xx/Sanguino/boards.txt
    ./Arduino_0.xx/Sanguino/programmers.txt
    ./Arduino_0.xx/Gen7/boards.txt
        
    ./Arduino_1.x.x/libraries/SPI/keywords.txt
    ./Arduino_1.x.x/libraries/SPI/SPI.cpp
    ./Arduino_1.x.x/libraries/SPI/SPI.h
    ./Arduino_1.x.x/libraries/LiquidCrystal/keywords.txt
    ./Arduino_1.x.x/libraries/LiquidCrystal/LiquidCrystal.cpp
    ./Arduino_1.x.x/libraries/LiquidCrystal/LiquidCrystal.h
    ./Arduino_1.x.x/sanguino/boards.txt

According to the [SPI library reference
documentation](https://www.arduino.cc/en/reference/SPI), the **SPI**
stands for **S**erial **P**eripheral **I**nterface\`.

The [LiquidCrystal
library](https://www.arduino.cc/en/Reference/LiquidCrystal), as one
might guess, allows Arduino to control LCDs. Since we don't have an LCD
on this machine, it's currently irrelevant.

In a previous life, I used a tool called `dfu-programmer` to flash a
PrintrBot's firmware... (Under Arch Linux, I have both the
[`dfu-programmer`](https://dfu-programmer.github.io/) and
[`dfu-util`](http://dfu-util.sourceforge.net/) packages installed.)

## Preparation (additional installs and "research")

-   First:

```{=html}
<!-- -->
```
    sudo apt install dfu-programmer dfu-util avrdude repetier-host

(We're not actually using `repetier-host` but it may come in handy some
day.)

-   Determine the board id by searching `/etc/avrdude.conf` for 2560.
    And the answer is: `m2650`.
-   Next, locate `boards.txt` in the arduino package and search the file
    for `2560`.
-   Within the MEGA 2560 "stanza" locate the `upload.protocol`. As
    expected, this turns out to be `wiring`.
-   Determine the baud rate via `stty < /dev/TAZ` at the Bash prompt. In
    our case, `115200`.

avrdude options:

-   -C = configuration file (`/etc/avrdude`)
-   -p = part (`m2560`)
-   -c = communications protocol (`wiring`)
-   -P = device "port" (`/dev/TAZ`)
-   -b = baud rate (`115200`)
-   -U = `flash:r:`**filename**`.hex:i` or
    `eeprom:r:`**filename**`.hex:i`

The `flash` and `eeprom` should be obvious enough. The `:r:` indicates a
read from the board rather than a write to the board. `filename.hex`,
again should be obvious, and finally the `:i` refers to the file format
used -- in this case Intel hex format.

Backup the flash memory:

    $ avrdude -C /etc/avrdude.conf -p m2560 -c wiring -P /dev/TAZ -b 115200 -U flash:r:flash-2019-02-14.hex:i

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.01s

    avrdude: Device signature = 0x1e9801 (probably m2560)
    avrdude: reading flash memory:

    Reading | ################################################## | 100% 33.56s

    avrdude: writing output file "flash-2019-02-14.hex"

    avrdude: safemode: Fuses OK (E:FD, H:D0, L:FF)

    avrdude done.  Thank you.

And the EEPROM:

    $ avrdude -C /etc/avrdude.conf -p m2560 -c wiring -P /dev/TAZ -b 115200 -U eeprom:r:eeprom-2019-02-14.hex:i

    avrdude: AVR device initialized and ready to accept instructions

    Reading | ################################################## | 100% 0.01s

    avrdude: Device signature = 0x1e9801 (probably m2560)
    avrdude: reading eeprom memory:

    Reading | ################################################## | 100% 4.20s

    avrdude: writing output file "eeprom-2019-02-14.hex"

    avrdude: safemode: Fuses OK (E:FD, H:D0, L:FF)

    avrdude done.  Thank you.

Examining the dumped EEPROM .hex file above seems to indicate that it’s
empty: Basically filled with binary 1’s (a.k.a. Hex FF, integer -1,
Boolean TRUE).

See
[active-configuration.md](https://gitlab.com/ubuntourist/lulzbot-taz-1.0-marlin-firmware/blob/master/active-configuration.md)
for a look which lines are not commented out in Configuration.h.

For comparison, here’s what the Lulzbot Mini reports (word wrapped for
sanity):

    $ pronsole
    WARNING:root:Could not setup DBus for sleep inhibition:
                 org.freedesktop.DBus.Error.ServiceUnknown: The name
                 org.freedesktop.ScreenSaver was not provided by any
                 .service files
    WARNING:root:RPC server bound on non-default port 7979
    Welcome to the printer console! Type &quot;help&quot; for a list of available commands.
    offline&gt; connect /dev/MINI
    start
    Printer is now online
    Marlin 1.1.0.11
    Last Updated: 2016-04-27 12:00 | Author: (Aleph Objects Inc., LulzBot Mini)
    Compiled: Dec 21 2016
    Free Memory: 4404  PlannerBufferBytes: 1232
    V23 stored settings retrieved (396 bytes)
    Steps per unit:
    M92 X100.50 Y100.50 Z1600.00 E833.00
    Maximum feedrates (mm/s):
    M203 X800.00 Y800.00 Z8.00 E40.00
    Maximum Acceleration (mm/s2):
    M201 X9000 Y9000 Z100 E1000
    Accelerations: P=printing, R=retract and T=travel
    M204 P2000.00 R3000.00 T2000.00
    Advanced variables: S=Min feedrate (mm/s),
                        T=Min travel feedrate (mm/s),
                        B=minimum segment time (ms),
                        X=maximum XY jerk (mm/s),
                        Z=maximum Z jerk (mm/s),
                        E=maximum E jerk (mm/s)
    M205 S0.00 T0.00 B20000 X12.00 Z0.40 E10.00
    Home offset (mm):
    M206 X0.00 Y0.00 Z0.00
    PID settings:
    M301 P28.79 I1.91 D108.51 C100.00 L20
    M304 P294.00 I65.00 D382.00
    Filament settings: Disabled
    M200 D3.00
    M200 D0
    Z-Probe Offset (mm):
    M851 Z-1.43
    MINI PC&gt;

## Upgrading the Arduino IDE

The MatterHackers article “[How To Successfully Flash Your 3D Printer’s
Firmware](https://www.matterhackers.com/news/how-to-successfully-flash-your-3d-printers-firmware)”
indicates we need a special [RAMBo
boards](https://raw.githubusercontent.com/ultimachine/ArduinoAddons/master/package_ultimachine_index.json)
JSON file to install into the Arduino IDE…

The instructions for installing don’t match what I see… Sigh. Naturally,
the Linux version has version number suggesting it is much more recent
than whatever Arduino guides suggest using… But, wrong. And also
naturally, there’s nothing distributed as a .deb package – at least not
from a source I trust. So. I need to install using the official [Arduino
Guide for Linux](https://www.arduino.cc/en/Guide/Linux).

    $ sudo dpkg -P arduino arduino-core
    [sudo] password for ubuntourist:
    (Reading database ... 336652 files and directories currently installed.)
    Removing arduino (2:1.0.5+dfsg2-4.1) ...
    Purging configuration files for arduino (2:1.0.5+dfsg2-4.1) ...
    Removing arduino-core (2:1.0.5+dfsg2-4.1) ...
    dpkg: warning: while removing arduino-core, directory '/usr/share/arduino/libraries/Wire/utility' not empty so not removed
    dpkg: warning: while removing arduino-core, directory '/usr/share/arduino/libraries/SPI' not empty so not removed
    dpkg: warning: while removing arduino-core, directory '/usr/share/arduino/libraries/LiquidCrystal' not empty so not removed
    dpkg: warning: while removing arduino-core, directory '/usr/share/arduino/hardware/tools' not empty so not removed
    Processing triggers for shared-mime-info (1.10-1) ...
    Processing triggers for man-db (2.8.5-2) ...
    Processing triggers for hicolor-icon-theme (0.17-2) ...
    Processing triggers for mime-support (3.62) ...
    Processing triggers for desktop-file-utils (0.23-4) ...
    $

And this is why we document… Apparently, the stock Arduino Debian
packages have been futzed with, and I apparently wiped whatever mods
might have been there.

    /usr/share/arduino/libraries/Wire/utility$ ls -Al
    total 36
    -rw-r--r-- 1 demo demo 16386 Oct 19  2013 '#twi.c#'
    lrwxrwxrwx 1 demo demo    49 Oct 19  2013  .#twi.c -&gt; demo@pronterhost.organleggers.org.3334:1381110447
    -rw-r--r-- 1 demo demo 16366 May  5  2013  twi.c~
    $ cd /usr/share/arduino/libraries/Wire/utility
    $ diff -u twi.c~ \#twi.c#
    --- twi.c~      2013-05-05 13:55:52.000000000 -0500
    +++ #twi.c#     2013-10-19 20:10:50.817962597 -0500
    @@ -202,6 +202,7 @@
       while(TWI_READY != twi_state){
         continue;
       }
    +
       twi_state = TWI_MTX;
       twi_sendStop = sendStop;
       // reset error state (0xFF.. no error occured)
    @@ -210,11 +211,12 @@
       // initialize buffer iteration vars
       twi_masterBufferIndex = 0;
       twi_masterBufferLength = length;
    -
    +
       // copy data to twi buffer
       for(i = 0; i &lt; length; ++i){
         twi_masterBuffer[i] = data[i];
       }
    +

       // build sla+w, slave device address + w bit
       twi_slarw = TW_WRITE;
    @@ -224,6 +226,7 @@
       // in the ISR. Don't do it again.
       //
       if (true == twi_inRepStart) {
    +
         // if we're in the repeated start state, then we've already sent the start,
         // (@@@ we hope), and the TWI statemachine is just waiting for the address byte.
         // We need to remove ourselves from the repeated start state before we enable interrupts,
    @@ -242,7 +245,7 @@
       while(wait &amp;&amp; (TWI_MTX == twi_state)){
         continue;
       }
    -
    +  return twi_state;
       if (twi_error == 0xFF)
         return 0;  // success
       else if (twi_error == TW_MT_SLA_NACK)
    $

And, whatever `demo@pronterhost.organleggers.org.3334:1381110447` was,
it appears to be no more. The symbolic link above points nowhere. A more
complete picture of what the purge did not remove:

    $ cd /usr/share/arduino
    $ ls -AR
    .:
    hardware  libraries

    ./hardware:
    Sanguino  tools

    ./hardware/Sanguino:
    boards.txt  bootloaders  cores  programmers.txt

    ./hardware/Sanguino/bootloaders:
    atmega644p

    ./hardware/Sanguino/bootloaders/atmega644p:
    ATmegaBOOT_324P.hex  ATmegaBOOT_644.hex  ATmegaBOOT_644P.hex  ATmegaBOOT.c  Makefile  README.txt

    ./hardware/Sanguino/cores:
    arduino

    ./hardware/Sanguino/cores/arduino:
     binary.h             main.cpp         Print.h        WConstants.h      wiring_digital.c   wiring_shift.c   WString.h
    'Copy of wiring.h'    pins_arduino.c   Stream.h       WInterrupts.c     wiring.h           WMath.cpp
     HardwareSerial.cpp   pins_arduino.h   Tone.cpp       wiring_analog.c   wiring_private.h   WProgram.h
     HardwareSerial.h     Print.cpp        WCharacter.h   wiring.c          wiring_pulse.c     WString.cpp

    ./hardware/tools:
    '#avrdude.conf#'

    ./libraries:
    hardware  libraries  LiquidCrystal  SPI  U8glib  u8glib_arduino_v1.18.1.zip  U8glibNew  Wire

    ./libraries/LiquidCrystal:
    LiquidCrystal

    ./libraries/SPI:
    SPI

    ./libraries/Wire:
    utility

    ./libraries/Wire/utility:
    '#twi.c#'   .#twi.c   twi.c~

So let's remove everything and install...

    $ sudo rm -rf /usr/share/arduino
    $ cd ~/
    $ mkdir build
    $ cd buid
    $ tar xJvf arduino-1.8.8-linux32.tar.xz
    $  sudo ./install.sh
    Adding desktop shortcut, menu item and file associations for Arduino IDE... done!

Gah! Who said I wanted a desktop?

    $ sudo ./uninstall.sh
    Removing desktop shortcut and menu item for Arduino IDE... done!

So. I have to run from within the user directory where I untarred.
Bleah! Let's not.

    $ sudo -i
    $ cp -vr arduino-1.8.8 /opt/
    $ mkdir /opt/bin
    $ cd /opt/bin
    $ ln -s ../arduino-1.8.8/arduino .
    $ cd /etc
    $ edit profile
    ... add /opt/bin to start of PATH ...
    PATH=/opt/bin:...
    $ exit
    $ rm -rf arduino-1.8.8

## Compiling and uploading with modified Configuration.h {#compiling_and_uploading_with_modified_configuration.h}

    $ arduino

    ...Preferences -&gt; Additional Boards Manager URLs
    ...https://raw.githubusercontent.com/ultimachine/ArduinoAddons/master/package_ultimachine_index.json
    ...Tools -&gt; Board -&gt; Board Manager -&gt; RAMBo -&gt; Install
    ...Tools -&gt; Board -&gt; Rambo
    ...Tools -&gt; Port -&gt; /dev/ttyACM1  # SUBJECT TO CHANGE !!!
    ...File -> Load -> Marlin.ino     # (Navigate to directory first)
    ...(checkbox, i.e. compile)
    ...(right arrow, i.e. upload)

    Sketch uses 48566 bytes (18%) of program storage space. Maximum is 258048 bytes.
    Global variables use 2627 bytes of dynamic memory.
    Sketch uses 48566 bytes (18%) of program storage space. Maximum is 258048 bytes.
    Global variables use 2627 bytes of dynamic memory.

    $ pronsole
    WARNING:root:Could not setup DBus for sleep inhibition:
                 org.freedesktop.DBus.Error.ServiceUnknown:
             The name org.freedesktop.ScreenSaver was not provided by
             any .service files
    WARNING:root:RPC server bound on non-default port 7979
    Welcome to the printer console! Type &quot;help&quot; for a list of available commands.
    offline&gt; connect /dev/TAZ
    start
    Printer is now online
    External Reset
    Marlin 1.0.0
    Last Updated: 2013-03-06 | Author: LulzBot
    Compiled: Feb 14 2019
    Free Memory: 5429  PlannerBufferBytes: 1232
    Using Default settings:
    Steps per unit:
    M92 X100.50 Y100.50 Z800.00 E800.00
    Maximum feedrates (mm/s):
    M203 X500.00 Y500.00 Z10.00 E45.00
    Maximum Acceleration (mm/s2):
    M201 X9000 Y9000 Z100 E10000
    Acceleration: S=acceleration, T=retract acceleration
    M204 S500.00 T3000.00
    Advanced variables: S=Min feedrate (mm/s),
                        T=Min travel feedrate (mm/s),
                B=minimum segment time (ms),
                X=maximum xY jerk (mm/s),
                Z=maximum Z jerk (mm/s)
    M205 S0.00 T0.00 B20000 X5.00 Z0.40 E5.00
    Home offset (mm):
    M206 X0.00 Y0.00 Z0.00
    PID settings:
    M301 P22.20 I1.08 D114.00
    TAZ PC&gt;
    TAZ 22&deg;&gt; M501
    SENDING:M501
    Using Default settings:
    Steps per unit:
    M92 X100.50 Y100.50 Z800.00 E800.00
    Maximum feedrates (mm/s):
    M203 X500.00 Y500.00 Z10.00 E45.00
    Maximum Acceleration (mm/s2):
    M201 X9000 Y9000 Z100 E10000
    Acceleration: S=acceleration, T=retract acceleration
    M204 S500.00 T3000.00
    Advanced variables: S=Min feedrate (mm/s),
                        T=Min travel feedrate (mm/s),
                B=minimum segment time (ms),
                X=maximum xY jerk (mm/s),
                Z=maximum Z jerk (mm/s)
    M205 S0.00 T0.00 B20000 X5.00 Z0.40 E5.00
    Home offset (mm):
    M206 X0.00 Y0.00 Z0.00
    PID settings:
    M301 P22.20 I1.08 D114.00
    TAZ 22&deg;&gt;

Success!

------------------------------------------------------------------------

## Miscellaneous e-mail

From: Julia Longtin \<julia.longtin@gmail.com\> Date: Fri, Jan 18, 2019
at 8:27 AM

\> AFAIK, all taz machines are using the same, or possibly slightly
different rambo boards. the machines are different, but the electronics
should be the same. I think the software stack i have for the previous
taz might work.. but honestly, the over-usb programming is a HUGE pain.
better to get an ISP device that supports the atmega 2560.

Hmmm... How old / new is the Atmega 2560? I'll need to dig a bit, but
HacDC did a "group buy" for Elliot Williams' class and I seem to recall
this "thingie" (as Jen would say) that had some ribbon cables and
programmed some board with "Tiny" in the name. It's been 10 years and
10,00 beers. So, I'm a bit fuzzy on the details.

\> I'd like to get the changes i made for /dev/TAZ and /dev/ROSTOCK
documented, but i will need some sort of access to pronterhost.

Do you mean the way that those are auto-symlinked to the appropriate
/dev/ttyACM-whatever-du-jour? Or something more?

\> I'd like to coordinate with someone to do a daytime session
remotely... and remind everyone who calls me that i'm 6 hours ahead.
possibly someone could put up a 'berlin time' clock on the wall? ;)

------------------------------------------------------------------------

From: Julia Longtin \<julia.longtin@gmail.com\> Date: Fri, Jan 18, 2019
at 9:42 AM

yeah, the auto symlink thing is neat, and should be documented. the 2560
is pretty old now, but it's not the one most of the programmers will
target. there are a dozen programmers around the space that won't work
for it.

------------------------------------------------------------------------

From: Kevin Cole \<dc.loco@gmail.com\> Date: Tue, Feb 19, 2019 at 3:01
PM

I've turned on EEPROM stuff in the firmware and it appears to be
working. But, my changes to the Z axis steps per mm change the actual
movement in apparently random ways.

The very last section of the
[README.md](https://gitlab.com/ubuntourist/lulzbot-taz-1.0-marlin-firmware/blob/master/README.md#more-calibration-info):
**More calibration info** shows what I thought was the correct formula
but it was WAY off. But so was 400, 200, 220, 205, 102 etc. And, I
thought that shrinking the number should have consistently reduced the
distance, but I wasn't even getting that. (At 102, it even jammed up one
time and ran the motor continuously without moving the Z axis at all,
but attempting to repeat that experiment did not yield the same result.)

------------------------------------------------------------------------

From: Julia Longtin \<julia.longtin@gmail.com\> Date: Tue, Feb 19, 2019
at 3:11 PM

now you need to adjust the speed.

------------------------------------------------------------------------

-   [How To Successfully Flash Your 3D Printer's
    Firmware](https://www.matterhackers.com/news/how-to-successfully-flash-your-3d-printers-firmware)
-   RepRap wiki: [Rambo](https://reprap.org/wiki/Rambo)

Search terms: **"export" OR "backup" OR "dump" arduino firmware
"avrdude" OR "dfu-utils" OR "dfu-util" OR "dfu-programmer"**

Promising leads:

-   RepRap forum: [backup installed
    firmware?](https://reprap.org/forum/read.php?158,84849)
-   YouTube: [Arduino MEGA 2560 firmware and eeprom
    backup](https://www.youtube.com/watch?v=Jw-ZSkzd-uY)
-   Arduino forum: [Extracting Code from an
    Arduino](https://forum.arduino.cc/index.php?topic=403201.0)

Preview YouTube video Arduino MEGA 2560 firmware and eeprom backup

-   [3D Printer Firmware Settings - Stepper Motor
    Configuration](https://www.matterhackers.com/news/3d-printer-firmware-settings-stepper-motor-configuration)
-   <https://solidutopia.com/marlin-firmware-user-guide-basic/>

Axis steps per unit

The stepper motor receives step by step moving command from the
controller. The controller needs to know the steps/mm ratio to send the
appropriate steps to reach the required distance. How many steps are
needed to move an axis by 1 mm?

`Belts and pulley (usually xy axis):`\
\
`steps_per_mm = (motor_steps_per_rev * driver_microstep) / (belt_pitch * pulley_number_of_teeth)`\
\
`lead screw (z axis)`\
\
`steps_per_mm = (motor_steps_per_rev * driver_microstep) / thread_pitch`\
\
`Direct drive extruder:`\
\
`e_steps_per_mm = (motor_steps_per_rev * driver_microstep) / (hob_effective_diameter * pi)`

See the example of bowden extruder

`Extruder with gear reduction:`\
\
`e_steps_per_mm = (motor_steps_per_rev * driver_microstep) * (big_gear_teeth / small_gear_teeth) / (hob_effective_diameter * pi)`\
\
`DEFAULT_AXIS_STEPS_PER_UNIT   {X,Y,Z,E1}`\
\
`#define DEFAULT_AXIS_STEPS_PER_UNIT   {80,80,200.0*8/3,760}`\

Search terms: **configure rambo marlin taz 1.0 z axis distance**

------------------------------------------------------------------------

-   [Drillpro 400mm 8mm Lead Screw ACME Lead Screw and Nut for 3D
    Printer Z
    Axis](https://www.amazon.com/Drillpro-400mm-Lead-Screw-Printer/dp/B017AR5QBS)
-   [Brass Flange Nut For 3D Printer Z Axis 8mm Stainless
    Steel](https://www.banggood.com/Brass-Flange-Nut-For-3D-Printer-Z-Axis-8mm-Stainless-Steel-p-973107.html)
    -   The four wee holes = 3 mm diameter each sayeth Julia
    -   The center hole = 8 mm diameter sayeth Julia (8.08 mm measured)
    -   The outer diameter = 22.22 mm (measured)

The above appear to be the same nut, and the second link has a blueprint
with measurements.

I'm starting by duplicating the nut. Would like to print it to see how
well it matches the real thing (sans threading)...

-   See also: [Would using a leadscrew with 1 or 2 mm lead, en lieu of 8
    mm, result in a better
    printer?](https://3dprinting.stackexchange.com/questions/4031/would-using-a-leadscrew-with-1-or-2-mm-lead-en-lieu-of-8-mm-result-in-a-better)

`// Source:`\
`//  `[`https://www.banggood.com/Brass-Flange-Nut-For-3D-Printer-Z-Axis-8mm-Stainless-Steel-p-973107.html?cur_warehouse=CN`](https://www.banggood.com/Brass-Flange-Nut-For-3D-Printer-Z-Axis-8mm-Stainless-Steel-p-973107.html?cur_warehouse=CN)\
`//  `[`https://www.amazon.com/Drillpro-400mm-Lead-Screw-Printer/dp/B017AR5QBS`](https://www.amazon.com/Drillpro-400mm-Lead-Screw-Printer/dp/B017AR5QBS)\
`//`\
`// The rod (screw) specs:`\
`//`\
`//    Lead screw diameter:      8 mm`\
`//    Lead screw Length:      400 mm`\
`//    Pitch (a.k.a. spacing):   2 mm (threads are 2 mm apart?)`\
`//    Lead:                     8 mm (360-degree turn = 8 mm displacement?)`\
`//    Lead screw (of) thread:   8 mm (360-degree turn = 8 mm displacement?)`\
`//`\
`//    Therefore: 4 "starts" (* 2 mm pitch = 8 mm lead or thread)`

Very helpful-looking!

-   YouTube: [Still Extruding: Calibrating XY&Z
    Step/MM](https://www.youtube.com/watch?v=wAL9d7FgInk)
-   See "Sources of Documentation" in [Configuring Marlin
    1.1](http://marlinfw.org/docs/configuration/configuration.html)
-   [3D Printer Firmware Settings - Stepper Motor
    Configuration](https://www.matterhackers.com/news/3d-printer-firmware-settings-stepper-motor-configuration)

------------------------------------------------------------------------

## TAZ stepper motors

I **think** we have [NEMA 17 stepper
motors](https://www.lulzbot.com/store/parts/nema-17-stepper-motor). The
specs:

-   [Step angle](https://reprap.org/wiki/Stepper_motor#Step_angle):
    **1.8°** = **200 steps per revolution**
-   Holding torque: **55 N.cm**
-   Rated voltage: **2.8V**
-   **2 phase**
-   Resistance per phase: **2.8,±10%**
-   Inductance per phase: **4.8,±20%**
-   Operation temp range: **-20°C \~ +50°C**
-   Weight: **0.365Kg**
-   **4 AWG22 lead wires** (ends are bare and need connectors)
-   **5mm D-shaped motor shaft**

[Category:3D Printers](Category:3D_Printers)
