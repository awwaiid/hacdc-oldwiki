This process assumes:

-   You've booted a clean copy of Porteus Linux v1.0 or later.
-   You've checked the Porteus .xzm modules we built for Byzantium out
    of SVN into \~/byzantium.
    -   apr
    -   apr-util
    -   babeld
    -   boost
    -   celt
    -   CherryPy
    -   cryptoki
    -   curl
    -   dnsmasq
    -   doxygen
    -   gd
    -   httpd
    -   icu4c
    -   ifplugd
    -   irssi
    -   libarchive
    -   libdaemon
    -   libmcrypt
    -   locales-en_US
    -   Mako
    -   MarkupSafe
    -   mumble
    -   mysql
    -   ngircd
    -   node
    -   pcre
    -   php
    -   protobuf
    -   pyOpenSSL
    -   pysetuptools
    -   python-twisted
    -   qt
    -   qwebirc
    -   rrdtool
    -   speex
    -   sudo
    -   truecrypt
    -   t1lib
    -   vim
    -   wxGTK
    -   zope.interface
-   You've checked the source tree for Byzantium out of the Git
    repository.

The process of installing Byzantium has not been automated yet. These
notes should be used in the development of the official installer, at
least until we get the official byzantium.xzm module built. I get the
feeling that it's going to be pretty big because we're going to have to
package all of the dependencies along with it for efficiency's sake (at
least, that's what Ben the Pyrate says because he's messed around with
union mounts more than I).

Gotchas:

-   On first boot, syslinux might complain that it can't find video mode
    number 317. Entering the hex value "F00" (text mode, 80x25) will get
    around this.
    -   At boot, you can also edit the kernel command line and change
        the value '791' to 'F00' prior to booting. We should make this
        the default.
