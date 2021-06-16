execute_process(COMMAND "/home/student/catkin_ws/build/simulation/rviz_tools_py-master/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/student/catkin_ws/build/simulation/rviz_tools_py-master/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
