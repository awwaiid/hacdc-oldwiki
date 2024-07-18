## ISE Installation Instructions {#ise_installation_instructions}

1.  Make sure you have a xilinx.com account
2.  Go to Xilinx.com, navigate to their ISE Webpack download page. Links
    can be found here [**ISE
    Webpack**](http://www.xilinx.com/tools/webpack.htm)
3.  Once you sign in and register, you'll be at the Xilinx Entitlement
    center, and have several options to download software. On your left,
    under quick links, there is a link titled "Register and Download
    10.1 and earlier software."
    1.  You will receive a registration email. This will contain a
        registrationID which you'll need later. Save this email and keep
        it handy.
4.  Follow the screens to download the ISE Webpack. You'll be presented
    with either downloading the 2.5Gb image or the Webinstall client,
    which will download the files you'll need as it installs. You can
    choose either, I would recommend grabbing the 2.25Gb tarball.
    Instructions will be based on installing from the full tarball.
    Expect your vm drive to start growing.
5.  By default, your download (webpack_SFD.tar for the full file) will
    go to your \~/Desktop folder. Open up a terminal and unpack the
    tarball.
    1.   cd  ~/Desktop 

    2.  tar -xvf webpack_SFD.tar 

    3.  This creates the directory \~/Desktop/webpack containing the
        installation files for the webpack. These installation files
        will work for **Linux** and **Windows**.

    4.   UESC-Boomer:Public wgibb$ md5 webpack_SFD.tar ...results(webpack_SFD.tar) = 87c3452d36ef990930a8596acd6a4899 
6.  Now we're going to run the installer as root
    1.   cd webpack 

    2.   su (password is linux on the vm) 

    3.   ./setup 
7.  During the setup you'll be prompted for a registrationID. This is
    the registrationID in the email you got back in step 3. Enter it
    here.
8.  You'll then be presented with terms of service screens. Agree
    through them to proceed.
9.  Next you'll be presented with a choice of installation directory.
    The default choise, /opt/Xilinx/10.1 is fine
10. Next is installation options You may as well choose all of them, but
    you must choose "All FPGA devices except Virtex 4 and Virtex 5" in
    order to design towards the Spartan 3E boards. You should be ready
    for your VM's disk to grow by 4 more gigs.
11. You'll then be presented with a set of environmental variables which
    are set in a settings file for ise. They can be left at defaults.
12. On **windows**, select the cable drivers. On **linux**, unselect the
    cable drivers and be sure to follow the directions further down this
    page for information on setting up the cable drivers.
13. Click through to confirm the settings and install the tools.
    1.  You may uncheck the update feature, if you do not wish to
        immeadiately update the tools after installation. This will
        cause a large download to occur after installation, if it is
        checked.
14. Wait for the tools to install. Play cards with a buddy.
15. If you let XilinxUpdate run after installation, it will start up,
    and you'll need to tell it you want to download and install the
    1.5gb of updates. Find a buddy and play cards.
16. The cable drivers will fail to build. A solution for this is
    forthcoming (just need to test it).
17. You can remove the folder from your desktop. You may want to keep
    the tarball around if you need to reinstall.
    1.   exit 

        To get out of su

    2.   rm -rf ./webpack 

\

## Running the tools {#running_the_tools}

1.  Open up a terminal and type the following commands
    1.   cd /opt/Xilinx/10.1/ISE 

    2.   source settings32.sh 

    3.   ise 
2.  You will now have launched Xilinx ISE.
    1.  If this is your first time using Xilinx ISE, you should go
        through the in-depth tutorial linked to on the
        [mainpage](FPGA_Workshop#Xilinx_Links).

## 64 bit install {#bit_install}

The Xilinx ISE Webpack install file complains about not supporting your
64-bit computer when you run the toplevel "setup" script, so run the
alternate installer found at webpack/bin/lin/setup. (Clean install
tested on Ubuntu Karmic AMD64 by Elliot.)

Since ISE is a 32-bit application, you'll need 32-bit libraries on your
64-bit system. \`apt-get install ia32-libs\` or equivalent for you
distribution to get them. (Debian 'Lenny' doesn't have libuuid in its
ia32-libs package. You'll have to scrounge those files up from the i386
libuuid1 package yourself. More recently libuuid is included in
ia32-libs, so this wont be a problem in Debian 'Squeeze' and later.)
Your 64-bit amd64 box will run 32-bit i386 binaries just fine.

But note that when it comes time to flash things over the USB cable,
you'll need to run the USB loader within a 32-bit shell, and tell it to
use the 32-bit USB library:

`   cd /opt/Xilinx/10.1/ISE`\
`   linux32 bash`\
`   ./settings32.sh`\
`   export LD_PRELOAD=/lib32/libusb-0.1.so`\
`   impact`

(And don't forget to "exit" when you're done to prevent
infinitely-deeply nested linux32 bash shells.)

## Alternative to Digilent Adept Suite {#alternative_to_digilent_adept_suite}

Some basics:

USB cable plugged into laptop. With the Power Select jumper in the USB
position, turning on the power switch lights the red power LED. With the
Mode jumper on ROM, the board will load the demo code from ROM and light
up the 7-segment LED displays and the switches will turn on and off the
other LEDs. The Yellow Done LED lights when the load completes.

With the Mode jumper in the JTAG position the board starts up waiting
for JTAG data. Yes, there is a JTAG cable header, but this setting also
works for the USB JTAG interface.

A fine bit of clue: [**Programming Digilent Nexys 2 from
Linux**](http://www.edaboard.com/ftopic345414.html)\
That leads to the good stuff in
[**nexys2prog.tar.gz**](http://plausible.org/andy/nexys2prog.tar.gz)
(Note: UrJTAG is already in a Debian package
[1](http://packages.debian.org/squeeze/urjtag)) This allows one to avoid
needing to use the "Digilent Adept Suite", and thus, Windows.

The one can use the Xilinx ISE Webpack to convert some example verilog
source files into a .bit file, then use the nexys2prog to load the board
with that .bit file. Can even be done on a Debian laptop where the only
non-free software is the Xilinx ISE Webpack..

Just hit the reset button, and the board is ready to get another bitfile
load, run nexys2prog and reconfigure the hardware on the fly.

## Programming the board with the USB cable in Linux {#programming_the_board_with_the_usb_cable_in_linux}

The Xilinx USB drivers for Linux don't work straight out of the box. The
Spartan 3E board ships with a flexible firmware usb driver onboard,
which unfortunately means we're going to have to reload it up with the
"right" firmware every time you power down.

What I (Elliot) did on a Ubuntu system:

To flash the "right" USB firmware into the Spartan 3E board, you're
going to need fxload.

`sudo apt-get install fxload`

Then you can write a udev script to load the firmware every time you
plug in a Digilent Spartan3E board. Sudo create a file
**/etc/udev/rules.d/xusbdfwu.rules** and fill it with the following
code:

`SYSFS{idVendor}=="03fd", SYSFS{idProduct}=="0008", MODE="666"`\
`SUBSYSTEM=="usb", ACTION=="add", ATTR{idVendor}=="03fd", ATTR{idProduct}=="000d", RUN+="/sbin/fxload -v -t fx2 -I /opt/Xilinx/10.1/ISE/bin/lin/xusbdfwu.hex -D %N"`

(You may need to restart the udev subsystem: "sudo restart udev")

Plug in your board and turn it on. You can tell you've succeeded when a
green LED will light just below the USB port. You can also type lsusb
again and verify that the board has re-enumerated with an ID 03fd:0008.
If this doesn't work, you might want to verify that your board has
product ID 000d like mine did. Modify your udev rules appropriately if
not.

If you can't get the whole udev thing working, you can type by hand:

`/sbin/fxload -v -t fx2 -I /opt/Xilinx/10.1/ISE/bin/lin/xusbdfwu.hex -D /proc/bus/usb/001/007`

where the 001/007 is the bus and id that you'll find from lsusb.

Then to run iMPACT (the program that flashes in your .bit file) with or
without ISE, you'll need to tell it to use USB:

`export XIL_IMPACT_USE_LIBUSB=1`

You should now be able to run ISE (or iMPACT directly) and it'll detect
the cable and the board.

[http://www.george-smart.co.uk/wiki/Xilinx_JTAG_Linux This
site](http://www.george-smart.co.uk/wiki/Xilinx_JTAG_Linux_This_site)
has good information about the USB JTAG programming interface and
configuration for the Spartan3E. (Found the page after I wrote this
guide. Would have saved us hours.)

[Category:FPGAWorkshop](Category:FPGAWorkshop)
