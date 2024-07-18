[WinBook Security IPCam](WinBook_Security_IPCam)

This page documents teardown and reverse engineering project on A
WinBook Security IPCam. Winbook is MicroCenter's store brand of IP
Camera.

## Introduction

We'd love to have some nice open source IP Cameras, who wouldn't?
Unfortunately we've just got a shitty proprietary one. Fortunately, it's
easy to hack.

The Winbook IP Cam (I believe it's a
[T7838](https://www.amazon.com/Winbook-Security-Wireless-Camera-Vision/dp/B00JX7QAX2))
in the space uses a [RALINK
RT5350](https://wikidevi.com/wiki/Ralink_RT5350)
([datasheet](https://drive.google.com/file/d/0B8BpyTY91XfmajRYMWtscHRpbEU/edit)).
The board we have includes holes for a UART serial pinout. We had
success with a TTL USB serial adapter at 57600 baud. Root is available
on serial with no password. The stock password is unknown at this time
but can be reset to allow more comfortable remote telnet access;
however, it resets every time we boot.

### Buy

They seem to be available used/new from \$40-\$60 on ebay and amazon.
Maybe they can be got from MicroCenter as well.

## Filesystem

`# ls /`\
`var     usr     tmp     system  sys     sbin    proc    param   mnt     media   lib     init    home    etc_ro  etc     dev     bin`\
`# ls system/`\
`system    daemon    Wireless  init      www`\
`# ls param`\
`sysmacreset      vstarparam.bin   alarmlog.bin     alarmlog1.bin    systemindex.txt  systemlog.txt    login.cgi        date.bin`\
`# df`\
`Filesystem           1k-blocks      Used Available Use% Mounted on`\
`rootfs                    3008      3008         0 100% /`\
`/dev/root                 3008      3008         0 100% /`\
`/dev/mtdblock6            3072      2608       464  85% /system`\
`/dev/mtdblock7             512       260       252  51% /param`

/ is read only, /system and /param appear to be writeable and persist
across boots. Files may be downloaded for comfortable reverse
engineering via copy to webroot.

### Init

`# ls /system/init/`\
`ipcam.sh`\
`# cat /system/init/ipcam.sh`\
`export LD_LIBRARY_PATH=/system/system/lib:$LD_LIBRARY_PATH`\
`export PATH=/system/system/bin:$PATH`\
`telnetd`\
`chmod a+x /system/system/bin/daemon.vstar.v13`\
`chmod a+x /system/system/bin/encoder`\
`/system/system/bin/daemon.vstar.v13 &`\
`/system/system/bin/cmd_thread &`\
`/system/system/bin/gmail_thread &`

### System/System

`# ls /system/system/*   `\
`/system/system/lib:`\
\
`/system/system/drivers:`\
\
`/system/system/bin:`\
`unzip1            cmd_thread        upnpc-static      ssmtp             jpeg`\
`daemon.vstar.v13  gmail_thread      encoder           mailx             ftp`\
`#`

### Webroot

webroot is at

`/system/www`

writeable and persistent.

### Important Configs and Auth {#important_configs_and_auth}

`/etc/passwd`\
`/etc/passwd-`\
`/param/login.cgi`

login.cgi has the login/auth for the webservice.

There is no shadow file but the passwd file appears to have a password
hash in base64. This is probably easily bruteforceable.

Here is the initial root password hash: OYZVRABjiXqqQ

Here is the hash for 'hacdc': ZnfPmQ6KIvlTA

And after a reboot, here is the hash for 'hacdc': 4.n5RnxbkaMcU

## Change Password for remote access {#change_password_for_remote_access}

Since the password is unknown, to obtain easy telnet access, you can
append something like

`echo 'sleep 40 && /sbin/chpasswd.sh root xxxx' >> /system/init/ipcam.sh`

Probably good to backup ipcam.sh before clobbering it with echo \>.

## Pictures

## HowTO stream video over H264? {#howto_stream_video_over_h264}

It seems that the encoder binary binds to 8600 and streams H.264; as of
yet I'm not sure how to access that.

## cat /proc {#cat_proc}

`# cat /proc/version`\
`Linux version 2.6.21 (root@mailzxh-desktop) (gcc version 3.4.2) #744 Tue Jul 23 17:23:52 CST 2013`

`# cat /proc/cpuinfo`\
`system type             : Ralink SoC`\
`processor               : 0`\
`cpu model               : MIPS 24K V4.12`\
`BogoMIPS                : 239.10`\
`wait instruction        : yes`\
`microsecond timers      : yes`\
`tlb_entries             : 32`\
`extra interrupt vector  : yes`\
`hardware watchpoint     : yes`\
`ASEs implemented        : mips16 dsp`\
`VCED exceptions         : not available`\
`VCEI exceptions         : not available`

`# cat /proc/meminfo`\
`MemTotal:        29336 kB`\
`MemFree:          7104 kB`\
`Buffers:          1004 kB`\
`Cached:           4308 kB`\
`SwapCached:          0 kB`\
`Active:           4936 kB`\
`Inactive:         4104 kB`\
`SwapTotal:           0 kB`\
`SwapFree:            0 kB`\
`Dirty:               0 kB`\
`Writeback:           0 kB`\
`AnonPages:        3756 kB`\
`Mapped:           5464 kB`\
`Slab:             5432 kB`\
`SReclaimable:      616 kB`\
`SUnreclaim:       4816 kB`\
`PageTables:        364 kB`\
`NFS_Unstable:        0 kB`\
`Bounce:              0 kB`\
`CommitLimit:     14668 kB`\
`Committed_AS:    14096 kB`\
`VmallocTotal:  1048404 kB`\
`VmallocUsed:      6596 kB`\
`VmallocChunk:  1040520 kB`

`# cat /proc/mtd`\
`dev:    size   erasesize  name`\
`mtd0: 00800000 00010000 "ALL"`\
`mtd1: 00030000 00010000 "Bootloader"`\
`mtd2: 00010000 00010000 "Config"`\
`mtd3: 00010000 00010000 "Factory"`\
`mtd4: 00100000 00010000 "Kernel"`\
`mtd5: 00330000 00010000 "RootFS"`\
`mtd6: 00300000 00010000 "sys"`\
`mtd7: 00080000 00010000 "param"`

## Furthur Reading {#furthur_reading}

<https://hackaday.com/2016/03/28/tearing-down-an-ip-camera/>

<https://jelmertiete.com/2016/03/14/IoT-IP-camera-teardown-and-getting-root-password/>

<https://blog.tho.ms/hacks/2016/08/28/openwrt-on-logilink-wc0030a.html>

<https://wiki.openwrt.org/toh/views/toh_dev_platforms?dataflt%5BPlatform>\*\~%5D=RT5350

[Category:Useful_Info](Category:Useful_Info)