-   If the USB device is formatted with a non-Linux file system, you
    will see the error "A Windows Filesystem (FAT, NTFS) or other
    non-posix compatible filesystem has been detected on /porteus/." If
    you intend on creating a save.dat file, you can press 'enter' and
    ignore it. Or, you can format the key with a Linux file system
    (/EXT\[1-4\]/, XFS) prior to [installing
    Porteus](http://porteus.org/info/docs/37-installing/114-official-porteus-installation-guide-v-10.html).
-   On boot, Porteus Linux will mount all of the file systems it can see
    on the host machine. Use caution when deleting or copying files!
-   **IMPORTANT**: If your USB key is formatted with one of the FAT
    filesystems, you CANNOT create a persistent storage file larger than
    1GB! Otherwise, you will get errors at boot-time about a missing
    persistent storage file! **Set the slider no larger than 1024MB!**
-   /etc/rc.d/rc.sshd is set mode -x by default but /etc/rc.d/rc.local
    sets it +x so that it can be managed by the control panel. It's not
    executed by default, though.

These commands can be run as guest (which is logged in by default):

-   The [wicd](http://wicd.sourceforge.net/) applet on the toolbar works
    well for setting up wireless. It's also polite enough to get out of
    your way once it's done. Use it to get online.
-   Open Firefox and download all of the modules from
    [<http://svn.virtadpt.net/byzantium>](http://svn.virtadpt.net/byzantium).
    Put everything in /dev/sdb1/porteus/modules to save time and space
    -   It will probably be /dev/sdb if you have only one drive in the
        host machine.
    -   You will need to install the git package as well to check out
        the Byzantium source tree.
-   Set up a persistent storage file:
    -   Porteus Menu -\> System -\> Porteus save.dat manager
    -   Create a new save.dat file
    -   Enter a filename for the persistent storage file (I like
        'save' - the manager will automagically add the '.dat'
        extension).
    -   Navigate to /mnt/sdb1/porteus - this is where save.dat will go.
    -   The manager will confirm the location - say 'yes'.
    -   Select a size for the save.dat file (see the above note!)
    -   Wait. This can take a while. USB v2.0 isn't very fast...
    -   When next that USB key is booted, hit the 'tab' key to edit the
        kernel command line and change the 'changes=' bit to read
        'changes=/mnt/sdb1/porteus/save.dat'
    -   Reboot.
-   After rebooting, set up your network connection with wicd again,
    because there wasn't a way to save it before.
-   Check out the [Byzantium source
    repository](https://github.com/Byzantium/Byzantium.git):
    -   git clone <https://github.com/Byzantium/Byzantium.git>

All of these commands must be run as root. You should do an \`su -\`
here and get it over with. This process assumes that a Porteus module
(000-byzantium.xzm) will be created.

-   cd /path/to/xzm/modules
-   for i in \*.xzm; do xzm2dir \$i /tmp/fakeroot ; done
-   rm /tmp/fakeroot/srv/httpd
-   rm /tmp/fakeroot/srv/www
-   mkdir -p /tmp/fakeroot/srv/httpd/databases
-   cd /tmp/fakeroot/srv
-   ln -s httpd www
-   mkdir -p /tmp/fakeroot/srv/controlpanel/graphs
-   cp -rv \~guest/Byzantium/control_panel/srv/controlpanel/\*
    /tmp/fakeroot/srv/controlpanel
-   mkdir /tmp/fakeroot/etc/controlpanel
-   cp \~guest/Byzantium/control_panel/etc/controlpanel/\*
    /tmp/fakeroot/etc/controlpanel
-   mkdir -p /tmp/fakeroot/var/db/controlpanel
-   cp -rv \~guest/Byzantium/control_panel/var/db/controlpanel/\*
    /tmp/fakeroot/var/db/controlpanel
-   mkdir -p /tmp/fakeroot/usr/share/wicd/cli
-   cp \~guest/Byzantium/porteus/wicd/usr/share/wicd/cli/wicd-cli.py
    /tmp/fakeroot/usr/share/wicd/cli/
-   cd \~guest/Byzantium/scripts
-   mkdir -p /tmp/fakeroot/etc/udev/rules.d
-   cp 11-media-by-label-auto-mount.rules /tmp/fakeroot/etc/udev/rules.d
-   **Where do the \[pre,post\]-disk-mount scripts go?** --DrWho
-   cp rc.local rc.mysqld rc.ssl rc.setup_mysql /tmp/fakeroot/etc/rc.d
-   chmod +x /tmp/fakeroot/etc/rc.d/rc.\*
-   cp traffic_stats.sh /tmp/fakeroot/usr/local/bin
-   cd ../control_panel
-   mkdir -p /tmp/fakeroot/usr/local/sbin
-   cp \*.py /tmp/fakeroot/usr/local/sbin
-   cp etc/rc.d/rc.byzantium /tmp/fakeroot/etc/rc.d/
-   mkdir -p /tmp/fakeroot/etc/ssl
-   cp etc/ssl/openssl.cnf /tmp/fakeroot/etc/ssl
-   cd ../service_directory
-   cp index.html /tmp/fakeroot/srv/httpd/htdocs
-   cp services.py /tmp/fakeroot/srv/httpd/cgi-bin
-   chmod 0755 /tmp/fakeroot/srv/httpd/cgi-bin/services.py
-   rm /tmp/fakeroot/srv/httpd/cgi-bin/printenv
    /tmp/fakeroot/srv/httpd/cgi-bin
-   cd ../porteus
-   mkdir -p /tmp/fakeroot/home/guest/.mozilla/firefox/c3pp43bg.default
-   cp home/guest/.mozilla/firefox/c3pp43bg.default/prefs.js
    /tmp/fakeroot/home/guest/.mozilla/firefox/c3pp43bg.default
-   cp -rv apache/etc/httpd/\* /tmp/fakeroot/etc/httpd
-   cp babel/babeld.conf /tmp/fakeroot/etc
-   cp dnsmasq/dnsmasq.conf /tmp/fakeroot/etc
-   cp etherpad-lite/rc.etherpad-lite /tmp/fakeroot/etc/rc.d
-   cp -rv ifplugd/etc/ifplugd/\* /tmp/fakeroot/etc/ifplugd
-   cp sudo/etc/sudoers /tmp/fakeroot/etc
-   chown root:root /tmp/fakeroot/etc
-   chmod 0440 /tmp/fakeroot/etc
-   cp etc/passwd /tmp/fakeroot/etc
-   cp etc/shadow /tmp/fakeroot/etc
-   cp etc/hosts /tmp/fakeroot/etc
-   cp etc/HOSTNAME /tmp/fakeroot/etc
-   cp etc/inittab /tmp/fakeroot/etc
-   chown root:root /tmp/fakeroot/etc/passwd /tmp/fakeroot/etc/shadow
    /tmp/fakeroot/etc/hosts /tmp/fakeroot/etc/HOSTNAME
    /tmp/fakeroot/etc/inittab
-   chmod 0600 /tmp/fakeroot/etc/shadow
-   cp mysql/my.cnf /tmp/fakeroot/etc
-   cp ngircd/ngircd.conf /tmp/fakeroot/etc
-   cp ngircd/rc.ngircd /tmp/fakeroot/etc/rc.d
-   cp php/etc/httpd/php.ini /tmp/fakeroot/etc/httpd
-   mkdir -p /tmp/fakeroot/opt/qwebirc
-   cp qwebirc/config.py /tmp/fakeroot/opt/qwebirc
-   cp qwebirc/rc.qwebirc /tmp/fakeroot/etc/rc.d
-   cd ..
-   cp databases/\* /tmp/fakeroot/srv/httpd/databases/
-   mkdir -p /tmp/fakeroot/home/guest/Desktop
-   cp porteus/home/guest/Desktop/Control\\ Panel.desktop
    /tmp/fakeroot/home/guest/Desktop
-   mkdir -p /tmp/fakeroot/usr/share/pixmaps/porteus
-   cp byzantium-logo.png /tmp/fakeroot/usr/share/pixmaps/porteus

```{=html}
<!-- -->
```
-   NOTE: This bit has more fail in it than I'd prefer. Unfortunately,
    it's unique to my development virtual machine and that really has to
    change.
-   mkdir -p /tmp/fakeroot/srv/httpd/htdocs
-   cp -rv /srv/httpd/htdocs/\* /tmp/fakeroot/srv/httpd/htdocs/

```{=html}
<!-- -->
```
-   mkdir /tmp/fakeroot/var/run/ngircd
-   chown ngircd.root /tmp/fakeroot/var/run/ngircd
-   chmod 0750 /tmp/fakeroot/var/run/ngircd

```{=html}
<!-- -->
```
-   mkdir -p /tmp/fakeroot/srv/captiveportal
-   mkdir -p /tmp/fakeroot/etc/captiveportal
-   cd \~guest/Byzantium/captive_portal
-   cp captive_portal.py /tmp/fakeroot/usr/local/sbin
-   cp captive-portal.sh /tmp/fakeroot/usr/local/sbin
-   cp mop_up_dead_clients.py /tmp/fakeroot/usr/local/sbin
-   cp etc/captiveportal/captiveportal.conf
    /tmp/fakeroot/etc/captiveportal/
-   cp srv/captiveportal/\* /tmp/fakeroot/srv/captiveportal/

```{=html}
<!-- -->
```
-   chown -R guest:guest /tmp/fakeroot/home/guest

```{=html}
<!-- -->
```
-   This is to prevent the default Porteus firewall rules from
    interfering with the ones the control panel installs.
    -   chmod -x /tmp/fakeroot/etc/rc.d/rc3.d/S-firewall
        -   Note: This is actually a bug in Porteus v1.1. If you look at
            the contents of /etc/rc.d/rc.inet2, it won't actually be
            able to run this script. Don't worry about it.

For the control panel to work, NO network interfaces should be
configured at the outset. The Porteus configuration apps make this easy,
but conflict with our needs. When testing, it's easier to shut
everything down by hand and then put fresh copies of the .sqlite
databases into /var/db/controlpanel.

Ideally, to do everything right you'd have to reboot at this point. That
would, in theory, run the right initscripts in the right order (or skip
them, as the case may be).

To build the official Byzantium module:

-   dir2xzm /tmp/fakeroot /tmp/000-byzantium.xzm

```{=mediawiki}
{{Template:Byzantium}}
```
