cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE "Release")

# 添加c++ 11标准支持
set(CMAKE_CXX_FLAGS "-std=c++11 -O2")

# 寻找OpenCV库
find_package(OpenCV REQUIRED)
# 添加头文件
include_directories(${OpenCV_INCLUDE_DIRS})


#添加一个可执行程序
add_executable(First_capture First_capture.cpp)
target_link_libraries(First_capture ${OpenCV_LIBS})

#添加一个可执行程序
add_executable(Second_camera Second_camera.cpp)
target_link_libraries(Second_camera ${OpenCV_LIBS})


