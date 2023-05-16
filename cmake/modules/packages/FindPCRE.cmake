# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file COPYING-CMAKE-SCRIPTS or https://cmake.org/licensing for details.

#.rst
# FindPCRE
# ~~~~~~~~~
# Copyright (C) 2017-2018, Hiroshi Miura
#
# Find the native PCRE headers and libraries.
MESSAGE("Specialized FindPcre Called")
if( NOT $ENV{PCRE_LIBRARY} STREQUAL "" )
  SET(PCRE_LIBRARY $ENV{PCRE_LIBRARY})
  if(NOT $ENV{PCRE_LIBRARY_RELEASE} STREQUAL "")
    set(PCRE_LIBRARY_RELEASE, $ENV{PCRE_LIBRARY_RELEASE})
  else ()
    set (PCRE_LIBRARY_RELEASE, ${PCRE_LIBRARY})
  endif()

  if(NOT $ENV{PCRE_LIBRARY_DEBUG} STREQUAL "")
    set(PCRE_LIBRARY_DEBUG, $ENV{PCRE_LIBRARY_DEBUG})
  else ()
    set (PCRE_LIBRARY_DEBUG, ${PCRE_LIBRARY})
  endif()

  SET(PCRE_LIBRARIES ${PCRE_LIBRARY})

  mark_as_advanced(PCRE_LIBRARY_RELEASE PCRE_LIBRARY_DEBUG)

  if( NOT $ENV{CRYPTOPP_INCLUDE_DIR} STREQUAL "" )
     SET(PCRE_INCLUDE_DIR $ENV{PCRE_INCLUDE_DIR})
  else()
     SET(PCRE_INCLUDE_DIR "PcreIncludeDir")
  endif()
  SET(PCRE_INCLUDE_DIRS ${PCRE_INCLUDE_DIR})
  mark_as_advanced(PCRE_INCLUDE_DIR)
  if( NOT $ENV{PCRECPP_LIBRARY} STREQUAL "" )
    SET(PCRECPP_LIBRARY $ENV{PCRECPP_LIBRARY})
    if(NOT $ENV{PCRECPP_LIBRARY_RELEASE} STREQUAL "")
      set(PCRECPP_LIBRARY_RELEASE, $ENV{PCRECPP_LIBRARY_RELEASE})
    else ()
      set (PCRECPP_LIBRARY_RELEASE, ${PCRECPP_LIBRARY})
    endif()

    if(NOT $ENV{PCRECPP_LIBRARY_DEBUG} STREQUAL "")
      set(PCRECPP_LIBRARY_DEBUG, $ENV{PCRECPP_LIBRARY_DEBUG})
    else ()
      set (PCRECPP_LIBRARY_DEBUG, ${PCRECPP_LIBRARY})
    endif()

    SET(PCRECPP_LIBRARIES ${PCRECPP_LIBRARY})

    mark_as_advanced(PCRECPP_LIBRARY_RELEASE PCRECPP_LIBRARY_DEBUG)
  endif()

  SET(PCRE_FOUND TRUE)

  if(PCRE_FOUND)
    if(NOT TARGET PCRE::PCRE)
        add_library(PCRE::PCRE UNKNOWN IMPORTED)
        set_target_properties(PCRE::PCRE PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${PCRE_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${PCRE_LIBRARY}")
    endif()
  endif()

  MESSAGE("FindPCRE Set By Envionment")

else()
find_path(PCRE_INCLUDE_DIR NAMES pcre.h)
find_library(PCRE_LIBRARY NAMES pcre)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PCRE
                                  FOUND_VAR PCRE_FOUND
                                  REQUIRED_VARS PCRE_LIBRARY PCRE_INCLUDE_DIR)
mark_as_advanced(PCRE_INCLUDE_DIR PCRE_LIBRARY)
if(PCRE_FOUND)
    set(PCRE_LIBRARIES "${PCRE_LIBRARY}")
    set(PCRE_INCLUDE_DIRS "${PCRE_INCLUDE_DIR}")
    if(NOT TARGET PCRE::PCRE)
        add_library(PCRE::PCRE UNKNOWN IMPORTED)
        set_target_properties(PCRE::PCRE PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${PCRE_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${PCRE_LIBRARY}")
    endif()
endif()
endif()
