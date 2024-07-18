-   OSI layer 2 (data link layer) protocol. Technically, it occupies
    layers 1-3.
-   Same layer as BATMAN-Advanced.
-   Used for packet radio by hams.
-   Can transport network layer protocols, including IP.
-   Not designed to support switching, though routers can probably be
    set up to handle it.
-   Support in the Linux kernel.
    -   v2.6.x: ax25.ko
-   Commonly used with three different communication specs:
    -   Bell 103 tones @ 300bps
    -   Bell 202 tones @ 1200bps
    -   G3RUH DFSK @ 9600bps
    -   These speeds are hard limits.
-   KISS encapsulates frames such that they can be send to a TNC for
    transmission. Derived from SLIP.
-   KISS is a serial protocol. Thus, multiple serial channels are
    required for multiple transceivers.
-   Other protocols fulfill the same function.
-   Either half or full duplex modes.
-   Three components
    -   Kernel module
    -   Configuration utilities
    -   Utility software
-   Each AX.25 network device ("port") must be configured with a unique
    callsign/SSID. Hostnames are probably not a good idea.
-   We would be using [soundmodem](Notes_on_Soundmodem) on
    top of AX.25.

Configuring AX.25 network interface:

` ifconfig sm0 hw ax25 <callsign> up`

` Create an entry in /etc/ax25/axports for the network interface:`\
`     sm0 <callsign> <speed in bps> <maximum packet length> <AX.25 window parameter (K)> <description of interface>`

Once this is done, you can treat it like any other network interface:

` ifconfig sm0 192.168.1.1 netmask 255.255.255.0`\
` route add -net 192.168.1.0 netmask 255.255.255.0 sm0`\
` route add default sm0`

[Using /usr/bin/call to test an AX.25
connection.](http://tldp.org/HOWTO/AX25-HOWTO/x1449.html)

[Wikipedia: AX.25](https://secure.wikimedia.org/wikipedia/en/wiki/AX.25)
[About AX.25](http://www.tapr.org/pub_ax25.html) [Linux AX.25
Howto](http://tldp.org/HOWTO/AX25-HOWTO/)

[Category:Byzantium](Category:Byzantium)
