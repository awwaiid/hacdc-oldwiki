The goal of this project is: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

## Implementation

### Diagram

\[ Device \]\<--- ? Wire Language ? ---\>\[ Driver \]\<--- ? Message
Format ? ---\>\[ XMPP server \]\<--- ? Message Format ? ---\>\[ XMPP
client \]

### Wire Language {#wire_language}

The wire language will be device-specific. Devices can speak any
language they want as long as someone has written a "driver" to
translate that language to/from the chosen format that will
transmitted/received over XMPP.

[JeeMesh](JeeMesh) protocol is being worked on to extend the
[RF12](http://cafe.jeelabs.net/sw/library_-_rf12/) frame network to
support datagrams up to 1022 bytes over a mesh of
[JeeNodes](http://cafe.jeelabs.net/lab/jn5/). The goal is to support up
to 4 hop meshes of up to 26 nodes plus 4 servers/gateways each.

### Message Format {#message_format}

Since XMPP messages are already XML, I think it makes sense to use an
XML vocabulary as the message format.

Possible candidates would be:

-   [EEML](http://www.eeml.org/): Extended Environment Markup Language
    -   Very simple
    -   Widely deployed.
    -   Not a true standard
    -   No namespace
-   [SensorML](http://en.wikipedia.org/wiki/SensorML): Open Geospatial
    Consortium's Sensor Markup Language
    -   More complex
    -   Possibly not an open standard
    -   Not as widely deployed.

Based on my quick research I'm not entirely pleased with either one. A
third option to consider would be designing our own XML vocabulary.

The reason for having a standard message format is to encourage
collaboration and interoperability between devices and client
applications. Use of the message format would be opt-in.

Discuss your ideas!

[Category:Proposed_Projects](Category:Proposed_Projects)
[Category:Previous_Projects](Category:Previous_Projects)
