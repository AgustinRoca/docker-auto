echo roslaunch turtlebot_gazebo turtlebot_world.launch
echo 

rocker --volume $(pwd)/default.rviz:/opt/ros/noetic/share/rviz/default.rviz /home/aroca/Documents/auto:/auto --x11 ros1-noetic-auto
