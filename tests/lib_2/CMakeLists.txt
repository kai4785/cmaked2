# This project is a C library
PROJECT( lib_2 C )
# TODO
# dirty fix
# we should make the CMAKE_D_COMPILER_ID work
#
# This 32-bit environment check no longer needed as of dmd 2.053 on Linux
#IF("${CMAKE_BASE_NAME}" MATCHES "dmd")
#	SET(CMAKE_C_FLAGS "-m32 ${CMAKE_C_FLAGS}" )
#ENDIF()
ADD_LIBRARY( lib_2 STATIC lib_2.c )
