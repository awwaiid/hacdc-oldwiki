![ 800px ](_Sb7_peak.jpg " 800px ")

# Flight Summary

![ 750px ](_Sb7_flight_path.jpg " 750px ")

                  Date of launch: Saturday, April 14, 2018
  ------------------------------- ---------------------------------------------
                  Time of launch: 11:08
                 Time of landing: 14:30
                Time of recovery: \~17:15
                 Flight duration: 3:22:00
          Peak recorded altitude: TBD
              Location of launch: Strasburg VA, (38 59'48.77"N 78 21'03.27"W)
             Location of landing: Manchester MD, (39 40'33.6"N 76 44'03.9"W)
    Distance (launch to landing): 98.3 mi, (158.2 km)
                    Balloon type: 1500 g Kaymont
                  Payload weight: TBD
                    Balloon lift: TBD
                        Net lift: TBD

------------------------------------------------------------------------

# Project Description & Status

SpaceBlimp 7 was designed as a community project driven by independent
specialists from DC (Nancy C. Wolfson-Project Manager), Maryland, and
members from HacDC (Enrique Cobas-Technical Manager), Rockville
Makerspace (Samarth C. & David R. DeLalio- Technical Manager), and
Unallocated Hackerspace. Spaceblimp 7 is an educational and exploratory
stratospheric balloon project that lofts various payloads to near-space
(about 100,000ft). The team is dedicated to experimenting with new
technologies that will make near space activities less expensive and
more broadly accessible. From electronics to mechanical design to
physics, the interconnectedness of disciplines teaches a lesson in
engineering teamwork and collaboration.

The project has Technical, logistical and Educational goals which are
described below. Spaceblimp 7 looks to add new components that weren’t
part of HacDC’s previous six Spaceblimp launches. By forming a
partnership with several other area makerspaces, volunteers, hackers and
educators we are expanding our team and pooling resources. By expanding
the project we aim to increase its visibility and benefit all the
organizations involved as well as an increase fund-raising opportunities
to help sustain all the partners/organizations and the project
Spaceblimp in the long-term. This will also expose high school students
to educational and technical resources outside of the school environment
as well as giving all the participants the opportunity to share skills
and interests to work together and learn from one another to achieve
shared goals. Local area hackers and space enthusiasts will also benefit
by being able to actively participate and develop skills in the design
and launch of the payloads.

Local area hackers, space enthusiasts, and community members have come
together to share and learn new skills in the design, construction, and
launch of the project.The sixth launch, Spaceblimp 6, reached 104,000ft.
Spaceblimp 7 is being done in collaboration with Rockville Makerspace
[1](http://rockvillesciencecenter.org/programs/studio-i-makerspace/) and
Unallocated Space [2](https://www.unallocatedspace.org/).

COMING SOON: -Technical, Logistical, Educational and Outreach Results.
-The Story Behind the Spaceblimp 7 -Photo Galery

# Project Goals

Baseline **technical goals** are the safe and successful launch,
tracking and recovery of a stratospheric balloon and its payloads. These
goals involve exploration of concepts of buoyancy, basic electronics and
energy storage, triangulation and timekeeping, radio propagation,
weather prediction, FAA regulations and stratospheric environment
conditions. In addition to these baseline goals, the project will
welcome additional technical goals from volunteers and students
primarily in the form of payload experiments suggested, designed and
built by them. Spaceblimp will encourage use of CubeSat geometry
payloads to give students experience with the CubeSat design constraints
and to foster discussion with future other CubeSat missions.

The **educational objective** is primarily to provide an engaging,
multi-day hands-on educational experience for students and volunteers
heavily focused on STEM. Students will be engaged in a hands-on lesson
by disassembling, reassembling and testing the basic tracking module
components (GPS, radios) and other payloads. The nature of the balloon
flight will naturally lead to discussion of scientific subjects like
buoyancy, atmospheric composition and density, radio propagation,
weather prediction and technical topics like power consumption and
energy storage. Students will have first-hand exposure to a team working
environment with delegation of responsibilities and the necessary
communication and coordination. Critically, students will be allowed to
suggest, design and build their own balloon payloads to be launched into
near-space. This kind of self-directed educational approach uses
students own natural curiosity and motivation to increase engagement and
their sense of ownership of the resulting project.

# Flight Summary

After two weather-related postponements, launch took place on Saturday
April 14, 2018, at Strasburg VA. Spaceblimp 7 was launched from Shopping
Center Drive in Strasburg, VA and was recovered just outside of Pretty
Boy Reservoir in Manchester, MD, just south of the Pennsylvania border.
As indicated by the recorded track above, GPS coodinates were lost near
Harper's Ferry, WV at an altitude about 30,000ft and regained during the
descent. At the moment the cause for both GPS receivers to lose their
lock at roughly the same time is unexplained. Possibilities include
interference from the Raspberry Pi Power Supply DC-DC Converter or jet
stream turbulence rocking the payload, causing loss of line-of-sight to
GPS satellites. However, the GPS lock was reliable at first, and was
regained during the more turbulent descent phase.

# Logistics

Project logistics include those necessary to achieve the technical
goals, but also networking of area makerspaces and volunteers, outreach
to local governments, funding sources and potential sponsors,
coordination of project documentation and public exhibition of the
project. This may include informational booths at relevant area events,
compilation of video and publication of a project wiki. All new partners
(including students) will be able to add or edit our project plan and
proposed new topics for the meeting’s agenda.

Points of Contact: HacDC: Enrique C, Technical Manager and Funding POC,
enrique@hacdc.org HacDC: Nancy W, Project, Logistics and Student
Outreach Manager Rockville RSC: Sam C, Technical Manager Rockville RSC:
David D, Logistics and Outreach Manager Unallocated Space: Buddy,
Technical and Logistics Manager

# Environmental Data

A nearly-complete record of sensor measurements was obtained from the
Raspberry Pi Pimoroni Enviro PHAT sensor board. These divided into two
data logs, one for pressure, temperature, illumination, illumination
color and one for 3-axis acceleration and compass heading. The former
acquired data several times per minute while the latter was acquired at
about 40Hz. These were acquired and analyzed using Python scripts and
plotted in gnuplot.

The pressure drops as expected from atmospheric (101kPa) to 1.68kPa. The
minmium pressure recorded corresponds approximately to 94,000ft altitude
according to some online calculators. Since we lack a GPS log of
altitude at high altitudes, this is an important estimate. However, the
sensor component on the Enviro PHAT is only rated down to 30kPa and
readings far below this range may be untrustworthy. We may perform
additional tests of the EnviroPHAT board in a vacuum chamber to
establish a calibration. In addition the timestamp for the minimum
pressure (171156 UTC) may be incorrect due to an unexplained glitch (see
below).

**For all plots below, Flight Time (sec) was obtained by dividing evenly
among all timestamps between 15:00:00 and 18:00:00 UTC. However, 18:00
UTC should actually read 18:30 UTC (see glitch below). In addition, this
method hides the uneven distribution of data collection especially in
accelerometer data. In reality this was acquired in bursts at 40Hz.**

![](Sb7P_ftime.png "Sb7P_ftime.png")

**Glitch at 164737 UTC.**

At 16:47:37.75 an unexplained glitch occurred: the timestamps in the
environmental sensor log jump backwards almost 30 minutes to 161717. The
pressure log drops suddenly from 8.388kPa to 7.042kPa, a drop of
1.346kPa. Note the Pi Zero doesn’t have an onboard clock so timestamps
represent the running time of the script rather than the real absolute
time. Extrapolating from the rate of pressure drop just before and after
that point, the drop should have taken about 6 minutes. This is a
reasonable delay for the Raspberry Pi to shutdown, reboot and complete a
file system check and resume the measurement script. The glitch matches
an unusually turbulent segment in the accelerometer data but the
readings don't seem harmful (+/-0.1g at 1Hz). Far more turbulence
occurred several minutes later during the ascent (+/-0.2g 1Hz), during
the descent (+/-0.5g \>2Hz) and during the landing (+/-2.0g) with no
corresponding malfunctions.

The most turbulent part of the ascent (+/-0.2g at 1 Hz) occurred several
minutes later and during the decent

![](Pglitch_ftime.png "Pglitch_ftime.png")

**Temperature**

Temperature readings fall steadily from ambient ground temperature about
29.7 C to -39.9C at 16:20:19 UTC when the pressure reading was 17,568 Pa
or about 40,300 ft calculated altitude. It then rises again to 36.3 C at
17:12:10 UTC\* (the payload is in the sun and there’s less convective
cooling with less air). That’s roughly the peak altitude. Then the
temperature falls more steeply as the payload descends into cold (-40C)
air, and then warms near ground altitude where the air is warmer.

![](Sb7T_ftime.png "Sb7T_ftime.png")

**Illumination**

Direct sunlight maxes out the illumination sensor (at 65,535 bits) and
most of the data is thus this value. But some data points are lower,
possibly measurements taken randomly in the shade of the nylon strap as
the payload rotated. These would be measurements of the sky brightness
not including direct sunlight, and they show a trend. They begin hear
60,000 and fall steadily to 15,000, i.e the sky transitions from bright
to relatively dark. Illumination includes light scattered from the
balloon and rigging. Large deviations from the max value (i.e. dark
measurements) stop abruptly near the peak altitude. I’ll guess the
payload was spinning too fast in descent to acquire a complete
measurement in the shade.

![](Sb7Lux_ftime.png "Sb7Lux_ftime.png")

**Blueishness**

I calculated blue saturation by taking the Blue/RBG ratio in the RGB
sensor data. Again, most of the time the sensor is maxed out by direct
sunlight, setting the Blue/Red ratio to 1.0. However in the shade the
measurement is meaningful. The sky illumination becomes more blue for
about 2000 seconds (35-40 minutes) and then becomes less blue. At the
highest altitudes the illumination is actually slightly reddish (the
latex balloon color?).

![](Sb7Blue_fltime.png "Sb7Blue_fltime.png")

**Delay between measurements**

In principle all measurements should take the same amount of time,
although some scatter is expected from the script swapping between fast
accelerometer data (about 10 seconds worth) and environmental sensor
data (measured every few seconds). The Raspberry Pi Zero was also tasked
with photographing another payload every 60 seconds or so, an operation
that could hog the CPU or the microSD card momentarily. These should be
regular, consistent delays throughout the flight.

The timestamp differential between measurements is largely binomial; the
measurements are either 21 or 27ms apart although there's significant
scatter even up to 55ms.

The **glitch** is visible in this data as well, as a statistical change
in the measurement delay times: the fastest measurements (20.1-20.5ms)
became more common than they were before. This changed lasted the
remaining duration of the flight. The increased measurement delays
exactly at the glitch time (6336 flight seconds or 16:48:30.5 UTC) are
consistent with the script running while boot processes are still
momentarily running after a reboot.

![](Sb7Delay_ftime.png "Sb7Delay_ftime.png")

# Accelerometer Data

The ascent phase was gentle with excursions of +/- 0.2g. There's no
indication of an acceleration anomaly just prior to the glitch. The
balloon pop occurs near 17:12:19\* UTC where the total acceleration
suddenly drops from 1.0g to below 0.1g for several seconds. Terminal
velocity is approached very quickly as within 10 seconds the payload
registers an average of about 1.0g again.

![](Sb7Accelg_pop_ftime.png "Sb7Accelg_pop_ftime.png")

Minimum Pressure: 1685Pa at 17:11:56.1\* UTC.

Peak Temperature: 36.25C at 17:12:10.7\* UTC.

Last '\~1G' Data: 1.07g at 17:12:18.5\* UTC.

First 'Zero-G' Data: 0.1g at 17:12:19.1 UTC.\*\*

-   Timestamps after 164737 are slow by 30 minutes due to a glitch (see
    glitch discussion above). 171200 corresponds to 17:42 UTC.

```{=html}
<!-- -->
```
-   -   Note the the sequence is 1.07, 1.75, 1.70, -0.06, 0.10g in a
        span of 0.6 seconds.

# System Logs

**Useful Links** Working documents on Google Drive:
[3](https://drive.google.com/open?id=1Lw55HiaDk5GbLUFwuXcTWeM44eYJ7sq1)

`<noinclude>`{=html} `{{Template:Spaceblimp}}`{=mediawiki}
`</noinclude>`{=html}
