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
include CMakeFiles/Third_lkdemo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Third_lkdemo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Third_lkdemo.dir/flags.make

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o: CMakeFiles/Third_lkdemo.dir/flags.make
CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o: ../Third_lkdemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jianbo/OpenCV_practice/ch2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o -c /home/jianbo/OpenCV_practice/ch2/Third_lkdemo.cpp

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jianbo/OpenCV_practice/ch2/Third_lkdemo.cpp > CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.i

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jianbo/OpenCV_practice/ch2/Third_lkdemo.cpp -o CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.s

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.requires:

.PHONY : CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.requires

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.provides: CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.requires
	$(MAKE) -f CMakeFiles/Third_lkdemo.dir/build.make CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.provides.build
.PHONY : CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.provides

CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.provides.build: CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o


# Object files for target Third_lkdemo
Third_lkdemo_OBJECTS = \
"CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o"

# External object files for target Third_lkdemo
Third_lkdemo_EXTERNAL_OBJECTS =

Third_lkdemo: CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o
Third_lkdemo: CMakeFiles/Third_lkdemo.dir/build.make
Third_lkdemo: /usr/local/lib/libopencv_dnn.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_highgui.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_ml.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_objdetect.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_shape.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_stitching.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_superres.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_videostab.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_calib3d.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_features2d.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_flann.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_photo.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_video.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_videoio.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_imgcodecs.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_imgproc.so.3.4.8
Third_lkdemo: /usr/local/lib/libopencv_core.so.3.4.8
Third_lkdemo: CMakeFiles/Third_lkdemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jianbo/OpenCV_practice/ch2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Third_lkdemo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Third_lkdemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Third_lkdemo.dir/build: Third_lkdemo

.PHONY : CMakeFiles/Third_lkdemo.dir/build

CMakeFiles/Third_lkdemo.dir/requires: CMakeFiles/Third_lkdemo.dir/Third_lkdemo.cpp.o.requires

.PHONY : CMakeFiles/Third_lkdemo.dir/requires

CMakeFiles/Third_lkdemo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Third_lkdemo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Third_lkdemo.dir/clean

CMakeFiles/Third_lkdemo.dir/depend:
	cd /home/jianbo/OpenCV_practice/ch2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jianbo/OpenCV_practice/ch2 /home/jianbo/OpenCV_practice/ch2 /home/jianbo/OpenCV_practice/ch2/build /home/jianbo/OpenCV_practice/ch2/build /home/jianbo/OpenCV_practice/ch2/build/CMakeFiles/Third_lkdemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Third_lkdemo.dir/depend

