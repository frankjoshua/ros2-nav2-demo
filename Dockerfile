# TurtleBot3 + Nav2 demo, auto-launching, ROS 2 Humble
FROM osrf/ros:humble-desktop-full

ENV DEBIAN_FRONTEND=noninteractive

# Nav2 + TurtleBot3 Gazebo bits
RUN apt-get update && apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-turtlebot3-gazebo \
    ros-humble-turtlebot3 \
 && rm -rf /var/lib/apt/lists/*

# Pick a model: burger | waffle | waffle_pi
ENV TURTLEBOT3_MODEL=waffle

COPY aws-robomaker-small-house-world /sim/worlds/aws_small_house

COPY launch.sh /launch.sh
RUN chmod +x /launch.sh
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/launch.sh"]
