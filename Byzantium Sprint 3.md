**Sprint Dates: Fri 29 April 2011 - Sun 1 May 2011**

## Goals

-   Revisit sprint 1
    -   Gather metrics to determine efficiency of protocols.
        -   Sizes of routing protocols' packets.
        -   Number of packets per second/minute/hour transmitted by each
            protocol.
        -   Average amount of traffic during normal operation.
    -   Determine how many nodes can participate in a mesh before
        responsiveness or bandwidth begin to degrade.

## Stuff To Bring

-   anything that can run babel
    -   laptops/netbooks
    -   desktops with wireless cards
    -   openwrt compatible routers (if you're feeling lucky/adventurous)

## Homework

-   install babeld on every machine you plan to bring to the sprint
-   \[optional\] install a kernel with support for batman-adv on the
    same machines (it's built into the kernel after version 2.6.38+ ) or
    build the modules separate from the kernel
-   readup on route and ip/ifconfig commands in linux
-   readup on ipv6

## Experiments

-   network density
    -   hypothesis: if the nodes are positioned very densely, then the
        network quality will degrade.
    -   test: position nodes at increasing densities starting with
        evenly distributed nodes at their maximum effective range, and
        run tests to measure network quality at each level of density.

## Suggestions

-   Babeld install guide
-   LiveCD guide
-   Twitter hashtag #hacbyz ??

```{=mediawiki}
{{Template:Byzantium}}
```
