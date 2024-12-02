cmake_minimum_required(VERSION 3.10)


project(Openglearn VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(Openglearn main.cpp stb_extra.cpp)

find_package(glfw3 3.3.6 REQUIRED)
find_package(OpenGL REQUIRED)


include_directories(/usr/local/include .)


target_link_libraries(Openglearn glfw OpenGL::GL /usr/local/lib/libglad.a)
