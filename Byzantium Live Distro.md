## Description

We are building a portable live Linux distribution based on [Porteus
Linux](http://porteus.org/). Porteus itself is a fork of Slax that has
been brought up to date with Slackware 13.37 and uses a 2.6.38.8 kernel.
Porteus can use binary packages from Slackware 13.37 after conversion to
Porteus' native format.

## Code Repositories

[Github page](https://github.com/Byzantium/Byzantium)

[Subversion repo for Porteus
packages](http://svn.virtadpt.net/byzantium/)

## Goals

-   Make it possible for people in emergency situations to communicate
    and collaborate.
-   Make it possible for people in areas where the communications
    infrastructure is compromised to communicate and collaborate.
-   Provide services to support communication and collaboration.
-   Will be secure out of the box.
    -   Best practices for isolating running services will be followed.
    -   Best practices for configuration web applications will be
        followed.
    -   Least privilege will be followed wherever possible.
-   Will be extensively documented.
    -   A Creative Commons-licensed book will be made available with the
        Byzantium distribution as well as separately
    -   Will explain the finer points of setting up a mesh, as well as
        accompanying projects (such as dialup gateways and long-haul
        transports).
    -   Will be translated into as many languages as possible.
-   Widely compatible.
    -   Users need to be able to boot their desktop/laptop/netbook from
        Byzantium media and set up a node.
    -   As little fiddling with network drivers as possible.
-   Rapidly deployable.
    -   Users need to be able to configure their Byzantium node rapidly
        and with little assistance.
    -   Emergency situations.
    -   Control panel aims to be as self-documenting as possible.
-   Aims to protect confidentiality of traffic.
    -   Opportunistic IPsec?
    -   All services default to SSLv3/TLSv1.
-   Aims to protect integrity of traffic.
    -   SSLv3/TLSv1.
-   Meshes should grow without the direction of a central authority.
    -   Anyone can set up a mesh node.
    -   Anyone can set up services on the mesh.
    -   Services packaged by default can be managed (activated and
        deactivated) from the control panel
    -   Services packaged by default will come preconfigured with secure
        defaults and a mobile-friendly theme where appropriate.
    -   This is a calculated risk. The threat models of Tor and I2P take
        this into account as well.
-   Byzantium nodes need to be rapidly clonable.
    -   One copy of the live distribution needs to become many on
        demand.
    -   Nodes need to be clonable without taking the node down.
-   Persistent storage has to be an option.
    -   Built into [Porteus](http://porteus.org).
        -   save.dat file
        -   removable media
        -   media Porteus is installed to
-   Dependencies will be automatically managed by the control panel.

## Features

-   Can support multiple mesh routing protocols.
-   Modular configuration back end.
-   Multiple pre-packaged, pre-configured web applications for
    communication and collaboration.
-   All services can be independently activated and deactivated.
-   Aims for security by default.
    -   Services are not active unless explicitly triggered.
    -   Services are configured using best practices for security.
    -   Services support strong cryptography by default.
-   Supports gatewaying from the mesh to the Net over a live connection.
-   Supports persistent (encrypted) storage on demand (not default).
    -   Note: When creating a save.dat file under Porteus, if the drive
        it's on is formatted FAT-32 or less, the file MUST be \<1024MB,
        else, the /linuxrc script that forms the core of the distro will
        pretend that it can't locate the file, regardless of where you
        put it. This drove me bonkers for two months!
        -   If possible we should try to make save.dat a second
            partition on the thumbdrive (ala casper-rw for ubuntu
            liveUSBs) there are some big benefits to this:
            -   it makes it harder for windows users to see that there
                is a second partition in case big brother decides to
                inspect the contents of all thumbdrives.
            -   it means we won't have to worry about file size limits.

### ToDo

-   ~~[Node Control Panel](Byzantium_Live_Distro_CP)~~ -
    DONE!
-   ~~[Captive
    Portal](Byzantium_Live_Distro_Captive_Portal)~~ -DONE!
-   [Provided Services
    Announcement](Byzantium_Live_Distro_Service_Announce)
-   [Wiki](Byzantium_Live_Distro_Wiki) - suspended notion
-   ~~[Microblog](Byzantium_Live_Distro_Microblog)~~ - DONE!
-   [File dump/Twitpic
    work-alike](Byzantium_Live_Distro_FileDump)
-   [Voice chat/telephony server](Byzantium_Live_Distro_Tel)
-   ~~[Clientless web chat](Byzantium_Live_Distro_Chat)~~ -
    DONE!
-   ~~[Blog](Byzantium_Live_Distro_Microblog)~~ - see
    Microblog
-   ~~[EtherPad-like thing](Byzantium_Live_Distro_EPad)~~ -
    DONE!
-   [Streaming media
    server](Byzantium_Live_Distro_StreamingMediaSrv)
-   [HTTP caching proxy](Byzantium_Live_Distro_WebProxy)
-   [Tor](https://www.torproject.org/)
-   [IPset](IPset)

Pick a web server to host applications:

-   Converted the Apache, apr\*, and PHP packages of Slackware v13.37
    into Porteus modules. They Just Worked(tm).

~~We need to figure out how to properly install the control panel app on
a new system. The process should be as pythonic as possible.~~

We need to figure out how to bundle the already configured and populated
MySQL databases for the web apps!

-   Packaging them into a module and activating it didn't work.
-   ~~Write a script that detects the presence or absence of
    /var/lib/db/\*/ and restores them from .sql dumps at boot-time.~~

[The Doctor's to-do list](The_Doctor's_to-do_list)

## Packages built for Byzantium

-   babeld - For great mesh routing.
-   batman-adv - Kernel module which implements mesh routing at OSI
    layer 2. We may not use it but it's there if we need it.
-   batctl - Utility for configurating and manipulating batman-adv.
    -   Dependency of batman-adv.
-   olsrd - from olsr.org
-   ahcpd - For configuring mesh nodes that don't want to use the random
    RFC-1918 IP address generator.
-   CherryPy - Python module that implements a fast multi-threaded HTTP
    (web application) server.
    -   Without this, there is no control panel.
-   pySetupTools - Required for installing some Python modules.
-   Mako - Python HTML templating system.
    -   Dependency of the control panel.
-   MarkupSafe - Python library that implements a Unicode string that is
    aware of HTML escaping rules and does automatic string escaping.
    -   Dependency of Mako.
-   Git - Converted Slackware v13.37 package.
    -   Necessary for checking code out and into Github.
-   Curl - Converted Slackware v13.37 package.
    -   Dependency of git.
    -   Note: To make git work without "error setting certificate verify
        locations" errors, you need to run the following command as the
        root user: git config --system http.sslcainfo
        /usr/share/curl/ca-bundle.crt
-   rrdtool - Used by traffic_stats.sh to monitor network traffic and
    build graphs.
-   sqlitebrowser - Used to develop SQLite database schemas and debug
    database access code. Will not be in OS release.
-   ~~nginx - Lightweight, fast HTTP(S) server. Much more lightweight
    than Apache, at any rate. Custom build for Byzantium.~~
    -   Enough!
-   gd - Dependency of PHP.
    -   Used for server side image manipulation.
-   libmcrypt - Dependency of PHP.
-   icu4c - International Components for Unicode. i18n dependency of
    PHP.
-   openldap-client - Dependency of PHP to make it compile. Not pleased
    by having to package it, but it won't build without it.
    -   Can we get away with not having it because I didn't have to
        compile it for Apache? Let's try it!
-   php - Converted Slackware v13.37 package.
-   httpd - Apache v2.2.17. Converted Slackware v13.37 package.
    -   ..and then stuff started working!
-   apr-util - Converted Slackware v13.37 package.
    -   Utility used for compiling Apache modules.
-   apr - Converted Slackware v13.37 package.
    -   Package used for compiling Apache modules.
-   t1lib - Converted Slackware v13.37 package. Used for font
    manipulation.
-   pcre - Converted Slackware v13.37 package.
    -   Perl Compatible Regular Expression library.
    -   Unicode aware for i18n support. status.net requires this for
        basic functionality, whcih means that we get i18n for free.
-   ~~Firefox v6.0.2~~
    -   Do not use! i_can_haz_firefox.sh builds a package with bad
        symlinks. Haven't bothered to fix it so far.
-   node - An event-driven I/O server-side JavaScript environment based
    on V8. (from website and wikipedia).
    -   Required by Etherpad-lite.
-   dnsmasq - All-in-one DHCP and caching DNS server.
    -   Much easier to work with in circumstances like this than ISC
        BIND or even djbdns.
-   ipcalc - Command-line IP networking calculator. Will be needed by
    the control panel shortly.
    -   Removed the CGI-BIN script from the package when it was built.
-   ngircd - Lightweight IRC server.
    -   Back-end for web chat application.
    -   Somehow we need to figure out a way to make them automagically
        hook together into an IRC network. But that can wait.
-   zope.interface - Required by Twisted.
-   Twisted - Required by qwebirc.
    -   Satisfies the clientless web chat requirement.

## Links

Place links relevant to any part of the process of making the live
distro here.

[Porteus Official Website](http://porteus.org/)

[Processes for building Porteus
packages.](Processes_for_building_Porteus_packages.)

[Process for manually installing
Byzantium.](Process_for_manually_installing_Byzantium.)

[Byzantium 101](Byzantium_101) - How to get yourself set up.

[Hardware compatibility list](Hardware_compatibility_list)

[User Feedback on Byzantium
0.1a](User_Feedback_on_Byzantium_0.1a)

[Handy generic git notes](Git_Notes)

## Timeline

-   .....uhh....
-   20 October 2011 - Live demo, presentation, and networking at
    [ContactCon](http://contactcon.com/).
-   12 May 2012 @ 1400 EST5EDT: Project Byzantium presentation at
    [CarolinaCon](http://carolinacon.org/).
-   13-15 July 2012 @ TBA: Project Byzantium presentation at [HOPE
    Number Nine](http://www.hopenumbernine.net/).

## Stuff

~~Need to edit /etc/hosts, add 'byzantium' to 127.0.0.1 so that the web
server will start up.~~

[Mobile devices and IPv6.](Mobile_devices_and_IPv6.)

~~[DNSmasq](http://thekelleys.org.uk/dnsmasq/doc.html)~~

-   ~~One nice thing about DNSmasq is the -H option, for additional
    /etc/hosts-like files. We could use those to cache the IP addresses
    of other Byzantium nodes, and then query them for the services they
    run.~~
    -   Hostnames are IPv6 addresses of nodes.
        -   ifconfig wlan0 \| grep inet6 \| awk '{print \$3}' \| sed
            's/:/-/g' \| sed 's/\\/64\$//' \| sed
            's/\$/.byzantium.mesh/' ==
            fe80--21c-bfff-fe35-84c2.byzantium.mesh
    -   ~~Put IP addresses and hostnames in /etc/hosts.mesh.~~
    -   This could also be used for status.net federation and IRC
        network construction.
-   ~~Move the **server=/byzantium.mesh/...** line into the generated
    DNSmasq include file?~~
    -   ~~Make the '...' the mesh interface's IP address?~~

```{=html}
<!-- -->
```
-   ~~Consulted with an expert about IP addressing. At first scratch, it
    might be a good idea to stick wtih pseudo-randomly chosen 10/8's.
    Configure the mesh interface for the .1 and give the clients
    .2-.254. I'll re-work the control panel to do that.~~

Need to account for [APIPA](http://www.webopedia.com/TERM/A/APIPA.html)
addressing in the initial set of routes.

-   ~~Added for the purpose of making networkconfiguration.py [detect
    whether or not the proposed IP address for the mesh interface is in
    use](http://www.cyberciti.biz/faq/linux-duplicate-address-detection-with-arping/).~~
    -   Byzantium does this now. It works like a champ.

List of public DNSes that we may wish to fall back upon in the event a
node is made into a gateway:

-   [Google Public DNS](https://code.google.com/speed/public-dns/)
-   [Public DNS
    servers](http://www.tech-faq.com/public-dns-servers.html)
-   [OpenDNS](https://www.opendns.com/)

[Packaging NPM.](Packaging_NPM.)

[Finding neighboring mesh
nodes](Finding_neighboring_mesh_nodes)

[Fully distributed services](Fully_distributed_services)

## Stuff to consider for later

-   Consider adding [Iodine](http://code.kryo.se/iodine/) to Byzantium
    to help tunnel gatewayed traffic onto the Net.
    -   Gateway nodes in hostile areas could use Iodine to tunnel
        traffic out.
    -   Gateway nodes in non-hostile areas could accept Iodine
        connections to help less fortunate nodes evade censorship.
-   Consider adding (http\|proxy)tunnel with simplified usage of some
    kind to allow encapsulating arbitrary data streams in http streams.
-   Firewall evasion aids that will work well even in established
    internet censorship systems?

```{=mediawiki}
{{Template:Byzantium}}
```
