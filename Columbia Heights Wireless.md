The discussion list for this project is
[neighborhoodwireless@hacdc.org](http://hacdc.org/mailman/listinfo/neighborhoodwireless_hacdc.org).

# Proposal

This project, in its current form, will be announced at the June 17
member meeting

The Columbia Heights Wireless Project aims to provide wireless access to
the Internet to HacDC's neighbors in Columbia Heights. This project, in
three phases, will help test different technologies and methods for
providing this access as well as building local neighborhood IT
infrastructure.

## Phase One: Rewire St. Stephen's Church {#phase_one_rewire_st._stephens_church}

St. Stephen's Church is used by many community organizations, each of
which are responsible for obtaining their own Internet and Telephone
service.

There are potential costs savings for the church and its tenants to
upgrade the IT infrastructure of the facility, allowing the church and
tenants to share common Internet access and Telephone service.

After assessing the needs of the church, its tenants and occasional
guests from out of town, HacDC will draft a plan to re-wire the
telecommunications and networking infrastructure of the church. Prior to
consultation with the tenants (this consultation meeting is scheduled
for June 13) this phase has the following goals:

-   Replace the IT wiring infrastructure of the church.
    -   Remove all "dead cables" from the exterior and interior of the
        church
    -   Run house cable to church office and basement and other key
        areas of the church, reducing need for cabling on the outside of
        the building and/or expansive cable runs within the building
    -   Replace the demarc with more modern equipment (should be done by
        Verizon)
    -   Install wired outlets in offices and other places they may be
        necessary
    -   Run wire to ares where wireless access points may be deployed
-   Provide building wide Internet access
    -   Replace multiple DSL lines with one solid, very high speed
        internet connection
    -   Install building router to handle and segregate internet
        connection
    -   Provide church and its tenants with private subnet
    -   Provide wired network access to tenants who require it
    -   Provide infrastructure for building-wide wireless network
-   Build church wireless network
    -   Provide private wireless networks to tenants who require it
    -   Provide public wireless network for church and tenant guests,
        etc.
-   Integrate church security system into building wide network
    -   Replace existing church security and entry system (see also
        [Physical_Access_Control_Project](Physical_Access_Control_Project))
    -   Provide method for tenants to view persons outside the building
        and allow building access

## Phase Two: Provide Wireless to the Housing Project Surrounding the Church {#phase_two_provide_wireless_to_the_housing_project_surrounding_the_church}

Once the hurdles of providing wireless to a given area (the church) are
handled, the goal is to extending the public church network to the
housing project which surrounds the church. The goals of this project
are relatively less complex:

-   Provide public wireless accessible in all rooms of the development
    around the church
-   Work with community members on best methods for building and
    supporting a public wireless network
-   Deploy specialized equipment on the roof of the church and possibly
    on the development property
-   Work out technical challenges present in extending the public
    network beyond church immediate line-of-sight

## Phase Three: Provide Wireless to Neighborhood Buildings {#phase_three_provide_wireless_to_neighborhood_buildings}

-   Provide public wireless available throughout Columbia Heights
-   Attract public and government support to make such a public wireless
    network viable and sustainable

------------------------------------------------------------------------

# Implementation

A meeting was held with the church coordinator and a few tenants on
Friday, June 13th, to assess the needs and scope of the project. As
outlined above, it looks quite viable, with a few considerations:

All the tenants we met with are currently using some form of DSL or
dialup access. They'd all be happy with a plain vanilla shared
connection, using whatever sort of upstream we find appropriate. One
tenant (CISPES) uses VoIP phones, and at least one other (Brainfood)
uses Skype heavily, so QoS factors (latency, jitter) are important.

Telephone needs were also discussed. Most tenants have POTS lines into
their spaces, with a few using cellular phones exclusively, and one
using VoIP, as mentioned above. There's at least one FAX line. The POTS
customers weren't averse to going VoIP at some point in the future, as
long as they can keep their existing numbers.

As for security, it'd be nice to distribute front-door video to each
space and provide tenants with an intercom and a way to buzz guests into
the building. This would let the church go down to a nighttime guard
only, saving the cost of the daytime guard.

In my (Nate B) professional judgment, the voice and video projects
should be considered separately from the data project, except where it
would be wise to combine cabling installation. Running a PBX is a wholly
separate set of administration skills and maintenance considerations.
Likewise, assembling a video distribution network and interfacing with
the door lock system is a separate job, only related because it also
involves running wire in the building.

Since inexpensive baluns are available to transmit video over a single
pair of UTP, a single additional run of Cat-5 to each space should be
adequate to support the access project. Since wire is cheap compared to
labor (even volunteer labor, trust me!), I don't think there's any such
thing as pulling "too many" drops into each space. Leave the unused ones
coiled and tagged in the ceiling if need be, but run extra cable now.

The next steps for the first phase, then, are as follows:

-   Formally present this project at the next HacDC meeting and get
    member approval and buy-in.
-   Obtain, or draw, floor plans of the building. Scope out good cable
    routes, be they inside walls, above drop ceilings, or held in
    surface wiring raceways.
-   Perform a site-survey to ascertain the RF propagation
    characteristics of the church building. Plaster lath walls are
    notorious for eating wifi signals.
-   Determine whether it's appropriate to do everything as a home-run to
    a single closet, or to have "vertical" house-cables that appear on
    each floor. (I like home runs. --Nate B.)
-   Pick a location for a wiring closet. In addition to patch panels, it
    should be able to hold (and provide cooling for) a moderate amount
    of infrastructure gear: A DSL modem, a router, an Ethernet switch or
    two, a midspan PoE injector, a video distribution amplifier, a small
    PBX, and whatever lock control system gets built. A bit of room for
    growth would be good, to allow for scope creep.
-   Solicit donations of wire, jacks, accesspoints, and the above
    infrastructure gear.
-   Evaluate potential upstream connections. Nick mentioned that
    point-to-point microwave access may be available in our location.
    Consider multi-homing the network, if financially practical.
-   Contact community members who'd be interested in helping the project
    and learning to maintain and administer the network.

[Category:Proposed Projects](Category:Proposed_Projects)
