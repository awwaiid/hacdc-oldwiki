## Functions

-   Transparent caching proxy for package management traffic (apt, yum,
    etc)
-   Mirroring and timeshifting of distribution repositories to offset
    bandwidth usage.

# Access

This machine is just for caching package management traffic and
rehosting it. There are no user accounts available on this machine.

## Caching Proxies {#caching_proxies}

-   apt - via apt-cacher-ng - <http://cthulhu:9999>
-   web

# Admin Notes {#admin_notes}

## Xen Config {#xen_config}

-   CPU: 2
-   RAM: 2048MB
-   Disk:
    -   / - albert/cthulhu-disk
    -   swap - albert/cthulhu-swap
    -   cache - albert/proxy

# Software

## Squid

-   **Not configured**
-   Caches:
    -   Packages for:
    -   Debian/Ubuntu/Mint
        -   does not cache Packages\* files - prevents stale package
            lists
    -   Installer and live ISOs for:
        -   Debian/Ubuntu/Mint
        -   Fedora/Centos
        -   Slackware/Slax/Porteus
        -   Gentoo/Funtoo
            -   Will coordinate with mirage

[Category:Infrastructure](Category:Infrastructure)
[Category:Servers](Category:Servers)
[Category:VMs](Category:VMs)
