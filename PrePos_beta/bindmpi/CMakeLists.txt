# build bindmpi version 1.0 20230910 by tmishima
#
# linux:
# cmake ..
#
# windows:
# cmake -G"NMake Makefiles" -DCMAKE_BUILD_TYPE=Release ..
#
cmake_minimum_required(VERSION 3.1)

enable_language(Fortran)

project(bindmpi)

add_executable(bindmpi bindmpi.f)
