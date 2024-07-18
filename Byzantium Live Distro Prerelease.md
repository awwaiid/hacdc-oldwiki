## Prerelease Process {#prerelease_process}

**DRAFT** On this page we have a list of things that need to happen
between the **final** build and the publishing of software or
repackaging thereof by the Byzantium Project. Unless otherwise stated
all items are required to be satisfied for an individual build before
being placed in another part of the project or before publishing the
project.

### Build Environment {#build_environment}

-   manifest check - make sure what you think is there is actually
    there. manifest files (with name `<scope>`{=html}.manifest) are
    recommended, and will be checked by the build environment once that
    is automated.
    -   Add a stanza to the Makefile (if we go that way, that is) -
        **make manifest** or **make test** or something like that.
-   ?other sanity checks?

### Runtime Environment {#runtime_environment}

-   for each package/major feature set a checklist must be made that
    will reasonably ensure the software is behaving as expected.
-   A list of packages that comprise 000-byzantium.xzm should be
    maintained someplace. Right now we're just eyeballing it.
-   A list of files associated with each package should be maintained
    someplace.
    -   This is why I build Slackware packages (where feasible) or do a
        **DEST=/tmp/SBo make install** where there aren't any followed
        by a **dir2xzm /tmp/package.xzm /tmp/SBo** - to keep all of the
        files for a particular package grouped together.
    -   A bunch of .xzm packages are easier to keep track of than
        compiling stuff in sequence. Then, when it comes time to build
        everything the build system can check them out of SVN and use
        **xzm2dir** to unpack all of them in sequence into a fakeroot.
        So, I propose a two step QA sequence:
        -   Make sure that some_package-rev.isi.on.xzm was compiled and
            checked into SVN.
        -   Make sure that some_package-rev.isi.on.xzm was checked out
            of SVN on the build machine and **xzm2dir**ed into
            /tmp/fakeroot.
    -   the checklist can (and is recommended to) just say to run a
        script that will do the required tests and return a pass/fail
        status.
    -   if a script is used for runtime QA it should be named
        "runtimeQA.sh" and have 777 (a+rwx) permissions in the root
        directory of it's scope (eg for a package
        "byzantium-repo/packages/thispackagedir/runtimeQA.sh"). Also it
        should use paths with the expectation that the script will be
        run from an arbitrary directory.

### Human Environment {#human_environment}

-   2 day cool down period between building and publishing
-   No .iso image goes out without being PGP signed against key
    0xD6975C17.
    -   While we're at it, can we get some more signatures on that key?
        -   Fingerprint 93F3 8B13 B52C D8F0 FA8D 03B3 37AA 847C D697
            5C17
        -   I've uploaded it to a bunch of keyservers around the Net.
-   The person who builds the .iso image is not the one who checks the
    contents of the .iso image. After you've been staring at the same
    thing for long enough, it all starts looking alike.
    -   Does the bootloader have the right porteus.cfg?
    -   Does the bootloader have byzantium.jpg handy?
    -   Does porteus/modules/000-byzantium.xzm exist?
    -   Do these files exist in the root directory of the .iso image?
        -   README.txt
        -   README.NOW
        -   FAQ.txt
        -   packages.txt
        -   CHANGELOG
    -   Do all of the Porteus modules exist in porteus/base?
        -   000-kernel.xzm
        -   001-core.xzm
        -   002-xorg.xzm
        -   003-lxde.xzm
        -   004-kde.xzm
        -   005-kdeapps.xzm
        -   006-koffice.xzm
            -   Do we really need to include this?
        -   007-devel.xzm
        -   008-firefox.xzm
-   No .iso goes out without being tested, i.e., at least booted in a VM
    and put through its paces.
-   We need a process for loading the mirrors from a single distribution
    point.
-   Torrents are seeded prior to announcement.

```{=mediawiki}
{{Template:Byzantium}}
```
