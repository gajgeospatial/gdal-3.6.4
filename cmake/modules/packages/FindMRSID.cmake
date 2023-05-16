# Distributed under the GDAL/OGR MIT style License.  See accompanying
# file LICENSE.TXT.

#[=======================================================================[.rst:
configure
---------

#]=======================================================================]
# Find the MRSID library - Multi-resolution Seamless Image Database.
#
# Copyright (C) 2017,2018 Hiroshi Miura
# Copyright (c) 2015 NextGIS <info@nextgis.com>
#
# Sets
#   MRSID_FOUND.
#   MRSID_INCLUDE_DIRS
#   MRSID_LIBRARIES
#
MESSAGE("Specialized MRSID Called")
if( NOT $ENV{MRSID_64_19_DIR} STREQUAL "" )
  SET(LocalBase $ENV{DEV_BASE})
  SET(MRSIDHEAD $ENV{MRSID_64_19_DIR})
  SET(MRSID_INCLUDE_DIR ${LocalBase}${MRSIDHEAD}\\Include)
  Message("MrSID Include Dir is " ${MRSID_INCLUDE_DIR})
  SET(LTIDSDKLIB ${LocalBase}${MRSIDHEAD}\\Raster_DSDK\\lib\\lti_dsdk.lib)
  SET(LTIDSDKCLIB ${LocalBase}${MRSIDHEAD}\\Raster_DSDK\\lib\\lti_dsdk_cdll.lib)

  SET(MRSID_LIBRARY ${LTIDSDKLIB})
  list(APPEND MRSID_LIBRARY ${LTIDSDKCLIB})

  if(MRSID_INCLUDE_DIR AND MRSID_LIBRARY)
    set(MAJOR_VERSION 0)
    set(MINOR_VERSION 0)
    set(SRV_VERSION 0)
    set(BLD_VERSION 0)
    if(EXISTS "${MRSID_INCLUDE_DIR}/lti_version.h")
      file(READ "${MRSID_INCLUDE_DIR}/lti_version.h" VERSION_H_CONTENTS)
      string(REGEX MATCH "LTI_SDK_MAJOR[ \t]+([0-9]+)"
           MAJOR_VERSION ${VERSION_H_CONTENTS})
      string (REGEX MATCH "([0-9]+)"
           MAJOR_VERSION ${MAJOR_VERSION})
      string(REGEX MATCH "LTI_SDK_MINOR[ \t]+([0-9]+)"
           MINOR_VERSION ${VERSION_H_CONTENTS})
       string (REGEX MATCH "([0-9]+)"
           MINOR_VERSION ${MINOR_VERSION})
       string(REGEX MATCH "LTI_SDK_REV[ \t]+([0-9]+)"
           REV_VERSION ${VERSION_H_CONTENTS})
       string (REGEX MATCH "([0-9]+)"
           REV_VERSION ${REV_VERSION})
       unset(VERSION_H_CONTENTS)
    endif()
    set(MRSID_VERSION_STRING "${MAJOR_VERSION}.${MINOR_VERSION}.${REV_VERSION}")
  endif()
  mark_as_advanced(MRSID_INCLUDE_DIR MRSID_LIBRARY MRSID_VERSION_STRING)
  message("MRSID_INCLUDE_DIR set to " ${MRSID_INCLUDE_DIR})
  message("MRSID_LIBARY set to " ${MRSID_LIBRARY})
  message("MRSID Version is " ${MRSID_VERSION_STRING})
  set(MRSID_FOUND TRUE)
  if(MRSID_FOUND)
     set(MRSID_LIBRARIES ${MRSID_LIBRARY})
     set(MRSID_INCLUDE_DIRS ${MRSID_INCLUDE_DIR})
     if(NOT TARGET MRSID::MRSID)
         add_library(MRSID::MRSID UNKNOWN IMPORTED)
         set_target_properties(MRSID::MRSID PROPERTIES
                               INTERFACE_INCLUDE_DIRECTORIES "${MRSID_INCLUDE_DIR}"
                               IMPORTED_LOCATION "${MRSID_LIBRARY}")
     endif()
  endif()

else()
find_path(MRSID_INCLUDE_DIR NAMES lt_base.h)

if( MRSID_INCLUDE_DIR )
  find_library( MRSID_LIBRARY NAMES lti_dsdk ltidsdk)
endif()

if(MRSID_INCLUDE_DIR AND MRSID_LIBRARY)
  set(MAJOR_VERSION 0)
  set(MINOR_VERSION 0)
  set(SRV_VERSION 0)
  set(BLD_VERSION 0)
  if(EXISTS "${MRSID_INCLUDE_DIR}/lti_version.h")
    file(READ "${MRSID_INCLUDE_DIR}/lti_version.h" VERSION_H_CONTENTS)
    string(REGEX MATCH "LTI_SDK_MAJOR[ \t]+([0-9]+)"
      MAJOR_VERSION ${VERSION_H_CONTENTS})
    string (REGEX MATCH "([0-9]+)"
      MAJOR_VERSION ${MAJOR_VERSION})
    string(REGEX MATCH "LTI_SDK_MINOR[ \t]+([0-9]+)"
      MINOR_VERSION ${VERSION_H_CONTENTS})
    string (REGEX MATCH "([0-9]+)"
      MINOR_VERSION ${MINOR_VERSION})
    string(REGEX MATCH "LTI_SDK_REV[ \t]+([0-9]+)"
      REV_VERSION ${VERSION_H_CONTENTS})
    string (REGEX MATCH "([0-9]+)"
      REV_VERSION ${REV_VERSION})
    unset(VERSION_H_CONTENTS)
  endif()
  set(MRSID_VERSION_STRING "${MAJOR_VERSION}.${MINOR_VERSION}.${REV_VERSION}")
endif()
mark_as_advanced(MRSID_INCLUDE_DIR MRSID_LIBRARY MRSID_VERSION_STRING)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MRSID FOUND_VAR MRSID_FOUND
                                  REQUIRED_VARS MRSID_LIBRARY MRSID_INCLUDE_DIR
                                  VERSION_VAR MRSID_VERSION_STRING)

# Copy the results to the output variables.
if(MRSID_FOUND)
  set(MRSID_LIBRARIES ${MRSID_LIBRARY})
  set(MRSID_INCLUDE_DIRS ${MRSID_INCLUDE_DIR})
  if(NOT TARGET MRSID::MRSID)
    add_library(MRSID::MRSID UNKNOWN IMPORTED)
    set_target_properties(MRSID::MRSID PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${MRSID_INCLUDE_DIR}"
                          IMPORTED_LOCATION "${MRSID_LIBRARY}")
  endif()
endif()
endif()
