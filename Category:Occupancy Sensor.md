HacDC's occupancy sensor platform, also providing RFID acess.

# Status

WRT54GL based occupancy sensor provided valid data for a few years,
before HacDC moved down the hall.

NetPLC has been tested, ready for installation.

# NetPLC

<http://mirage335.dyndns.org/wiki/Category:NetPLC>

![](NetPLC_Core.jpg "NetPLC_Core.jpg"){width="400"}

## Repositories

<https://github.com/mirage335/NetPLC>

<https://github.com/HacDC/NetPLC-HacDC-Firmware>

## Connections

### Core

-   Ex1: RJ45 jack providing hardware serial TX/RX, Vcc, Vee, and four
    generic analog/digital IO pins. RFID signal connections are attached
    here.
-   Ex2-Ex3: RJ45 jacks each providing Vcc, Vee, and two generic
    analog/digital IO pins. Consider using S/FTP cable and differential
    signaling for maximum integrity.
-   BAT: External power input, currently connected directly to USB. Used
    as a 5V power source for RFID reader.
-   ENC28J60: Ethernet network connecitivty. Also supports preassembled
    ENC28J60 modules.
-   RN171/XBee Footprint: Generic RN-171 and XBee mounting pads for
    built-in wireless connectivity. Not used, partly due to ATMega32U4
    flash size limitations.

### RFID

-   Signal ethernet cable, latch open and UART RX.
-   Power ethernet cable, 12V and 5V.
-   Two wire solenoid latch power.

## Maintenance

### Workstation

The WYSE terminal labeled "NetPLC-Workstation" has been provided a
bootable Knoppix USB stick with [a simple serial-terminal interactive
shell
script](https://github.com/HacDC/NetPLC-HacDC-Firmware/blob/master/NetPLC_Term.sh).
With the workstation turned on, and NetPLC hardware connected by USB,
type "NetPLC_Term.sh" to begin.

### CLI

Configuration is by command-line interface (CLI). Type "commands" for
the built-in reference, or [check the
source](https://github.com/HacDC/NetPLC-HacDC-Firmware/blob/master/src/CLI/CLI.ino).
Parameters are separated by tabs only.

### Reference

Some of the fimware-included commands are as follows.

``\
`commands`\
`shownet`\
`readout`\
`recentTag`\
`formatMembers`\
`countMembers`\
`showMembers`\
`addMember <shortName> <tagID> <1/0>`\
`delMember <recno>`\
`enableMember <recno>`\
`disableMember <recno>`\
`closeSpace`\
`openSpace`

Note the database is limited to short names and about 50 members, at
\~500B EEPROM storage.

## Planned Upgrades {#planned_upgrades}

-   ) SD card support is easy to provide to AVR/Arduino platforms,
    offering virtually unlimited storage capacity.
-   ) RN171 (WiFi) should be moved to software serial port, completely
    freeing the hardware UART for external peripherials.
-   ) An ATmega2560, rather than ATMega32U4, would offer enough flash
    space to include telnet-style networked CLI functionality alongside
    existing requirements.

# WRT54GL

Router based occupancy sensor is on the way out. Lack of a crystal
oscillator does not guarantee operation internal communication with the
microcontroller when significantly beyond room temperature.

## Maintenance {#maintenance_1}

Wired network configuration is set to DHCP, wireless configuration can
be set by connecting a computer to the LAN interface. Microcontroller
communication can be verified by watching the TX/RX LEDs, which should
blink every minute or so. Detected occupancy sensor status is reported
through onboard LED labeled "OCC".

# History

HacDC's occupancy sensor has been an evolving project, with several
generations of hardware and software contributed by many members. In
addition to the hardware designs listed below, members like "haxwithaxe"
and "eryc" have contributed supporting infrastructure like
[WOPR](WOPR).

## NetPLC {#netplc_1}

Open-source hardware designed by mirage335. Both RFID and Occupancy
Sensing functions are supported. Compatible with Arduino Leonardo
bootloader, based on an ATMega32U4 microcontroller, with on-board
provisions for wired and wireless connectivity.

## WRT54GL {#wrt54gl_1}

Second occupancy sensor, configured by mirage335, using a WRT54GL with
barebones AVR chip hardwired to internal serial TX/RX pads. Data was
relayed directly to internet resources (eg. front page icon) by the
router over wired and/or wireless connectivity as available.

## Arduino

First occupancy sensor was configured by Martin, consisting of an
Arduino, a Radioshack photoresistor (276-1657) and a Quest passive
infrared motion detector. Data was retrieved by a desktop computer via
USB, then published to internet resources (eg. Google Calendar).

# Credits

Martin Rothfield haxwithaxe eryc Many More

[Category:HacDC_Systems](Category:HacDC_Systems)
