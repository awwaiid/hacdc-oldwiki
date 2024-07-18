JeeMesh is a mesh protocol in development at HacDC to extend the
[JeeNode](http://cafe.jeelabs.net/lab/jn5/)
[RF12](http://cafe.jeelabs.net/sw/library_-_rf12/) low power wireless
protocol for mesh routing, packet fragmentation, and (more) reliable
delivery.

RF12 has the following limitations:

-   up to 30 nodes (typically 26 nodes and 4 servers/gateways)
-   MTU 66 bytes
-   range of about 30' to 50' at 915mhz

We intend to extend these limits somewhat:

-   MTU 1023 bytes
-   range up to 200' by routing through up to four nodes on a mesh

A 16 bit header is added using the first two bytes of the RF12 packet
data as follows:

-   5 bits for original source node
-   5 bits for final destination node
-   2 bits for ttl
-   4 bits for fragment sequence

This allows us to reconstruct 1024 byte JeeMesh packet from 16 64-byte
packet fragments. We further add another 8 bit header to the first
packet fragment, reducing the MTU to 1023 bytes:

-   4 bits number of fragments
-   4 bits packet type

[Category:Previous_Projects](Category:Previous_Projects)
