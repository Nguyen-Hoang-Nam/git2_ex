cmake_minimum_required(VERSION 3.16)

project(Git2Ex VERSION 1.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")

include_directories("/usr/lib/erlang/include")

add_executable(git2_ex object.cpp blob.cpp)
