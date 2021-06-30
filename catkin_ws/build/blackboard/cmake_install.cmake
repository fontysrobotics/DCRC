# Install script for directory: /home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/install")
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
  include("/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blackboard/msg" TYPE FILE FILES
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/msg/TaskMsg.msg"
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/msg/TaskCost.msg"
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/msg/bbBackup.msg"
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/msg/bbsynch.msg"
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/msg/TaskStateMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blackboard/cmake" TYPE FILE FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/installspace/blackboard-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/include/blackboard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/share/roseus/ros/blackboard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/share/common-lisp/ros/blackboard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/share/gennodejs/ros/blackboard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/lib/python2.7/dist-packages/blackboard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/lib/python2.7/dist-packages/blackboard" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/lib/python2.7/dist-packages/blackboard" FILES_MATCHING REGEX "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/devel/lib/python2.7/dist-packages/blackboard/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/installspace/blackboard.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blackboard/cmake" TYPE FILE FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/installspace/blackboard-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blackboard/cmake" TYPE FILE FILES
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/installspace/blackboardConfig.cmake"
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard/catkin_generated/installspace/blackboardConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blackboard" TYPE FILE FILES "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/package.xml")
endif()

