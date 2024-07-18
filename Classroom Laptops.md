This page serves as a specification and feature request page for the
classroom laptops.

The classroom laptops are running a Linux distribution, currently Debian
(probably better to be running testing than stable), with MATE desktop
environment. Tom maintains a canonical image.

They are used primarily for modeling, rendering, and slicing 3d printed
parts, but can and should be functional for all purposes in the
classroom.

Currently implemented on a bunch (6) of Dell D430s, maybe some D420s.

## Hardware

I (Tom) donated 6 old Dell Core Duo D430/420 laptops for this use.
They're super cheap and I had a pile of them. I think they're actually
kind of ideal for this purpose, all things considered. They're not nice
enough that anybody would want to re-purpose them to any other job, and
since most of them don't have batteries nobody walks off with them.
After almost a year they seem to be doing the job and getting lots of
use.

## Software (locally installed or remote access) {#software_locally_installed_or_remote_access}

### 3d design {#d_design}

-   Cura
-   Meshlab
-   Implicitcad (runs on Jobs or gygax)

### Browsers

-   Firefox
-   Chromium
-   Midori or something similarly lightweight.

### Microcontroller

-   INO
-   Arduino

### Coding

-   Python 3
-   Rust

### Productivity

-   Something for email
-   Printing should be enabled

### Sys utils {#sys_utils}

-   tmux ssh vi/vim emacs etc.
-   Terminator
-   guake
-   most
-   avahi-utils

### Other HacDC activities {#other_hacdc_activities}

Documentation, links, and how-tos on the desktop...

## TODO

-   Update image and re-image all laptops.
-   Enable all laptops for incoming and outgoing email...?
-   Fix the HW clock issue possibly by setup NTP so that SSL errors
    don't happen.
-   Work out a way to do efficient X-forwarding over our WiFi to job
    server for heavier applications.
-   Configure laptops in some way to be more like a thin client so there
    is no/less need to 'update' the image or re-image regularly. In the
    dumbest case we could have them be simple VNC kiosks to a VM running
    on jobs...?
    -   Test above last two for practicality.

## Feature requests {#feature_requests}

-   Most recent Arduino suite. \[INO\]
-   More scripts and or instructions for usability -- 2d printing, 3d
    printing, using jobs.
-   Maybe put \~/\* or \~/Desktop on a network share.

[Category:HacDC Computers](Category:HacDC_Computers)
