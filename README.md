# TTK22Project
ROS IMC Broker extended to milliAmpere project

##### In order to run the ROS waypoint tracker project, the following 4 steps must be taken:

1: Open the Neptus console by using `./neptus.sh auv`

2: Download and install the DUNE simulator at `http://www.omst.pt/dune/dune-2018.01.00-x86-64bit-linux-glibc-gcc54.tar.bz2`
  - Tips to do this is found in the Dockerfile in the ros-imc-broker git repository: `https://github.com/LSTS/ros-imc-broker/blob/master/docker/Dockerfile`
  - In order to start the Dune simulator, navigate to the `/bin`-folder and run command `./dune -c backseat -p Simulation`

3: Clone the TTK22Project Git-repo and navigate to the `/workspace`-folder. 
  - Make sure the dependencies in the Dockerfile at the ros-imc-broker git repository: `https://github.com/LSTS/ros-imc-broker/blob/master/docker/Dockerfile` are met
  - Compile with `catkin_make`
  - Source with `source devel/setup.bash`
  - Start the ROS nodes with command `roslaunch src/simulator.launch`

4: Now, waypoints can be given by publishing them to the topic `/guidance/waypoint`using the message formate custom_msgs/NorthEastHeading
  - The command will be: `rostopic pub -1 /guidance/waypoint custom_msgs/NorthEastHeading -- 100 100 0` if the desired waypoint is 100m north and 100m east of the starting position.
  - Remember to use `source devel/setup.bash` if opening a new terminal.
