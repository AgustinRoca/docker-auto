echo source devel/setup.bash; roslaunch path_follower get_platform_ready.launch 
echo 

rocker --volume $(pwd)/default.rviz:/opt/ros/noetic/share/rviz/default.rviz /home/aroca/Documents/auto:/auto --x11 ros1-noetic-auto
