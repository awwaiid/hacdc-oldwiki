# Assumptions

-   There is at least one mesh node.
-   Meshes are not built through collusion, i.e., each person setting up
    a node does not do so knowing that others are as well.
-   Mesh nodes are able to broadcast the existence of services they run
    ("I run a microblog!")
-   Services can be activated on a node (implying that their presence
    will be announced) or deactivated (implying that their presence will
    not be announced)
-   Mesh nodes continually listen for announcements of services from
    neighboring mesh nodeds
-   Mesh nodes maintain directories of services running on neighboring
    mesh nodes
    -   ...except when a service is designed to automatically federate
        with others of a like type (i.e., announcements of content from
        one will automatically be incorporated into cached announcements
        on the node)
-   Clients neither broadcast nor listen for service announcements
    -   Smartphones
    -   MP3 players
    -   Computers not running Byzantium

# Existing protocols

-   Avahi/ZeroConf/mDNS
-   Included in Porteus Linux
    -   Host can publish running services
    -   Host can be informed of services running on other hosts
    -   User does not have to specifically configure any of this
    -   Host admins may have to configure this
    -   Bindings for multiple languages are available
    -   Protocol in a nutshell:
        -   Ad-hoc DHS over IP multicast (224.0.0.251, port 5353/UDP)
        -   Each node has a resource record for each service
            -   SRV
            -   TXT
            -   PTR
            -   Types documented in /usr/share/avahi/service-types on
                Windbringer. File is part of Avahi on all systems.
                -   HAS NOTHING TO DO WITH dnsmasq!
    -   Resolution is done by the host running an Avahi implementation -
        broadcast a resolution request to the multicast domain and
        listen for a response
    -   Node needs to have its hostname set (machinename.local)
    -   Ignores point-to-point links by default. Add
        "allow-point-to-point=yes" in avahi-daemon.conf
        -   Do mesh interfaces have the POINTTOPOINT flag?
    -   wide-area functionality seems relevant to a mesh.
    -   deny-interfaces=eth0 in avahi-daemon.conf may be necessary to
        prevent mDNS traffic from going over gateways.
    -   avahi-daemon implements service announcement and listening, and
        interfaces with Avahi-enabled client apps.
    -   avahi-dnsconfd connects to avahi-daemon and keeps track of
        unicast DNSes detected.
    -   Read manage for avahi-daemon.conf!
    -   Will need an /etc/avahi/services/foo.service XML file for each
        service offered by a node.
        -   Manpage avahi.service(5) documents all required XML tags.
    -   Each mesh node will have a list of all mesh nodes it's heard
        from in recent memory. This can be used to build the directory
        of neighboring services.

```{=html}
<!-- -->
```
-   XMPP service discovery
    -   Message oriented, based on XML
    -   Jabber's protocol.
    -   [XEP-0030](http://xmpp.org/extensions/xep-0030.html)
    -   Used for discovering other XMPP entities/services implemented by
        XMPP servers.
        -   Could be used for discovering and federating apps running on
            other nodes (i.e., distributed microblog).

# Notes

-   KDE comes with something called Personal File Server, which allows
    arbitrary directories to be made available over HTTP(S?). It's
    Avahi-enabled. KDE is packagedwith Porteus. There's our file dump.
-   avahi-bookmarks allows the user to access HTTP resources with a web
    browser.
-   nss-mdns should be enabled in /etc/nssswitch.conf.

[Category:Byzantium](Category:Byzantium)
