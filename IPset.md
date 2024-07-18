Because [IPset](http://ipset.netfilter.org/) is both a userspace utility
and a set of kernel modules, it poses something of a challenge to
compile. Here's how I did it:

-   Note that there are two extant versions of IPset that are designed
    with different releases of the Linux kernel in mind:
    -   v4.5 is for Linux kernel \>= v2.6.16
    -   v6.10 is for Linux kernel \>= v2.6.**35**
        -   This version requires that a patch be applied to the kernel
            to implement the IPset functionality before it'll work.
            Let's try this last.
        -   The SlackBuild script checked into Git needs to be updated!
-   I used [this
    procedure](http://porteus.org/info/docs/51-development/91-compilation-and-usage-of-custom-porteus-kernel.html)
    to compile a Porteus kernel. Note that we're not actually replacing
    000-kernel.xzm, but a fully configured and compiled kernel has to
    exist on the system for IPset to compile. You just have to compile
    it, not install it, not install new modules, and not rebuild
    000-kernel.xzm.
    -   Don't forget to run **make modules**!
-   Once the kernel is compiled but not installed (on Windbringer
    running VirtualBox this took about five hours) download and
    uncompress the appropriate version of IPset.
-   I edited the Makefile to change the value of PREFIX to "/usr". I
    recommend that you do this.
-   **su -**
-   **make KERNEL_DIR=/path/to/your/compiled/linux-2.6.38.8**
-   Pay close attention. If everything goes as planned it won't take
    long to build.
-   If you do not start seeing output to the effect of **CC \[M\]
    /home/guest/tmp/ipset-4.5/kernel/ip_set.o** you forgot to run **make
    modules**. IPset will not work.
-   Now install the utility and kernel modules into a fakeroot so they
    can be packaged:

` `**`DESTDIR=/tmp/fakeroot make KERNEL_DIR=/path/to/your/compiled/linux-2.6.38.8 install`**

-   Now you have to manually package the kernel modules:

` `**`mkdir -p /tmp/fakeroot/lib/modules/2.6.38.8-porteus/extra/`**\
` `**`cp /lib/modules/2.6.38.8-porteus/extra/ip* /tmp/fakeroot/lib/modules/2.6.38.8-porteus/extra`**

-   If no files exist in the fakeroot directory
    */tmp/fakeroot/lib/modules/2.6.38.8-porteus/extra* then the kernel
    modules will not be packaged and IPset will not work.
-   Strip the ipset binary to save space:

` '`*`'strip /tmp/fakeroot/usr/sbin/ipset`*

-   If they do exist, build the .xzm package:

` `**`dir2xzm /tmp/fakeroot /tmp/ipset-4.5.xzm`**

[Category:Byzantium](Category:Byzantium)
