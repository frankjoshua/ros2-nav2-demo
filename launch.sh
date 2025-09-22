source /opt/ros/humble/setup.bash
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=/sim/worlds/aws_small_house/models:${GAZEBO_MODEL_PATH}
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False world:=/sim/worlds/aws_small_house/worlds/small_house.world slam:=True