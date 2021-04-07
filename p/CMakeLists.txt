cmake_minimum_required(VERSION 2.8)
project( demo )
# 添加c++ 11标准支持
set( CMAKE_CXX_FLAGS "-std=c++11" )

set(OpenCV_DIR /usr/local/opencv3/share/OpenCV)

find_package( OpenCV 3 REQUIRED )
find_package( Pangolin )

include_directories(
        ${OpenCV_INCLUDE_DIRS} 
        ${Pangolin_INCLUDE_DIRS}
        "/usr/include/eigen3" )


add_executable(demo demo.cpp)
target_link_libraries( demo ${OpenCV_LIBS} )


add_executable(imagebinoculartest imagebinoculartest.cpp)
target_link_libraries(imagebinoculartest ${OpenCV_LIBS})
target_link_libraries( imagebinoculartest ${Pangolin_LIBRARIES} )
#install(TARGETS imagebinoculartest RUNTIME DESTINATION bin)

