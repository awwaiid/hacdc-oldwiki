**BATMAN is depreciated in favor of BATMAN-Adv or Babel**

-   Decentralization of routing knowledge.
-   No node has all of the routing data possible.
-   Propagation of routing information is not done with broadcast.
-   Nodes have only information about routes packets were received from.

```{=html}
<!-- -->
```
-   Stable.
-   Slow convergance times.

```{=html}
<!-- -->
```
-   Other BATMAN nodes are detected and noted.
-   New nodes are noted. Neighbors are informed.

```{=html}
<!-- -->
```
-   Every node broadcasts its existence periodically. \< 200 seconds.
-   These periodic updates overwrite contradictory information.
-   Neighbors relay this information until every node has heard about
    it.
-   Nodes which are currently considered the best next hop are
    considered neighbors.
-   A particular node counts the number of messages sent in reply for
    every node and determines the route length that way.
-   Each node only knows about routes to its neighbors. It lets
    neighbors worry about additional hops.
-   Good routes, by definition, propagate farther than dodgy ones.
-   Timeless FSM: events are used to react to changing network
    conditions, not timers.

```{=html}
<!-- -->
```
-   Aims for easy, small, and fast.
-   Supports multiple network devices of probably any kind. All are used
    to retransmit packets.
-   Nodes can inform other nodes that they're gateways to the Net.
-   Nodes can announce that they are gateways from the mesh to an
    attached LAN providing services.

<http://www.open-mesh.org/>
<http://www.open-mesh.org/wiki/batman-adv-quick-start-guide>
<http://lwn.net/Articles/426947/>

-   Branches: major variants of not only the codebase but the protocol
    itself.
-   batmand operates at layer 3.
-   batman-adv users the version III algorithm, but operates at layer 2.
-   Implemented as a kernel module for speed.
-   batctl is the control utility.

```{=html}
<!-- -->
```
-   v0.3 makes use of the kernel's policy routing capabilities.

```{=html}
<!-- -->
```
-   Four routing tables.
-   View routing tables:
    -   batmand -i \| grep rt_table
        -   rt_table_networks: entries for announced networks.
        -   rt_table_hosts: all reachable BATMAN nodes.
        -   rt_table_unreach:
        -   rt_table_tunnel: default route if the client uses
            routing_class and a gateway is involved.

```{=html}
<!-- -->
```
-   Need to use the ip command (iproute2 package).
-   Makes use of advanced IP routing tools.
    -   batmand -i \| grep rt_prio
    -   ip rule
-   Allows you to separate client nodes from network routers.
-   BATMAN related routing tables are easy to flush because they're
    separate.
-   The normal routing table can be messed with without disturbing
    batmand's operation.

```{=html}
<!-- -->
```
-   batmand can announce that a node is a gateway to the Net by
    announcing how much downlink bandwidth it has available:
    -   batmand -g `<kbits>`{=html} `<network interface>`{=html}
    -   batmand -g 1500kbit eth0
-   Opens new tunnel interface gateX, automagically sets route.
-   Gateway interface must NAT traffic!
-   batmand v0.3.2 and newer will automatically call iptables to
    configure NAT.
-   Stop announcing a gateway:
    -   batmand -c -g 0
-   Announce a perferred gateway:
    -   batmand -c -p 1.2.3.4

```{=html}
<!-- -->
```
-   batmand must be configured to watch for announced gateways.
    -   batmand -r 1 `<interface>`{=html}
    -   Considers link quality and gateway class before using for
        downlink.
    -   Kept open as long as possible for statefulness.

```{=html}
<!-- -->
```
-   -   batmand -r 2 `<interface>`{=html}
    -   Considers link quality toward gateway.

```{=html}
<!-- -->
```
-   -   batmand -r 3 `<interface>`{=html}
    -   Considers link quality, but will drop tunnel for one with a
        better link it it sees one.

```{=html}
<!-- -->
```
-   -   batmand -r \[3-256\] `<interface>`{=html}
    -   Considers link quality, but will switch to another as soon as a
        new one has an X better transmission quality metric.

To reduce load if there are many clients, the batgat.ko module can do
all of this from kernelspace. batmand automatically looks for a loaded
batgat.ko module, and will use it if one is found. batgat.ko has been in
the kernel since v2.6.33. Can separately compile and install later
versions of the module if upgrading the kernel isnt' an option. v2.6.33
-\> batman-adv v0.2.0 ... v2.6.36 -\> batman-adv v2010.1.0 v2.6.37 -\>
batman-adv v2010.2.0 v2.6.38 -\> batman-adv v2011.0.0 Because it's at
layer 2, it doesn't use UDP for transport: raw 802.11 frames. Implements
a virtual network switch. Thus, doesn't care about anything higher than
it on the stack. You can not use IP if you want. Non-mesh clients are
easier to handle. Client roaming is easier. Easier to optimize traffic
flow.

Static hosts not running batmand must be explicitly announced - called
HNA. These announcements tell every batmand node that a network segment
/foo/ has non-clients available. The non-BATMAN network must have routes
back, possibly NAT. Example: web servers on 192.168.1.0/24:

`   batmand -c -a 192.168.1.0/24`\
`   batmand -c -a 192.168.1.0/24 -a 192.168.30.0/24`

Revoking an announcement:

`   batmand -c -A 192.168.1.0/24`\
`   batmand -c -A 192.168.1.0/24 -A 192.168.30.0/24`

No inherent security. Designed for community, not for privacy. Do
encryption higher in the stack. SSL, TLS, IPsec... use good Tor
security.

Can be found in the Debian repository. Available for many embedded Linux
platforms. Comes with OpenWRT.

```{=mediawiki}
{{Template:Byzantium}}
```
