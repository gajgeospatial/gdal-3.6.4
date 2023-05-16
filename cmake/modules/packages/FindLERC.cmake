# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindLERC
--------

The following vars are set if LERC is found.

.. variable:: LERC_FOUND

  True if found, otherwise all other vars are undefined

.. variable:: LERC_INCLUDE_DIR

  The include dir for main *.h files

.. variable:: LERC_LIBRARY

  The library file

#]=======================================================================]

MESSAGE("Specialized FindLERC Called")
if( NOT $ENV{LERC_LIBRARY} STREQUAL "" )
  SET(LERC_LIBRARY $ENV{LERC_LIBRARY})
  Message("LERC_LIBRARY is set to " ${LERC_LIBRARY})
  if(NOT $ENV{LERC_LIBRARY_RELEASE} STREQUAL "")
    set(LERC_LIBRARY_RELEASE, $ENV{LERC_LIBRARY_RELEASE})
  else ()
    set (LERC_LIBRARY_RELEASE, ${LERC_LIBRARY})
  endif()

  if(NOT $ENV{LERC_LIBRARY_DEBUG} STREQUAL "")
    set(LERC_LIBRARY_DEBUG, $ENV{LERC_LIBRARY_DEBUG})
  else ()
    set (LERC_LIBRARY_DEBUG, ${LERC_LIBRARY})
  endif()

  SET(LERC_LIBRARIES ${LERC_LIBRARY})

  mark_as_advanced(LERC_LIBRARY_RELEASE LERC_LIBRARY_DEBUG)

  if( NOT $ENV{LERC_INCLUDE_DIR} STREQUAL "" )
     SET(LERC_INCLUDE_DIR $ENV{LERC_INCLUDE_DIR})
  else()
     SET(LERC_INCLUDE_DIR "LercIncludeDir")
  endif()

  Message("LERC_INCLUDE_DIR is set to " ${LERC_INCLUDE_DIR})

  SET(LERC_INCLUDE_DIRS ${LERC_INCLUDE_DIR})
  mark_as_advanced(LERC_INCLUDE_DIR)

  SET(LERC_FOUND TRUE)

  if(LERC_FOUND)
      if(NOT TARGET LERC::LERC)
        add_library(LERC::LERC UNKNOWN IMPORTED)
        set_target_properties(LERC::LERC PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${LERC_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${LERC_LIBRARY}")
      endif()
  endif()

  MESSAGE("FindLERC Set By Envionment")

else()
include(FindPackageHandleStandardArgs)

find_path(LERC_INCLUDE_DIR NAMES Lerc_c_api.h)
find_library(LERC_LIBRARY NAMES Lerc lerc)

mark_as_advanced(LERC_INCLUDE_DIR LERC_LIBRARY)
find_package_handle_standard_args(LERC
                                  FOUND_VAR LERC_FOUND
                                  REQUIRED_VARS LERC_LIBRARY LERC_INCLUDE_DIR)

if(LERC_FOUND)
    set(LERC_LIBRARIES ${LERC_LIBRARY})
    set(LERC_INCLUDE_DIRS ${LERC_INCLUDE_DIR})

    if(NOT TARGET LERC::LERC)
        add_library(LERC::LERC UNKNOWN IMPORTED)
        set_target_properties(LERC::LERC PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${LERC_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${LERC_LIBRARY}")
    endif()
endif()
endif()
