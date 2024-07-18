-   DVD .iso boots fine, but I did see some boot errors flash past
    before X came up
-   ~~Looked for a desktop link or Control Panel entry to start
    Byzantium. Didn't find any.~~
-   I found no clear How-To or Getting Started documentation on how to
    get Byzantium Meshes up and running here on the Wiki or as part of
    the distro. Eventually found this post about running it from a USB
    stick
    <http://metropioneer.com/meshnet/Bootable_USB_Stick_How-To.txt>
-   ~~It would be good if Firefox opens by default to
    <http://locahost:8080> so it is obvious for a newbie on where he has
    to go to configure the mesh~~
-   ~~The "System Status" page is basically useless as it seems to say
    nothing about the current mesh status.~~
    -   ~~It is not obvious what is the status of the network i.e. ESID
        and channel that the network is using, and whether or not it is
        configured. Some wlan info here would be extremely helpful.~~
    -   It is not obvious what is the status of the mesh, i.e. is it
        configured or not, what IP addresses are being used, how many
        peers have been found. Some ifconfig info here would be
        extremely helpful.
    -   We never got around to configuring any mesh services.
-   Trouble keeping an ad hoc WiFi connection to the Byzantium mesh.
    -   The laptops were all sitting next to each other and we were
        using a channel which was not being used by any other APs.
    -   ~~Windows 7 and Windows XP had would take a long time (minutes)
        before it was working, then disconnect after a while.~~
    -   ~~An Ubuntu netbook WiFi client seems to be a bit more
        reliable.~~
    -   An HTC Desire couldn't see the ad hoc network
    -   ~~An iPhone 4 did seem to work.~~
-   Also booted Byzantium in a Virtual Machine (VM)
    -   It would be great if there was a way to run a emulated mesh node
        in a VM for test and demo purposes. However, a VM can't expose
        or manage the host Operating System's WiFi.
        -   It could, actually - VirtualBox's USB passthrough
            functionality could expose wi-fi keys to virtual machines.
    -   Perhaps some sort of WiFi emulation layer that could run on eth0
        inside the VM?
    -   It would then be comparatively easy to spin up say 100 VM mesh
        nodes, and see if the routing protocol scales.
        -   We're planning on doing a BattleMesh DC soon (v0.3? v0.4?)

```{=mediawiki}
{{Template:Byzantium}}
```
