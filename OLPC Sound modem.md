## The Easy Way

1.  Get [DebXO](OLPCDebXO) running on a XO with the Terminal
    Activity

2.  Update it as per the [DebXO
    wiki](http://wiki.laptop.org/go/DebXO#Updating)

3.  # apt-get install soundmodem ax25-apps ax25-tools

4.  # mkdir /etc/ax25/

5.  Fake /dev/dsp
        # modprobe snd-pcm-oss

6.  # soundmodemconfig

7.  configure the settings to your requirements then quit
    soundmodemconfig

8.  insert earplugs :P

9.  # soundmodem /etc/ax25/soundmodem.conf

## The Right Way

1.  [Upgrade](OLPCUpdate) to the latest official build

2.  # yum install soundmodem libax25 libax25-devel ax25-apps ax25-tools

3.  # wget haxwithaxe.net/files/kernel-2.6.31.6-2.rpm

        # wget haxwithaxe.net/files/initrd-2.6.31.6

        # mv initrd-2.6.31.6 /boot/

        # rpm -i kernel-2.6.31.6-2.rpm

    At this point you can skip to insmoding the modules we just
    installed with the kernel as i have yet to figure out how to get the
    new kernel to be used on boot.

4.  # cd /boot/

        # rm vmlinuz

        # ln -s vmlinuz-2.6.31.6 vmlinuz

        # ln -s System.map-2.6.31.6 System.map

        # rm initrd.img

        # ln -s initrd-2.6.31.6 initrd.img

5.  reboot

6.  # insmod /lib/modules/2.6.31.6/kernel/net/ax25/ax25.ko

        # insmod /lib/modules/2.6.31.6/kernel/drivers/net/hamradio/<protocol>.ko

        # modprobe snd-pcm-oss

7.  # mkdir /etc/ax25/

        # soundmodemconfig

8.  insert earplugs

9.  # soundmodem /etc/ax25/soundmodem.conf

[Category:OLPC](Category:OLPC)
