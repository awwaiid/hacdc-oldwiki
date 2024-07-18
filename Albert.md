# Functions

albert is an infrastructural VM host and nothing else.

# Access

Admin access only. Email support@hacdc.org if you need to report an
issue.

# Admin Notes

## Case

-   3U 19 inch rackmount

### PSU

-   ATX PSU with both 4 and 8 pin cpu power connectors
-   Wattage:

### Slots

-   7 stock 3.5 inch hot swap slots
-   1 front, floppy slot
-   1 front, 5.25 inch slot
-   2 internal front 3.5 inch slots
-   2 3.5 inch slots on spreader bar

### Addon Cards

-   RAID/SATA controller
    -   ports
    -   model
-   GPU see [Server_Albert#GPU](Server_Albert#GPU)

## Mother Board

### RAM

-   4GB DDR2 ECC

### CPU

-   dual socket dual core Xeon
-   has VM extensions
-   no hyper-threading
-   /proc/cpuinfo

`   processor   : 0`\
`   vendor_id   : GenuineIntel`\
`   cpu family  : 6`\
`   model       : 15`\
`   model name  : Intel(R) Xeon(R) CPU            5140  @ 2.33GHz`\
`   stepping    : 6`\
`   microcode   : 0x44`\
`   cpu MHz     : 2333.448`\
`   cache size  : 4096 KB`\
`   fpu     : yes`\
`   fpu_exception   : yes`\
`   cpuid level : 10`\
`   wp      : yes`\
`   flags       : fpu de tsc msr pae cx8 apic sep cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl pni est ssse3 cx16 hypervisor lahf_lm dtherm`\
`   bogomips    : 4666.89`\
`   clflush size    : 64`\
`   cache_alignment : 64`\
`   address sizes   : 36 bits physical, 48 bits virtual`\
`   power management:`\
`   `\
`   processor   : 1`\
`   vendor_id   : GenuineIntel`\
`   cpu family  : 6`\
`   model       : 15`\
`   model name  : Intel(R) Xeon(R) CPU            5140  @ 2.33GHz`\
`   stepping    : 6`\
`   microcode   : 0x44`\
`   cpu MHz     : 2333.448`\
`   cache size  : 4096 KB`\
`   fpu     : yes`\
`   fpu_exception   : yes`\
`   cpuid level : 10`\
`   wp      : yes`\
`   flags       : fpu de tsc msr pae cx8 apic sep cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl pni est ssse3 cx16 hypervisor lahf_lm dtherm`\
`   bogomips    : 4666.89`\
`   clflush size    : 64`\
`   cache_alignment : 64`\
`   address sizes   : 36 bits physical, 48 bits virtual`\
`   power management:`\
`   `\
`   processor   : 2`\
`   vendor_id   : GenuineIntel`\
`   cpu family  : 6`\
`   model       : 15`\
`   model name  : Intel(R) Xeon(R) CPU            5140  @ 2.33GHz`\
`   stepping    : 6`\
`   microcode   : 0x44`\
`   cpu MHz     : 2333.448`\
`   cache size  : 4096 KB`\
`   fpu     : yes`\
`   fpu_exception   : yes`\
`   cpuid level : 10`\
`   wp      : yes`\
`   flags       : fpu de tsc msr pae cx8 apic sep cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl pni est ssse3 cx16 hypervisor lahf_lm dtherm`\
`   bogomips    : 4666.89`\
`   clflush size    : 64`\
`   cache_alignment : 64`\
`   address sizes   : 36 bits physical, 48 bits virtual`\
`   power management:`\
`   `\
`   processor   : 3`\
`   vendor_id   : GenuineIntel`\
`   cpu family  : 6`\
`   model       : 15`\
`   model name  : Intel(R) Xeon(R) CPU            5140  @ 2.33GHz`\
`   stepping    : 6`\
`   microcode   : 0x44`\
`   cpu MHz     : 2333.448`\
`   cache size  : 4096 KB`\
`   fpu     : yes`\
`   fpu_exception   : yes`\
`   cpuid level : 10`\
`   wp      : yes`\
`   flags       : fpu de tsc msr pae cx8 apic sep cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl pni est ssse3 cx16 hypervisor lahf_lm dtherm`\
`   bogomips    : 4666.89`\
`   clflush size    : 64`\
`   cache_alignment : 64`\
`   address sizes   : 36 bits physical, 48 bits virtual`\
`   power management:`

### GPU

-   NVIDIA Corporation NV43 \[GeForce 6600\] (rev a2)

### BIOS/UEFI

-   Make - ?
-   Version - ?

#### Menu

-   ?Setup
-   ?View Post
-   ?Boot Select

## OS

-   Debian
    -   Version - stable
    -   Arch - amd64

# OS Config

## DomU

-   Shell server - tortoise
-   File server - hoard
-   Squid Proxy - cthulhu

## Storage

-   Partitions #FIXME
    -   All drives have stripe for /boot
    -   1TB drives
    -   500GB drives
    -   250GB drives
-   Soft RAID \# FIXME
    -   the /boot stripe is RAID1
    -   250GB drives
    -   500GB drives
    -   1TB drives

### LVM

-   Volume Groups
    -   albert
        -   home
            -   /home
        -   root
            -   /
        -   swap
            -   Contiguous LV.
        -   nas
            -   Attached to hoad.
            -   Shell users' /home/users/\*
            -   Generic storage.
        -   proxy
            -   Attached to cthulhu.
            -   Contains the cache from the proxies.
        -   cthulhu-disk - 4GB
        -   cthulhu-swap - 1GB
        -   hoard-disk - 4GB
        -   hoard-swap - 128MB
        -   tortoise-disk - 4GB
        -   tortoise-home - 50GB (will be reduced)
        -   tortoise-swap - 128MB
        -   tortoise-tmp - 10GB
        -   tortoise-var - 30GB
        -   template.debian-testing-minimal - 4GB
        -   to be removed
            -   template-swap
            -   vms

## Software

#### Xen HVM

-   domain configs /etc/xen/conf
-   configs tracked with git
    -   use /etc/xen/conf/.commit to commit changes as nonroot user

## VMs

-   [cthulhu](cthulhu) - proxy server
-   [tortoise](tortoise) - shell server
-   [hoard](hoard) - file server

[Category:Infrastructure](Category:Infrastructure)
[Category:Servers](Category:Servers)
