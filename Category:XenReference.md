This page was written during commissioning of a HacDC server. It is no
longer relevant, but kept for archival use.

# Test

``\
`xen-create-image --hostname test --ip 10.0.0.x --gateway 10.0.0.1 --netmask 255.255.255.0 --vcpus 2 --pygrub --dist squeeze`\
``\
`xen create /etc/xen/test.cfg`\
``\
`xen console test`\
``\
`<do stuff>`\
``\
`Ctrl + ]`\
``\
`xen-delete-image test`

# CreateUser

``\
`#!/bin/bash`\
``\
`#Usage: createXenUser.sh <userName>`\
``\
`randString=$(head -c 6 /dev/urandom | base64 | tr -dc 'a-z0-9')          `\
`while [[ ${#randString} -lt 8 ]]                                                                            `\
`do                                                                                     `\
`        randString=${randString}$(head -c 4 /dev/random | base64 | tr -dc 'a-z0-9')`\
`done                                                                                   `\
``\
`useradd -m -p $randString "$1"`\
``\
`echo "User $1 created with password:`\
`$randString"`\
``

# CreateUserVMs

``\
`#!/bin/bash`\
``\
`#Usage: ./createXenUserVM <userName> <VM_Number> <dist>`\
`#Ex: ./createXenUserVM testUser 1 squeeze`\
``\
`mkdir -p /etc/xen/hosted`\
`xen-create-image --output /etc/xen/hosted --hostname "$1-$2" --ip auto --gateway 10.0.0.1 --netmask 255.255.255.0 --vcpus 2 --pygrub --fs=ext4 --dist "$3"`\
`mv /etc/xen/hosted/"$1-$2".cfg /etc/xen/hosted/"$1-$2"`\
``\
`mkdir -p /etc/sudoers.d`\
`echo "$1 ALL=NOPASSWD:/usr/sbin/xm console $1-$2, /usr/sbin/xm create -c /etc/xen/hosted/$1-$2, /usr/sbin/xm create /etc/xen/hosted/$1-$2, /usr/sbin/xm destroy $1-$2, /usr/sbin/reimage-dom $1-$2 ?" > /etc/sudoers.d/xen "$1-$2"`\
``\
`/etc/init.d/sudo restart`

# InstallationNotes

1.  In /etc/xen/xend-config.sxp uncomment the network-nat and vif-nat
    entries.
2.  The ips.txt list must be initialized by:

for i in \$(seq 100 200) ; do echo 10.0.0.\$i \>\>
/etc/xen-tools/ips.txt ; done

# Reference

<https://wiki.debian.org/Xen#Domain_0_.28Host.29_Installation>
<http://dev.e-taxonomy.eu/trac/wiki/Xen_installation>
<http://wiki.xenproject.org/wiki/Nested_Virtualization_in_Xen#How_to_use_nested>
<http://wiki.xen.org/wiki/Host_Configuration/Networking#Routing>
<http://blog.manula.org/2012/04/manually-configuring-nat-networking-in.html>
<http://www.fclose.com/816/port-forwarding-using-iptables/>
<https://wiki.debian.org/iptables>
<http://blog.manula.org/2011/02/xen-bridged-networking-mode.html>
<http://xen.1045712.n5.nabble.com/console-access-to-non-root-xen-3-0-td2560667.html>
<http://xen-tools.org/pipermail/xen-tools-discuss/2009-September/000674.html>
<https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/5/html/Virtualization/sect-Virtualization-Tips_and_tricks-Limit_network_bandwidth_for_a_Xen_guest.html>
<http://serverfault.com/questions/52027/how-can-i-limit-per-user-bandwidth>
