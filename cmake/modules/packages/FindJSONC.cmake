# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file COPYING-CMAKE-SCRIPTS or https://cmake.org/licensing for details.

#.rst
# FindJSONC
# ~~~~~~~~~
# Copyright (C) 2017-2018, Hiroshi Miura
# Copyright (c) 2012, Dmitry Baryshnikov <polimax at mail.ru>
#
# CMake module to search for jsonc library
#
# If it's found it sets JSONC_FOUND to TRUE
# and following variables are set:
#    JSONC_INCLUDE_DIR
#    JSONC_LIBRARY
MESSAGE("Specialized FindJsonC Called")
if( NOT $ENV{JSONC_LIBRARY} STREQUAL "" )
  SET(JSONC_LIBRARY $ENV{JSONC_LIBRARY})
  if(NOT $ENV{JSONC_LIBRARY_RELEASE} STREQUAL "")
    set(JSONC_LIBRARY_RELEASE, $ENV{JSONC_LIBRARY_RELEASE})
  else ()
    set (JSONC_LIBRARY_RELEASE, ${JSONC_LIBRARY})
  endif()

  if(NOT $ENV{JSONC_LIBRARY_DEBUG} STREQUAL "")
    set(JSONC_LIBRARY_DEBUG, $ENV{JSONC_LIBRARY_DEBUG})
  else ()
    set (JSONC_LIBRARY_DEBUG, ${JSONC_LIBRARY})
  endif()

  SET(JSONC_LIBRARIES ${JSONC_LIBRARY})

  mark_as_advanced(JSONC_LIBRARY_RELEASE JSONC_LIBRARY_DEBUG)

  if( NOT $ENV{JSONC_INCLUDE_DIR} STREQUAL "" )
     SET(JSONC_INCLUDE_DIR $ENV{JSONC_INCLUDE_DIR})
  else()
     SET(JSONC_INCLUDE_DIR "JSonCIncludeDir")
  endif()
  SET(JSONC_INCLUDE_DIRS ${JSONC_INCLUDE_DIR})
  mark_as_advanced(JSONC_INCLUDE_DIR)

  SET(JSONC_FOUND TRUE)
  if(JSONC_FOUND)
    set(JSONC_TARGET JSONC::JSONC)
    if(NOT TARGET ${JSONC_TARGET})
        add_library(${JSONC_TARGET} UNKNOWN IMPORTED)
        set_target_properties(${JSONC_TARGET} PROPERTIES
                            INTERFACE_INCLUDE_DIRECTORIES "${JSONC_INCLUDE_DIRS}"
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                            IMPORTED_LOCATION "${JSONC_LIBRARY}")
     endif()
  endif()

  MESSAGE("FindJSONC Set By Envionment")

else()
find_package(PkgConfig QUIET)
if(PKG_CONFIG_FOUND)
  pkg_check_modules(PC_JSONC QUIET json-c)
endif()

find_path(JSONC_INCLUDE_DIR
          NAMES json.h
          HINTS ${PC_JSONC_INCLUDE_DIRS}
                ${JSONC_ROOT}/include
          PATH_SUFFIXES json-c json)
find_library(JSONC_LIBRARY
             NAMES json-c json
             HINTS ${PC_JSONC_LIBRARY_DIRS}
                   ${JSONC_ROOT}/lib)
mark_as_advanced(JSONC_LIBRARY JSONC_INCLUDE_DIR)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(JSONC DEFAULT_MSG JSONC_LIBRARY JSONC_INCLUDE_DIR)

if(JSONC_FOUND)
  set(JSONC_INCLUDE_DIRS ${JSONC_INCLUDE_DIR})
  set(JSONC_LIBRARIES ${JSONC_LIBRARY})
  set(JSONC_TARGET JSONC::JSONC)
  if(NOT TARGET ${JSONC_TARGET})
      add_library(${JSONC_TARGET} UNKNOWN IMPORTED)
      set_target_properties(${JSONC_TARGET} PROPERTIES
                            INTERFACE_INCLUDE_DIRECTORIES "${JSONC_INCLUDE_DIRS}"
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                            IMPORTED_LOCATION "${JSONC_LIBRARY}")
  endif()
endif()
endif()
