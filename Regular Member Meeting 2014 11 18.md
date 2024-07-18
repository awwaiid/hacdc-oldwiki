`{{TOCright}}`{=mediawiki}

## Time and Location {#time_and_location}

:   November 18, 2014
:   Called to order at \_\_\_20:00\_\_\_ by \_\_\_Dan Barlow\_\_\_\_
:   Members present: Don, Evan, Phil, Enrique, Zack, Travis, Katie, Ben,
    Dan
:   Members remote: Chris, Jamie, Celeste, Mirage
:   Others present: Bobby, Christine

```{=html}
<!-- -->
```

:   [Quorum](Quorum)?

    :   Quorum met? Yes

## Approval of Previous Meeting's Minutes {#approval_of_previous_meetings_minutes}

[Regular Member Meeting 2014 10
14](Regular_Member_Meeting_2014_10_14) Approved.

## Recognition

Dan Barlow - CNC machining on behalf of HacDC.

## Director Reports {#director_reports}

### President's Report {#presidents_report}

Phil's grounddrone Kickstarter is going well and is probably going to
make it.

### Vice President's Report {#vice_presidents_report}

Please direct all design inquiries to the members list. Thisservers as a
notice of plans not a binding policy. It should be discussed outside of
the meeting.

-   the church has signed up for Comcast business class (75/15)! Eta
    \~50 days.
-   the church also has the existing 3x3 ethernet for another year.
-   new network infrastructure is actively in progress.
    -   wired connections
    -   chaos VPN
-   currently running shell server in the space (email admin@hacdc.org
    for an account)
-   soon to be running transparent apt proxy. It will intercept almost
    all unencrypted requests for Debian, Ubuntu, and mint packages and
    store the results locally. This will be paired with mirroring of
    repos done during off hours to (midnight to 6am). Meaning you will
    be able to run updates in less than a decade and without changing
    settings. There will be non-debian-based distros supported as well.
    There will also be locally accessible rsync, ftp, and http repos for
    those that want to skip the proxy.
-   there will not be any hosting of websites to the interwebs avaiable
    until after comcast is installed and broken in, and really we
    shouldn't be hosting anything to the internet for various reasons.
-   there will be tos for all the communal services. Mostly just the
    usual disclaimers of liability and various forms of "don't be a
    dick", things we shouldn't do. They will not in any way assert
    ownership over anything passing though or residing on the servers.
    \*\*\*Discus on members list!\*\*\*
-   hardware required for remaining servers:
    -   RAM : DDR2 FB-DIMMs, 2GB or larger modules.
    -   HDD : all SATA, faster is better but 3Gb/s is enough. 1TB or
        more.
        -   2.5": 8+
        -   3.5": 10+
    -   Sound absorption: Any fiberglass furnace filters would be
        appreciated. They will be used as air filters on a custom server
        muffler. Any \~19" quiet fans would also be apreciated.

### Treasurer's Report {#treasurers_report}

Here is the financial summary spreadsheet for October 2014:
![](HacDC_Financials_2014_10.pdf "HacDC_Financials_2014_10.pdf"). We
gained Don Jones as a new member. We lost Blake Wintermute, Christopher
Hermance, Harry Detwiler, and Abraham Abbas. We have 41 dues-paying
members in good standing and 6 dues-waived members.

#### Project Awesome {#project_awesome}

