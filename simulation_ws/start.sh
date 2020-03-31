 source devel/setup.bash
 export ROS_HOSTNAME=192.168.1.34
 if [[ $1 == '' ]]
 then
 	echo "Arguments you can use: 'rviz' or 'spawn'"
 	echo "===================================================="
 	echo "If using 'spawn' Run the following first: "
 	echo "roslaunch gazebo_ros empty_world.launch"
 fi
 # Start the two wheel model in RVIZ
 if [[ $1 == 'rviz' ]]
 then 	
 	roslaunch two_wheel_robot rviz.launch
 # Start two wheel robot simulation in Gazebo
 elif [[ $1 == 'spawn' ]]
 then
 	roslaunch two_wheel_robot spawn.launch
 fi
