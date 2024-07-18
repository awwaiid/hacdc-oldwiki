## Compile and install BATMAN-Advanced

Download batman-adv and batctl. Standard "make && sudo make install".

If no interface "wlan0" exists, check for a different wireless interface
using 'ifconfig -a'

## Setup ad-Hoc network

1.  Disable NetworkManager
    1.  Right-click on NetworkManager applet, un-check "Enable
        networking".
    2.  Fedora:
            # /etc/init.d/NetworkManager stop
    3.  Ubuntu:
            # stop network-manager

2.  Disable the firewall
    1.  # iptables -F

3.  # ifconfig wlan0 down

4.  # iwconfig wlan0 mode ad-hoc essid hacdc-batman channel 8

5.  # ifconfig wlan0 up

## Setup BATMAN-Advanced

In the unpacked 'batman-adv' directory:

1.  # insmod batman-adv.ko

In the batctl directory:

1.  # ./batctl if add wlan0

2.  # ifconfig wlan0 mtu 1527

3.  # cat /sys/class/net/wlan0/batman_adv/iface_status

    Should read "active".

4.  # ifconfig wlan0 0.0.0.0

5.  # ifconfig bat0 up

6.  give bat0 an IP address
    1.  ifconfig w.x.y.z netmask a.b.c.d up
    2.  dhcp
    3.  dhcp6
    4.  dhclient
    5.  Avahi/zeroconf
    6.  IPv6

## Testing BATMAN-Advanced

Display local table of known peers (by MAC address of node):

1.  batctl o

Ping by batX MAC address of nodes:

1.  batctl p uu:vv:ww:xx:yy:zz

Monitor traffic of batX interface:

1.  tcpdump -i bat0 -s 0 -v -X -n

Test connectivity between nodes:

1.  ping6 -p DEADBEEF -I bat0 (IPv4 address of host)
2.  ping6 -p DEADBEEF -I bat0 (IPv6 address of host)

```{=mediawiki}
{{Template:Byzantium}}
```
