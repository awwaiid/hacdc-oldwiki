When something goes wrong, its nice to note it here. Also nice to note
any fixes (eg. resurfacing the milling platform).

## 2 May. 2013 {#may._2013}

Maximum X-Axis feed rate of 60in/min was moderately error prone,
occasionally triggering emergency stop. Reduced to 40in/min, identical
to Y-Axis setting. [mirage335 2013-05-02](User:mirage335)

## 2 Feb. 2013 {#feb._2013}

Settings on Mach3 were incorrect; communication with the mill controller
was impossible. The following settings changes were made (and some
fiddling done) and the mill appears to be functioning and calibrated
well:

-   Changing the port to address 0x378 allowed the spindle control to
    function.
-   Changing X,Y,Z,A drive and step ports to port 1 (0x378) and setting
    low trigger on axis X.
-   Recalibrated "steps per" with the calibration wizard under
    *settings* using dial indicator (now set for \~16250).

Note: Often restarting Mach3 seems to be required to actually update
some of the port settings (although it pretends otherwise). Mill
calibration was accurate to only \~0.003" (which maybe a limit imposed
by the limited rigidity of the mill+stand).

[Shawn Nock (OpenPGP: 0x65118FA5)](User:Nock) 12:47, 3
February 2013 (PST)

## 22 Jan. 2013 {#jan._2013}

-   Major upgrades in progress thanks to TJ.

## 10 July 2012 {#july_2012}

-   Platform still needs replacing, but Barlow resurfaced the remaining
    usable area. At least now it is level again.

## 28 Apr. 2012 {#apr._2012}

-   Someone accidentally resurfaced the milling platform (milled too
    deep). Now the platform needs replacing.

## 11 Apr. 2012 {#apr._2012_1}

-   Milling platform is no longer level, thanks to the screws holding it
    down being loosened up. Needs resurfacing.

[Category:CNC_Mill](Category:CNC_Mill)
