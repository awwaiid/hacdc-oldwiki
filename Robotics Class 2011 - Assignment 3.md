Write a ROS node that subscribes to the "/face_coords" topic that is
generated from the previous face detector homework assignment and use
the information provided in that topic to move the robot base by
publishing messages on the "/cmd_vel" topic. The goal of the assignment
is to build a face tracker that attempts to move the robot to keep faces
centered in the camera frame. The "/cmd_vel" topic is of type
"geometry_msgs/Twist", and you can learn more about it by typing:

**rosmsg show geometry_msgs/Twist**

For the simulated robot you will use for this assignment, it is
important to know its coordinate system. X is positive going forward, Y
is positive going to the left, and Z is positive going up. This
coordinate system is a right handed coordinate system. We spent a
significant amount of time in class going over the importance of keeping
track of the coordinate system of the robot, and always making sure you
follow the right-hand rule for dealing with the robot coordinate frame.

Because the robot we are using is a differential drive robot, it has two
powered wheels and can only move forward and backward, and it can also
rotate in place. Thus, for this assignment, when you publish the
"/cmd_vel" topic, you need only worry about populating the *linear.x*
(forward and backward motion) and *angular.z* (turning left and right in
place) components of the geometry_msgs/Twist structure. Following the
coordinate system above, moving the robot forward would require you to
publish a geometry_msgs/Twist message with a positive *linear.x*
component. Rotating the robot in place to the left would require you to
publish a geometry_msgs/Twist message with a positive value in the
*angular.z* component. No other fields need be populated in the
geometry_msgs/Twist message other than *linear.x* and *angular.z*.
Remember that you must publish the geometry_msgs/Twist message on the
"/cmd_vel" topic. The robot is listening for messages on this topic and
will move accordingly.

This assignment is more complicated than the first two, and requires
several nodes to be running. First, you must install gazebo and be able
to run the simple gazebo empty world launch script. The simple command
to start gazebo is:

**roslaunch gazebo_worlds empty_world.launch**

It may help to follow the ROS instructions
[here](http://www.ros.org/wiki/simulator_gazebo/Tutorials/StartingGazebo)
in order to install and get gazebo running.

The next step will be to make sure you have the
*gazebo_erratic_plugins*. These are extensions to gazebo to support
differential drive robots (like the iRobot Create) that have two driven
wheels. If you installed the ROS installation using Synaptic, you can
search Synaptic for "erratic" and you should see a package named
**ros-electric-erratic-robot**. You will want to install this package
through Synaptic. If you compiled from source, you will want to check
out, rosdep install, and rosmake the
[erratic_robot](http://www.ros.org/wiki/erratic_robot) package.

Once that is complete, you can proceed to checking out the HacDC robot
simulation:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/irobotron_description>**

**rosmake irobotron_description**

Once that completes, you can start the robot in the simulation (make
sure you have done the **roslaunch gazebo_worlds...** step above before
doing this):

**roslaunch irobotron_description create_mobile_base.launch**

You should then see the robot get inserted into the world. At this
point, the robot is up and running in the simulation and you can do a
*rostopic list* to see a variety of message topics. The robot simulator
has a camera being simulated that has characteristics similar to the
camera on the actual robot. You can subscribe to the simulated robot's
camera stream the same way you have done in the past:

**rosrun image_view image_view image:=/stereo/left/image_rect**

Of course this world is not terribly interesting as it is completely
empty. You can add some excitement by using the **floating_faces**
package available in the HacDC ROS repository:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/floating_faces>**

**rosmake floating_faces**

Once that is built, you can then launch the floating faces into the
world: **roslaunch floating_faces faces.launch**

Once the faces are in the simulation, it would be useful to be able to
manually drive the robot around before trying to control it with a
controller. You can do that by checking out the
[teleop_twist_keyboard](http://www.ros.org/wiki/teleop_twist_keyboard)
ROS package and building it. Once it is built, you can start it by
typing:

**rosrun teleop_twist_keyboard teleop_twist_keyboard.py**

You can following the onscreen instructions on how to use it, but it is
advisable to slow the robot commands down by pushing the "z" key a few
times, so that the "speed" is around 0.2. This has been found to be a
reasonable maximum speed for linear motion with this particular robot.
You can move forward by pressing "i", and turn left by pressing "j", but
these are all on the on-screen instructions when you run the
teleop_twist_keyboard node. At this point, if you are still subscribed
to the */stereo/left/image_rect* image stream, you should be able to
drive around and see what the robot sees, and you should be able to see
the faces on the cubes.

Now, you could start up your face detection node from the previous
example. Since the simulated robot is publishing the image topic named
"/stereo/left/image_rect", your face detection system should work on the
faces in the simulated world.

In class we also went over PID control. There is an excellent article on
PID
[here](http://www.eetimes.com/ContentEETimes/Documents/Embedded.com/2000/f-wescot.pdf)
that is recommended reading. Note that for this particular problem, the
error term should be thought of as the number of pixels between the
center of the detected face and a vertical line running down the center
of the image frame. Since the images from the camera are 352 pixels
wide, the center of the image is at 176. Then the x coordinate of the
"/face_coords" messages can be subtracted from 176 to find the error
term that is fed into the controller of your choice to output a
commanded velocity that should be fed into the *angular.z* field of the
geometry_msgs/Twist message. Note for this homework, it is recommended
to start by only rotating the robot in place to keep an image in the
center of the frame (i.e. only populate the *angular.z* of the
geometry_msgs/Twist message). Once you get that working you can think
about moving the robot forward and backwards to keep the face at a
constant scale, but this will also require modifications to the
"/face_coords" message since "/face_coords" currently only provides the
center of the located face, not the size of the bounding rectangle.
Extra credit is assigned for getting these modifications into your
solution.

There is a complete solution to the homework assignment if you are
interested in studying it. It can be checked out from the ROS HacDC
repository. There are two packages. The first is a generic PID control
library and the second is the controller itself.

**cd** to where you store your downloaded ROS packages

**svn co <http://hacdc-ros-pkg.googlecode.com/svn/trunk/pid_control>**

**rosmake pid_control**

**cd** to where you store your downloaded ROS packages

**svn co <http://hacdc-ros-pkg.googlecode.com/svn/trunk/face_follow>**

**rosmake face_follow**

To run the face tracker, you can launch it as follows:

**roslaunch face_follow follow.launch**

Don't forget for it to work you need to start a face detector first,
either your own from the last homework, or the example solution from the
last assignment.

[Back to Robotics Class
2011](http://wiki.hacdc.org/index.php/Robotics_Class_2011)

[Category:RobotClass](Category:RobotClass)
