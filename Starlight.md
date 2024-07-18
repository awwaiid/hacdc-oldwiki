Simple project server, comparable to Shimmer. Increased emphasis on
performance and redundancy.

Most likely, this server will continue operating for several years, even
as newer and better servers supplant it.

For discussion purposes, server is nicknamed "Starlight".

# ChiefAdmins

-   Julia "juri" Longtin
-   Matthew "mirage335" Hines

Server is property of mirage335 (through Soaring Industries LLC) and
Julia Longtin.

# Support

#hacdc on [irc.freenode.net](irc://irc.freenode.net/hacdc) (or via
[chat.hacdc.org](http://chat.hacdc.org/))

# Login

On any unix terminal emulator, enter the command:

``\
`ssh <userName>@starlight.srv.hacdc.org -p 2220`

On other platforms, try applications like
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) with similar
settings. Local connections (within HacDC's network) will need to use IP
address 192.168.14.254 .

# Recommendations

-   Set restrictive permissions on directories belonging to you.
-   Create a directory for yourself on the fast array at
    "/mnt/fast/users" if available.
-   Physically, disk array consists of six, 4kB sector size, devices.
    Try to keep blocksize greater than 24kB - ie. "dd if=/dev/zero
    of=./test bs=24576" .
-   Use fast array for I/O intensive active jobs (eg. compilation,
    statistics, simulation). Fast array provides maximum speed,
    theoretically sustaining upwards of 900MB/s or 1000 IOPS.
-   Use root filesystem (eg. "/home", "/var/www/html") for lightweight
    services including important data (eg. MediaWiki, git, email). Root
    filesystem provides maximum durability, surviving 2/6 disk failures.
-   Periodically backup (rsync) important data from fast array to root
    filesystem.
-   Backup especially critical data (eg. databases) offsite (eg.
    dropbox).

HacDC admins are happy to help, and may be able to provide assistance
with other services (eg. offsite backup).

# CommandReference

Routinely important commands unique to this server documented as
follows.

## Root (Admin) {#root_admin}

### ReInstall

-   apt-get install xen-linux-system xen-tools git sudo
-   dpkg-divert --divert /etc/grub.d/08_linux_xen --rename
    /etc/grub.d/20_linux_xen
-   Installation of [hostedXen](https://github.com/mirage335/hostedXen)
    .

```{=html}
<!-- -->
```
-   "/usr/bin/find /dev/disk/by-id -name 'ata-WDC_WD\*EZRX\*' -not -name
    '\*part\*' -exec /sbin/hdparm -Y -S 120 {} \\;"

### hostedXen

-   ./hxNewUser `<userName>`{=html} \# Creates user account with default
    Xen VM and permissions.
-   ./hxDelUser `<userName>`{=html} \# Deletes user account, associated
    VMs, and associated Xen permissions.
-   ./hxNewVM `<userName>`{=html} `<VM_Number>`{=html} `<dist>`{=html}
    \# Creates VM accessible to non-root user `<userName>`{=html} .

### Autostart

Through normal reboots, host will suspend/resume any guest VMs. If that
is insufficient, the correct way to enable autostarting is through the
xm command, [documented as method 2
here](https://www.novell.com/support/kb/doc.php?id=3466408).

### iptables

#### Investigation

-   iptables -t nat -L -n -v #Lists port forwarding rules.
-   iptables -t nat -F #Deletes port forwarding rules.
-   iptables -D PREROUTING 1 #Deletes port forwarding rule.

#### Forwarding

##### Enable

``\
`/sbin/iptables -P FORWARD ACCEPT`\
`/sbin/iptables --table nat -A POSTROUTING -o eth0 -j MASQUERADE`

##### Specific

``\
`/sbin/iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 20283 -j DNAT --to 10.174.10.5:22`

##### Persistent

Package iptables-persistent has been installed. Upon installation,
existing iptables rules were saved. Edit /etc/iptables/rules.v4 .

## Users

Please note, your virtual machine has most likely been created with a
root password identical to your account, but will require, through the
console, manually enabling root SSH login.

### List

List Xen VMs created for you.

``\
`cat ~/xenList`

### Startup

Start Xen VM, and launch console.

``\
`sudo /usr/sbin/xl create -c /etc/xen/<name>.cfg     #Escape with Ctrl+] .`

Just start Xen VM. Useful if planning to interact through other means
(ie. network).

``\
`sudo /usr/sbin/xl create /etc/xen/<name>.cfg`

### Shutdown

Yes, really, hard shutdown is termed "destroy". Don't worry, not
synonymous with "delete".

``\
`sudo /usr/sbin/xl destroy <name>`

### Console

Opens the console of running VM `<name>`{=html} .

``\
`sudo /usr/sbin/xl console <name>     #Escape with Ctrl+] .`

# Characteristics

-   CPU - Dual Processor, Octo-Core, Intel Xeon X5355
-   RAM - 48GB ECC
-   HDD Bulk Array - 20TB RAID6
-   HDD Fast Array - 5TB RAID0, Estimated 900MB/s, 1000 IOPS.
-   Hostname - HacDC-shared-m335-2
-   FQDN - HacDC-shared-m335-2.srv.hacdc.org

# Redundancy (RAID) {#redundancy_raid}

Root filesystem is comprised of six WD60EZRX (WD Green 6TB) disks in a
RAID6 (dual-parity array) configured with low "intellipark" frequency.
Disks were intentionally purchased from diverse sources. Data will not
be lost unless more than two drives in this array fail simultaneously.

Fast filesystem has worse than no redundancy, being a RAID0 stripe
across the front of each disk.

Internal backups and some spare hardware are kept to minimize potential
downtime. Disk failures are generally expected to be repaired without
shutdown.

# Policies

## Permissions

### Root

HacDC members with a demonstrable need or willingness to manage non-root
users may be given root access. Imperative that root users do not
jeopardize uptime.

### Shell

All HacDC members are welcome to non-root shell accounts, directly
provided by the server.

### Xen

All HacDC members are welcome to Xen Virtual Machines. Resources,
including CPU, disk space, and external network ports, will be allocated
on an as-needed first-come-first-serve basis.

Root users, please use the provided hostedXen scripts. Following the
naming conventions set therein helps account for which resources belong
to whom.

## Notifications

Internal server email will notify users, if feasible, on the following
schedules, subject to change.

-   Three days before planned downtime exceeding one hour.
-   One week before planned permanent downtime (obsolescence).

Forwarding to another email address is possible with the following
command.

``\
`echo 'person@mail.com' > ~/.forward`

## Removal

-   Up to three months before removal of ex-member accounts. Exceptions
    on a case-by-case basis.
-   Compromised accounts will be immediately removed or disabled as
    discovered.
-   Excessive resource use, including disk space consumption, may be
    terminated, particularly if account holder is not responsive to
    inquiries.

## DataLoss

-   Failure of more than two disks will result in unrecoverable loss of
    data on this server.
-   Failure of any disk on fast array will result in unrecoverable loss
    of data from that partition.
-   Multiple sequential URE's across multiple disks may severely corrupt
    data on arrays.
-   Removed accounts or terminated services may result in immediate,
    permanent deletion.
-   As array repair procedures are rarely done, catastrophic mistakes
    are possible.
-   Virtual Machines are stored on fast array by default, periodically
    backed up internally.

## Privacy

Machine is security is not especially tight. Sysadmins may investigate
possible abuse. Privacy may exist, but is not a reasonable expectation.

## AcceptableUse

### Disk

Vast quantities of disk space are available. Still, please be
considerate, and understand that on-mission HacDC activities may be
given priority.

### Sharing

Sharing of account resources is permitted, however, additional resources
will be allocated according to individual member needs for specific
purposes. As a reminder, compromised accounts will be immediately
removed or disabled as discovered.

### Bandwidth

Although HacDC has a high-capacity \>175/\>25Mbit link, it is shared
with other tenants. Please be courteous. If internet bandwidth use is
required for downloading large files, between 2200EDT and 0600EDT is
best.

Hard bandwidth limits have not been set to ease administration of local
file servers. However, please configure applications to limit maximum
bandwidth use where possible, particularly for web servers.

-   NOTE: If your bandwidth use is too high during normal hours, the
    church administrator will cut bandwidth available to the whole
    subnet and will call mirage335, juri\_, Ethan Waldo, or other admin
    team members to resolve the issue (no one will be happy).

### Good Standing {#good_standing}

Access to servers is subject to the same conditions as access to any
other HacDC resource, including internet service generally. As a
501(c)3, we have obligations to uphold ISP TOS, public policy, law, and
our non-profit mission. Abuse, or any activity inconsistent with these
obligations, will result in account termination upon discovery.

# Special Services {#special_services}

## HTTP/HTTPs

Ports 80/443 are available through reverse proxy. Please setup a
relevant domain name (eg. \*.member.hacdc.org) through FreeDNS or other
service, and contact the HacDC admin team for assistance.

## EMail

A free UNIX email account with full internet inbound and outbound
support is provided as part of the shell account. Interaction can be
performed through SMTPs, IMAPs, POP3s, and UNIX mail programs. Please
remember to use encrypted protocols only.

# NamingConvention

Preferred network names for participating machines and virtual machines.

## Physical

### Hostnames

HacDC-shared-m335-2

-   HacDC - Identifies machine as HacDC or HacDC member property on the
    local network.
-   shared - One of private, restricted, shared. Private = one member
    only (eg. RasPi). Restricted = limited access (eg. HacDC web
    server). Shared = shared resources (ie. remote shells).
-   m335 - Abbreviated member name or screen name. Full contact details
    should be written on the physical machine.
-   1 - Unique identifier.

### FQDNs

HacDC-shared-m335-2.router.hacdc.org

## Virtual

### Hostnames {#hostnames_1}

mirage335-1

-   mirage335 - Local username.
-   1 - Unique machine identifier.

### FQDNs {#fqdns_1}

mirage335-1.HacDC-shared-m335-2.router.hacdc.org

# Timezone

EST/EDT aka US Eastern, America/NewYork, or "Eastern"

# Workarounds

## SSH KeepAlive {#ssh_keepalive}

Due to limited bandwidth, SSH sessions may freeze. To prevent this,
consider the following to configuration, appended to client-side
\~/.ssh/config .

``\
`Host *`\
`  ServerAliveInterval 30`

# Recovery

## RAID

``\
`mdadm /dev/md? -r detached          #Remove all failed/missing drives.`\
`mdadm --add /dev/md? /dev/sd??      #Add new drive.`\
`mdadm --grow --raid-devices=6 --backup-file=/mnt/tmp/grow_md1.bak /dev/md?     `

## Bootloader

Copy or recreate "/boot" files if necessary, run "grub-install /dev/sda
; update-grub".

If system is already down, chroot'ing from a LiveCD may be necessary.

## Motherboard

X7DB8+ Motherboard Cold spare with bad BIOS may be available. Consider
swapping W39V080FAPZ flash chip to bring system back online.

## PSU

FlexATX 400W, part number FSP400-70LQ .

## CPU

Dual-CPU. Either socket can be used with just one CPU to bring system
back online. Valid replacements include Xeon X5355/E5472/X5492 .

## RAM

Two FB ECC DDR2 DIMMs may be used in the first and fifth slot. After
that, number of DIMMs must be a multiple of four, installed as
documented in the manual.

## Bugs

Issuing remote "reboot" command may cause the machine to hang,
necessitating power cycling. Avoid remote reboots unless personnel are
on site.

# Disclaimer

No guarantees. Admins are expected to make best efforts toward
reliability, security, and privacy. Monitoring may include without
limitation system health, resource consumption, and authentication
failures, and the like. More intrusive monitoring, such as of user
filesystems, should be avoided if possible.

Excepting the case, reasonably requsitioned as a supply, the server is
property of mirage335 and Julia Longtin. Administration is at their
discretion.

Substantial personal investments were put into this server. Misuse will
be taken as a severe disappointment.

# Credits

Julia Longtin - Donated core hardware.

# Reference

[Category:Servers](Category:Servers)
