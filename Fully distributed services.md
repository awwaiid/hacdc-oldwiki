# Assumptions

-   Each service assumes at the outset that it's the only one in
    existence.
-   Each service periodicially probes for the existence of other
    services.
-   If two services of the same type find one another, they'll link up
    and synchronize.
-   If three services of the same type exist, but A knows about B and B
    knows about A and C, B and C will synch, and then A and B will synch
    the content of B and C.

# Problems

-   Service foo wants to search for services of the same type on other
    nodes that may or may not exist.
-   Service foo wants to use another piece of software running on the
    same node to search for other instances.
-   The datastore backing service foo isn't capable of synchronizing on
    its own with others of its type.
-   The datastore backing service foo cannot grow without bound.
-   Service foo isn't designed to have a web front end, but needs one.
    -   Service foo needs a plug-in that exposes the service over HTTP.
-   Each instance of service foo needs a unique identifier.

# Nonspecific solutions {#nonspecific_solutions}

-   Designate a service on the node that maintains a catalogue of other
    services running on the node and make them available on the local
    network.
-   Designate a service on the node that listens for announcements of
    other services on neighboring nodes.
-   Designate a service on the node that watches for new instances of
    the same service to appear.
    -   The monitoring daemon checks to see if the service announcement
        has already been picked up.
    -   The monitoring daemon contacts the service's administrative
        interface and executes the necessary commands to inform it of a
        new instance to contact.
    -   Service foo contacts the new instance and initiates
        synchronization.

I guess I'm talking about ejabberd and avahi here. Maybe with some glue
code and the odd exposed administrative interface.

[Category:Byzantium](Category:Byzantium)
