Stuff will be ~~stricken out~~ as I finish it. If anyone wants to jump
in and help me with this, by all means do so, just put your initials at
the end so I know who did what.

In no particular order, this is the stuff I want to accomplish:

-   ~~[Official Slackware g
    package](http://carroll.cac.psu.edu/pub/linux/distributions/slackware/slackware-13.37/slackware/n/)~~
    -   ~~Default webroot is /srv/httpd/htdocs.~~
    -   Will need to rework module to clear out /var/www. We won't need
        that stuff.
    -   ~~Custom config files are a given. I guess this pushes us back
        to using separate config files for each app.~~
    -   Comment out authn\*, authz\*, dumpio_module, ldap_module,
        usertrack_module, proxy\*, dav_module, status_module,
        cgi_module, status_module, cgi_module, dav_fs_module,
        vhost_alias_module, imagemap_module, userdir_module in
        /etc/httpd/httpd.conf.
    -   ~~Uncomment ssl_module.~~
    -   Disable logging when everything is working.
    -   ~~/srv/httpd and /srv/www are symlinks to /var/www. Oh, well.~~
    -   Look into setting up
        [mod_chroot](http://core.segfault.pl/~hobbit/mod_chroot/). There
        is an package on
        [slackbuilds.org](http://slackbuilds.org/repository/13.37/network/mod_chroot/)
        that could be built and converted.
    -   Look into setting up
        [mod_evasive](http://slackbuilds.org/repository/13.37/network/mod_evasive/).
        It's an anti-DoS, anti-bruteforce module.

```{=html}
<!-- -->
```
-   ~~[Official Slackware PHP
    package.](http://carroll.cac.psu.edu/pub/linux/distributions/slackware/slackware-13.37/slackware/n/php-5.3.6-i486-6.txzx)~~
    -   php.ini - need to turn log_errors, ignore_repeated_errors off.
    -   Look through the list of extensions in php.ini and turn all of
        the unnecessary ones off.
        -   calendar, ldap.

```{=html}
<!-- -->
```
-   Set Porteus up to set its hostname to the IPv6 address of the
    primary wireless interface of the node.

```{=html}
<!-- -->
```
-   Write a PHP app that
    -   displays a "Hello, User!" message
    -   displays links to apps hosted on the node which happen to be
        active
    -   removes links to apps hosted on the node that are deactivated
        -   I don't know PHP... can we find someone who does? Brad?
        -   Would have to reference the SQLite database which keeps
            track of the active and inactive web apps and modifies the
            output accordingly
    -   has to be mobile-friendly

```{=html}
<!-- -->
```
-   ~~Install [etherpad-lite](https://github.com/Pita/etherpad-lite) on
    my development instance~~
    -   ~~[requires node.js, for which there exists a
        Slackpack](http://slackbuilds.org/repository/13.37/network/node/)~~
        -   ~~build a Slackpack of node.js, convert into Porteus
            package, check everything into SVN~~
    -   ~~write an initscript that can start up Etherpad-lite when
        called by the control panel~~
    -   ~~will have to be controlled by the control panel, store its
        configuration in a database~~
    -   ~~write a sub-config file for Apache that passes through the
        /pad URL to localhost:9001~~
    -   ~~requires [NPM](http://npmjs.org)~~
        -   ~~that will need to be packaged and checked in separately, I
            think.~~
        -   ~~run it in verbose mode to keep an eye on it~~
        -   ~~if it installs more stuff, we should bundle the whole mess
            into the NPM Porteus package~~
    -   ~~really should run as an unprivileged user~~
    -   ~~pay attention to the [reverse-proxy
        howto](https://github.com/Pita/etherpad-lite/wiki/How-to-put-Etherpad-Lite-behind-a-reverse-Proxy)~~
    -   ~~have to start it by hand a few times to figure out how to
        automate and package it~~

```{=html}
<!-- -->
```
-   ~~install status.net on my development instance~~
    -   ~~requires PHP, MySQL~~
    -   ~~PHP must have support for Curl, XMLwriter, MySQL, GD,
        mbstring, gettext (all required for status.net), SQLite (to read
        configuration databases)~~
    -   will need to pre-configure it for security and usability
    -   ~~Need to hack the mnml theme to be more mobile friendly.~~
    -   Delete the unneeded themes and add-ons to save space, reduce
        potential attack surface.
    -   Add-ons are not enabled by default. To turn one on you have to
        manually edit config.php and add lines for each one. This is
        moderately safe. Consider making config.php read-only with
        instructions for editing it later?
    -   ~~will need to write a sub-config file for Apache~~
    -   ~~configure for longer messages - 560 characters?~~
    -   configure to make it easy to set up accounts on a node - no
        e-mail verification
    -   ~~enable image upload and display~~
    -   There is a subtle problem: the hostname of the node
        (\$config\['site'\]\['server'\] = 'name of node here';) must be
        set correctly in config.php for themes to display properly.
        However, this requires that the clients have working DNS, which
        means three things:
        -   ~~DNS (dnsmasq) must be functional on the node.~~
        -   ~~Clients must have hostnames configured by the node.~~
        -   ~~Clients must have DNS configured as the node it got its
            information from so that hostnames can be resolved
            properly.~~

```{=html}
<!-- -->
```
-   ~~Write a web app that (de-)configures gateway mode for babeld. I
    think it's a matter of pushing a route to 0.0.0.0 or not, have to
    read up on it.~~

```{=html}
<!-- -->
```
-   ~~Installed the pre-converted MySQL Porteus package from the
    distro-download archive.~~
    -   ~~Need to pre-configure MySQL for small-ish systems~~
    -   ~~Need to pre-harden MySQL~~
    -   Change the default password to something else.
    -   Need to pre-create accounts, databases for all web apps and give
        them strong passwords. They need to be ready to go when they're
        started up.

```{=html}
<!-- -->
```
-   Harden /etc/sysctl.conf!

```{=html}
<!-- -->
```
-   In /network/wireless, do some kind of "please wait, this could take
    a while" popup.

[Category:Byzantium](Category:Byzantium)
