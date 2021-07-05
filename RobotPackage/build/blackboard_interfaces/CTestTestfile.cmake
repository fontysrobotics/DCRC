# CMake generated Testfile for 
# Source directory: /home/student/git_repo/DCRC/RobotPackage/src/blackboard_interfaces
# Build directory: /home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/dashing/share/ament_cmake_test/cmake/run_test.py" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/test_results/blackboard_interfaces/lint_cmake.xunit.xml" "--package-name" "blackboard_interfaces" "--output-file" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/dashing/bin/ament_lint_cmake" "--xunit-file" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/test_results/blackboard_interfaces/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/student/git_repo/DCRC/RobotPackage/src/blackboard_interfaces")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/dashing/share/ament_cmake_test/cmake/run_test.py" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/test_results/blackboard_interfaces/xmllint.xunit.xml" "--package-name" "blackboard_interfaces" "--output-file" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/ament_xmllint/xmllint.txt" "--command" "/opt/ros/dashing/bin/ament_xmllint" "--xunit-file" "/home/student/git_repo/DCRC/RobotPackage/build/blackboard_interfaces/test_results/blackboard_interfaces/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/student/git_repo/DCRC/RobotPackage/src/blackboard_interfaces")
subdirs("blackboard_interfaces__py")
