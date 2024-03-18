echo roslaunch dataspeed_dbw_gazebo dataspeed_dbw_gazebo.launch sim_param_file:=/auto/src/simulation/yaml/sim_params.yaml use_camera_control:=false
echo 

rocker --volume $(pwd)/default.rviz:/opt/ros/noetic/share/rviz/default.rviz /home/aroca/Documents/auto:/auto --x11 ros1-noetic-auto
