If you contribute to the Byzantium project in anyway (including
intellectually) please add a brief (if it's more than 280 characters
consider linking to a separate page) entry to this page or have someone
with edit access to this page in the following format. If there is an
objection to an entry it can always be removed so don't be afraid to
write something. If you don't want to be identified you can use the name
"Anonamoose" or anything else you want (but Anonymoose is the best
choice :P). Try to keep it in roughly chronological order if you can but
close is good enough ([haxwithaxe](User:haxwithaxe) will
probably rewrite the page after running it through sort occasionally).

-   YYYY/mm/dd - Name - description and links etc

## Log

### 2011

-   2011/09/30 - group - byzantium planning meeting: discussed use
    cases, routing between meshes with nonmesh clients, prepared to
    finalize the development (pre-pre-alpha) build of the live distro
-   2011/10/01 - haxwithaxe - made this page for people to record their
    contributions
-   2011/10/01 - group - byzantium sprint day: TBD
-   2011/7/9 - drwho - Set up <http://svn.virtadpt.net/byzantium> for
    Porteus modules
    -   Started coding web control panel for Byzantium
    -   Converted Slackware v13.37 packages into Porteus modules
    -   Converted Slackware packages from slackbuilds.org into Porteus
        modules.
    -   Packaged web apps into Porteus modules.
    -   Tested package compilation using the scripts Ben and Chris
        wrote. Noted the ones that worked, opened tickets in the [bug
        tracker](https://github.com/Byzantium/Byzantium/issues) for the
        ones that didn't, tried to include enough information to help
        figure out what's going wrong in the package builder.
-   2022/11/13 - drwho - Figured out how to put together a fakeroot
    directory structure that could then be used to build
    000-byzantium.xzm. This is the core module of Byzantium Linux.
    -   Put together the 000-byzantium.xzm module for demonstration as
        an alpha release.
    -   Debugged rc.setup_mysql initscript so that it sets up the
        necessary application MySQL databases on an instance of
        Byzantium and locks it down. It's also extensible enough to
        build new functionality on later.

### 2012

```{=mediawiki}
{{Template:Byzantium}}
```
