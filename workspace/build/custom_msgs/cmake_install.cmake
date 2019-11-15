# Install script for directory: /home/eivinddm/ttk22Project/workspace/src/custom_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/eivinddm/ttk22Project/workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg" TYPE FILE FILES
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/XsensQuaternion.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/ImuSensorSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/BaroSensorSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/GnssSensorSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/Internal.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/sensorSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/baroSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssSample.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/orientationEstimate.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/velocityEstimate.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/positionEstimate.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/ekfBias.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/ImuSensor.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssGGA.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssGGA_status.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssRMC.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssHDT.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/orientationEuler.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/podAngle.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/threeFloats.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/NorthEastHeading.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/gnssPose.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/twistEstimate.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/rawGPSdata.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/NED.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/latlong.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/RemoteControlState.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/JoyAxis.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/ActuatorSetpoints.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/ThreeDofForce.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/SurgeSwayYaw.msg"
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/msg/MotorState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES "/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/installspace/custom_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/include/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/share/roseus/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/share/common-lisp/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/share/gennodejs/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/eivinddm/ttk22Project/workspace/devel/lib/python2.7/dist-packages/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/lib/python2.7/dist-packages/custom_msgs" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/devel/lib/python2.7/dist-packages/custom_msgs" FILES_MATCHING REGEX "/home/eivinddm/ttk22Project/workspace/devel/lib/python2.7/dist-packages/custom_msgs/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/installspace/custom_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES "/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/installspace/custom_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES
    "/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/installspace/custom_msgsConfig.cmake"
    "/home/eivinddm/ttk22Project/workspace/build/custom_msgs/catkin_generated/installspace/custom_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs" TYPE FILE FILES "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs" TYPE DIRECTORY FILES "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/launch")
endif()

