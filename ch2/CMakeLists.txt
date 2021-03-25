cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE "Release")

# 添加c++ 11标准支持
set(CMAKE_CXX_FLAGS "-std=c++11 -O2")

# 寻找OpenCV库
find_package(OpenCV REQUIRED)
# 添加头文件
include_directories(${OpenCV_INCLUDE_DIRS})


#添加一个可执行程序
add_executable(First_CamShiftDemo First_CamShiftDemo.cpp)
target_link_libraries(First_CamShiftDemo ${OpenCV_LIBS})

#添加一个可执行程序
add_executable(Second_OpticalFlow Second_OpticalFlow.cpp)
target_link_libraries(Second_OpticalFlow ${OpenCV_LIBS})

#添加一个可执行程序
add_executable(Third_lkdemo Third_lkdemo.cpp)
target_link_libraries(Third_lkdemo ${OpenCV_LIBS})
