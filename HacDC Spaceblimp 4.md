Spaceblimp-4 sucessfully launched and retrieved: April 10, 2011 ![ 500
px](_sb4_IMG_7739_small.JPG " 500 px")

## Summary

We launched from Breezewood Elementary School‎ at 1:30 pm, the balloon
popped at 2:41 pm at 103,764 ft, and touched back down at 3:09 pm.
Again, we were exceptionally lucky with the recovery and were able to
drive up to within 200 ft of the package.

The "package" contains two GPS units connected to radio modems that
transmit the balloon's location every 30s, various instruments, and
still and video cameras. It's all enclosed in super-space-age,
soft-sided insulated lunchboxes and secured to pegboard, cushioned for
landing with pink insulation foam.

![ 300 px](_sb4_path.png " 300 px") ![
430px](_sb4_the_package.jpg " 430px")

## Video

\
This time, in addition to running a still camera, we also put up a HD
video camera running 720p at 60 frames/sec. The results are fantastic!

-   [SB4 at apex on youtube](http://www.youtube.com/watch?v=6Cz4s8potWE)
    about 80 seconds before the balloon popped.

Notice how quickly it stabilized as the chute opened. Don't be deceived,
though, it got up to 136 mph within the first minute of fall -- there's
just not much chute drag in space.

-   [SB4 launch on youtube](http://www.youtube.com/watch?v=pwT_LmqpgCc).
    Skipping hours of preparation and 20 minutes filling up the balloon,
    going straight to the good stuff...

Why no movies in-between? The clouds were very heavy on launch day, and
most of the footage is white-out. Something failed in the video camera a
few minutes after popping too, so there's no re-entry video.

Oh yeah, and for fun all of the raw video is posted up on projects in
/home/spaceblimp4, and here is the script I used to make the
youtube-compatible videos: [Media:
sb4_editingMovieForYoutube.txt](Media:_sb4_editingMovieForYoutube.txt)

## Data

### On-board Logging {#on_board_logging}

The on-board datalogger keeps records of interior/exterior temperature
and GPS data.

[Media: SB-4_flight_log.gz](Media:_SB-4_flight_log.gz) (and
here's the code in R that generates the above images, and some PDFs to
boot: [Media:
spaceblimp4_analysis.gz](Media:_spaceblimp4_analysis.gz))

![ 300px](_sb4_altitude_time.png " 300px") ![
300px](_sb4_gpsHeading_time.png " 300px") ![
300px](_sb4_location.png " 300px") ![
300px](_sb4_riseSpeed_altitude.png " 300px") ![
300px](_sb4_riseSpeed_histogram.png " 300px") ![
300px](_sb4_riseSpeed_time.png " 300px") ![
300px](_sb4_temp_altitude.png " 300px") ![
300px](_sb4_temp_time.png " 300px") ![
300px](_sb4_windspeed_altitude.png " 300px") ![
300px](_sb4_windspeed_time.png " 300px")

### Accelerometer

The accelerometer package flown was the same as last time, with the
exception of having half the memory, so there are 50 observations per
second. The data are 0-255, with (roughly) 127 being no acceleration. If
you graph it, you can clearly see liftoff, popping, and landing. Until
we get some time for analysis, the rest is left up to you:

![ 300px](_sb4_accelerometer.png " 300px")

[Accelerometer CSV raw
data](http://www.postero.us/spaceblimp4_accelerometer.csv.gz) Here's
some python code to get you started with the accelerometer data: [Media:
analyseAccelerometer.py](Media:_analyseAccelerometer.py).
(Requires SciPy for plotting.)

## Launch Plans (Historic) {#launch_plans_historic}

+-----------------------+---------------------------------------------+
| Planned launch date:  | Sunday, April 10, 2011                      |
+======================:+=============================================+
| Launch time:          | 10:00 AM, Launch should take less than an   |
|                       | hour.                                       |
+-----------------------+---------------------------------------------+
| Launch Location:      | :   Where: Breezewood Elementary School‎     |
|                       | :   Address: 133 North Main Street,         |
|                       |     Breezewood PA 15533-8142                |
|                       | :   Lat/Long: 39.9970,-78.2440              |
+-----------------------+---------------------------------------------+
| Coordination/Talk-in: | 146.685 MHz simplex                         |
+-----------------------+---------------------------------------------+
| Planned Altitude:     | 100,000 feet                                |
+-----------------------+---------------------------------------------+
| Planned Ascent Rate:  | 1,300 ft/min                                |
+-----------------------+---------------------------------------------+
| Planned Descent Rate: | 1,000 ft/min                                |
+-----------------------+---------------------------------------------+
| Primary Beacon:       | Tiny Track 4 with 0.5 W transmitter on      |
|                       | 144.390 MHz, call sign W3HAC-11             |
|                       | ([map](http://aprs.fi/?call=W3HAC-11)). \$3 |
|                       | GPS module                                  |
+-----------------------+---------------------------------------------+
| Secondary Beacon:     | Son-of-WhereAVR with ublox GPS. Yaesu VX-1  |
|                       | handi-talkie with 1 W Transmitter, call     |
|                       | sign W3HAC-12                               |
|                       | ([map](http://aprs.fi/?call=W3HAC-12)),     |
|                       | Frequency 432.225 MHz                       |
+-----------------------+---------------------------------------------+
| Payload:              | Still camera, HD video camera, Geiger       |
|                       | counter to measure cosmic rays, a nine      |
|                       | degree of freedom Inertial Measurement      |
|                       | Unit, accelerometer, pressure, light and    |
|                       | temperature sensors.                        |
+-----------------------+---------------------------------------------+

The balloon is a 2000g Kaymont/Totex with 291 cubic feet of helium. The
total weight of the capsule is about five pounds.

```{=mediawiki}
{{Template:Spaceblimp}}
```
