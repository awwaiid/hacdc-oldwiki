## Overview

The UV-3R family of radios are dirt cheap 2W handheld transceivers with
reasonably good stock features especially given the price. They can be
very easily modified to take advantage of the on board MCU and crappy
programming of that MCU. The UV-3Rs are software controlled radios (not
SDRs) the DSP isn't controllable beyond squelch thresholds (afaik) which
means only when and where to transmit and receive not any changes to
modulation or demodulation.

## Links

### General Info {#general_info}

-   [uv3r.com](http://uv3r.com/)
-   [bricklore UV-3R
    tagged](http://www.brickolore.com/search/label/UV-3R)
-   [bricklore UV-3R Mark II
    tagged](http://www.brickolore.com/search/label/UV-3R%20Mark%20II)
-   [Lior's
    Work](http://www.liorelazary.com/index.php?option=com_content&view=article&id=51:hacking-the-uv3r&catid=14:baofeng-uv5r&Itemid=17)

### Modifications

#### Software

-   [CHIRP](http://chirp.danplanet.com/projects/chirp/wiki/Home) - a
    free, open-source tool for programming your amateur radio. (appears
    to support the UV-3R)
-   [firmware modification
    tool](http://www.radioaficion.com/HamNews/articles/9289-baofeng-uv-3r-220-mhz-soft-mod.html)
-   [manufacturer's software
    tool](http://www.brickolore.com/2011/12/baofeng-uv-3r-software-version-110-uv.html)
-   ["Out of
    range"](http://hamradio.selfip.com/i6ibe/baofeng/frequenze.htm)

#### Firmware

-   [FOSS
    Firmware](http://www.liorelazary.com/index.php?option=com_content&view=article&id=51:hacking-the-uv3r&catid=14:baofeng-uv5r&Itemid=17)
    -   pads can be fragile or lift off easily.
        [User:haxwithaxe](User:haxwithaxe) recommends using a
        nonsolder based means of connection.
    -   code: [on github](https://github.com/lelazary/UV3RMod)
    -   feature set beyond stock firmware as of 2013/04/08 noonish
        [ripped from WISHLIST on
        github](https://github.com/lelazary/UV3RMod/blob/master/WISHLIST)
        -   Quick interface to program rx freq, tx freq, power and PL
            code very quickly for repeaters. No offset, you just start
            with the rx freq and shift it by whichever amount you want.
            This will allow allow you to turn off the tx, or operate
            satellites. At any point during this mode, you can hold the
            mem channel and it will ask you which number you want to
            save this to.
        -   Memory mode will allow you to go through your saved memory.
            At any point you can press menu and change more details
            about the channel. The details will include power with
            granular level, DTMF TX/RX, and other functions TBD. This
            mode will show the channel name and the freq underneath it.
        -   Satellite Mode: Auto tuning of the frequency with response
            to the Doppler shift.
        -   (not yet) Digital mode. Hopefully I could add some text base
            digital data for rx and tx. You might need to tx the text
            using morse code since there is no alpha numeric keypad on
            the radio. The digital mode will also include a store and
            repeat message forwarding.
        -   (mostly implemented) Computer mode: All the functions of the
            radio including the RDA1846 registers, TX, and RX will be
            controlled through the serial port on the radio.
        -   Fox/Hunt mode. Can be used to transmit a signal
            intermittently (like call sign morse code). Or send the RSSI
            signal into the audio, and with a directional antenna you
            can go hunting.
        -   (not yet) Advance mode: Any RDA 1846 register can be set
            manually and saved for during startup.
        -   (not yet) If the digital mode works, then RF programming of
            the radio. This will allow anyone to send you repeater
            information from their memory locations. I will work by
            selecting a memory channel to rx, and pressing a button.
            Then on another radio you can send the programming info.
        -   (not yet) APRS mode: Boots straight to 144.39 mhz (or
            whatever you set it to), doesn't accept inputs, stays on the
            set frequency.

#### Hardware

-   [computer interface for
    satelite](http://hamradio.selfip.com/i6ibe/baofeng/baofeng.htm)
-   [DIY programming
    cable](http://uv3r.com/images/uv-3r_programming_ha4bf.jpg)
-   [APRS
    rig](https://sivantoledotech.wordpress.com/2011/12/23/building-an-aprs-tracker/)
    (without foss firmware)
-   fixes:
    -   [spurious
        harmonics](http://www.brickolore.com/2011/11/baofeng-uv-3r-second-harmonic-issue.html)
    -   [very low, low
        power](http://groups.yahoo.com/group/UV-3R/message/4036)

#### Recommended Modifications {#recommended_modifications}

-   fix harmonics (needs links)
-   fixes as needed: speaker volume, [mic
    volume](HAM_HT_Baofeng_UV-3R_Mic-Volume), super-low
    low-power (needs links)

## Notes

-   **DON'T BUY THE PROGRAMMING CABLE** you can use a 3.5mm stereo plug
    and a usb to serial device. (pinouts available
    [here](http://uv3r.com/))
-   If you buy one the only working setup for using the manufacturer's
    programming software found by
    [User:haxwithaxe](User:haxwithaxe) has been Windows7 with
    **Vista** drivers for the Prolific serial adapter.
    -   others have had success with WINE and in XP but since many of
        the cables have counterfeit controllers they have varying levels
        of functionality with different drivers.
    -   [User:haxwithaxe](User:haxwithaxe) used a VirtualBox
        VM with usb pass through.

### Recommended Accessories {#recommended_accessories}

-   A wide based flush fit BNC (or similarly durable connector) adapter
    (sometimes called an antenna saver) given the short mating cycle
    "SMA connectors are rated for up to 500 mating cycles" [citation via
    Wikipedia](https://en.wikipedia.org/wiki/SMA_connector)
    -   example: [SMA Male to BNC Female
        Connector](http://thumbs4.ebaystatic.com/m/mUgb7YRjFqInb9GoQZVkQMw/140.jpg)
    -   Also you can replace the adapter much more easily than the SMA
        connection in the radio.
    -   You can even apply some threadlock (the light duty stuff) to the
        threaded part and still keep the groundplane continuity because
        of the wide base on the adapter touching the rim of the SMA
        socket.
-   Get a dedicated antenna for the VHF and UHF (or whichever you will
    use the most). The dedicated antennas will do wonders for
    performance as the stock antenna is really pretty horrible and
    multiband antennas in general can only be so good on any given band
    they are tuned for before the others suffer, so they end up being
    okay at best on all of them. If you followed the above then get a
    BNC terminated antenna and don't worry about adapters for the
    antennas.

## Hardware Versions {#hardware_versions}

There are a large number of internally identical radios with very
nonstandardized names in the UV-3R and UV-5R family.

-   UV-3R is the first iteration of the UV-3R series it is it's own
    beast for the most part
    -   Mostly-clones UV-100 and UV-200
-   UV-3R MKII is the next oldest and has several variants
    -   UV-X4 - Just a rename for marketing?
    -   UV-3R+ (aka UV-3R Plus or UV-3R + Plus)
        -   different battery and charging method - has an actual
            charging cradle but battery type is not common
        -   different audio jacks (separate speaker and mic/ptt)
        -   female instead of male SMA (not RP-SMA)
-   [UV-5R](HAM_HT_Baofeng_UV-5R)

```{=mediawiki}
{{Template:Amateur Radio}}
```
