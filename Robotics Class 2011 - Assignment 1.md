*Note: This assignment assumes you have already installed ROS as well as
the supplemental ROS package named
[irobot_create_2_1](http://www.ros.org/wiki/irobot_create_2_1), an
excellent ROS package that serves as a ROS driver for the iRobot Create
robot series.*

Write a ROS node that subscribes to the "sensorPacket" topic (a message
of type irobot_create_2_1/SensorPacket), and uses values from within
this message to represent the emotional state of the robot. You will
then publish the robot emotional state via publishing a message of type
robot_emotions/EmotionalState with the topic name "robot_emotions".

In order to start publishing the "sensorPacket" at home without a robot,
you will need to check out the irobot_sensor_simulator ROS package,
available from the HacDC ROS repository (several of you already
installed it):

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/irobot_sensor_simulator>**

**rosmake irobot_sensor_simulator**

Once the make is done, you can start up the simulator by typing:

**roscore**

**rosrun irobot_sensor_simulator sensor_simulator.py**

Note that this node will not produce any output. It will just sit there.
If you do a "rostopic list" at this point, you will see a sensorPacket
topic, and you can display it using "rostopic echo sensorPacket".

In order to start modifying the values to test your emotion generator,
you will need to run the ROS
[dynamic_reconfigure](http://www.ros.org/wiki/dynamic_reconfigure)
reconfiguration GUI interface. This will provide the GUI interface
illustrated in class that allows you to modify values in the
sensorPacket. You can start the reconfigure GUI by typing:

**rosrun dynamic_reconfigure reconfigure_gui**

You will need to select irobot_sensor_simulator from the drop down box
and you should then be presented with boxes and sliders that let you
change the values of the sensor packet in real time.

Note that these sliders allow you to configure the values of the sensors
in an arbitrary fashion. However, of course, there is a nominal state of
the robot defined by having a fully charged battery and being properly
oriented with its base firmly on the floor.

A powerful feature of ROS is the ability to create archives, or "bag
files" that contain sensor data that can be played back. A bag file
containing messages of type irobot_create_2_1/SensorPacket has been
created and can be downloaded
[here](http://hacdc-ros-pkg.googlecode.com/files/2011-06-08-20-32-02.bag).
After downloading this bag file, it can be played back using the
[rosbag](http://www.ros.org/wiki/rosbag) package, which should be
installed by default:

**rosbag play 2011-06-08-20-32-02.bag**

This bag file was recorded with a full battery charge with the robot on
the floor. At a point in the middle, the wall sensor was triggered with
a piece of paper (the wall sensor signifies when the Roomba detects a
wall to its right side which is useful for wall-following). Near the end
of the bag file, the robot was lifted off the floor, causing the states
of wheel drop and cliff sensors to change.

In order to obtain the definition of the robot_emotions/EmotionalState
message, you will need to check out the robot_emotions ROS package from
the HacDC ROS repository:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/robot_emotions>**

**rosmake robot_emotions**

You can explore the structure of the two above message types by using
rosmsg show in the following way:

**rosmsg show irobot_create_2_1/SensorPacket**

**rosmsg show robot_emotions/EmotionalState**

Assignment Hint: The robot_emotions ROS package contains, in addition to
the definition of the robot_emotions/EmotionalState message, a complete
(but very simple) solution to the homework. Feel free to investigate it
if you need help. If you want to try running the emotion generator
provided within the robot_emotions package, just type (after doing the
rosmake robot_emotions above):

**rosrun robot_emotions emotion_generator.py**

After typing this, a "rostopic list" command will show a new topic
called robot_emotions, just as the assignment asked for.

[Back to Robotics Class
2011](http://wiki.hacdc.org/index.php/Robotics_Class_2011)

[Category:RobotClass](Category:RobotClass)
