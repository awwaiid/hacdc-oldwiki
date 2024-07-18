## Description

Share services running on a network with clients and other supernodes.

Each mesh node maintains a list of all of the services and web apps it's
running. That list is used to populate the service directory page of
each node. The trick lies in telling the other mesh nodes what you
happen to be running and what IP address it is. This is where being able
to announce what services you run to other mesh nodes will come into
play. We are using dns-sd via mdns/avahi/bonjour to announce services.
The "\_\_byz\_\_.\_tcp" service type is being used to distribute
services started by byzantium.

This is simplified somewhat by the fact that the mesh nodes' network IP
addresses are all 192.168/16.

## Suggestions

### Contents

-   see dns-sd spec

### Method

-   dns-sd via mdns/bonjour/avahi

### Format

-   see dns-sd spec

```{=mediawiki}
{{Template:Byzantium}}
```
