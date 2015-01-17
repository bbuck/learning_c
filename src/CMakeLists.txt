cmake_minimum_required(VERSION 2.6)

project(lispy)

file(GLOB_RECURSE lispy_SRC *.c *.h)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -ledit -lm")

add_executable(lispy ${lispy_SRC}) 
