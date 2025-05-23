# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wheeltec/wheeltec_robot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wheeltec/wheeltec_robot/build

# Include any dependencies generated for this target.
include usb_cam/CMakeFiles/usb_cam.dir/depend.make

# Include the progress variables for this target.
include usb_cam/CMakeFiles/usb_cam.dir/progress.make

# Include the compile flags for this target's objects.
include usb_cam/CMakeFiles/usb_cam.dir/flags.make

usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o: usb_cam/CMakeFiles/usb_cam.dir/flags.make
usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o: /home/wheeltec/wheeltec_robot/src/usb_cam/src/usb_cam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wheeltec/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o"
	cd /home/wheeltec/wheeltec_robot/build/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o -c /home/wheeltec/wheeltec_robot/src/usb_cam/src/usb_cam.cpp

usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usb_cam.dir/src/usb_cam.cpp.i"
	cd /home/wheeltec/wheeltec_robot/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wheeltec/wheeltec_robot/src/usb_cam/src/usb_cam.cpp > CMakeFiles/usb_cam.dir/src/usb_cam.cpp.i

usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usb_cam.dir/src/usb_cam.cpp.s"
	cd /home/wheeltec/wheeltec_robot/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wheeltec/wheeltec_robot/src/usb_cam/src/usb_cam.cpp -o CMakeFiles/usb_cam.dir/src/usb_cam.cpp.s

# Object files for target usb_cam
usb_cam_OBJECTS = \
"CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o"

# External object files for target usb_cam
usb_cam_EXTERNAL_OBJECTS =

/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: usb_cam/CMakeFiles/usb_cam.dir/build.make
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libimage_transport.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libmessage_filters.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libclass_loader.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libPocoFoundation.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libdl.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libroslib.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/librospack.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libpython3.8.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_program_options.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libcamera_info_manager.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libcamera_calibration_parsers.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libroscpp.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/librosconsole.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/librostime.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /opt/ros/noetic/lib/libcpp_common.so
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so: usb_cam/CMakeFiles/usb_cam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wheeltec/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so"
	cd /home/wheeltec/wheeltec_robot/build/usb_cam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usb_cam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
usb_cam/CMakeFiles/usb_cam.dir/build: /home/wheeltec/wheeltec_robot/devel/lib/libusb_cam.so

.PHONY : usb_cam/CMakeFiles/usb_cam.dir/build

usb_cam/CMakeFiles/usb_cam.dir/clean:
	cd /home/wheeltec/wheeltec_robot/build/usb_cam && $(CMAKE_COMMAND) -P CMakeFiles/usb_cam.dir/cmake_clean.cmake
.PHONY : usb_cam/CMakeFiles/usb_cam.dir/clean

usb_cam/CMakeFiles/usb_cam.dir/depend:
	cd /home/wheeltec/wheeltec_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wheeltec/wheeltec_robot/src /home/wheeltec/wheeltec_robot/src/usb_cam /home/wheeltec/wheeltec_robot/build /home/wheeltec/wheeltec_robot/build/usb_cam /home/wheeltec/wheeltec_robot/build/usb_cam/CMakeFiles/usb_cam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : usb_cam/CMakeFiles/usb_cam.dir/depend

