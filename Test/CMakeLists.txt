cmake_minimum_required(VERSION 3.12)
project(cpp_test)

set(CMAKE_CXX_STANDARD 14)

add_executable(cpp_test test_main.cpp fpconv.c fpconv.h powers.h test_dtoa.cpp test_calc.cpp calculator.c calculator.h stack.c stack.h)