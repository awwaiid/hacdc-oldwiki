The Wyse Winterm SX0 S10 features:

-   AMD Geode processor 333MHz
-   0-32MB internal flash memory
    ([1](http://www.alldatasheet.com/datasheet-pdf/pdf/129712/SAMSUNG/K9F5608U0D-XIB0.html))
    behind an ATA/IDE disk controller
    ([2](http://www.alldatasheet.com/datasheet-pdf/pdf/171066/SST/SST55LD019A-45-C-BWE.html))
-   64-128MB RAM (4 x
    [3](http://www.alldatasheet.com/datasheet-pdf/pdf/2413/MOSEL/V58C2128164S.html))
-   BIOS capable of booting from USB flash drives or PXE

This allows for small Linux distributions to be installed on the
internal flash memory in place of the very limited original OS.
Distributions too large to fit into the 32MB internal flash drive can
still be booted and run from an external USB flash drive, though boot
time may take a while.

------------------------------------------------------------------------

# Prebuilt Images

Knoppix and DSL ("Damn Small Linux") images have been prebuilt for 2GB
USB sticks, to easily and reliably boot these finicky WYSE terminals.

Knoppix uses up more space, at \~700MB, and does not presently offer a
GUI on the WYSE terminal. However, with a 2.6 kernel, it can be used as
a robust starting point for ChRoot'ing into other distributions.

DSL offers a lean GUI with nice performance counters, as well as some
simple apps (Dillo, Firefox, etc), and can occupy much less space
(\<64MB). However, based on a 2.4 kernel, loading binaries built on
modern platforms may be challenging.

# Setup

## Step 1: Configuring the BIOS to boot from a USB drive

This part is very simple. Before inserting the power cable, connect a
USB keyboard, and VGA monitor to the terminal. Then, hold down the del
key and plug in the power cable. After a moment you should hear a beep,
and the terminal will boot to a green BIOS screen.

First, you will be prompted to enter a password, which by default should
be "Fireport". Then, you will be able to rearrange the boot order to
attempt USB boot first.

The BIOS also provides options to set the date/time, change the amount
of memory allocated for video use (the minimum being 4MB), and select
whether or not the terminal can be shut down while power is connected.

Save your configuration and exit the BIOS.

## Step 2: Creating a bootable Linux USB drive

**Virtually unbearable.**

### Bootloader

Install syslinux 2.x on a linux machine and follow the [DSL USB
installation
instructions](http://www.damnsmalllinux.org/wiki/install_to_usb_from_within_linux.html)
. Also, the boot partition must be aligned to cylinder, and marked with
the boot flag.

Newer versions of syslinux tend to hang. Modern hybrid LiveCD ISOs,
GRUB2, etc, also fail.

#### Performance Management

CPU is adequate for basic web browsing and similar kiosk tasks.

Lack of RAM is a more serious problem, even with 128MB RAM. Knoppix with
LXDE, Damn Small Linux (DSL), Tiny Core Linux and similar may be
acceptable choices. Dillo and Midori are reasonable web browser choices.
Firefox under Knoppix ran out of memory on startup, Firefox under DSL
was slow to the point of barely usable.

USB drives are recommended for any serious use (including host OS). Fast
USB drives may provide tolerable swap. IDE interface seems to be
operating rather slowly, with extreme CPU usage. Suspect it operates
only in PIO mode, and is not DMA capable.

#### Network Bug

Sometimes, the network device may not initialize properly. DSL (2.4
kernel) does not appear to have this problem, Knoppix (2.6 kernel) does.
Automatic retry does seem to be a valid workaround as follows.

``\
`while ! ifconfig | grep eth0; do ifconfig eth0 down ; sleep 3 ; ifconfig eth0 up ; sleep 3 ; done`

## Step 3: More powerful OS

### ChRoot

Loading a full Ubuntu or Debian system outright may be infeasible or
challenging due to RAM or bootloader limitations. Alternatively, DSL
supports the ChRoot and debootstrap commands. Conveniently, it is
therefore possible to quickly deploy a full Debian ChRoot for such
purposes as efficiently hosting a full-featured webserver.

Additionally, it may be simplest to construct the ChRoot from a
full-scale computer. See <https://github.com/mirage335/PortableChRoot>
for an easy way to containerize this.

Unfortunately, at present it seems Debian packages rely on kernels newer
than 2.4, which DSL does not provide. However, Knoppix does provide a
newer 2.6 series kernel.

### Direct Booting

It is possible to manually build Debian or Gentoo operating systems, and
use syslinux directly as the bootloader. Unfortunately, at least Debian
stable occasionally hangs at startup, which is one reason the ChRoot
from DSL or Knoppix is preferable.

# Performance

Really, really slow. Raspberry Pi's have CPUs many, many times faster,
acceptable quantities of RAM. However, these devices are available
secondhand or at significantly lower prices than Raspberry Pi's. Also,
the CPU is x86, and audio I/O is provided onboard.

Nevertheless, in some situations, such low-end hardware may still be
effective, even efficient. Reasonable uses may include thin clients,
lightweight servers, industrial automation, kiosks, etc.

[Category:Useful_Info](Category:Useful_Info)
[Category:Materiel](Category:Materiel)
