![ 500 px](_sb5_IMG_9220.JPG " 500 px")

Spaceblimp-5 Launched: July 9, 2011

## Summary

This time we were going for altitude, and we got it! The max recorded
altitude was 118,533 ft! (Getting us the 16th highest altitude record on
[http://arhab.org/ ARHAB.org](http://arhab.org/_ARHAB.org) !)

The launch site was: Strasburg VA, in a open area near the town on Rt
11, near the I-81. Lat: 38.9968 N Lon: 78.3508W

![ 320 px](_sb5_launch_still.jpg " 320 px") ![ 500
px](_sb5_track.jpg " 500 px")

The path the balloon took was pretty strange, with the wind shifting
between ascent and descent, and so we had a lot more driving to do than
usual. The primary GPS/radio worked perfectly, and we got super-lucky
with the recovery, picking up the package \~15 minutes after it hit the
ground. The video camera overheated and failed before launch (booo!) and
we're still working on the instrument data, but all signs point to some
new and interesting results at the highest altitude we've ever run.

What challenges are left for the Spaceblimp project? Get involved:
subscribe to [http://hacdc.org/mailman/listinfo/spaceblimp the
Spaceblimp mailing
list](http://hacdc.org/mailman/listinfo/spaceblimp_the_Spaceblimp_mailing_list)
and help us figure it out!

Visiting from another planet? [Here's more about
us](http://www.hacdc.org/about).

Want to help us do more awesome stuff? [Make a tax deductible donation
to our .org!](http://www.hacdc.org/donate)

## Pictures and Video

Photos have been uploaded to
<http://www.flickr.com/photos/itechgeek/sets/72157627058450849/>.

## Data

### Accelerometer

For now, here is the raw accelerometer data: [Media:
spaceblimp5_accelerometer.csv.gz](Media:_spaceblimp5_accelerometer.csv.gz)

Analysis to come in the next few days....

### Flight Tracker

## Launch Plans

     Planned launch date: Saturday, July 9, 2011
  ----------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------
             Launch time: 10:00 AM, Launch should take less than an hour.
         Launch Location: Strasburg, VA
    Coordination/Talk-in: 146.685 MHz simplex (this might change, please monitor Twitter (@HacDCSpaceblimp) and mailing list for updates.
        Planned Altitude: 120,000 Feet
     Planned Ascent Rate: 1,000 feet/minute
    Planned Descent Rate: 1,000 feet/minute
          Primary Beacon: Son-of-WhereAVR with ublox GPS. Yaesu VX-1 handi-talkie with 1 W Transmitter, call sign W3HAC-11 ([map](http://aprs.fi/?call=W3HAC-11)), Frequency 144.390 MHz
        Secondary Beacon: GSM mobile phone modue, uBlox GPS
                 Payload: 9 DOF IMU, Geiger counter, temperature, pressure, humidity, and light sensors

## Payload

### Radios

There were two radios on board the blimp that transmitted out the GPS
data:

-   The primary radio was tied to the GPS and transmitted out to a
    network of amateur radio enthusiasts who then passed the location
    information on to get mapped here:
    [APRS.fi](http://aprs.fi/?call=W3HAC-11). We also ran some custom
    software that passes this data on to a Twitter account (once per
    minute!) which you could follow on your phone: [DC Spaceblimp
    Primary Twitter Feed](http://twitter.com/#!/DCSpaceblimp). (Click
    the link in the Twitter to pull up a map!)

```{=html}
<!-- -->
```
-   The secondary radio was actually a GSM cell phone module, and
    broadcasted its data when in range of a cell tower. It broadcasted
    both GPS data for tracking, and a lot of the sensor data for
    science. It also twittered through [Society Of Robots Twitter
    Feed](http://twitter.com/#!/SocietyofRobotz).

### Cameras

The payload contains a couple cameras:

-   a video camera (Canon Zi6)
-   a still camera (Canon Powershot A-480) running custom firmware to
    get better exposures from space

### Instrumentation

and a lot of instrumentation:

-   a geiger counter
-   9 degree-of-freedom IMU ([Inertial Measurement Unit on
    Wikipedia](http://en.wikipedia.org/wiki/Inertial_measurement_unit))
-   high-speed (50 sample/sec) accelerometer
-   internal and external temperature sensors
-   humidity sensor
-   air pressure sensor
-   IR and visible light sensors
-   a solar panel, hooked up to measure the voltage

```{=mediawiki}
{{Template:Spaceblimp}}
```
