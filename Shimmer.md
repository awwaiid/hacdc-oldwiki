Simple project server, emphasis on availability and uptime.

Most likely, this server will continue operating for several years, even
as newer and better servers supplant it.

For discussion purposes, server is nicknamed "Shimmer".

[mirage335 Wiki](http://mirage335.dyndns.org/wiki/Category:Starlight)

# ChiefAdmin

mirage335

# Support

#hacdc on [irc.freenode.net](irc://irc.freenode.net/hacdc) (or via
[chat.hacdc.org](http://chat.hacdc.org/))

# Login

On any unix terminal emulator, enter the command:

``\
`ssh <userName>@shimmer.srv.hacdc.org -p 2221`

On other platforms, try applications like
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) with similar
settings. Please use 192.168.14.254 for internal use.

# CommandReference

Routinely important commands unique to this server documented as
follows.

## Users

### List

List OpenVZ VMs created for you.

``\
`cat ~/hovzList`

### Startup

``\
`sudo /usr/sbin/vzctl start <name>`

### Shutdown

``\
`sudo /usr/sbin/vzctl stop <name>`

### Console

Opens command line of running VM `<name>`{=html} .

``\
`sudo /usr/sbin/vzctl enter <name>`

## Root (Admin)

### hostedOpenVZ

-   ./hovzNewUser `<userName>`{=html} \# Creates user account with
    default OpenVZ VM and permissions.
-   ./hovzDelUser `<userName>`{=html} \# Deletes user account,
    associated VMs, and associated OpenVZ permissions.
-   ./hovzNewVM `<userName>`{=html} `<VM_Number>`{=html} `<dist>`{=html}
    \# Creates VM accessible to non-root user `<userName>`{=html} . Dist
    is often"debian-7.0-x86_64-minimal" .
-   vzctl set CTID --ram 128M --swap 256M --save
-   vzctl set CTID --diskspace 4G:4.2G --save

### Autostart

Through normal reboots, host will suspend/resume any guest VMs.

### iptables

#### Investigation

-   iptables -t nat -L -n -v #Lists port forwarding rules.
-   iptables -t nat -F #Deletes port forwarding rules.
-   iptables -D PREROUTING 1 #Deletes port forwarding rule.

#### Forwarding

##### Specific

``\
`/sbin/iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 20283 -j DNAT --to 10.174.10.5:22`

##### Persistent

Package iptables-persistent has been installed. Upon installation,
existing iptables rules were saved. Edit /etc/iptables/rules.v4 .

##### ReInstall

-   Install OpenVZ, documented at
    <http://openvz.org/Installation_on_Debian> .
-   Install hostedOpenVZ, documented at
    <https://github.com/mirage335/hostedOpenVZ> .
-   Change default kernel in /etc/default/grub.cfg .
-   Apply "iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE" .

# Characteristics

-   CPU - E2200 Dual-Core 2.2GHz
-   RAM - 4GB
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
provided by the server, and used to manage OpenVZ VMs.

### OpenVZ

All HacDC members are welcome to OpenVZ Virtual Machines. Resources,
including CPU, disk space, and external network ports, will be allocated
on an as-needed first-come-first-serve basis.

Root users, please use the provided hostedOpenVZ scripts. Following the
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

### Disk

Disk space is limited, but can be upgraded. Please do not needlessly use
more than a few tens of GB.

### Sharing

Sharing of account resources is permitted, however, additional resources
will be allocated according to individual member needs for specific
purposes. As a reminder, compromised accounts will be immediately
removed as discovered.

### Bandwidth

Although HacDC has a high-capacity 175/15Mbit link, it is shared with
other tenants. Please be courteous. If internet bandwidth use is
required for downloading large files, between 2200 and 0600 is best.

Hard bandwidth limits have not been set to ease administration of local
file servers. However, please configure applications to limit maximum
bandwidth use where possible, particularly for web servers.

-   NOTE: If your bandwidth use is too high during normal hours, the
    church administrator will cut bandwidth available to the whole
    subnet and will call mirage335, juri\_, or other admin team members
    to resolve the issue (no one will be happy).

# Special Services

## HTTP/HTTPs

Ports 80/443 are available through reverse proxy. Please setup a
relevant domain name (eg. \*.member.hacdc.org) through FreeDNS or other
service, and contact the HacDC admin team for assistance.

## Funtoo

Funtoo (enhanced Gentoo) build server is available, with binary packages
and weekly full-os tarballs for new installations.

After obtaining the password for remote access, upload a key and set
PORTAGE_BINHOST="<ssh://binpkguser@HacDC-shared-m335-1.HacDC.org>:`<port>`{=html}/opt/mirage335OS-x64/usr/portage/packages"
.

``\
`ssh-copy-id -i "./key.pub binpkguser@router.hacdc.org -p 24789`

This also provides access to regularly generated tarball images for
re/installation of a fresh OS.

# Softload

<https://github.com/mirage335/hostedOpenVZ>

# NamingConvention

Preferred network names for participating machines and virtual machines.

## Physical

### Hostnames

HacDC-shared-m335-1

-   HacDC - Identifies machine as HacDC or HacDC member property on the
    local network.
-   shared - One of private, restricted, shared. Private = one member
    only (eg. RasPi). Restricted = limited access (eg. HacDC web
    server). Shared = shared resources (ie. remote shells).
-   m335 - Abbreviated member name or screen name. Full contact details
    should be written on the physical machine.
-   1 - Unique identifier.

### FQDNs

HacDC-shared-m335-1.router.hacdc.org

## Virtual

### Hostnames

mirage335-1

-   mirage335 - Local username.
-   1 - Unique machine identifier.

### FQDNs

mirage335-1.HacDC-shared-m335-1.router.hacdc.org

# Timezone

EST/EDT aka US Eastern, America/NewYork, or "Eastern"

# Workarounds

## SSH KeepAlive

Due to limited bandwidth, SSH sessions may freeze. To prevent this,
consider the following to configuration, appended to client-side
\~/.ssh/config .

``\
`Host *`\
`  ServerAliveInterval 30`

# Disclaimer

No guarantees. Admins are expected to make best efforts toward
reliability, security, and privacy. Monitoring may include without
limitation system health, resource consumption, and authentication
failures, and the like. More intrusive monitoring, such as of user
filesystems, should be avoided if possible.

# Credits

Hunterkll - Donated core hardware.

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
-   [HacDC-shared-m335-1_Xen](HacDC-shared-m335-1_Xen)

[Category:Servers](Category:Servers)