Here is the Project Awesome spreadsheet for October:
![](HacDC_PA_Projects-2014_10.pdf "HacDC_PA_Projects-2014_10.pdf"). We
continue to have to dip into savings to pay our rent, so no dividend
this month. :(

Project LASER is in suspended status and needs to report this month to
avoid cancellation. Project SPACECAM should technically have been
cancelled but I believe its liaison made a September report that was
unrecorded in the minutes so it will have another week to fill in the
minutes before its status is re-evaluated.

Project SPACECAM is cancelled.

### Secretary's Report {#secretarys_report}

I installed that door handle that I bought two months ago for the Pirate
bathroom. Otherwise, haven't done much.

### Director-at-Large Reports {#director_at_large_reports}

Travis ++++++ HackDC issue has been mostly resolved. They have agreed to
cease use of the "HackDC" name and stop using the domain name by the end
of the year.

Looking into ways of bringing money into the space to help with our
finances. We need volunteers to keep the website up to date.

We need to show appreciation to Julia for her legal help with the
"HackDC" issue. Ben will write a thank you letter.

Zack ++++++++ I participated in the UCP Life Labs Designathon two weeks
ago where my team won the award for best prototype, a 3d printed
bathroom stall latch for those with limited dexterity or strength
[Technical.ly
DC](https://technical.ly/dc/2014/11/12/dcs-enabled-design-athon-promotes-universal-design/).
Life Labs is UCP's in-house technology initiative and they'd never heard
of HacDC. I talking with them about how we locally (HacDC, LifeLabs,
whomever else) can form a partnership to develop new technology and
products to help those with disabilities. Regardless, I hope to get them
all to visit us to see our space and talk about the problems they'd like
help with...

## [Project Awesome](:Category:Project_Awesome) Reports {#project_awesome_reports}

### Project LASER {#project_laser}

Officially reported that he hasn't been doing anything.

### Project BYZANTIUM {#project_byzantium}

No change.

### Project KITBUILD {#project_kitbuild}

### Project SUPPLIES {#project_supplies}

Reimbursed SEM filament. Otherwise, not much happening.

### Project EXPANSION {#project_expansion}

Still running a deficit, still have tools in the basement to setup.
Nothing spent.

### Project SPACECAM {#project_spacecam}

Cancelled!

### Project HAMRADIO {#project_hamradio}

## Member Reports {#member_reports}

Phil S. has made no progress this past month because of apartment
troubles.

Enrique is looking for help with planning another cryptoparty for
January 20th. Please contact him if you can help.

Don: Pat and Don have been active with the HAM radio station. They've
participated in some world wide contests. Trying to reach out to more
HAMs in the area to get the word out about HARC. Offered to look into
getting grants for us.

### mirage335

New server ready for delivery to HacDC. Emphasis will be availability
and uptime. Suitable for build servers, databases, IRC bouncers, etc.
Will announce on members when plugged in at HacDC. Normal users get
shell accounts on the host system, with privileges to launch OpenVZ
guests. Acceptable use may be enforced through resource limits or loss
of remote credentials. See
[:Category:Servers](:Category:Servers) and
[HacDC-shared-m335-1](HacDC-shared-m335-1).

Full Gentoo/Funtoo OS tarballs with KDE and various customizations
preinstalled now automatically generated and available for unpacking on
fresh computers.

[NetPLC](https://github.com/mirage335/NetPLC) finished. Low-cost,
ultra-rugged, dual Ethernet/WiFi/XBee network connectivity, no
dependency on external computer, and supports many peripherals. Intended
to replace existing OccupancySensor, among other uses. [PCB
photo](https://raw.githubusercontent.com/mirage335/NetPLC/master/productionStatic/cad/NetPLC/Render.png).

RostockMax has been wired for 24V heated bed. Need to add connectors, a
better heatsink, and enable higher temperatures in firmware.

Sincere apologies for not getting to the space sooner and helping with
Phil Walker's CNC milling project.

## Old Business {#old_business}

## New Business {#new_business}

Vote to approve \$100 gift to each of our two security guards: Passed.

## New Members {#new_members}

Christine Axsmith: Very active in HARC. She has helped us out a ton with
publicity. Approved.

Pat: Also active in HARC. Thinks we're cool. Approved.

## Adjournment

Adjourned at \_\_\_21:06\_\_\_\_ by \_\_\_Dan B\_\_\_\_\_

[Category:Meeting Minutes](Category:Meeting_Minutes)
