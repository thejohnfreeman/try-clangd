cmake_minimum_required(VERSION 3.12)

project(clangd LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(main main.cpp)
