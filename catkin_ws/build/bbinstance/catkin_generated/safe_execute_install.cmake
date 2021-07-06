execute_process(COMMAND "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/bbinstance/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/bbinstance/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
