The rumor is that something bad is going on in the secret underground
HacDC antiquities warehouse. The security guards have written a memo
describing recent sightings of artifacts in the warehouse "moving by
themselves". They have come to us, the robotics experts, to see if we
can provide them with a robot that can make the rounds in the warehouse
keeping an eye out for mysterious paranormal activities.

The last assignment illustrated the commands required to start up gazebo
and also to check out the irobotron_description ROS package from the
HacDC repository. However, we will make a slight adjustment to the
command line for starting up gazebo. We do this to start up in a
simulated world that happens to have the same rooms and structure of the
secret underground HacDC antiquities warehouse. You can start gazebo in
the following way:

**roslaunch gazebo_worlds simple_office2.launch**

Once gazebo is up and running and you next need to insert the robot into
the simulation. If you have not checked out the irobotron_description
ROS package, you can do so with the following command:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/irobotron_description>**

**rosmake irobotron_description**

However, if you have already checked it out, follow these modified
instructions to update the package as recent changes have been made to
it:

**roscd irobotron_description**

**svn update**

**rosmake irobotron_description**

Once you have successfully rosmake'ed the irobotron_description, you can
then insert the robot into the simulation:

**roslaunch irobotron_description create_mobile_base_in_office2.launch**

This command will insert the robot into the starting location in the
map. It may be hard to see the robot, but if you use the mouse to
navigate in the gazebo window, you will find the robot 10 grid squares
(meters) forward and one grid square (meter) left of the initial gazebo
starting coordinates.

Once you have the robot in the simulation, you need to add the museum
artifacts into the simulation. Assignment 3 included instructions on how
to check out the floating_faces package from the HacDC ROS repository.
You can insert them into the simulation with the following command:

**roslaunch floating_faces faces_in_office2.launch**

These artifacts are in the same locations as the real artifacts in the
secret HacDC antiquities warehouse.

Next you can then start the ROS navigation stack to allow the robot to
be able to navigate autonomously throughout the warehouse. There is a
launch file that has been written that customizes the ROS navigation
stack for our particular robot. To start the navigation stack, type:

**roslaunch irobotron_description move_base.launch**

You may see a few warnings when the navigation stack starts. But if you
do a rostopic list, you should see numerous topics in the "/move_base/"
namespace. These are topics related to the navigation stack.

Once the navigation stack is up and running, you can start rviz to start
seeing what the robot sees. Rviz is a powerful visualization tool useful
for looking at TF frames, navigation stack topics and all kinds of other
stuff. Anyway, you can start it by typing:

**rosrun rviz rviz**

Once rviz is up and running, follow [this
tutorial](http://www.ros.org/wiki/navigation/Tutorials/Using%20rviz%20with%20the%20Navigation%20Stack)
to set it up to visualize all kinds of navigation stack related topics.

After you are comfortable with rviz, you can obtain and start the simple
prototype museum guard example that is provided here:

**cd** to where you store your downloaded ROS packages

**svn co <http://hacdc-ros-pkg.googlecode.com/svn/trunk/museum_guard>**

**rosmake museum_guard**

Once museum_guard is made, you can start it up by typing:

**rosrun museum_guard smach_guard.py**

One of the powerful features of smach is the smach_viewer utility that
you can start as follows:

**rosrun smach_viewer smach_viewer.py**

You should see the two states illustrated in class, namely "GOTO_HALL_1"
and "INSPECT_ARTIFACT_1" in the Smach Viewer window.

Once that is working, remember that you can view the imagery coming from
the robots mast camera, with the following command:

**rosrun image_view image_view image:=/stereo/left/image_rect**

However, even better than this, you can run the face_detector covered in
the last class. If you did not check it out last class, you can either
use your own face_detector, or use the one provided as an example. To
get the one provided, simply do:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/face_detection>**

**rosmake face_detection**

Assignment 2 discusses face detection in more detail.

Once the face_detector is available, you can start it as follows:

**roslaunch face_detection face_detector.launch**

This will open a new image_view for the "/face_view" topic, which is the
same as the normal image topic "/stereo/left/image_rect", but it also
puts boxes around recognized faces. Also, when a face is detected, the
face detector puts out a "/face_coords" topic that describes the point
in the image plane of the face being tracked. Remember that you can
monitor the "/face_coords" topic by simply opening a terminal and typing
the following (however, note that the topic is generated *only* when a
face is recognized):

**rostopic echo /face_coords**

This will be most important when trying to uncover any paranormal
activity. For example, when the ghost is rotating an artifact, the face
detector will likely detect a face, but the "/face_coords" topic will
undoubtedly be changing as the artifact rotates. Since it is assumed
that the artifacts never move without paranormal assistance, if the
robot sits long enough in front of each artifact, it should be able to
closely monitor the "/face_coords" topic to determine whether there is
paranormal activity in the area.

While the security guards would like the mystery uncovered as soon as
possible, they have given us two weeks of development time for building
the system. For testing, there is a specific gazebo incantation, not
unlike an ancient curse, that will cause an artifact to begin rotating.
To test your algorithm you'll most likely want to rotate a variety of
artifacts to see how the robot responds. To start, here is an example of
how to get the first artifact to rotate (very slowly):

**rosservice call gazebo/apply_body_wrench '{reference_point: {x: -2, y:
0, z: 0}, body_name: "alan_model::alan_link", wrench: { torque: { x: 0,
y: 0 , z: 0.1 } }, duration: 1000000000 }'**

