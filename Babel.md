Available in most Linux distributions (including Arch, Debian, OpenWRT).

# Features

Distance vector routing protocol:

-   Direction in which a packet should be forwarded.
-   Interface to which a protocol should be sent
-   Direction == address of next hop and exit interface
-   Distance from destination
-   Cost of reaching destination is computed using various metrics

```{=html}
<!-- -->
```
-   Designed for both wireless (in ad-hoc mode) and wired network
    routing.
-   Designed with mobile nodes in mind.
-   Can route both IPv4 and IPv6 simultaneously and transparently.
    Doesn't care which layer 3 protocols are running on top of it.
-   Converges rapidly.
-   Triggered updates.
-   Explicit requests for routing information rather than continual
    broadcasting.

```{=html}
<!-- -->
```
-   Uses link quality metrics.
-   Metric: packet loss, interference (optional) and RTT (optional).
-   History sensitive to avoid route flapping.

```{=html}
<!-- -->
```
-   Does not optimize route tables immediately, more concerned with
    stability than slim tables. Premature optimization is the root of
    all coders' anguish, and all that.
-   This is used to cure route starvation.
-   Used to choose feasibility of a particular route.
-   Every route carries a sequence number that never decreases and is
    propagated unchanged through the network.
-   Only the route's source can ever increment that number.
-   If the sequence number is more recent that the feasibility distance
    maintained by the receiving node, or if it's equally recent but the
    metric is smaller, then that particular route will be selected.
-   Routes become feasible again after the sequence number is
    incremented.
-   Ideal for embedded systems due to the properties inherent of DVRPs.

```{=html}
<!-- -->
```
-   Most routing loops are avoided, remaining routing loops are
    transient, disappear in time proportional to the diameter of the
    loops.
-   Routers take note of loops and ensure that they do not recur.

```{=html}
<!-- -->
```
-   Highly mobile nodes may elect to use shorter time constants, to
    reflect their changing environment more accurately.

```{=html}
<!-- -->
```
-   Nodes periodically broadcast HELLO packets. Nodes also respond to
    HELLO broadcasts from neighboring nodes with I HEARD YOU packets.
    These are used to calculate link costs.
-   Periodically, every node B broadcasts a routing update D(B).

Every neighboring node A checks to see if B is its next hop. If so,

`   NH(A) = B`\
`   D(A) = C(A, B) + D(B)`

otherwise,

`   if (C(A, B) + D(B)) < D(A)`\
`       the received route is a better one`\
`       NH(A) = B`\
`       D(A) = C(A, B) + D(B)`

For any node A:

`   estimated distance to node S = D(A)`\
`   next hop router to node S = NH(A)`

Initially, D(S) == 0, D(A) == infinity, NH(A) == UNDEFINED

If a route has to be retracted for any rason, babeld flags that route as
UNREACHABLE for a few minutes. Even if the route comes back it won't be
used until that timer is up. This is usually the worst case propagation
time for the route to a particular node C.

Every Babel router gets a unique ID, a string of 8 octets.

-   Transmitted over UDP.
-   Sent with a unicast source address to a multicast address (usually).
-   Known neighbors get both multicast and unicast (directed to a
    particular node).

# Usage

How to use babeld: Put the NIC into ad-hoc mode:

`   iwconfig wlan0 mode ad-hoc channel X essid "mesh"`\
`   ifconfig wlan0 up`

All nodes need to have unique IP addresses. IPv4 at least, IPv6 if you
have it.

`   ifconfig wlan0 192.168.13.37/32`\
``    ifconfig wlan0 `generate-ipv6-address -r`/128 ``

Start babeld:

`   babeld wlan0`

If there are multiple network interfaces:

`   babeld wlan0 eth1 eth2 ppp0 ...`

If a specific network gateway router exists, set it:

`   route add default gw 1.2.3.4 dev eth1`

These are often set on a per-node basis. For example, babeld is running
on a laptop with both wireless and wired interfaces.

Then redistribute routes through the mesh:

`   babeld -C 'redistribute metric 128' eth1`

It is possible to redistribute the routes associated only with a
particular network interface:

`   babeld -C 'redistribute if eth2 metric 128' eth1`

Other babeld options:

`   -h ``<sec>`{=html}`: interval in seconds between HELLO broadcasts over wireless.`\
`       Default: 4 sec.`\
`   -H ``<sec>`{=html}`: as -h, only for wired interfaces.`

babeld is not designed for security. An attacker that is link-local can
inject packets, just like ARP. Local firewalls, if applicable, should be
configured to allow Babel packets. Default: 6697/UDP

# Accessories

## AHCPD

AHCP can also be used to configure routing when using babeld:

`   `[`http://www.pps.jussieu.fr/~jch/software/ahcp/`](http://www.pps.jussieu.fr/~jch/software/ahcp/)

Arch Linux package downloaded, compiled, and ready to install.

Automagically configures IPv6 and IPv4/IPv6 networks when babeld is
used. Implements router discovery. Replaces DHCP. Configures IPv?
addresses, DNS, NTP. Does not configure default routes, that's babeld's
job.

Setting up an authoritative AHCP server:

`   Configure /etc/ahcpd.conf appropriately.`\
`   ahcpd -c /etc/ahcpd.conf -D wlan0`

Does not need to run as root, only needs to be able to write a pidfile
and the lease database. If the server can sync its clock using NTP, it
will. If it can't it will only give short leases and be careful with
releasing them. Multiple servers can run on the same mesh so long as
they work different IPv4 netblocks.

Other options:

`   -t ``<sec>`{=html}` - time in second that leases are offered for.`\
`   -L /path/to/log - Specify a logfile.  By default, /var/log/ahcpd.log`

kill -USR1 to print server status to logfile. kill -USR2 checks for
interface status changes, then reopens logfile.

Running an AHCP client:

`   ahcpd wlan0`

Designed for mesh networks. Doesn't set default gateway, netmask, or
on-link prefixes for IPv6.

## WebGUI

haxwithaxe doesn't know how this works yet but it looks really cool.
[babelweb](http://babelweb.wifi.pps.univ-paris-diderot.fr:8080)

    git clone git://git.wifi.pps.univ-paris-diderot.fr/babelweb.git

```{=mediawiki}
{{Template:Byzantium}}
```
