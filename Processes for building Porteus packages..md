## From Slackbuild

-   Download the SlackBuild tarball (from
    [slackbuilds.org](http://slackbuilds.org/), for example). It will
    contain a .SlackBuild script (which is basically a shell script that
    does the compiling for you) as well as whatever other files will be
    required by the package.
-   Uncompress the tarball to a temporary directory.
-   Use wget to download the source code archive referenced by the .info
    script (in the DOWNLOAD line).
-   If necessary, edit the variables in the .SlackBuild script to bring
    it up up to date.
-   Run the .SlackBuild script **as the root user**. This is important
    for the package creation process because it allows, among other
    things, file ownerships and permissions to be set properly.
-   If the .SlackBuild worked, a Slackware package file will be found in
    /tmp. Use \`ls -ltr /tmp\` to find it.
-   Convert the .tgz or .txz Slackware package into a Porteus module
    -   tgz2xzm /path/to/slackware.tgz /path/to/porteus.xzm
    -   txz2xzm /path/to/slackware.txz /path/to/porteus.xzm

## Manually

Used for packages that do not have SlackBuild scripts associated with
them or cnvertable packages.

If the software needs to be compiled or installed with a Makefile,
installation script, or something similar it needs to be compiled
normally but installed into a temporary directory (/tmp/module,
\~/Desktop/fakeroot, or something like that) by using the DESTDIR
variable or whatever the installation method supports. It is advised
that extraneous symbols be stripped from any compiled binaries to save
space.

In a similar vein, files that should be grouped together into a single
Porteus module (such as control panel-related files, variable binaries
(database files?), or custom configuration files) should be copied into
a fakeroot directory structure that replicates the real file system as
much as necessary, i.e., with its own /usr, /var, /lib directories, and
so forth. In all cases, file ownerships and permissions must be set as
they will be in the live system.

The dir2xzm utility is used to convert a fakeroot directory structure
into a Porteus module which can then be enabled in the usual fashion:

` dir2xzm /tmp/fakeroot /tmp/custom_module.xzm`

The general process for creating and manipulating the contents of
modules is
[here](http://porteus.org/component/content/article/36-modules/56-what-are-porteus-modules.html).

## Activating Porteus modules

-   Move the .xzm file to your porteus/modules directory (in my VM the
    full path is /mnt/sda1/porteus/modules, but yours may vary).
-   Run the command \`activate /path/to/porteus/modules/newmodules.xzm\`
    as the root user. If it worked you will see a window pop up (if
    you're using the desktop) confirming activation.
-   Once activated, modules remain active across reboots (if Porteus is
    installed to read-write media).

## Making Porteus modules available to Byzantium developers

-   Copy it off of your virtual machine or USB key.
-   Check it into the [Subversion
    repository](http://svn.virtadpt.net/byzantium/). Do NOT check
    Porteus packages into Git!

```{=mediawiki}
{{Template:Byzantium}}
```
