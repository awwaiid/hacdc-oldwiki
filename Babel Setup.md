## Compile and install Babel

Download babeld and ahcpd. Standard "make && sudo make install".

On OS X: rt lib is not available in OS X, the ahcpd README is missing
this info

    make LDLIBS=''
    make install

## Setup ad-Hoc network

1.  Disable NetworkManager
    1.  Right click on NetworkManager applet, un-check "Enable
        networking".
    2.  Fedora:
            # /etc/init.d/NetworkManager stop
    3.  Ubuntu:
            # stop network-manager

2.  Disable the firewall
    1.  # iptables -F

3.  # ifconfig wlan0 down

4.  # iwconfig wlan0 mode ad-hoc essid hacdc-babel channel 9

5.  # ifconfig wlan0 up

## Setup Babel

1.  # babeld -D wlan0

2.  # ahcpd -D wlan0

```{=mediawiki}
{{Template:Byzantium}}
```
