Notes on building osmocombb on debian jessie.

## Build notes {#build_notes}

### Order

1.  install libosmocore
2.  install osmocombb
3.  ???
4.  profit
5.  [liberate the phones](Osmocombb)

### libosmocore

-   install build dependencies:

` # apt-get install libpcsclite-dev dh-autoreconf doxygen`

-   continue with instructions
    [here](http://bb.osmocom.org/trac/wiki/libosmocore)

```{=html}
<!-- -->
```
-   buid debian package:

` $ dpkg-buildpackage -rfakeroot -uc -b`

-   install packages:

` # dpkg -i ../libosmo*.deb`

### osmocombb

-   install build dependencies:

` # apt-get install binutils-arm-none-eabi gcc-arm-none-eabi gdb-arm-none-eabi libstdc++-arm-none-eabi-newlib`

-   continue with instructions
    [here](http://bb.osmocom.org/trac/wiki/Software/GettingStarted)

```{=html}
<!-- -->
```
-   executables found in:

` $REPO/src/host/osmocon`
