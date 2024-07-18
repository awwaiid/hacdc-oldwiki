1.  # yum install kernel-devel gcc make ncurses-devel rpmdevtools yum-utils mkinitrd

2.  # rpmdev-setuptree

3.  # yumdownloader --source kernel

4.  # yum-builddep kernel-*.src.rpm

5.  # rpm -Uvh kernel-*.src.rpm

6.  # cd ~/rpmbuild/SOURCES

7.  # tar jxvf olpc-2.6.tar.bz2

8.  # cd linux-<version>

9.  # cp ../kernel-xo1-custom.config .config

10. # make menuconfig

11. # make binrpm-pkg

12. # rpm -i ~/rpmbuild/RPMS/i386/kernel-*-i386.rpm

13. # mkinitrd /boot/inird-<your build version> <yuor build version>

14. # cd /boot/ && rm vmlinuz && ln -s vmlinuz-<your build version> vmlinuz && ln -s System.map-<your build version> System.map && rm initrd.img && ln -s initrd-<your build version> initrd.img

[Category:OLPC](Category:OLPC)
