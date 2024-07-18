OBSOLETE Xen on Debian Stable gave some mysterious disk-controller
errors, thoroughly confirmed not to be hardware problems, at least
insofar as lack of HVM support is not a hardware problem. OpenVZ has
been chosen instead.

Simple project server, emphasis on availability and uptime.

Most likely, this server will continue operating for several years, even
as newer and better servers supplant it.

# Login

On any unix terminal emulator, enter the command:

``\
`ssh <userName>@HacDC-shared-m335-1.hacdc.organd`

On other platforms, try applications like
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) with similar
settings.

# CommandReference

Routinely important commands unique to this server documented as
follows.

## Root (Admin)

### ReInstall

-   apt-get install xen-linux-system xen-tools git sudo
-   dpkg-divert --divert /etc/grub.d/08_linux_xen --rename
    /etc/grub.d/20_linux_xen
-   Installation of [hostedXen](https://github.com/mirage335/hostedXen)
    .
-   Uncomment lines referring to "-nat" and comment other
    vif-script/network-script lines in /etc/xen/xend-config.sxp .
-   Uncomment "dir = /home/xen" in /etc/xen-tools/xen-tools.conf .

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

### List

List Xen VMs created for you.

``\
`cat ~/xenList`

### Startup

Start Xen VM, and launch console.

``\
`sudo /usr/sbin/xm create -c /etc/xen/<name>.cfg     #Escape with Ctrl+] .`

Just start Xen VM. Useful if planning to interact through other means
(ie. network).

``\
`sudo /usr/sbin/xm create /etc/xen/<name>.cfg`

### Shutdown

Yes, really, hard shutdown is termed "destroy". Don't worry, not
synonymous with "delete".

``\
`sudo /usr/sbin/xm destroy <name>`

### Console

Opens the console of running VM `<name>`{=html} .

``\
`sudo /usr/sbin/xm console <name>     #Escape with Ctrl+] .`

# Characteristics

-   CPU - E2200 Dual-Core 2.2GHz
-   RAM - 1GB
-   HDD - 500GB
-   Hostname - HacDC-shared-m335-1
-   FQDN - HacDC-shared-m335-1.hacdc.org

# Redundancy (RAID)

None yet, keep backups. Nonetheless, hard disk is kept cool, so the
server should have a long life ahead of it.

# Policies

## Permissions

### Root

HacDC members with a demonstrable need or willingness to manage non-root
users may be given root access. Imperative that root users do not
jeopardize uptime.

### Shell

All HacDC members are welcome to non-root shell accounts, directly
provided by the server, and used to manage Xen VMs.

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

## Removal

-   Three months before removal of ex-member accounts. Exceptions on a
    case-by-case basis.

## DataLoss

-   Users should regularly backup critical data offiste.
-   Onsite data storage is not guaranteed to be reliable.
-   All server data may be deleted after obsolescence.
-   Removed accounts may be deleted immediately and permanently upon
    deactivation.

## Privacy

Machine is physically accessible to all keyholding HacDC members.
Although HacDC members are generally responsible, privacy should not be
expected.

## AcceptableUse

### Sharing

Sharing of account resources is permitted, however, additional resources
will be allocated according to individual member needs for specific
purposes. As a reminder, compromised accounts will be immediately
removed as discovered.

### Bandwidth

Hard bandwidth limits have not been set to ease administration of local
file servers. However, please configure applications to limit maximum
bandwidth use where possible, particularly for web servers.

# ChiefAdmin

mirage335

# Credits

Hunterkll - Donated core hardware.

# Special Services

# Funtoo

Funtoo (enhanced Gentoo) build server is available, with binary packages
and weekly full-os tarballs for new installations.

# Softload

<https://github.com/mirage335/hostedXen>

# Reference

-   <https://wiki.debian.org/Xen#Domain_0_.28Host.29_Installation>
-   <http://dev.e-taxonomy.eu/trac/wiki/Xen_installation>
-   <http://wiki.xenproject.org/wiki/Nested_Virtualization_in_Xen#How_to_use_nested>
-   <http://wiki.xen.org/wiki/Host_Configuration/Networking#Routing>
-   <http://blog.manula.org/2012/04/manually-configuring-nat-networking-in.html>
-   <http://www.fclose.com/816/port-forwarding-using-iptables/>
-   <https://wiki.debian.org/iptables>
-   <http://blog.manula.org/2011/02/xen-bridged-networking-mode.html>
-   <http://xen.1045712.n5.nabble.com/console-access-to-non-root-xen-3-0-td2560667.html>
-   <http://xen-tools.org/pipermail/xen-tools-discuss/2009-September/000674.html>
-   <https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/5/html/Virtualization/sect-Virtualization-Tips_and_tricks-Limit_network_bandwidth_for_a_Xen_guest.html>
-   <http://serverfault.com/questions/52027/how-can-i-limit-per-user-bandwidth>
-   <http://www.howtoforge.com/nat-gateway-iptables-port-forwarding-dns-and-dhcp-setup-ubuntu-8.10-server>
-   <https://major.io/2007/02/09/delete-single-iptables-rules/>
-   <https://www.novell.com/support/kb/doc.php?id=3466408>
