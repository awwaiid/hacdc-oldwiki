## Summary

The problem: <http://en.wikipedia.org/wiki/Zooko's_triangle>

## Suggested Reading {#suggested_reading}

[CJDNS](https://github.com/cjdelisle/cjdns) - CJDNS == CJD's Network
Suite. it does not contain a ddns system yet. it currently uses plain
old DNS within the darknet. `<s>`{=html}True DNS (i.e., port 53/UDP)
with a DHT. I've played around with it a little and it seems to do what
it says on the tin.`</s>`{=html}

[Distributed Hash Table
(DHT)](http://en.wikipedia.org/wiki/Distributed_hash_table) - Wikipeda
page on DHTs. Has a decent overview of how they work.

[Bamboo DHT](http://www.bamboo-dht.org/) - A DHT implementation in Java.

[UpRight](http://code.google.com/p/upright/) - A library for building
fault-tolerant distributed systems. Incorporates innovations from modern
solutions to Byzantine fault tolerance.

[Gossip
Protocols](https://secure.wikimedia.org/wikipedia/en/wiki/Gossip_protocol):
Nodes in a network pseudorandomly select peers to exchange information
with. Could be useful for distributing the contents of a DHT-based DNS
implementation within a mesh network.
[Kademlia](https://secure.wikimedia.org/wikipedia/en/wiki/Kademlia) has
an interesting way of handling the entry distribution problem. When
inserting an entry, it iterates through the table to find suitable nodes
in the network to hold that entry and propagates it to them as well as
saving a copy locally.

[CoDoNS
paper](http://conferences.sigcomm.org/sigcomm/2004/papers/p292-ramasubramanian1111.pdf) -
A very good paper from 2004 on a distributed DNS alternative. It still
relies on centralized domain name registration. [CoDoNS main
page](http://www.cs.cornell.edu/people/egs/beehive/codons.php) - It
appears that CoDoNS is operational and running on PlanetLab.
Unfortunately, I don't see any code. I see no reason why we can't simply
hijack their design.

[Tutorial on DNS and
DNSSEC](http://www.surfnet.nl/Documents/DNSSSEC-web.pdf)

[Intentional Naming System](http://nms.lcs.mit.edu/projects/ins/) - "INS
is a new naming system intended for naming and discovering a variety of
resources in future networks of devices and services. It has the
following interesting characteristics about the way it names resources
and the way names are resolved."

```{=mediawiki}
{{Template:Byzantium}}
```
