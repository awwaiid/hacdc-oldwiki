## System

-   Use beacons mounted on stationary objects within a room to allow
    user supplied devices to triangulate their rough position inside the
    room
-   The users may share their location via various means.
    -   XMPP
        -   complex
        -   relies on external infrastructure eventually
        -   robust against network topology traversals (NAT/Firewall)
    -   Multicast
        -   simple
        -   not robust when traversing NATs
-   Useful for a conference hall or the like, where an area is large
    enough to prevent finding ones way or friends easily.

testing guest captcha

## Hardware

### SOCs

-   [Nordic](http://www.mouser.com/ProductDetail/Nordic-Semiconductor/nRF51822-QFAB-R7/?qs=sGAEpiMZZMvQqVCO1QUke9rOCiF3q8UDR59ukwBL9d8%3d)
-   [TI](http://www.mouser.com/ProductDetail/Texas-Instruments/CC2540F128RHAR/?qs=sGAEpiMZZMuReUCzg6bfTFMX9eNsg5flb%2fyNLpDtSPE%3d)

### Front End/BT modules

-   just as expensive as SOCs

## Software

### Phone App

#### Android

#### iThing

### Firmware

-   bit-bang BTLE library
    [code](https://dmitry.gr/index.php?r=05.Projects&proj=11.%20Bluetooth%20LE%20fakery)
    for reference

#### Beacon

-   Similar use cases
    -   Beacon tagging - tags beacon to allow device to find the tagged
        item
        -   [iBeacon](http://en.wikipedia.org/wiki/IBeacon) -
            proprietary implementation
-   Use [Proximity
    Sensing](http://en.wikipedia.org/wiki/Bluetooth_low_energy#Proximity_sensing)
    Profile (PXP/FMP) to let user devices know where and roughly how far
    they are from the beacons.
