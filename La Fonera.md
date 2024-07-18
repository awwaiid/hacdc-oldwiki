This document is generated from a Markdown file, via pandoc:

    pandoc -r markdown README.md -w mediawiki -o README.wiki

### 2018.01.25

As of 2018.01.25, Flint's comments on the wee white wireless wrouter:

    ACCTON MR3201A.b
    Model:  MR3201A-38NQ
    MAC:    00:12:0F:A4:42:EE
    IP:     5.104.66.238
    FCC ID: HED-MR3201A
    Input:  5 VDC, 2 A

Crappy photo

I have a high degree of confidence that Flint marked the ground wire of
his white patchwork cable with black marker.

`nmap` didn't help me because I don't know how to use it. However,
`arp`, which I almost don't know how to use, did.

Using HacDC machine **7KDNKH1**...

According to [How to find live hosts on my
network?](https://security.stackexchange.com/questions/36198/how-to-find-live-hosts-on-my-network#36200)
use `arp` like so:

    $ arp -a -n
    ? (192.168.26.93) at ...MAC... [ether] on wlan5
    ? (192.168.26.152) at ...MAC... [ether] on wlan5
    ? (192.168.1.1) at ...MAC... [ether] on eth5
    ? (192.168.26.175) at ...MAC... [ether] on wlan5
    ? (192.168.26.1) at ...MAC... [ether] on wlan5
    ? (192.168.26.141) at ...MAC... [ether] on wlan5

Note the line that ends in **eth5**...

So. Opening a web browser and browsing to that address (192.168.1.1)
reveals:

    Webif^2 Administration Console
    Redirecting to main page

Unfortunately, it wants a username and password I cannot guess. However,
fortunately, it also says:

    http://192.168.1.1 is requesting your username and password.
    The site says &quot;OpenWrt&quot;

which suggests we don't need to install OpenWRT. ;-)

But we want to update it. A search of the OpenWRT wiki for
`ACCTON MR3201A.b` redirects to [La Fonera (FON2100 and
FON2200)](https://wiki.openwrt.org/toh/fon/fonera?s%5B%5D=accton&s%5B%5D=mr3201a)
which claims the architecture we need is MIPS 4KEc.

Nothing about reinstalling OpenWRT on an already installed system... So
far. However, there is an [Installing OpenWRT with
RedBoot](https://wiki.openwrt.org/toh/fon/fonera?s%5B%5D=accton&s%5B%5D=mr3201a#installing_openwrt_with_redboot)
article.

Julia's right: This is really painful. Now installing `wireshark` and
`tcpdump`...

    $ sudo tcpdump -Ani eth5 port 4919 and udp
    tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
    listening on eth5, link-type EN10MB (Ethernet), capture size 262144 bytes
    21:12:16.189983 IP 192.168.1.1.59153 &gt; 192.168.1.255.4919: UDP, length 1001
    E.....@.@..............7......Press reset now, to enter Failsafe!............
    21:14:41.637517 IP 192.168.1.1.58542 &gt; 192.168.1.255.4919: UDP, length 1001
    E.....@.@..............7...|..Press reset now, to enter Failsafe!............
    21:14:42.329525 IP 192.168.1.1.35221 &gt; 192.168.1.255.4919: UDP, length 1001
    E.....@.@..............7......Entering Failsafe!.............................
    ^C
    3 packets captured
    3 packets received by filter
    0 packets dropped by kernel

    $ telnet 192.168.1.1
    Trying 192.168.1.1...
    telnet: Unable to connect to remote host: Network is unreachable

    $ sudo tcpdump -Ani eth5 port 4919 and udp
    tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
    listening on eth5, link-type EN10MB (Ethernet), capture size 262144 bytes
    ^C
    0 packets captured
    0 packets received by filter
    0 packets dropped by kernel

    $ ssh 192.168.1.1
    ssh: connect to host 192.168.1.1 port 22: Network is unreachable

    $ ip addr
    1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
        inet6 ::1/128 scope host
           valid_lft forever preferred_lft forever
    2: eth5: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq state UP group default qlen 1000
        link/ether 00:21:70:b8:a4:e9 brd ff:ff:ff:ff:ff:ff
        inet6 fe80::c2ec:d64e:c244:47a/64 scope link noprefixroute
           valid_lft forever preferred_lft forever
    3: wlan5: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc mq state DOWN group default qlen 1000
        link/ether ee:77:8a:df:f6:d1 brd ff:ff:ff:ff:ff:ff

    $ ssh 192.168.1.1
    ssh: connect to host 192.168.1.1 port 22: Network is unreachable
    $ telnet 192.168.1.1
    Trying 192.168.1.1...
    telnet: Unable to connect to remote host: Network is unreachable

    $ nmap -p 1-65535 192.168.1.1

    Starting Nmap 7.60 ( https://nmap.org ) at 2018-02-22 21:32 EST
    mass_dns: warning: Unable to determine any DNS servers. Reverse DNS is disabled. Try using --system-dns or specify valid servers with --dns-servers
    Nmap scan report for 192.168.1.1
    Host is up (0.087s latency).
    All 65535 scanned ports on 192.168.1.1 are closed

    Nmap done: 1 IP address (1 host up) scanned in 20.43 seconds

The *good* news is that `tcpdump` did allow me to time the pressing of
the reset button correctly, and verify that it did indeed get into
failsafe mode. The bad news is that repeated attempts to communicate
over the network with the beastie were rejected. So... old-school serial
communication. On a box whose only serial "port" consists of a 10-pin
header inside the box.

And... We're opening the box. The feet need to be removed and then the
screws under them. Then the thin top can be removed by popping the two
plastic clips on either side of the long edges, and the top then slid
forward (away from the power, antenna and ethernet, to release it from
the back corners before fully removing.

The serial pin-outs are available, albeit not clearly, on the [LaFonera
Hardware
USB](https://www.dd-wrt.com/wiki/index.php/LaFonera_Hardware_USB) of the
DD-WRT wiki.

Julia, armed with a multimeter, determined GND and VCC pins are those
closest to the edge of the board.

        * *                   1  2
    RX  * *              RX   3  4
    TX  * *              TX   5  6
        * *                   7  8
    GND * * Vcc          GND  9 10 Vcc

More important details at [LaFonera Hardware
Serial-Cable-Port](https://www.dd-wrt.com/wiki/index.php/LaFonera_Hardware_Serial-Cable-Port)
like, for example, better pictures, and the serial settings:

    9600-8-N-1 and no flow control

[How to mung a USB
cable](http://wiki.icub.org/images/c/c1/FTDI_-_SERIAL_CONVERTER_CABLE_TTL232R.pdf)

With a custom USB cable built, in place, (black wire to GND, yellow to
TX orange to RX, green to ... nothing) and baud rate established:

    $ screen /dev/usb0 9600

This brought up the serial console, which brought up the OpenWRT
ASCII-art splash screen.

     root@OpenWrt:/# passwd
     Changing password for root
     [admin]
     [admin]
     Password for root changed by root
     root@OpenWrt:/#

Now the system can be reached via the web interface... But the update
failed. See screenshots.

[This forum
thread](https://forums.hak5.org/topic/25254-pineapple-flash-update/)
looks... promising? But it's getting late.

------------------------------------------------------------------------

### 2018.02.26

Looking at the [WiFi
setup](http://192.168.1.1/cgi-bin/webif/network-wlan.sh) it says that we
need to install the wpa-supplicant package.

Attempting to ssh into the wee white wireless with

    ssh root@192.168.1.1

yields a message saying it only offers diffie-hellman-group1-sha1 as a
key exchange... So. Need to reconfigure ssh to use it?

    ssh -oKexAlgorithms=+diffie-hellman-group1 \
        -c aes128-cbc                          \
        root@192.168.1.1

Or, using \~/.ssh/config:

    Host 192.168.1.1
      User root
      KexAlgorithms +diffie-hellman-group1-sah1
      Ciphers aes128-cbc
    Host whitebox
      Hostname 192.168.1.1
      User root
      KexAlgorithms +diffie-hellman-group1-sah1
      Ciphers aes128-cbc

TEMPORARILY changing to 192.168.26.222 DAMN IT! I forgot to set the
default gateway!

    route add default gw 192.168.26.1 br-lan

That didn't work. (It set it but didn't make use of it.)

    vi /etc/config/network

      option 'gateway' '192.168.26.1'
      :wq

The [BITS-fonera OpenWRT GitHub
repository](https://github.com/BitsDevelopmentTeam/bits-fonera/tree/master/packages%20openwrt%2010.03)
proved helpful in understanding that there was a `opkg` command...
However, as supplied, it tried to update from a non-existent repo...

Comment out the last src line:

    $ vi /etc/opkg.conf
    src/gz snapshots http://downloads.openwrt.org/kamikaze/8.09/atheros/packages
    dest root /
    dest ram /tmp
    lists_dir ext /var/opkg-lists
    option overlay_root /jffs
    #src X-Wrt http://downloads.x-wrt.org/xwrt/kamikaze/8.09/atheros/packages

    $ opkg update
    Downloading http://downloads.openwrt.org/kamikaze/8.09/atheros/packages/Packages.gz
    Connecting to downloads.openwrt.org (148.251.78.235:80)
    Packages.gz          100% |*******************************|   143k --:--:-- ETA
    Inflating http://downloads.openwrt.org/kamikaze/8.09/atheros/packages/Packages.gz
    Updated list of available packages in /var/opkg-lists/snapshots

    $ opkg install wpa-supplicant
    Installing wpa-supplicant (0.6.3-1) to root...
    Downloading http://downloads.openwrt.org/kamikaze/8.09/atheros/packages/./wpa-supplicant_0.6.3-1_mips.ipk
    Connecting to downloads.openwrt.org (148.251.78.235:80)
    wpa-supplicant_0.6.3 100% |*******************************|   197k 00:00:00 ETA
    Configuring wpa-supplicant

Bwah-ha-ha!

### 2018.02.28

Installing NTP client... Maybe. The web interface says it's installing
it. (System -\> Settings complained about it not being installed.) It
never finished. ssh'ing in and poking around a bit:

    root@OpenWrt:~# opkg print_installation_architecture
    arch all 1
    arch noarch 1
    arch mips 10

    root@OpenWrt:~# opkg print_architecture
    arch all 1
    arch noarch 1
    arch mips 10

Well. This bloody took forever to find:

The configuration edited above indicates we're looking for Atheros.
However, according to <https://openwrt.org/docs/targets/atheros>

"The atheros target has been renamed to
[ath25](https://openwrt.org/docs/targets/ath25).
[changeset](https://dev.openwrt.org/changeset/44736) /
[git-commit](https://git.lede-project.org/?p=source.git;a=commit;h=1850e0f0a7627b4e0ef18516ff2b25a7c14215ca)"

And then there's:

**Comments: Releases past Backfire are essentially worthless because of
lack of RAM**

on the [La
Fonera](https://openwrt.org/toh/hwdata/fon/fon_fonera_fon2201) page.

Specifically, according to the web interface, the board is a
`Atheros AR2315` with `30008 KiB RAM`.

I think the next step is to see if I can go from Kamikaze to Backfire in
one swell foop by following instructions on the [OpenWrt OS upgrade
procedure (LuCI or
sysupgrade)](https://openwrt.org/docs/user-guide/installation/generic.sysupgrade)
page.

------------------------------------------------------------------------

### 2018.03.01

Following the instructions on the afore-mentioned page yields:

    User-installed packages are the following:
    haserl
    qos-scripts
    webif
    wpa-supplicant

There does not appear to be any directory named "overlay", and
therefore? no "all packages associated with any user-modified file". I
guess.

I'm less sure about what files and directories "should be preserved"
during an upgrade. Since it gets turned off a lot and isn't fetching the
date and time via NTP, file creation dates are all wrong.

    $ opkg list-changed-conffiles

doesn't work.

The good news: `sysupgrade` exists as a command.

------------------------------------------------------------------------

### 2018.03.05

Time to build from scratch. It looks like the documentation links at the
bottom [The build system –
About](https://openwrt.org/docs/guide-developer/build-system/start) is
the place to start.

    $ make menuconfig
      * Target System (Atheros AR231x/AR5312)
    $ make download
    $ make

I think we're going down the wrong path... Let's go with: [La Fonera
(FON2100 and
FON2200)](https://wiki.openwrt.org/toh/fon/fonera#enabling_telnet_into_redboot_without_serial_access)

Examining `dmsg` and **guessing** I think we want the **SIXTH** mtd, (0
indexed).

    $ cat /dev/mtd5ro &gt; /tmp/redboot_config
    $ strings /tmp/redboot_config
    $ mtd write /tmp/redboot_config &quot;RedBoot config&quot;
    Could not open mtd device: RedBoot config
    Can't open device for writing!

### 2018.03.08

We've opened the box... And now to install a TFTP server `atftpd` on one
of the classroom machines. One dependency: `rlinetd`.

OK... Maybe rewriting the OpenWRT wiki page so that one doesn't need to
read the page from the bottom up would be good...

FIRST download the `vmlinuz` and `root.squashfs` BEFORE we take
everything off the real network...

    $ sudo -i
    $ apt install atftpd
    $ cd /srv/tftp
    $ wget http://downloads.openwrt.org/backfire/10.03.1/atheros/openwrt-atheros-vmlinux.lzma
    $ wget http://downloads.openwrt.org/backfire/10.03.1/atheros/openwrt-atheros-root.squashfs

    $ screen /dev/usb0 9600

    root@OpenWrt:/# reboot
    Restarting system.
    +PHY ID is 0022:5521
    Ethernet eth0: MAC address 00:12:cf:a4:42:ee
    IP: 192.168.0.1/255.255.255.0, Gateway: 0.0.0.0
    Default server: 0.0.0.0

    RedBoot(tm) bootstrap and debug environment [ROMRAM]
    Non-certified release, version v1.3.4 - built 19:22:52, Oct 15 2007

    Copyright (C) 2000, 2001, 2002, 2003, 2004 Red Hat, Inc.

    Board: ap51
    RAM: 0x80000000-0x82000000, [0x8003eaf0-0x80fe1000] available
    FLASH: 0xa8000000 - 0xa87f0000, 128 blocks of 0x00010000 bytes each.
    == Executing boot script in 3.000 seconds - enter ^C to abort
    ^C
    RedBoot&gt;
     fconfig -l -n
    boot_script: true
    boot_script_data:
    .. fis load -l vmlinux.bin.l7
    .. exec

    boot_script_timeout: 3
    bootp: false
    bootp_my_gateway_ip: 0.0.0.0
    bootp_my_ip: 192.168.0.1
    bootp_my_ip_mask: 255.255.255.0
    bootp_server_ip: 0.0.0.0
    console_baud_rate: 9600
    gdb_port: 9000
    info_console_force: false
    net_debug: false
    RedBoot&gt; fconfig boot_script_timeout 20
    boot_script_timeout: Setting to 20
    Update RedBoot non-volatile configuration - continue (y/n)? n
    RedBoot&gt; fconfig bootp_my_ip 192.168.5.22
    bootp_my_ip: Setting to 192.168.5.22
    Update RedBoot non-volatile configuration - continue (y/n)? n
    RedBoot&gt; fconfig bootp_my_ip_mask 255.255.255.0
    bootp_my_ip_mask: Setting to 255.255.255.0
    RedBoot&gt; fconfig bootp_server_ip 192.168.5.2
    bootp_server_ip: Setting to 192.168.5.2
    Update RedBoot non-volatile configuration - continue (y/n)? y
    ... Erase from 0xa87e0000-0xa87f0000: .
    ... Program from 0x80ff0000-0x81000000 at 0xa87e0000: .
    RedBoot&gt;

    RedBoot&gt; fconfig -l
    Run script at boot: true
    Boot script:
    .. fis load -l vmlinux.bin.l7
    .. exec

    Boot script timeout (1000ms resolution): 20
    Use BOOTP for network configuration: false
    Gateway IP address: 0.0.0.0
    Local IP address: 192.168.5.22
    Local IP address mask: 255.255.255.0
    Default server IP address: 192.168.5.2
    Console baud rate: 9600
    GDB connection port: 9000
    Force console for special debug messages: false
    Network debug at boot time: false
    RedBoot&gt;

On the laptop:

1.  Run an ethernet cable between the laptop and the wee white wireless
    wrouter.
2.  Turn off wifi
3.  Release the DHCP lease
4.  Delete the old IP addresses from eth0
5.  Add a new IP address to eth0
6.  Connect!

The current state of affairs prior to all that:

    $ ip addr
    1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN \
           group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
        inet6 ::1/128 scope host 
           valid_lft forever preferred_lft forever
    2: eth3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq state UP \
             group default qlen 1000
        link/ether 00:21:70:b8:a8:48 brd ff:ff:ff:ff:ff:ff
        inet 192.168.1.2/24 brd 192.168.1.255 scope global eth3
           valid_lft forever preferred_lft forever
        inet6 fe80::efc5:9f91:4454:6622/64 scope link 
           valid_lft forever preferred_lft forever
    3: wlan2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq state UP \
              group default qlen 1000
        link/ether 00:1f:3c:c2:3e:f4 brd ff:ff:ff:ff:ff:ff
        inet 192.168.26.140/24 brd 192.168.26.255 scope global dynamic wlan2
           valid_lft 4895sec preferred_lft 4895sec
        inet6 fe80::21f:3cff:fec2:3ef4/64 scope link 
           valid_lft forever preferred_lft forever

    $ route -n
    Kernel IP routing table
    Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
    0.0.0.0         192.168.26.1    0.0.0.0         UG    600    0        0 eth3
    192.168.26.0    0.0.0.0         255.255.255.0   U     600    0        0 eth3

Now to implement steps 1-6 above:

    $ sudo -i
    $ nmcli radio all off        # Shut down WiFi
    $ dhclient -r                # Drop all DHCP leases
    $ route del default          # Undo any routing...
    $ route del default          # Lather, rinse, repeat...
    $ route del default          # ...until done
    SIOCDELRT: No such process

    $ # Get rid of space-wide addresses, and add a path to wrouter
    $
    $ ip addr del dev eth3 192.168.1.2/24
    $ ip addr del dev eth3 fe80::efc5:9f91:4454:6622/64
    $ ip addr add dev eth3 192.168.5.2/24

    $ # Check our work
    $
    $ ip addr
    1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN \
           group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
        inet6 ::1/128 scope host 
           valid_lft forever preferred_lft forever
    2: eth3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq state UP \
             group default qlen 1000
        link/ether 00:21:70:b8:a8:48 brd ff:ff:ff:ff:ff:ff
        inet 192.168.5.2/24 scope global eth3
           valid_lft forever preferred_lft forever
    3: wlan2: &lt;BROADCAST,MULTICAST&gt; mtu 1500 qdisc mq state DOWN \
              group default qlen 1000
        link/ether 00:1f:3c:c2:3e:f4 brd ff:ff:ff:ff:ff:ff

    $ route -n
    Kernel IP routing table
    Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
    192.168.5.0     0.0.0.0         255.255.255.0   U     0      0        0 eth3

    $ arping -qf -I eth3 192.168.5.22 ; telnet 192.168.5.22 9000
    Trying 192.168.5.22...
    Connected to 192.168.5.22.
    Escape character is '^]'.
    RedBoot&gt; 

------------------------------------------------------------------------

### 2018.03.11

    RedBoot&gt; ip_address -h 192.168.5.2 -l 192.168.5.22/24
    IP: 192.168.5.22/255.255.255.0, Gateway: 0.0.0.0
    Default server: 192.168.5.2

    RedBoot&gt; load -r -b %{FREEMEMLO} openwrt-atheros-vmlinux.lzma
    Using default protocol (TFTP)
    Raw file loaded 0x8003ec00-0x8011ebff, assumed entry at 0x8003ec00

    RedBoot&gt; fis init
    About to initialize [format] FLASH image system - continue (y/n)? y
    *** Initialize FLASH Image System
    ... Erase from 0xa87e0000-0xa87f0000: .
    ... Program from 0x80ff0000-0x81000000 at 0xa87e0000: .

    RedBoot&gt; fis create -e 0x80041000 -r 0x80041000 vmlinux.bin.l7
    ... Erase from 0xa8030000-0xa8110000: ..............
    ... Program from 0x8003ec00-0x8011ec00 at 0xa8030000: ..............
    ... Erase from 0xa87e0000-0xa87f0000: .
    ... Program from 0x80ff0000-0x81000000 at 0xa87e0000: .

    RedBoot&gt; load -r -b %{FREEMEMLO} openwrt-atheros-root.squashfs
    Using default protocol (TFTP)
    Raw file loaded 0x8003ec00-0x8021ebff, assumed entry at 0x8003ec00

    RedBoot&gt; fis create rootfs
    ... Erase from 0xa8110000-0xa82f0000: ..............................
    ... Program from 0x8003ec00-0x8021ec00 at 0xa8110000: ..............................
    ... Erase from 0xa87e0000-0xa87f0000: .
    ... Program from 0x80ff0000-0x81000000 at 0xa87e0000: .

    RedBoot&gt; fconfig -l -n
    boot_script: true
    boot_script_data: 
    .. fis load -l vmlinux.bin.l7
    .. exec

    boot_script_timeout: 20
    bootp: false
    bootp_my_gateway_ip: 0.0.0.0
    bootp_my_ip: 192.168.5.22
    bootp_my_ip_mask: 255.255.255.0
    bootp_server_ip: 192.168.5.2
    console_baud_rate: 9600
    gdb_port: 9000
    info_console_force: false
    net_debug: false

    RedBoot&gt; reset

    +PHY ID is 0022:5521
    Ethernet eth0: MAC address 00:12:cf:a4:42:ee
    IP: 192.168.5.22/255.255.255.0, Gateway: 0.0.0.0
    Default server: 192.168.5.2

    RedBoot(tm) bootstrap and debug environment [ROMRAM]
    Non-certified release, version v1.3.4 - built 19:22:52, Oct 15 2007

    Copyright (C) 2000, 2001, 2002, 2003, 2004 Red Hat, Inc.

    Board: ap51 
    RAM: 0x80000000-0x82000000, [0x8003eaf0-0x80fe1000] available
    FLASH: 0xa8000000 - 0xa87f0000, 128 blocks of 0x00010000 bytes each.
    == Executing boot script in 20.000 seconds - enter ^C to abort

    ... [See the boot log -- linked to below -- for the details.] ...

    BusyBox v1.15.3 (2011-11-24 02:38:24 CET) built-in shell (ash)
    Enter 'help' for a list of built-in commands.

      _______                     ________        __
     |       |.-----.-----.-----.|  |  |  |.----.|  |_
     |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
     |_______||   __|_____|__|__||________||__|  |____|
              |__| W I R E L E S S   F R E E D O M
     Backfire (10.03.1, r29592) ------------------------
      * 1/3 shot Kahlua    In a shot glass, layer Kahlua 
      * 1/3 shot Bailey's  on the bottom, then Bailey's, 
      * 1/3 shot Vodka     then Vodka.
     ---------------------------------------------------
    root@OpenWrt:/#

See the [OpenWRT Backfire boot
log](OpenWRT_Backfire_boot_log) for the sordid details of the
boot.

Also, for what it's worth, a summary of [RedBoot
help](RedBoot_help)

### 2018.03.12

It is suggested that, in order to permanently enable telnet without
needing the serial cable, one should wget
**openwrt-ar531x-2.4-vmlinux-CAMICIA.lzma** and **out.hex** from
<http://ipkg.k1k2.de/hack/>. Sadly, this site no longer appears to
exist. However, taking a chance... The git repository at
<https://github.com/bnchdrff/breakafon> has both files.

With both a laptop and the box wired together via ethernet cable, the
laptop has an address of 192.168.1.2 (on eth3) and the whee white
whireless wrouter has an address of 192.168.1.1 (on eth0). On the
laptop:

    $ git clone https://github.com/bnchdrff/breakafon
    $ cd breakafon/flash-images
    $ python3 -m http.server

Then, on the whee white whireless wrouter, while ssh'd into the BusyBox
shell:

    $ cd /tmp
    $ wget http://192.168.1.2:8000/openwrt-ar531x-2.4-vmlinux-CAMICIA.lzma
    $ wget http://192.168.1.2:8000/out.hex
    $ mtd -e vmlinux.bin.l7 write openwrt-ar531x-2.4-vmlinux-CAMICIA.lzma vmlinux.bin.l7
    $ reboot

**FAIL! KERNEL PANIC!**

Well... That set us back.
