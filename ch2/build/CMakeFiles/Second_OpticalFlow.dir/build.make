# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/jianbo/OpenCV_practice/ch2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jianbo/OpenCV_practice/ch2/build

# Include any dependencies generated for this target.
include CMakeFiles/Second_OpticalFlow.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Second_OpticalFlow.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Second_OpticalFlow.dir/flags.make

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o: CMakeFiles/Second_OpticalFlow.dir/flags.make
CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o: ../Second_OpticalFlow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jianbo/OpenCV_practice/ch2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o -c /home/jianbo/OpenCV_practice/ch2/Second_OpticalFlow.cpp

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jianbo/OpenCV_practice/ch2/Second_OpticalFlow.cpp > CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.i

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jianbo/OpenCV_practice/ch2/Second_OpticalFlow.cpp -o CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.s

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.requires:

.PHONY : CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.requires

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.provides: CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.requires
	$(MAKE) -f CMakeFiles/Second_OpticalFlow.dir/build.make CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.provides.build
.PHONY : CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.provides

CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.provides.build: CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o


# Object files for target Second_OpticalFlow
Second_OpticalFlow_OBJECTS = \
"CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o"

# External object files for target Second_OpticalFlow
Second_OpticalFlow_EXTERNAL_OBJECTS =

Second_OpticalFlow: CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o
Second_OpticalFlow: CMakeFiles/Second_OpticalFlow.dir/build.make
Second_OpticalFlow: /usr/local/lib/libopencv_dnn.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_highgui.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_ml.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_objdetect.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_shape.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_stitching.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_superres.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_videostab.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_calib3d.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_features2d.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_flann.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_photo.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_video.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_videoio.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_imgcodecs.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_imgproc.so.3.4.8
Second_OpticalFlow: /usr/local/lib/libopencv_core.so.3.4.8
Second_OpticalFlow: CMakeFiles/Second_OpticalFlow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jianbo/OpenCV_practice/ch2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Second_OpticalFlow"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Second_OpticalFlow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Second_OpticalFlow.dir/build: Second_OpticalFlow

.PHONY : CMakeFiles/Second_OpticalFlow.dir/build

CMakeFiles/Second_OpticalFlow.dir/requires: CMakeFiles/Second_OpticalFlow.dir/Second_OpticalFlow.cpp.o.requires

.PHONY : CMakeFiles/Second_OpticalFlow.dir/requires

CMakeFiles/Second_OpticalFlow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Second_OpticalFlow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Second_OpticalFlow.dir/clean

CMakeFiles/Second_OpticalFlow.dir/depend:
	cd /home/jianbo/OpenCV_practice/ch2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jianbo/OpenCV_practice/ch2 /home/jianbo/OpenCV_practice/ch2 /home/jianbo/OpenCV_practice/ch2/build /home/jianbo/OpenCV_practice/ch2/build /home/jianbo/OpenCV_practice/ch2/build/CMakeFiles/Second_OpticalFlow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Second_OpticalFlow.dir/depend

