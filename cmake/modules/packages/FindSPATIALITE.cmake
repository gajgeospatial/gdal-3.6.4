# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindSPATIALITE
--------------

CMake module to search for SpatiaLite library

IMPORTED Targets
^^^^^^^^^^^^^^^^

This module defines :prop_tgt:`IMPORTED` target ``SPATIALITE::SPATIALITE``, if
Spatialite has been found.

Result Variables
^^^^^^^^^^^^^^^^

This module defines the following variables:

``SPATIALITE_FOUND``
  True if Spatialite found.

``SPATIALITE_INCLUDE_DIRS``
  where to find Spatialite.h, etc.

``SPATIALITE_LIBRARIES``
  List of libraries when using Spatialite.

``SPATIALITE_VERSION_STRING``
  The version of Spatialite found.
#]=======================================================================]
MESSAGE("Specialized FindSPATIALITE Called")
if( NOT $ENV{SPATIALITE_LIBRARY} STREQUAL "" )
  SET(SPATIALITE_LIBRARY $ENV{SPATIALITE_LIBRARY})
  if(NOT $ENV{SPATIALITE_LIBRARY_RELEASE} STREQUAL "")
    set(SPATIALITE_LIBRARY_RELEASE, $ENV{SPATIALITE_LIBRARY_RELEASE})
  else ()
    set (SPATIALITE_LIBRARY_RELEASE, ${SPATIALITE_LIBRARY})
  endif()

  if(NOT $ENV{SPATIALITE_LIBRARY_DEBUG} STREQUAL "")
    set(SPATIALITE_LIBRARY_DEBUG, $ENV{SPATIALITE_LIBRARY_DEBUG})
  else ()
    set (SPATIALITE_LIBRARY_DEBUG, ${SPATIALITE_LIBRARY})
  endif()

  SET(SPATIALITE_LIBRARIES ${SPATIALITE_LIBRARY})

  mark_as_advanced(SPATAILIET_LIBRARY_RELEASE SPATIALITE_LIBRARY_DEBUG)

  if( NOT $ENV{SPATIALITE_INCLUDE_DIR} STREQUAL "" )
     SET(SPATIALITE_INCLUDE_DIR $ENV{SPATIALITE_INCLUDE_DIR})
  else()
     SET(SPATIALITE_INCLUDE_DIR "SpatialiteIncludeDir")
  endif()
  SET(SPATIALITE_INCLUDE_DIRS ${SPATIALITE_INCLUDE_DIR})
  mark_as_advanced(SPATIALITE_INCLUDE_DIR)

  if(SPATIALITE_LIBRARY AND SPATIALITE_INCLUDE_DIR
     AND NOT SPATIALITE_VERSION_STRING)
     file(STRINGS "${SPATIALITE_INCLUDE_DIR}/spatialite.h" _spatialite_h_ver
         REGEX "^[ \t]version[ \t]([0-9]+\\.[0-9]+),.*")
     string(REGEX REPLACE "[ \t]version[ \t]([0-9]+\\.[0-9]+),.*" "\\1" _spatialite_h_ver ${_spatialite_h_ver})
     set(SPATIALITE_VERSION_STRING "${_spatialite_h_ver}")
  endif()
  SET(SPATIALITE_FOUND TRUE)
  if(SPATIALITE_FOUND)
      set(SPATIALITE_LIBRARIES "${SPATIALITE_LIBRARY}")
      set(SPATIALITE_INCLUDE_DIRS "${SPATIALITE_INCLUDE_DIR}")
      if(NOT TARGET SPATIALITE::SPATIALITE)
          add_library(SPATIALITE::SPATIALITE UNKNOWN IMPORTED)
          set_target_properties(SPATIALITE::SPATIALITE PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${SPATIALITE_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${SPATIALITE_LIBRARY}")
      endif()
  endif()

  MESSAGE("FindSPATIALITE Set By Envionment")

else()
if(CMAKE_VERSION VERSION_LESS 3.13)
    set(SPATIALITE_ROOT CACHE PATH "")
    mark_as_advanced(SPATIALITE_ROOT)
endif()

find_package(PkgConfig QUIET)
if(PKG_CONFIG_FOUND)
    pkg_check_modules(PC_SPATIALITE QUIET spatialite)
    set(SPATIALITE_VERSION_STRING ${PC_SPATIALITE_VERSION})
endif()

find_path(SPATIALITE_INCLUDE_DIR
          NAMES spatialite.h
          HINTS ${SPATIALITE_ROOT} ${PC_SPATIALITE_INCLUDE_DIRS}
          PATH_SUFFIXES include)
find_library(SPATIALITE_LIBRARY
             NAMES spatialite_i spatialite
             HINTS ${SPATIALITE_ROOT} ${PC_SPATIALITE_LIBRARY_DIRS}
             PATH_SUFFIXES lib)
mark_as_advanced(SPATIALITE_LIBRARY SPATIALITE_INCLUDE_DIR)

if(SPATIALITE_LIBRARY AND SPATIALITE_INCLUDE_DIR
   AND NOT SPATIALITE_VERSION_STRING)
    file(STRINGS "${SPATIALITE_INCLUDE_DIR}/spatialite.h" _spatialite_h_ver
         REGEX "^[ \t]version[ \t]([0-9]+\\.[0-9]+),.*")
    string(REGEX REPLACE "[ \t]version[ \t]([0-9]+\\.[0-9]+),.*" "\\1" _spatialite_h_ver ${_spatialite_h_ver})
    set(SPATIALITE_VERSION_STRING "${_spatialite_h_ver}")
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(SPATIALITE
                                  FOUND_VAR SPATIALITE_FOUND
                                  REQUIRED_VARS SPATIALITE_LIBRARY SPATIALITE_INCLUDE_DIR
                                  VERSION_VAR SPATIALITE_VERSION_STRING)
if(SPATIALITE_FOUND)
    set(SPATIALITE_LIBRARIES "${SPATIALITE_LIBRARY}")
    set(SPATIALITE_INCLUDE_DIRS "${SPATIALITE_INCLUDE_DIR}")
    if(NOT TARGET SPATIALITE::SPATIALITE)
        add_library(SPATIALITE::SPATIALITE UNKNOWN IMPORTED)
        set_target_properties(SPATIALITE::SPATIALITE PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${SPATIALITE_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${SPATIALITE_LIBRARY}")
    endif()
endif()
endif()
