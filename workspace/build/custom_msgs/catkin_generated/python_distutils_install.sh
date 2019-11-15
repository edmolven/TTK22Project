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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/eivinddm/ttk22Project/workspace/src/custom_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/eivinddm/ttk22Project/workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/eivinddm/ttk22Project/workspace/install/lib/python2.7/dist-packages:/home/eivinddm/ttk22Project/workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/eivinddm/ttk22Project/workspace/build" \
    "/usr/bin/python2" \
    "/home/eivinddm/ttk22Project/workspace/src/custom_msgs/setup.py" \
    build --build-base "/home/eivinddm/ttk22Project/workspace/build/custom_msgs" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/eivinddm/ttk22Project/workspace/install" --install-scripts="/home/eivinddm/ttk22Project/workspace/install/bin"
