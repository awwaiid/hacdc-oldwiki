Currently I only have some meta ideas:

I'd like to do something that:

\- can't be done using microcontrollers.

\- that I can complete

------------------------------------------------------------------------

I thought I'd share another meta-idea that might lend itself FPGA
programming. I have to come up with a practical application, to test out
these ideas, but I need help working out an issue, described at the
bottom of this.

This idea follows what I call the "sailing philosophy", that is: meet
requirements using the wind that you get, even if you have to zigzag,
and NOT getting all silly about controlling the wind and rest of the
environment.

This may also be an example of the ["Worse is
better"](http://en.wikipedia.org/wiki/Worse_is_better) philosophy.

## The sloppy redundant full feedback approach to physical computing

-or-

## The Cloud Computing approach to Managing Sensors

Abstract: Physical computing, robotics, and mechatronics suffer from a
mapping problem, a mechanical complexity problem, and a configuration
management problem. These problems can be solved by creating and using
clumps of cheap sensors, attached using modern adhesive materials and
connecting their output wires randomly to the input of the computer
controller. Then, requiring the designer to set a sensor clump for every
movement, the controller can manage it's own configuration
automatically.

Sensor mounting: Wrap-on, spray on, glue on. Must work without perfect
positioning and without careful mounting of screws and mounting plates
-- none of that. It should be like putting on a band aid, a bandanna, or
peeling a Bannana. :\^) It should be a blob of clay with wires that you
push into the correct spot for sensing. (Epoxy putty and two part
silicone come to mind.) Or perhaps like a strip of adhesive tape or
Velcro(TM) that you wrap around or along a moving joint.

Sensor clumps: Sensors must be a bunch of more or less redundant wired
outputs that sense different portions of where they are mounted. For
example, an array of light sensors, each positioned and pointed randomly
and distributed. For another example, conductors thinly separated,
changing resistance, distributed around something that moves, or
capacitive around gaps, or hall affect around moving metal. Each sensor
is actually a bundle of cheap sensors, maybe thirty or a hundred tiny
points of electronics that change electrical output in response to a
change in the environment.

Connecting the sensors: Should be a bundle of wires, perhaps a ribbon
cable, that makes it's way to each sensor. The mapping of the wires to
the input on the controller MUST be inconsequential. Figuring out which
wire goes to which sensor is a responsibility of the system, NOT human
that connects them. The wires get bundled together randomly and
connected regardless of what they sense, or even if they are not
connected.

Actuators: Motors, piston cylinders, lights, heaters, anything that
moves, emits radiation, or otherwise changes a physical state MUST have
a sensor clump mounted on or with it. This is practical because sensors
are easy to apply and cheap -- see sensor clumps, and sensor mounts.

Controller initialization: When the controller is powered on it must go
through a series of movements whereby it changes an actuator and records
which sensors are relevant to each movement and what scale . This way it
can set up feedback loops from the control output to the sensor
feedback. This is similar to what I imagine infants do, as they move
randomly and map the sensations produced. It can store this mapping of
actuator to sensor in non-volitale memory for next power up, perhaps use
it as a hint, so that the initialization can be much faster and requires
only a small movement.

Limit sensing 1: Limit sensing must be done carefully since driving a
motor past it's range of motion can damage the structure or the
actuator. One idea perhaps to designated some sensors that report a bad
state and other sensors that can predict the bad state. For example, a
position sensor and a limit switch to indicate a bad state, or a
temperature sensor that can be calibrated to predict an over-heating
sensor. The bad state sensor must be manually calibrated, or positioned
at the limit manually. I don't know how the controller would determine
which is the bad state sensor. Perhaps it could be first initialized
with all bad state sensors in their good state, then record that for the
life of the device.

Limit sensing 2: Another idea for limit sensing is the designer could
associate particular actuators as having limits, so that during
initiation it will search for it's limits by oscillating in small
increments, progressing slowly in one direction, until it senses
feedback with the same frequency as it's oscillation, and then do the
same in the other direction.

The blocking challenge: Another issue with this approach that I have to
solve before I start is that of analog to digital. A wide variety of
analog inputs with unpredictable ranges need to be connected to a large
number of digital inputs. I'm hoping some simple thresholding with
comparators or similar can allow easily connecting to digital inputs. I
guess an analog multiplexer connected to an ADC might do the trick. Then
I just need 8 or 16 bits to connect the signal input to the controller,
and address bits that select a sensor's wire, maybe another few IO pins
to control a gain amplifier for sensors with weak signals.

I had hoped that FPGA's had more analog features at their inputs, but
they seem black and white. This is the part that I haven't yet figured
out. Please help! --[DLotts](User:DLotts) 06:39, 28 February
2010 (UTC)

[Category:FPGAWorkshop](Category:FPGAWorkshop)
