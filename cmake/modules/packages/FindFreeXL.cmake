# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindFreeXL
----------

Find the FreeXL includes and get all installed freexl library settings

The following vars are set if freexl is found.

.. variable:: FREEXL_FOUND

  True if found, otherwise all other vars are undefined

.. variable:: FREEXL_INCLUDE_DIR

  The include dir for main *.h files

.. variable:: FREEXL_VERSION_STRING

  full version (e.g. 4.2.0)

.. variable:: FREEXL_VERSION_MAJOR

  major part of version (e.g. 4)

.. variable:: FREEXL_VERSION_MINOR

  minor part (e.g. 2)

#]=======================================================================]

MESSAGE("Specialized FindFreeXL Called")
if( NOT $ENV{FREEXL_LIBRARY} STREQUAL "" )
  SET(FREEXL_LIBRARY $ENV{FREEXL_LIBRARY})
  if(NOT $ENV{FREEXL_LIBRARY_RELEASE} STREQUAL "")
    set(FREEXL_LIBRARY_RELEASE, $ENV{FREEXL_LIBRARY_RELEASE})
  else ()
    set (FREEXL_LIBRARY_RELEASE, ${FREEXL_LIBRARY})
  endif()

  if(NOT $ENV{FREEXL_LIBRARY_DEBUG} STREQUAL "")
    set(FREEXL_LIBRARY_DEBUG, $ENV{FREEXL_LIBRARY_DEBUG})
  else ()
    set (FREEXL_LIBRARY_DEBUG, ${FREEXL_LIBRARY})
  endif()

  SET(FREEXL_LIBRARIES ${FREEXL_LIBRARY})

  mark_as_advanced(FREEXL_LIBRARY_RELEASE FREEXL_LIBRARY_DEBUG)

  if( NOT $ENV{FREEXL_INCLUDE_DIR} STREQUAL "" )
     SET(FREEXL_INCLUDE_DIR $ENV{FREEXL_INCLUDE_DIR})
  else()
     SET(FREEXL_INCLUDE_DIR "FreeXLIncludeDir")
  endif()
  SET(FREEXL_INCLUDE_DIRS ${FREEXL_INCLUDE_DIR})
  mark_as_advanced(FREEXL_INCLUDE_DIR)

  SET(FREEXL_FOUND TRUE)
  if(FREEXL_FOUND)
    if(NOT TARGET FREEXL::freexl)
        add_library(FREEXL::freexl UNKNOWN IMPORTED)
        set_target_properties(FREEXL::freexl PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${FREEXL_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${FREEXL_LIBRARY}")
    endif()
  endif()

  MESSAGE("FindFreeXL Set By Envionment")

else()
include(FindPackageHandleStandardArgs)
include(SelectLibraryConfigurations)

find_package(PkgConfig QUIET)
if(PKG_CONFIG_FOUND)
    pkg_check_modules(PC_FREEXL QUIET freexl)
endif()

find_path(FREEXL_INCLUDE_DIR
          NAMES freexl.h
          HINTS ${PC_FREEXL_INCLUDE_DIRS})
find_library(FREEXL_LIBRARY
             NAMES freexl_i freexl
             HINTS ${PC_FREEXL_LIBRARY_DIRS})

mark_as_advanced(FREEXL_INCLUDE_DIR FREEXL_LIBRARY)
find_package_handle_standard_args(FreeXL
                                  FOUND_VAR FREEXL_FOUND
                                  REQUIRED_VARS FREEXL_LIBRARY FREEXL_INCLUDE_DIR)

if(FREEXL_FOUND)
    set(FREEXL_LIBRARIES ${FREEXL_LIBRARY})
    set(FREEXL_INCLUDE_DIRS ${FREEXL_INCLUDE_DIR})

    if(NOT TARGET FREEXL::freexl)
        add_library(FREEXL::freexl UNKNOWN IMPORTED)
        set_target_properties(FREEXL::freexl PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${FREEXL_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${FREEXL_LIBRARY}")
    endif()
endif()
endif()
