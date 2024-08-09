FROM frankjoshua/ros2

# ** [Optional] Uncomment this section to install additional packages. **

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y install --no-install-recommends \ 
   ros-humble-desktop ros-humble-navigation2 \
   ros-humble-nav2-bringup ros-humble-turtlebot3-gazebo \
   #
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

# Set up auto-source of workspace for ros user
ARG WORKSPACE
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc

USER ros
# # nvidia-container-runtime
# ENV NVIDIA_VISIBLE_DEVICES \
#     ${NVIDIA_VISIBLE_DEVICES:-all}
# ENV NVIDIA_DRIVER_CAPABILITIES \
#     ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
ENTRYPOINT [ "/bin/bash", "-i", "-c" ]
CMD ["source /opt/ros/<ros2-distro>/setup.bash; \
export TURTLEBOT3_MODEL=waffle; \
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/<ros2-distro>/share/turtlebot3_gazebo/models; \
 ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False"]