### OpenWRT Backfire (10.03.1 r29592) first boot log {#openwrt_backfire_10.03.1_r29592_first_boot_log}

This is the result of the upgrade of the [La
Fonera](La_Fonera) from Kamikaze (8.09) to Backfire, achieved
2018.03.11 18:45.

    root@OpenWrt:/# reboot

    br-lan: port 1(eth0) entering disabled state
    device eth0 left promiscuous mode
    br-lan: port 1(eth0) entering disabled state
    Restarting system.
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
    RedBoot&gt; fis load -l vmlinux.bin.l7
    Image loaded from 0x80041000-0x802ec200
    RedBoot&gt; exec
    Now booting linux kernel:
     Base address 0x80030000 Entry 0x80041000
     Cmdline : 
    Linux version 2.6.30.10 (jow@nd-build-02.linux-appliance.net) (gcc version 4.3.3 (GCC) ) #5 Wed Dec 21 03:48:30 CET 2011
    console [early0] enabled
    CPU revision is: 00019064 (MIPS 4KEc)
    Determined physical RAM map:
     memory: 02000000 @ 00000000 (usable)
    Initrd not found or empty - disabling initrd
    Zone PFN ranges:
      Normal   0x00000000 -&gt; 0x00002000
    Movable zone start PFN for each node
    early_node_map[1] active PFN ranges
        0: 0x00000000 -&gt; 0x00002000
    Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 8128
    Kernel command line: console=ttyS0,9600 rootfstype=squashfs,jffs2
    Primary instruction cache 16kB, VIPT, 4-way, linesize 16 bytes.
    Primary data cache 16kB, 4-way, VIPT, no aliases, linesize 16 bytes
    NR_IRQS:128
    PID hash table entries: 128 (order: 7, 512 bytes)
    console handover: boot [early0] -&gt; real [ttyS0]
    Dentry cache hash table entries: 4096 (order: 2, 16384 bytes)
    Inode-cache hash table entries: 2048 (order: 1, 8192 bytes)
    Memory: 29244k/32768k available (2182k kernel code, 3524k reserved, 415k data, 136k init, 0k highmem)
    Calibrating delay loop... 183.50 BogoMIPS (lpj=917504)
    Mount-cache hash table entries: 512
    net_namespace: 1008 bytes
    NET: Registered protocol family 16
    bio: create slab &lt;bio-0&gt; at 0
    pci 0000:00:00.0: BAR 1: can't allocate mem resource [0x84000000-0x857f7fff]
    pci 0000:00:03.0: BAR 1: can't allocate mem resource [0x84000000-0x857f7fff]
    NET: Registered protocol family 2
    IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
    TCP established hash table entries: 1024 (order: 1, 8192 bytes)
    TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
    TCP: Hash tables configured (established 1024 bind 1024)
    TCP reno registered
    NET: Registered protocol family 1
    Radio config found at offset 0xf8(0x1f8)
    squashfs: version 4.0 (2009/01/31) Phillip Lougher
    Registering mini_fo version $Id$
    JFFS2 version 2.2. (NAND) (SUMMARY)  © 2001-2006 Red Hat, Inc.
    msgmni has been set to 57
    alg: No test for stdrng (krng)
    io scheduler noop registered
    io scheduler deadline registered (default)
    gpiodev: gpio device registered with major 254
    gpiodev: gpio platform device registered with access mask FFFFFFFF
    Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
    serial8250: ttyS0 at MMIO 0xb1100003 (irq = 37) is a 16550A
    eth0: Atheros AR231x: 00:12:cf:a4:42:ee, irq 4
    ar231x_eth_mii: probed
    eth0: attached PHY driver [Generic PHY] (mii_bus:phy_addr=0:00)
    cmdlinepart partition parsing not available
    Searching for RedBoot partition table in spiflash at offset 0x7d0000
    Searching for RedBoot partition table in spiflash at offset 0x7e0000
    6 RedBoot partitions found on MTD device spiflash
    Creating 6 MTD partitions on &quot;spiflash&quot;:
    0x000000000000-0x000000030000 : &quot;RedBoot&quot;
    0x000000030000-0x000000110000 : &quot;vmlinux.bin.l7&quot;
    0x000000110000-0x0000007e0000 : &quot;rootfs&quot;
    mtd: partition &quot;rootfs&quot; set to be root filesystem
    mtd: partition &quot;rootfs_data&quot; created automatically, ofs=2B0000, len=530000 
    0x0000002b0000-0x0000007e0000 : &quot;rootfs_data&quot;
    0x0000007e0000-0x0000007ef000 : &quot;FIS directory&quot;
    0x0000007ef000-0x0000007f0000 : &quot;RedBoot config&quot;
    0x0000007f0000-0x000000800000 : &quot;boardconfig&quot;
    TCP westwood registered
    NET: Registered protocol family 17
    802.1Q VLAN Support v1.8 Ben Greear &lt;greearb@candelatech.com&gt;
    All bugs added by David S. Miller &lt;davem@redhat.com&gt;
    VFS: Mounted root (squashfs filesystem) readonly on device 31:2.
    Freeing unused kernel memory: 136k freed
    Please be patient, while OpenWrt loads ...
    eth0: Configuring MAC for full duplex
    - preinit -
    Press the [f] key and hit [enter] to enter failsafe mode
    - regular preinit -
    switching to jffs2
    mini_fo: using base directory: /
    mini_fo: using storage directory: /overlay
    - init -

    Please press Enter to activate this console. device eth0 entered promiscuous mode
    br-lan: port 1(eth0) entering forwarding state
    PPP generic driver version 2.4.2
    ip_tables: (C) 2000-2006 Netfilter Core Team
    NET: Registered protocol family 24
    nf_conntrack version 0.5.0 (512 buckets, 2048 max)
    CONFIG_NF_CT_ACCT is deprecated and will be removed soon. Please use
    nf_conntrack.acct=1 kernel paramater, acct=1 nf_conntrack module option or
    sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
    ath_hal: module license 'Proprietary' taints kernel.
    Disabling lock debugging due to kernel taint
    ath_hal: 2009-05-08 (AR5212, AR5312, RF5111, RF5112, RF2316, RF2317, REGOPS_FUNC, TX_DESC_SWAP, XR)
    ath_ahb: trunk
    wlan: trunk
    wlan: mac acl policy registered
    ath_rate_minstrel: Minstrel automatic rate control algorithm 1.2 (trunk)
    ath_rate_minstrel: look around rate set to 10%
    ath_rate_minstrel: EWMA rolloff level set to 75%
    ath_rate_minstrel: max segment size in the mrr set to 6000 us
    Atheros HAL provided by OpenWrt, DD-WRT and MakSat Technologies
    wifi0: 11b rates: 1Mbps 2Mbps 5.5Mbps 11Mbps
    wifi0: 11g rates: 1Mbps 2Mbps 5.5Mbps 11Mbps 6Mbps 9Mbps 12Mbps 18Mbps 24Mbps 36Mbps 48Mbps 54Mbps
    wifi0: turboG rates: 6Mbps 12Mbps 18Mbps 24Mbps 36Mbps 48Mbps 54Mbps
    wifi0: H/W encryption support: WEP AES AES_CCM TKIP
    ath_ahb: wifi0: Atheros 2315 WiSoC: mem=0xb0000000, irq=3
    IRQ 3/wifi0: IRQF_DISABLED is not guaranteed on shared IRQs


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
