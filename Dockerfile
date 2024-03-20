FROM osrf/ros:noetic-desktop-focal

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

RUN apt update && apt install -y curl rviz git vim wget

RUN sudo apt install curl lsb-release
RUN curl -s https://bitbucket.org/DataspeedInc/ros_binaries/raw/master/dataspeed.asc | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://packages.dataspeedinc.com/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-dataspeed-public.list'
RUN sudo apt update
RUN sudo sh -c 'echo "yaml http://packages.dataspeedinc.com/ros/ros-public-noetic.yaml noetic" > /etc/ros/rosdep/sources.list.d/30-dataspeed-public-noetic.list'
RUN rosdep update
RUN sudo apt-get install ros-noetic-dbw-mkz -y
RUN sudo apt-get install ros-noetic-dataspeed-boot-usb -y
RUN sudo apt-get install ros-noetic-dataspeed-dbw-simulator -y
RUN sudo apt-get install ros-noetic-velodyne -y
RUN sudo apt-get install ros-noetic-ublox -y
RUN sudo apt-get install ros-noetic-geographic-msgs -y
RUN sudo apt-get install ros-noetic-mapviz -y
RUN sudo apt-get install ros-noetic-nmea-msgs -y
RUN sudo apt-get install ros-noetic-mavros-msgs -y
RUN sudo apt-get install ros-noetic-hector-trajectory-server -y
RUN sudo apt-get install ros-noetic-robot-localization -y
RUN sudo apt update && sudo apt upgrade -y && rosdep update

RUN git config --global credential.helper store

RUN echo "cd auto; source devel/setup.bash" >> ~/.bashrc

## Run with:
# rocker --x11 --nvidia ros:noetic-desktop-full bash
