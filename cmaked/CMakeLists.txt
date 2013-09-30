#
# CMakeD - CMake module for D Language
#
# Copyright (c) 2013, Selman Ulug <selman.ulug@gmail.com>
#                     Tim Burrell <tim.burrell@gmail.com>
#                     Kai Meyer <kai@gnukai.com>
#
# All rights reserved.
#
# See Copyright.txt for details.
#
cmake_minimum_required(VERSION 2.8.1)
if(${CMAKE_COMMAND} MATCHES "cmake28$")
    project(cmaked28 NONE)
    set(cmake_dir cmake28)
else()
    project (cmaked NONE)
    set(cmake_dir cmake-${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
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

install (FILES ${MOD_SRCS} DESTINATION share/${cmake_dir}/Modules)
install (FILES ${PLAT_SRCS} DESTINATION share/${cmake_dir}/Modules/Platform)

set(CPACK_PACKAGE_VERSION "1.0.2")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "2")
set(CPACK_PACKAGE_CONTACT "Kai Meyer <kai@gnukai.com>")
include(CPack)
