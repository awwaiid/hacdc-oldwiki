# [Robot Project](Robot_Project) Notes {#robot_project_notes}

See the [Codeberg
repository](https://codeberg.org/ubuntourist/RedHat_Co.Lab_Robot) for
the most up-to-date notes.

# Sparkfun Red Hat Co.Lab Robot {#sparkfun_red_hat_co.lab_robot}

# (BBC micro:bit + Sparkfun moto:bit) {#bbc_microbit_sparkfun_motobit}

## Sparkfun moto:bit Carrier Board {#sparkfun_motobit_carrier_board}

The [moto:bit](https://www.sparkfun.com/products/15713) - micro:bit
Carrier Board (Qwiic) uses a Qwiic interface? and offers pins for:

-   six 3-pin sensors,
-   two 3-pin servo motors
-   two 2-pin “big” motors

and an I2C bus (as well as a Qwiic “port” and power switch)

           +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                  micro:bit CONNECTOR BUS


               ANALOG           DIGITAL
               DIGITAL            ONLY
                  |                |
           +-+----+-------+ +------+------+-+
           | |            | |             | |                           SCL  ☐
        P0 • •  P1     P2 • • P8      P12 • • P14      P15 • • P16      SDA  ☐
       3V3 • • 3V3    3V3 • • 3V3     3V3 • • 3V3      VCC • • VCC      3V3  ☐
       GND • • GND    GND • • GND     GND • • GND      GND • • GND      GND  ☐

          SENSOR         SENSOR          SENSOR           SERVO         I2C BUS



            BLACK •   LEFT                           RIGHT  • RED
            RED   •   MOTOR                          MOTOR  • BLACK


       POWER IN
      INPUT RANGE
      VCC: 3 - 11V                                                  QWIIC


                      STOP                RUN
                     MOTORS              MOTORS

------------------------------------------------------------------------

## Wheel Motor Assembly {#wheel_motor_assembly}

-   Geez! They weren’t kidding! Getting the front motor mounts over the
    big motors was a PITA! Ultimately, brute forcing it with my hand
    rather than pliers proved the most successful.
-   The rear motor mounts were only slightly better.
-   Mounting the assemblage to the bottom chassis, I was sure I was
    going to snap something in two or tear out a wire.
-   The motor I’ve mounted on the right side has a black wire whose
    solder point looks suspect…

------------------------------------------------------------------------

## Line folowing sensors {#line_folowing_sensors}

-   The pins should be sticking out on the smooth side of the “bottom”
    mount.
-   By contrast, this slipped together so easily that I worry it might
    be too loose, though it will undoubtedly tighten up when mounted to
    the chassis.
-   This tutorial seems to be a thinly disguised advertisment for
    electrical tape…

------------------------------------------------------------------------

## Chassis

-   10-year-olds my ass. This required a hell of a lot of strength to
    snap the chassis together without snapping.
-   Don’t forget: there are **eight** snap points: Four at the corners
    and two above the wheels. I got the outer four, and didn’t notice
    the wheel ones until after the fact. It took forever to get those to
    snap into place.

------------------------------------------------------------------------

## Wiring

-   Motor wires *may* need to be flipped (black to red and vice versa).
-   **IMPORTANT SAFETY TIP**: The instructions fail to mention that the
    battery pack should be rotated 90 degrees after slipping in the back
    so that the power cable is coming out the left side behind the wheel
    – or if the instructions did mention it, that tidbit wasn’t clear to
    me. After assembling, I found a guide to assembling the chassis
    without the moto:bit or micro:bit, and it has an entire section
    specifically devoted to [installing the battery
    pack](https://learn.sparkfun.com/tutorials/assembly-guide-for-redbot-with-shadow-chassis/9-batteries)
-   God help you if you ever have to replace the batteries…

------------------------------------------------------------------------

## Powering on {#powering_on}

-   Providing power causes the `micro:bit` to boot with an introductory
    “H…E…L…L…O” and then prompts you to push buttons A and then B.

------------------------------------------------------------------------

## Uploading code to the micro:bit {#uploading_code_to_the_microbit}

-   Connecting the **micro:bit** to desktop or laptop computer via USB
    provides sufficient power to program it. No need to waste the
    “eternal life” batteries, while downloading code to the
    **micro:bit**. So I would recommend keeping the **moto:bit**
    disconnected from the battery pack.
-   The short MicroUSB to USB cable works better for me if I disconnect
    the **micro:bit** from the **moto:bit** and flip it upside down,
    exposing the side with all the writing, the **RESET** button, and
    the yellow LED.
-   [Identify your micro:bit
    version](https://support.microbit.org/support/solutions/articles/19000119162-how-to-identify-the-version-number-of-your-micro-bit-).
    There is a bit of contradictory information on the page, but it
    turns out, my kit contained a micro:bit **v 1.5** but there’s a
    newer **v 2.0**. Disappointing… One would have expected SparkFun to
    send the latest and greatest.
-   **REALLY** disappointing! The v 2.0 has a built-in microphone and
    speaker. The v 1.5 does not! That kind of blows my whole reason for
    playing with this! And it’s out of stock on SparkFun and AdaFruit.
    I’m back-ordering it on SparkFun.
-   Speaking of latest and greatest, just to be sure, I like to know I’m
    using the most recent version of the
    [firmware](https://microbit.org/get-started/user-guide/firmware/).
-   After “upgrading” (though I think it already had the latest) my
    `DETAILS.TXT` contains:

```{=html}
<!-- -->
```
        # DAPLink Firmware - see https://mbed.com/daplink
        Unique ID: 9901000052374e450046100f000000100000000097969901
        HIC ID: 97969901
        Auto Reset: 1
        Automation allowed: 0
        Overflow detection: 0
        Daplink Mode: Interface
        Interface Version: 0249
        Bootloader Version: 0243
        Git SHA: 9c5fd81e6545d00b7f7c21ca9d8577dbd6a5fed2
        Local Mods: 0
        USB Interfaces: MSD, CDC, HID, WebUSB
        Bootloader CRC: 0x32eb3cfd
        Interface CRC: 0xcdb7b2a3
        Remount count: 0
        URL: https://microbit.org/device/?id=9901&amp;v=0249

-   The device is supposed to pair via the web using Chromium. I’m using
    “Chromium Version 87.0.4280.141 (Developer Build) built on Debian
    10.7, running on Debian bullseye/sid (64-bit)” according to
    Chromium’s [“About” page](chrome://settings/help).
-   The [WebUSB troubleshooting
    guide](https://support.microbit.org/support/solutions/articles/19000105428-webusb-troubleshooting)
    offers the Linux fix to pairing. At the command line:
-   ???
-   After pairing? Or perhaps uploading? there is a new file out on the
    micro:bit: `ASSERT.TXT` which contains:

```{=html}
<!-- -->
```
        Assert
        File: ..\..\..\source\daplink\drag-n-drop\file_stream.c
        Line: 165
        Source: Application

-   The uploaded [.hex](https://en.wikipedia.org/wiki/Intel_HEX) file
    appears in the directory momentarily but then is consumed by the
    microprocessor and disappears.
-   The backslashes seem suspiciously Microsoft and I’m wondering what
    three levels up from “root” is being represented by `..\..\..\`

------------------------------------------------------------------------

## Disconnect from the web {#disconnect_from_the_web}

I want to write Python code, and load it into the beastie without need
of a network. I have a computer, I have a USB cable and I have a
micro:bit / moto:bit. I should not need the internet in order to make
use of that. On Ubuntu 20.04, the following works:

-   ???
-   The `uflash` is needed to flash the code onto the micro:bit,
    apparently.
-   [MicroPython on the
    micro:bit](https://tech.microbit.org/software/micropython/)
-   a simple [moto:bit
    driver](https://github.com/hsshss/motobit-micropython)

------------------------------------------------------------------------

## REPL achieved! {#repl_achieved}

It probably completely messes up the Microsoft MakeCode flow completely,
but I now have the MicroPython REPL prompt:

-   ???

This appeared to work, in that the cp command flashed the yellow LED and
after starting `screen`, I could see that typing was causing the yellow
LED to flash, but it wasn’t echoing or, for that matter, responding to
carefully typed Python statements. In an attempt to correct…

-   ???

Was it the fact that I used a freshly downloaded firmware as a result pf
switching to `firmware-microbit-micropython-dl` or was it the fact that
I used `uflash` instead of `cp ...` that made the whole thing work? Or
perhaps that replacing `screen` with `minicom`…

(By the way, further investigation showed `minicom` reporting a baud
rate of 115200.)

------------------------------------------------------------------------