Note that this will only modify the first artifact. Gazebo modifies the
artifact with the specify "body_name" that is specified in the
incantation above. In the above case, the body name is
"alan_model::alan_link". However there are eight total artifacts. The
list below specifies each artifacts body_name and also its position in
the warehouse. The body_names will be convenient when wanting to rotate
them with the above incantation. The position will be useful when
encoding a navigation goal. All dimensions are in meters. Note in the
incantation above you do not have to change the "reference_point" based
on the positions below. The "reference_point" specifies where gazebo
should put the wrench force in relation the object specified with the
particular *body_name*. Thus to get different artifacts to rotate, you
need only change the *body_name* argument in the above command. Here are
the body names and positions:

**alan_model::alan_link** is at position **(3.9, -0.14)**

**david_model::david_link** is at position **(4.0, 1.2)**

**david2_model::david2_link** is at position **(3.8, 2.3)**

**eric_model::eric_link** is at position **(1.6, 4.0)**

**erica_model::erica_link** is at position **(2.7, 5.1)**

**jeff_model::jeff_link** is at position **(4.0, 6.4)**

**john_model::john_link** is at position **(3.9, 8.7)**

**phil_model::phil_link** is at position **(2.5, 9.6)**

Note to make the assignment slightly harder, some of the artifacts are
on different walls than the first artifact. This requires you to specify
navigation goals in your smach state machine (smach_guard.py in the
museum_guard ROS package obtained above) that have not only a target
position, but also a target attitude, specified as a quaternion. The
navigation goal provides an orientation in the goal that specifies the
robot ending attitude. Based on the robot's coordinate system of *x*
being forward, *y* to the left, and *z* up, when we want to end in a
different orientation, we must specify an ending rotation about *z*,
called *yaw*. For example, to get the quaternion for the robot to be
facing to the left of its original position in the map, we would provide
a quaternion to the navigation stack of the form:

**x** = 0.0

**y** = 0.0

**z** = 0.707

**w** = 0.707

This quaternion represents a (pi/2) radian rotation about the *z* axis
(a yaw). This ends up pointing us left. It is easy to convert between
the notion of a yaw and a quaternion. One way is to [type "euler angles"
into Wolfram
Alpha](http://www.wolframalpha.com/input/?i=euler+angles&a=*C.euler+angles-_*Formula.dflt-&a=*FP.EulerRotation.EAS-_e321&f3=Pi+%2F+2+radians&x=0&y=0&f=EulerRotation.th1_Pi+%2F+2+radians&f4=0&f=EulerRotation.th2_0&f5=0&f=EulerRotation.th3_0).
Doing this gives you a nice conversion utility. There are a couple
important things to remember when using this conversion utility. The
first is to make sure you select the "Euler rotation sequence" and enter
your rotations in such that you only request a yaw rotation. Also, when
the computation is finished, the desired quaternion parameters are in
the box named "Euler parameters (quaternions)", with the convention that
the parameters are specified as:

**beta_0** is **w**

**beta_1** is **x**

**beta_2** is **y**

**beta_3** is **z**

You can then take these parameters and copy them into your navigation
goal, and hopefully the robot should do what you command!

Good luck on the assignment and happy ghost hunting!

[Back to Robotics Class
2011](http://wiki.hacdc.org/index.php/Robotics_Class_2011)

[Secret bonus video (slyt)](http://www.youtube.com/watch?v=Qka5HX-R-cQ)

[Category:RobotClass](Category:RobotClass)
