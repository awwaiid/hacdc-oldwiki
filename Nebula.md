Simple project server. Emphasis on high-availability.

For discussion purposes, server is nicknamed "Nebula".

Typically used as a fallback for essential services running on
Starlight. Some services with unusual resource requirements (ie. AutoSSH
reverse tunnels) may use Nebula by default.

# ChiefAdmins

-   Matthew "mirage335" Hines

# Support

#hacdc on [irc.freenode.net](irc://irc.freenode.net/hacdc) (or via
[chat.hacdc.org](http://chat.hacdc.org/))

# Login

On any unix terminal emulator, enter the command:

``\
`ssh <userName>@nebula.srv.hacdc.org -p 2222`

On other platforms, try applications like
[PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) with similar
settings. Local connections (within HacDC's network) will need to use IP
address .

# Recommendations

Consider using Nebula as a fallback for mission-critical lightweight
services hosted on Starlight (eg. MediaWiki, git, etc).

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

Dell 1850

-   CPU - Dual Processor, Quad-Core
-   RAM - 8GB ECC
-   HDD - 100GB SAS RAID1
-   Hostname - HacDC-shared-m335-3
-   FQDN - HacDC-shared-m335-3.srv.hacdc.org

# Redundancy (RAID) {#redundancy_raid}

Root filesystem is comprised of two approximately 100GB HDDs.

Redundant power supply installed.

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

-   Failure of both disks will result in unrecoverable loss of data on
    this server.
-   Removed accounts or terminated services may result in immediate,
    permanent deletion.
-   As array repair procedures are rarely done, catastrophic mistakes
    are possible.

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

# Special Services {#special_services}

## HTTP/HTTPs

Ports 80/443 are available through reverse proxy. Please setup a
relevant domain name (eg. \*.member.hacdc.org) through FreeDNS or other
service, and contact the HacDC admin team for assistance.

## Backup

Periodic backup to server Starlight may be performed by admins.

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

MAW3147NC hard disks are available at reasonable cost from eBay.

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

Hardware donor.

# Reference

[Category:Servers](Category:Servers)
