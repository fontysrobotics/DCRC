#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/install/lib/python2.7/dist-packages:/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build" \
    "/usr/bin/python2" \
    "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/src/blackboard/setup.py" \
     \
    build --build-base "/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/build/blackboard" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/install" --install-scripts="/home/ubuntu/ros2_bridge_custom_interfaces/ros1ws/install/bin"
