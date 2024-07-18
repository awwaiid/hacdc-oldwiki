[Soundmodem](http://www.baycom.org/~tom/ham/soundmodem/) emulates a
hardware TNC in software, vis a vis a daemon running in userspace.

v0.18 is the latest (as of June 2013), I recommend using that. It now
only depends on two things, audiofile and gtk2.

Soundmodem will either turn your soundcard into a KISS radiomodem
(serial modem) or an AX.25 network interface. ~~We're going to be using
it to create AX.25 network interfaces (/sm\[0-9\]\*/ or
/ax\[0-9\]\*/).~~ It seems to work best if we put it into KISS mode and
use kissattach to bring up the device.

# Installation

## From Source: Ubuntu Karmic and Lucid {#from_source_ubuntu_karmic_and_lucid}

    wget http://www.baycom.org/~tom/ham/soundmodem/soundmodem-0.18.tar.gz
    sudo apt-get install libasound2-dev libxml2-dev libgtk2.0-dev libaudiofile-dev

    tar xvzf soundmodem-0.18.tar.gz
    cd soundmodem-0.18
    ./configure && sudo make install
    sudo mkdir /etc/ax25  ## or else it won't be able to save your configurations

Configure it by running (as root) /usr/local/bin/soundmodemconfig. It
will open a window on your desktop with nothing in it. Click File, New,
Configuration. Give your configuration a name (I used 'sm0').

## apt-get: Debian and Ubuntu {#apt_get_debian_and_ubuntu}

Debian
:   Gets you version 0.10 on Lenny, 0.15 on Squeeze (6.0), 0.16 on
    Wheezy (7.0), and 0.18 on Jessie (testing) and Sid.

Ubuntu
:   Gets you version 0.13 on Lucid, 0.15 on Maverick and Natty, 0.16 on
    Precise (12.04) and Quantal (12.10), and 0.18 on Raring (13.04).

As root do the following

    apt-get install soundmodem
    mkdir /etc/ax25
    soundmodemconfig /etc/ax25/soundmodem.conf                           # see below for configs
    soundmodem /etc/ax25/soundmodem.conf -R -M >/dev/null 2>/dev/null &  # this makes an awful noise when it works

## On Fedora {#on_fedora}

???

## Arch Linux {#arch_linux}

    sudo packer -S soundmodem ax25-apps ax25-tools

## On Slackware (current?) {#on_slackware_current}

    wget http://www.baycom.org/~tom/ham/soundmodem/soundmodem-0.18.tar.gz

    if [[ "$ARCH" == "x86_64" ]] ;then
      LIBDIRSUFFIX="64"
    fi
    mkdir soundmodem-0.18-pkg

    tar xvzf soundmodem-0.18.tar.gz
    cd soundmodem-0.18
    ./configure --prefix=/usr --libdir=/usr/lib${LIBDIRSUFFIX}
    sudo make install DESTDIR=../soundmodem-0.18-pkg
    cd ../soundmodem-0.18-pkg
    makepkg -l y -c n /tmp/soundmodem-0.18-$ARCH-1_local.tgz
    sudo mkdir /etc/ax25  ## or else it won't be able to save your configurations

# Configuration

## IO Tab {#io_tab}

On the I/O tab, choose your sound driver (out of soundcard, file,
simulation, and alsa, I picked alsa). You'll have to play around with
the value of the ALSA Audio Driver field to get one that works. On
Windbringer, I used plughw:0,0. Check half duplex for now. Leave the
Capture Channel field set to 'mono'. Set the PTT Driver field to 'none'
so Soundmodem will assume VOX.

Haxwithaxe, Dan, and Mirage are working on PTT circuits for our radios.
It hasn't been an easy process because the Baofengs seem to kick out
just enough EMI to make the circuits act weird as-is. We have a few
[partial
solutions](https://drwho.virtadpt.net/archive/2013/05/31/project-byzantium-milestone-three-in-progress)
at this time.

## Channel Access Tab {#channel_access_tab}

Don't change the settings on the Channel Access tab.

## Channel 0 {#channel_0}

Right below the name of your configuration in the tree you will see a
new entry, Channel 0. If you select it you'll be presented with three
new tabs on the right.

### Modulator Tab {#modulator_tab}

The possible values for the Mode selector are Off, fsk, afsk, pam, psk,
and newqpsk. I picked fsk because it grants the highest effective bit
rate (9600 bps). The values for Frequency 0 (1200), Frequency 1 (2200),
and Filter (df9ic/g3ruh) were left set to defaults. Leave Differential
Encoding checked.

### Demodulator Tab {#demodulator_tab}

On the Demodulator tab (which governs decoding audio signals into bits)
the options are much the same because they match the modulation scheme
by default. This is what we want.

### Packet IO Tab {#packet_io_tab}

On the Packet IO tab, the network/non-serial side of soundmodem is
configured. Pick an IP address, netmask, and broadcast addres for a
regular network interface. There are two options in the Mode selector,
KISS and MKISS. I went with the default (MKISS). The network settings we
used are:

-   IP address: 44.x.y.z (pick something)
-   Netmask: 255.0.0.0
-   Broadcast: 44.255.255.255

We're using the [AMPRnet](https://en.wikipedia.org/wiki/AMPRNet) IP
block which was set aside for amateur radio use. We should probably use
the private subnet of that, 44.128/16 because it's akin to the RFC-1918
subnets and is used for experimentation in this area.

### Audio settings {#audio_settings}

From alsamixer:

-   Master: 100
-   Headphone: 100
-   Speaker: 55
-   PCM: 55
-   Mic: 55
-   Mic Boost: 0

If these settings are any more quiet, the radios' PTT circuits won't
trip.

We also suggest setting the volume to between 60% and 100%.

:   Seems to me like these settings are radio/soundcard specific. YMMV.
    [Sitwon](User:Sitwon)
    ([talk](User_talk:Sitwon)) 21:08, 18 June 2013 (PDT)

# Theory

When running the soundmodem utility (**soundmodem
/etc/ax25/soundmodem.conf &**), the daemon configures the sound card to
send and receive bitstreams encoded as audio through the jacks in the
soundcard. It allocates a virtual network interface (sm0) which has a
callsign associated with it which serves as the MAC address (relevant
for ham radio, not so much for other applications) as well as an IP
address, network mask, and broadcast address. The idea is that whatever
packets are sent through that network interface will be transparently
converted into sound and transmitted using whatever device is connected
to the headphone and microphone jacks of the computer. Conversely, any
data received by the broadcast device (ham radio, laser, etc) is
demodulated into bits, encapsulated into network frames, and made
available to the OS.

In theory, it's just like a regular network connection, with all of the
dynamics you'd expect from IPv4. This means that we can do things like
IP multicasting over these links. We discovered, through analyzing the
code for a utility called
[easypacket](http://www.w1hkj.com/EasyPacket.html) that the Linux kernel
treats AX.25 interfaces as real network interfaces, so much so that it
sets up some iptables rules to prevent arbitrary traffic from being
routed over them because there isn't much bandwidth. We'll have to add
that to our rules. We tried setting up IPv6 addressing on some AX.25
interfaces and weren't able to.

# Diagnostics, Testing, and Configuration {#diagnostics_testing_and_configuration}

As root:

Note: you can connect two computers mic-\>headset to help check things
are working before they hit the radio. ping and netcat (with -u option)
are decent options for quick checks on rough sanity (the config not you
:P). Here's how we did it:

-   Run a UDP server on one machine: **ncat -n -l -v -u 5000**
    -   -n == No DNS resolution
    -   -l == Listen for incoming connections (server mode)
    -   -v == Verbose
    -   -u == UDP
    -   5000 == port number to listen on
-   Connect to it from the other machine: **ncat -u 44.x.y.z 5000**
-   Type something. If it worked you'll see whatever the client typed
    showing up in the terminal on the server.
-   Run a TCP server on one machine: **ncat -n -l -v 8080**
-   Do the same thing for TCP (i.e., no -u options)

How to use **listen** from the ax25-apps distribution:

-   **listen -a -c -r -t**
    -   -a == Monitor outgoing frames as well as incoming ones
    -   -c == Colorize output
    -   -r == Display in a human-readable format
    -   -t == Timestamp every frame displayed

Keep the volume low at first to avoid accidental overload of the other
machine. 50% for every channel is a good place to start.

Here's where you debug your configuration. It's going to take some
flipping back and forth between tabs to get right the first time.

soundmodemconfig now pops open windows with error output.

The Diagnostics menu only appears when you have a channel (Channel 0)
highlighted.

The first option is Scope, for oscilloscope. To get a test signal, click
the PTT button (make sure your speakers are turned down!)

The second option is Spectrum, for spectrum analyzer of the signal being
send to the sound card. To get a test signal, click the PTT button
(again, make sure your speakers are turned down!)

The third option, Modem, dumps the raw bitstreams that your
soundcard-emulating-a-modem is sending and receiving. Seeing strings of
bits (even when disconnected) means that you have probably configured
soundmodem correctly.

I do not know what the AO40-P3D option does. (It's an amateur satellite
protocol thingy. We don't need it?)

To save your config file, use the File, Quit option. It'll save it
automagically to /etc/ax25/soundmodem.conf.

# So, how is this supposed to work, anyway? {#so_how_is_this_supposed_to_work_anyway}

## Assumptions

-   Assume that you have a computer running Linux (or Windows if you
    dare) and soundmodem (aka **PC**). That has a pair of audio i/o:
    -   headphone (**PC speaker**)
    -   microphone/line in (**PC mic**)
-   Assume that soundmodem is configured correctly.
-   Assume that you have a transceiver (aka **radio**) - a black box
    that:
    -   That can receive and broadcast signals
    -   Has a pair of audio i/o:
        -   speaker/headphone (aka **radio speaker**)
        -   microphone (aka **radio mic**)
-   Assume a method of PTT as described below is setup.

### PTT

Further assume that there is a mechanism to switch the radio from
receive to transmit. Known here as **PTT circuit** for the purposes of
brevity. This may be:

-   the built in VOX circuit
-   an external VOX circuit
-   or a serial PTT circuit

Whenever a signal is sent to the PTT circuit, the black box stops
receiving and transmits whatever signal it gets through its microphone
jack. Alternatively two radios one transmitting only and one receiving
only (possibly on different channels) such that there is no need for
drivers or a switching mechanism.

### Hook-up {#hook_up}

-   Connect radio speaker to PC mic.
-   Then connect PC speaker to radio mic.
-   If applicable: Attach the PTT circuit as appropriate.

Whenever a packet (say an ICMP4 echo request) is transmitted to the IP
address of the AX.25 interface on PC, it is converted by soundmodem into
modulated sound (aka **audio data**) which goes out through PC speaker
to the radio mic. The PTT circuit engages and the radio stops receiving
and begins transmitting. The radio receives the audio data and transmits
it. When the transmission is done the PTT circuit disengages and the
radio stops transmitting and begins receiving. Conversely, whenever the
radio receives a signal, it converts it into audio data, which then goes
through radio speaker into PC mic. After the audio data is received by
the PC soundmodem demodulates it into bits, packages them into IP
packets, and drops it into the networking subsystem of the kernel.

By using soundmodem we'll be setting up an AX.25 network interface that,
insofar as we're concerned, acts just like an ethernet interface (just
crazy slow, 9600bps at best 1200bps likely). We can use ifconfig, route,
and ip to configure it, IPtables to filter traffic, and
/proc/net/ipv4/\* to tweak it (and set up packet forwarding). IPv6 is
not currently supported on AX.25 in the linux kernel (\~v3.8.x).

# Successful connection achieved on 2013-06-8 {#successful_connection_achieved_on_2013_06_8}

I was able to connect two of my laptops together and get them pinging
each other and transferring files over FTP. Here are some notes on how I
accomplished it. [Sitwon](User:Sitwon)
([talk](User_talk:Sitwon)) 21:33, 18 June 2013 (PDT)

## T520/TH-D72 {#t520th_d72}

The first system was the easiest. A ThinkPad T520 running
Slackware64-current connected to a Kenwood TH-D72. The TH-D72 has a
built-in TNC. To get it up and running you need to edit
\`/etc/ax25/axports\` to define a port, such as:

    ax0     CALLSIGN   9600    255     2       your comment here

Next, turn on the radio, set it to the desired frequency, turn on the
TNC to packet12, and connect it via USB. It should register as
/dev/ttyUSB0 or similar. Using minicom issue the following commands to
the serial device.

    kiss on
    restart

Then exit minicom and bring up the interface with kissattach: \`sudo
/usr/sbin/kissattach /dev/ttyUSB0 ax0 44.x.y.z\` supplying your own
(valid) IP address at the end. It will bring up the interface. Now
you're done with this computer.

## R60/UV-5R {#r60uv_5r}

The second system I used was a ThinkPad R60 running Slackware64-current
connected to a Baofeng UV-5R. In this case, I used soundmodem and a pair
of audio cables to connect it. The UV-5R was just connected directly to
the sound card, no PTT circuit. The PTT is triggered by VOX, so in the
menu of the UV-5R set VOX to 1. Run soundmodemconfig (as root) to setup
the device with the following settings:

1.  If you don't see 'default' listed in the left window, go to
    File-\>New-\>Configuration and create a configuration named
    'default'.
2.  Select 'default' and on the IO tab set the Mode to 'alsa' and the
    ALSA Audio Driver to your soundcard (I used 'plughw:0,0').
3.  Make sure Half-Duplex is checked.
4.  Set Capture Channel to Mono
5.  Set PTT Driver to none
6.  ON the Channel Access tab set TxDelay to 1000
7.  Set Slot Time to 100
8.  Set P-Persistence to 40
9.  Uncheck Full Duplex
10. Set TxTail to 10
11. Then create a new Channel by going to File-\>New-\>Channel
12. Select the new channel and on the Modulator tab set the mode to
    'afsk'
13. Set Bits/s to 1200
14. Set Frequency 0 to 1200
15. Set Frequency 1 to 2200
16. Check the box for Differential Encoding
17. On the Demodulator tab set everything the same
18. On the Packet IO tab, set the mode to KISS
19. For File select /dev/soundmodem0
20. And check the box for Unlink File

Set up your \`/etc/ax25/axports\` file the same as above. Then, start
soundmodem by running \`sudo soundmodem /etc/ax25/soundmodem.conf\`.
Finally, run kissattach, the same as above, but with a different IP
address and pointing to the soundmodem device.

Now you're almost ready to go. The last thing to do is to adjust your
audio levels. The way I did it was to start listen (as described in the
section on debugging) on both computers, generate some traffic with
ping, and adjust the audio levels with alsamixer until both computers
could hear and respond to each other's traffic. (Make sure your firewall
is off!)

My alsamixer settings were:

-   Master=49
-   PCM=51
-   Mic=75
-   Mic Boost=22
-   And make sure the Mic is muted but enabled.
-   Also, the volume knob on my radio was turned to about 80%

When you've gotten the packet loss as low as you can, you can try
starting up some connections. I tried FTP and it was slow but it worked.
You can also try to use kissparms to fine-tune some of the settings, but
I'm not entirely sure how best to do that fine-tuning.

Expect the connection to be very slow.

# Other resources {#other_resources}

-   [Setting your TNC's audio drive
    level](http://www.febo.com/packet/layer-one/transmit.html) (In other
    words, fix your volume!)
-   [Using soundmodem with
    AX.25](http://www.qbjnet.com/packet.html#soundmodem)
    -   Are we really going to bother with AX.25?
        -   AX.25 is used to transport TCP/IP over not-Ethernet. It
            doesn't look that difficult to configure.
        -   What about using PPP?
    -   Has a few things about building PTT circuits.
    -   Has some notes on how to tune your laptop's sound levels for
        optimal operation.
-   [Amateur radio
    nodes](https://wiki.archlinux.org/index.php/Amateur_Radio) in the
    [Arch Linux wiki](https://wiki.archlinux.org/)
-   Alternatives
    -   hardware [TNC](HAM_TNC)

[Category:Byzantium](Category:Byzantium)
