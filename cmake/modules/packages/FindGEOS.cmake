# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#.rst:
# FindGEOS
# -----------
#
# CMake module to search for GEOS library
#
# Copyright (C) 2017-2018, Hiroshi Miura
# Copyright (c) 2008, Mateusz Loskot <mateusz@loskot.net>
# (based on FindGDAL.cmake by Magnus Homann)
#
# If it's found it sets GEOS_FOUND to TRUE
# and following variables are set:
#    GEOS_INCLUDE_DIR
#    GEOS_LIBRARY
#
MESSAGE("Specialized FindGEOS Called")
if( NOT $ENV{GEOS_LIBRARY} STREQUAL "" )
  SET(GEOS_LIBRARY $ENV{GEOS_LIBRARY})
  if(NOT $ENV{GEOS_LIBRARY_RELEASE} STREQUAL "")
    set(GEOS_LIBRARY_RELEASE, $ENV{GEOS_LIBRARY_RELEASE})
  else ()
    set (GEOS_LIBRARY_RELEASE, ${GEOS_LIBRARY})
  endif()

  if(NOT $ENV{GEOS_LIBRARY_DEBUG} STREQUAL "")
    set(GEOS_LIBRARY_DEBUG, $ENV{GEOS_LIBRARY_DEBUG})
  else ()
    set (GEOS_LIBRARY_DEBUG, ${GEOS_LIBRARY})
  endif()

  SET(GEOS_LIBRARIES ${GEOS_LIBRARY})

  mark_as_advanced(GEOS_LIBRARY_RELEASE GEOS_LIBRARY_DEBUG)

  if( NOT $ENV{GEOS_INCLUDE_DIR} STREQUAL "" )
     SET(GEOS_INCLUDE_DIR $ENV{GEOS_INCLUDE_DIR})
  else()
     SET(GEOS_INCLUDE_DIR "GeosIncludeDir")
  endif()
  SET(GEOS_INCLUDE_DIRS ${GEOS_INCLUDE_DIR})
  mark_as_advanced(GEOS_INCLUDE_DIR)

  SET(GEOS_FOUND TRUE)
  set(GEOS_TARGET GEOS::GEOS)
  if(NOT TARGET ${GEOS_TARGET})
      add_library(${GEOS_TARGET} UNKNOWN IMPORTED)
      set_target_properties(${GEOS_TARGET} PROPERTIES
                            INTERFACE_INCLUDE_DIRECTORIES "${GEOS_INCLUDE_DIR}"
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                            IMPORTED_LOCATION "${GEOS_LIBRARY}")
  endif()

  MESSAGE("FindGEOS Set By Envionment")

else()
    find_program(GEOS_CONFIG geos-config)
    if(GEOS_CONFIG)
        exec_program(${GEOS_CONFIG} ARGS --version OUTPUT_VARIABLE GEOS_VERSION)
        exec_program(${GEOS_CONFIG} ARGS --prefix OUTPUT_VARIABLE GEOS_PREFIX)
    endif()

    find_path(GEOS_INCLUDE_DIR NAMES geos_c.h
              HINTS ${GEOS_PREFIX}/include)
    find_library(GEOS_LIBRARY NAMES geos_c
                 HINTS ${GEOS_PREFIX}/lib)
    mark_as_advanced(GEOS_INCLUDE_DIR GEOS_LIBRARY)

    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(GEOS FOUND_VAR GEOS_FOUND
                                      REQUIRED_VARS GEOS_LIBRARY GEOS_INCLUDE_DIR)

    if(GEOS_FOUND)
        set(GEOS_LIBRARIES ${GEOS_LIBRARY})
        set(GEOS_INCLUDE_DIRS ${GEOS_INCLUDE_DIR})
        set(GEOS_TARGET GEOS::GEOS)
    endif()

    if(NOT TARGET ${GEOS_TARGET})
        add_library(${GEOS_TARGET} UNKNOWN IMPORTED)
        set_target_properties(${GEOS_TARGET} PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${GEOS_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${GEOS_LIBRARY}")
    endif()
endif()
