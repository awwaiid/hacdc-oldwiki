-   By default, access is denied.
-   Traffic destined for anywhere but to a select few services (i.e.,
    TCP or UDP ports) is blocked by the local firewall.
    -   NTP
    -   IMAP(S)
    -   POP(S)
    -   OpenVPN
    -   IPsec
-   HTTP(S) traffic caught by firewall, redirected to the mesh node's
    client IP and port.
    -   **iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 80 -j
        REDIRECT --to-port 31337**
    -   **iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 443 -j
        REDIRECT --to-port 31338**
        -   We'd have to add an extra bit in there **--destination
            10.x.x.1**
-   A web server listening on the redirect ports (31337/TCP and
    31338/TCP) uses URI rewriting to point everything to a special URI:

` <VirtualHost *:31337>`\
` RewriteEngine On`\
` RewriteRule .* `[`https://byzantium.mesh/`](https://byzantium.mesh/)` [R,L]`\
` ``</VirtualHost>`{=html}\
` `\
` <VirtualHost *:31338>`\
` RewriteEngine On`\
` RewriteRule .* `[`https://byzantium.mesh/`](https://byzantium.mesh/)` [R,L]`\
` ``</VirtualHost>`{=html}

-   The web server listening on ports 31337/TCP and 31338/TCP serves a
    page to the client. The client reads the text ("This is a wireless
    mesh, stuff about OPSEC, click here to pass through to the directory
    of services.") and clicks a button.
    -   It'd be nice if the page also optionally displayed a message
        "There is a gateway to the public Net, so you can browse outside
        of this mesh." if a gateway route existed and had been
        propagated.
-   When the button is clicked the firewall is updated to permit that
    MAC address to send traffic.
    -   **[ipset](http://ipset.netfilter.org/) -A capo_sessions_ipset
        CLIENT_IP,CLIENT_MAC**
    -   Yes, MAC spoofing to bypass this is trivial. This isn't to
        prevent people from getting online if they don't have a valid
        room number, it's to force them to see a message from the admin
        and then kick them over to a directory of services curated by
        the node's software.
-   Set a timeout on the client IP? 10 minutes? 60 minutes? 5 minutes
    (same as DHCP lease time)?
    -   **ipset -D capo_sessinos_ipset CLIENT_IP**
    -   Captive::Portal includes a script (capo-ctl.pl) which already
        does this. In fact, you're supposed to run it from cron every
        ten minutes or so to clean out idle sessions.
-   Captive::Portal requires iptables (have it), ipset (need to compile
    and install it), and a rule in */etc/sudoers* so it can run without
    privileges but still carry out privileged tasks.
-   fping is used to test idle sessions (have it).
-   A CGI script that implements a captive portal is included in
    Captive::Portal, it's called capo.cgi and runs under Apache.
-   Basics of coding with this module:

` my $capo = Captive::Portal->new(cfg_file=>$cfg_file);`\
` while (my $eq = CGI::Fast->new){`\
`   $capo->run($q);`\
` }`

-   capo-ctl.pl is included with the module and manipulates the
    currently running IPtables rules (as well as backing store of
    Captive::Portal) with the ipset utility
-   Everything Captive::Portal relies on the same configuration file (by
    default, config.pl).
-   mock-server.pl is a script that pulls the HTML from a URI (say, a
    web server listening on wlan0) and spits it to stdout for testing.
-   Used for testing your setup without needing a client.
-   test-server.pl implements a very simple HTTP server so you can test
    your capi.cgi script without having to configure Apache.

```{=html}
<!-- -->
```
-   We might have to modify capo.cgi to use the DBI Perl module to
    access the SQLite databases that hold the directories of services
    users can reach.
-   We may have either modify or subclass the Captive::Portal class and
    add support for extracting and using the IP address of the client
    interface (wlan0:1) rather than just the physical interface (wlan0).
    It's been a long time since I've done OO under Perl but it's
    certainly possible.
-   config.pl should be configured for no authentication (i.e., just a
    click-through).

```{=mediawiki}
{{Template:Byzantium}}
```
