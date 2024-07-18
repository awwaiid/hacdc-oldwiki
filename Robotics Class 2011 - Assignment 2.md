Write a ROS node that subscribes to the image topic
"/stereo/left/image_rect" (which has message type sensor_msgs/Image),
and publish two topics. The first topic is a topic named "/face_view"
that is an image topic that has a rectangle around any face that is
seen. The second topic, named "/face_coords" is a PointStamped message
that has point.x and point.y set to the center of the identified face if
there is one face. If there is more than one face, the behavior can be
implementation dependent.

In class we discussed some basic properties of a mathematical model of
the pinhole camera, which in turn provided insights into the idea of
camera calibration and image rectification. Camera calibration is
discussed in detail in the [OpenCV Camera Calibration
Section](http://opencv.willowgarage.com/documentation/camera_calibration_and_3d_reconstruction.html).

To start the assignment, you can learn about the structure of the
PointStamped message by typing:

**rosmsg show PointStamped**

Remember when working at home to comment out the two lines in your
.bashrc file that contain ROS_IP and ROS_MASTER_URI definitions for
working with the robot at the HacDC space. Once you have commented out
those two lines (and have restarted your shell or sourced your .bashrc),
make sure also to start your own local roscore (the ROS master node) by
typing:

**roscore**

The bag file distributed in class contains the image data that should be
used to test your face detector. You can download the bag file
[here](http://hacdc-ros-pkg.googlecode.com/files/2011-06-18-12-38-55.bag).
The bag file can be played back by typing:

**rosbag play -l 2011-06-18-12-38-55.bag**

Note that the additional "-l" argument allows the bag file to be looped
indefinitely.

Once the bag file has begun playing, you can verify the image stream by
viewing the raw images from the bag file by typing:

**rosrun image_view image_view image:=/stereo/left/image_rect**

The image viewing program is part of the
[image_view](http://www.ros.org/wiki/image_view) ROS package (which is,
in turn, part of the ROS
[image_pipeline](http://www.ros.org/wiki/image_pipeline)).

Once the image stream is verified to be working, you can begin
developing your face detection system.

There is a complete example of the homework in the HacDC ROS repository.
If you would like to refer to it, you can check it out via:

**cd** to where you store your downloaded ROS packages

**svn co
<http://hacdc-ros-pkg.googlecode.com/svn/trunk/face_detection>**

**rosmake face_detection**

Note that the homework solution uses
[cv_bridge](http://www.ros.org/wiki/cv_bridge) to map between ROS image
messages and OpenCV image arrays, and it makes use of the OpenCV image
blurring function **cv.Smooth** and face detection function
**cv.HaarDetectObjects**.

In order to actually run the demonstration face detector, you will need
to use the **roslaunch** tool. When you check out the above
face_detection module from the HacDC repository, you will find inside
the package a directory named **launch**. Inside this directory is a ROS
launch file designed to start up the face detection module. The
[roslaunch](http://www.ros.org/wiki/roslaunch) system is useful for
starting up a large number of nodes on your robot, instead of manually
starting each node in a separate window using **rosrun...**. Inside the
(XML) launch file we also define a "private" parameter that is loaded to
the ROS [Parameter Server](http://www.ros.org/wiki/Parameter%20Server).
As mentioned in class, this parameter is named "classifier" and it
contains the filename to the Haar Cascade used by the OpenCV face
detection algorithm.

In order to start the face detection example node, you may type:

**roslaunch face_detection face_detector.launch**

As the assignment requests, the example face_detector node outputs two
topics, one called "/face_view" and one called "/face_coords". You can
view the "/face_view" image topic like you would any other image topic
(using image_view):

**rosrun image_view image_view image:=/face_view**

If you wish to view the "/face_coords" topic, you made use the simple
rostopic echo covered previously:

**rostopic echo /face_coords**

Note that the "/face_coords" topic is only transmitted (in the face
detection example node at least) when faces are detected.

[Back to Robotics Class
2011](http://wiki.hacdc.org/index.php/Robotics_Class_2011)

[Category:RobotClass](Category:RobotClass)
