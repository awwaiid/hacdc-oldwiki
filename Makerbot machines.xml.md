### This is important and necessary. {#this_is_important_and_necessary.}

After installing replicator-G and running it for the first time, a
.replicatorg directory will be created in your home directory (without
notification). You'll need to replace the machines.xml file in the
secret \~/.replicatorg directory with the following code (or at least
add in the part about Andy's Cupcake).

On Windows XP, replicatorG v23 doesn't seem to recognize a machines.xml
place in \~/.replicatorg folder. Instead, add Andy's makebot info to the
makerbot.xml file, located in the machines folder of your replicatorg
install.

On OSX, Instead, add the machines from Andy's makebot info to the
cupcake.xml or makerbot.xml file, located in the machines folder of your
replicatorg install (/Users/myname/Applications/replicatorg/machines/).
Be sure you install ALL the necessary folders into a folder in
Applications.)

The machines.xml file describes how the machine is physically set up to
replicator-G. The important difference between the Andy's version and
the regular version is that Andy replaced the z-axis screws on his bot
with better ones. The new screws are great for stability, but they have
a different thread pitch from default, resulting in a different height
traveled per rotation. The machines.xml file quantifies that travel for
the build software.

A new stepper controller was installed on the makerbot. It uses pololu
stepper controllers setup in 1/16 microstepping configuration. You will
want to use the following block for the machines.xml so the scale values
are correct for the 1/16 settings. The changes are made in the
`<geometry>`{=html} section of the definition for Andy's cupcake.

Here is the file you want:
[Media:cupcake_machines.xml.gz](Media:cupcake_machines.xml.gz)
(Yes, you have to unzip it. Blame Mediawiki.)

1/16 microstepping (4 axis controller)

    <?xml version="1.1" encoding="utf-8"?>
    <machines>
            <!-- do not remove this machine configuration!!! -->
            <machine>
                    <name>3-Axis Simulator</name>
                    <geometry type="cartesian">
                            <axis id="x" length="300" maxfeedrate="1000" scale="11.4485"/>
                            <axis id="y" length="300" maxfeedrate="1000" scale="11.4485"/>
                            <axis id="z" length="300" maxfeedrate="100" scale="320"/>
                    </geometry>
                    <tools>
                            <tool name="Pinch Wheel Extruder v1.1" type="extruder" material="abs" motor="true" floodcoolant="false" mistcoolant="false" fan="true" valve="false" collet="false" heater="true"/>
                    </tools>
                    <clamps></clamps>
                    <driver name="null"> <!-- use a fake driver -->
                            <speedup>20</speedup> <!-- amount to speed up print process:  1 = realtime, 2 = 2x, 10 = 10x, etc. -->
                    </driver>
            </machine>

            <machine>
                    <name>Andy Walker's Cupcake with 4 axis board</name>
                    <geometry type="cartesian">
                            <axis id="x" length="300" maxfeedrate="5000" scale="94.139704"/> 
                            <axis id="y" length="300" maxfeedrate="5000" scale="94.139704"/>
                            <axis id="z" length="300" maxfeedrate="150" scale="1256"/>
                    </geometry>
                    <tools>
                            <tool name="Pinch Wheel Extruder v1.1a" type="extruder" material="abs" motor="true" floodcoolant="false" mistcoolant="false" fan="true" valve="false" heatedplatform="true" collet="false" heater="true"/>
                    </tools>
                    <clamps></clamps>
                    <driver name="sanguino3g">
                            <!-- optional, defaults to first serial port found.    <portname>COM1</portname> -->
                            <!-- required: we need 8 bit and 38400 baud. -->
                            <rate>38400</rate>
                            <parity>8</parity>
                            <!-- optional, defaults to 1.                          <databits>1</databits> -->
                            <!-- optional, defaults to N.                          <stopbits>N</stopbits> -->
                            <debuglevel>0</debuglevel>
                    </driver>
                    <warmup>
                    </warmup> <!-- required for replicatorG v 23 -->
                    <cooldown>
    (Turn off steppers after a build.)
    M18
                    </cooldown>
            </machine>
    </machines>

1/2 microstepping configuration (makerbot stepper controllers)

    <?xml version="1.1" encoding="utf-8"?>
    <machines>
            <!-- do not remove this machine configuration!!! -->
            <machine>
                    <name>3-Axis Simulator</name>
                    <geometry type="cartesian">
                            <axis id="x" length="300" maxfeedrate="1000" scale="11.4485"/>
                            <axis id="y" length="300" maxfeedrate="1000" scale="11.4485"/>
                            <axis id="z" length="300" maxfeedrate="100" scale="320"/>
                    </geometry>
                    <tools>
                            <tool name="Pinch Wheel Extruder v1.1" type="extruder" material="abs" motor="true" floodcoolant="false" mistcoolant="false" fan="true" valve="false" collet="false" heater="true"/>
                    </tools>
                    <clamps></clamps>
                    <driver name="null"> <!-- use a fake driver -->
                            <speedup>20</speedup> <!-- amount to speed up print process:  1 = realtime, 2 = 2x, 10 = 10x, etc. -->
                    </driver>
            </machine>

            <machine>
                    <name>Andy Walker's Cupcake</name>
                    <geometry type="cartesian">
                            <axis id="x" length="300" maxfeedrate="5000" scale="11.767463"/> 
                            <axis id="y" length="300" maxfeedrate="5000" scale="11.767463"/>
                            <axis id="z" length="300" maxfeedrate="150" scale="157"/>
                    </geometry>
                    <tools>
                            <tool name="Pinch Wheel Extruder v1.1a" type="extruder" material="abs" motor="true" floodcoolant="false" mistcoolant="false" fan="true" valve="false" heatedplatform="true" collet="false" heater="true"/>
                    </tools>
                    <clamps></clamps>
                    <driver name="sanguino3g">
                            <!-- optional, defaults to first serial port found.    <portname>COM1</portname> -->
                            <!-- required: we need 8 bit and 38400 baud. -->
                            <rate>38400</rate>
                            <parity>8</parity>
                            <!-- optional, defaults to 1.                          <databits>1</databits> -->
                            <!-- optional, defaults to N.                          <stopbits>N</stopbits> -->
                            <debuglevel>0</debuglevel>
                    </driver>
                    <warmup>
                    </warmup> <!-- required for replicatorG v 23 -->
                    <cooldown>
    (Turn off steppers after a build.)
    M18
                    </cooldown>
            </machine>
    </machines>

[Category:Makerbot](Category:Makerbot)
