#
# CMakeD - CMake module for D Language
#
# Copyright (c) 2007, Selman Ulug <selman.ulug@gmail.com>
#                     Tim Burrell <tim.burrell@gmail.com>
#
# All rights reserved.
#
# See Copyright.txt for details.
#
cmake_minimum_required(VERSION 2.8.1)
if(${CMAKE_COMMAND} MATCHES "cmake28$")
    project(cmaked28 NONE)
else()
    project (cmaked NONE)
endif()

set (MOD_SRCS
	CMakeDCompiler.cmake.in        
	CMakeDCompilerId.d.in        
	CMakeDInformation.cmake        
	CMakeDCompilerABI.d        
	CMakeTestDCompiler.cmake  
	CMakeDetermineDCompiler.cmake  
	FindGDCPath.cmake
	UseDDoc.cmake
	UseDDeps.cmake
	dependencies.cmake
	UseDUnittest.cmake
	FindPhobos.cmake
)

set (PLAT_SRCS
	Platform/Linux-dmd.cmake
	Platform/Linux-gdc.cmake 
	Platform/Windows-dmd.cmake              
	Platform/Windows-gdc.cmake
)

install (FILES ${MOD_SRCS} DESTINATION ${CMAKE_ROOT}/Modules)
install (FILES ${PLAT_SRCS} DESTINATION ${CMAKE_ROOT}/Modules/Platform)

set(CPACK_PACKAGE_VERSION "1.0.1")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "1")
include(CPack)
