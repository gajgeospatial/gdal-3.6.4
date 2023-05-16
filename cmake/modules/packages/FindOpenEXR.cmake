# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#.rst:
# FindOpenEXR
# -----------
#
# CMake module to search for OpenEXR library
#
# Copyright (C) 2020, Hiroshi Miura
#
# If it's found it sets OpenEXR_FOUND to TRUE
# and following variables are set:
#    OpenEXR_INCLUDE_DIRS
#    OpenEXR_LIBRARIES
#
MESSAGE("Specialized FindOpenEXR Called")
if( NOT $ENV{OPENEXR_LIBRARY} STREQUAL "" )
   Set(OpenEXR_LIBRARY ${OPENEXR_LIBRARY})
   Message("OpenEXR_LIBRARY set to " ${OPENEXR_LIBRARY})
  if(NOT $ENV{OPENEXR_LIBRARY_RELEASE} STREQUAL "")
    set(OpenEXR_LIBRARY_RELEASE $ENV{OPENEXR_LIBRARY_RELEASE})
  else ()
    set (OpenEXR_LIBRARY_RELEASE ${OpenEXR_LIBRARY})
  endif()

  if(NOT $ENV{OPENEXR_LIBRARY_DEBUG} STREQUAL "")
    set(OpenEXR_LIBRARY_DEBUG $ENV{OPENEXR_LIBRARY_DEBUG})
  else ()
    set (OpenEXR_LIBRARY_DEBUG ${OpenEXR_LIBRARY})
  endif()

  if( NOT $ENV{OPENEXR_UTIL_LIBRARY} STREQUAL "" )
     Set(OpenEXR_UTIL_LIBRARY $ENV{OPENEXR_UTIL_LIBRARY})
  else ()
     Set (OpenEXR_UTIL_LIBRARY "OpenExr_Util_Library")
  endif()
  Message("OpenEXR_UTIL_LIBRARY set to " ${OpenEXR_UTIL_LIBRARY})

  if(NOT $ENV{OPENEXR_UTIL_LIBRARY_RELEASE} STREQUAL "")
    set(OpenEXR_UTIL_LIBRARY_RELEASE $ENV{OPENEXR_UTIL_LIBRARY_RELEASE})
  else ()
    set (OpenEXR_UTIL_LIBRARY_RELEASE ${OpenEXR_UTIL_LIBRARY})
  endif()

  if(NOT $ENV{OPENEXR_UTIL_LIBRARY_DEBUG} STREQUAL "")
    set(OpenEXR_UTIL_LIBRARY_DEBUG $ENV{OPENEXR_UTIL_LIBRARY_DEBUG})
  else ()
    set (OpenEXR_UTIL_LIBRARY_DEBUG ${OpenEXR_UTIL_LIBRARY})
  endif()

  if( NOT $ENV{OPENEXR_IEX_LIBRARY} STREQUAL "" )
     Set(OpenEXR_IEX_LIBRARY $ENV{OPENEXR_IEX_LIBRARY})
  else ()
     Set (OpenEXR_IEX_LIBRARY "OpenExr_Iex_Library")
  endif()
  Message("OpenEXR_Iex_LIBRARY set to " ${OpenEXR_IEX_LIBRARY})

  if(NOT $ENV{OPENEXR_IEX_LIBRARY_RELEASE} STREQUAL "")
    set(OpenEXR_IEX_LIBRARY_RELEASE $ENV{OPENEXR_IEX_LIBRARY_RELEASE})
  else ()
    set (OpenEXR_IEX_LIBRARY_RELEASE ${OpenEXR_IEX_LIBRARY})
  endif()

  if(NOT $ENV{OPENEXR_IEX_LIBRARY_DEBUG} STREQUAL "")
    set(OpenEXR_IEX_LIBRARY_DEBUG $ENV{OPENEXR_IEX_LIBRARY_DEBUG})
  else ()
    set (OpenEXR_IEX_LIBRARY_DEBUG ${OpenEXR_IEX_LIBRARY})
  endif()

  if( NOT $ENV{OPENEXR_IMATH_LIBRARY} STREQUAL "" )
     Set(OpenEXR_IMATH_LIBRARY $ENV{OPENEXR_IMATH_LIBRARY})
  else ()
     Set (OpenEXR_IMATH_LIBRARY "OpenExr_Imath_Library")
  endif()
  Message("OpenEXR_IMATH_LIBRARY set to " ${OpenEXR_IMATH_LIBRARY})

  if(NOT $ENV{OPENEXR_IMATH_LIBRARY_RELEASE} STREQUAL "")
    set(OpenEXR_IMATH_LIBRARY_RELEASE $ENV{OPENEXR_IMATH_LIBRARY_RELEASE})
  else ()
    set (OpenEXR_IMATH_LIBRARY_RELEASE ${OpenEXR_IMATH_LIBRARY})
  endif()

  if(NOT $ENV{OPENEXR_IMATH_LIBRARY_DEBUG} STREQUAL "")
    set(OpenEXR_IMATH_LIBRARY_DEBUG $ENV{OPENEXR_IMATH_LIBRARY_DEBUG})
  else ()
    set (OpenEXR_IMATH_LIBRARY_DEBUG ${OpenEXR_IMATH_LIBRARY})
  endif()

  if( NOT $ENV{OPENEXR_CORE_LIBRARY} STREQUAL "" )
     Set(OpenEXR_CORE_LIBRARY $ENV{OPENEXR_CORE_LIBRARY})
  else ()
     Set (OpenEXR_CORE_LIBRARY "OpenExr_CORE_Library")
  endif()
  Message("OpenEXR_CORE_LIBRARY set to " ${OpenEXR_CORE_LIBRARY})

  if(NOT $ENV{OPENEXR_CORE_LIBRARY_RELEASE} STREQUAL "")
    set(OpenEXR_CORE_LIBRARY_RELEASE $ENV{OPENEXR_CORE_LIBRARY_RELEASE})
  else ()
    set (OpenEXR_CORE_LIBRARY_RELEASE ${OpenEXR_CORE_LIBRARY})
  endif()

  if(NOT $ENV{OPENEXR_CORE_LIBRARY_DEBUG} STREQUAL "")
    set(OpenEXR_CORE_LIBRARY_DEBUG $ENV{OPENEXR_CORE_LIBRARY_DEBUG})
  else ()
    set (OpenEXR_CORE_LIBRARY_DEBUG ${OpenEXR_CORE_LIBRARY})
  endif()

  if( NOT $ENV{OPENEXR_INCLUDE_DIR} STREQUAL "" )
     SET(OpenEXR_INCLUDE_DIR $ENV{OPENEXR_INCLUDE_DIR})
  else()
     SET(OpenEXR_INCLUDE_DIR "OpenExrIncludeDir")
  endif()
  Message("OpenEXR_INCLUDE_DIR set to " ${OpenEXR_INCLUDE_DIR})

  if(OpenEXR_INCLUDE_DIR AND NOT OpenEXR_VERSION_STRING)
     # Fallback for PkgConfig not finding anything
     file(READ ${OpenEXR_INCLUDE_DIR}/OpenEXRConfig.h txt)
     string(REGEX MATCH "define[ \t]+OPENEXR_VERSION_STRING[ \t]+\"([0-9]+(.[0-9]+)?(.[0-9]+)?)\".*$" _ ${txt})
     set(OpenEXR_VERSION_STRING ${CMAKE_MATCH_1})
  endif()

  if( NOT $ENV{OPENEXR_IMATH_INCLUDE_DIR} STREQUAL "" )
     SET(Imath_INCLUDE_DIR $ENV{OPENEXR_IMATH_INCLUDE_DIR})
  else()
     SET(Imath_INCLUDE_DIR "OpenExrImathIncludeDir")
  endif()
  Message("OpenEXR_IMATH_INCLUDE_DIR set to " ${Imath_INCLUDE_DIR})

  set(OpenEXR_INCLUDE_DIRS ${OpenEXR_INCLUDE_DIR} ${Imath_INCLUDE_DIR})
  set(OpenEXR_LIBRARIES ${OpenEXR_LIBRARY} ${OpenEXR_UTIL_LIBRARY} ${OpenEXR_IMATH_LIBRARY} ${OpenEXR_IEX_LIBRARY})
  set(OpenEXR_FOUND TRUE)

  if (NOT TARGET OpenEXR::OpenEXR)
    add_library(OpenEXR::IlmImf UNKNOWN IMPORTED)
    add_library(OpenEXR::IlmImfUtil UNKNOWN IMPORTED)
    add_library(OpenEXR::Half UNKNOWN IMPORTED)
    add_library(OpenEXR::Iex UNKNOWN IMPORTED)
    set_target_properties(OpenEXR::IlmImf  PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_LIBRARY})
    set_target_properties(OpenEXR::IlmImfUtil PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_UTIL_LIBRARY})
    set_target_properties(OpenEXR::Half PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_HALF_LIBRARY})
    set_target_properties(OpenEXR::Iex PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_IEX_LIBRARY})
  endif ()
  Message("FindOpenEXR set from envionment")

else()
if(OpenEXR_ROOT)
  list(APPEND OpenEXR_INC_HINTS ${OpenEXR_ROOT}/include/OpenEXR)
  list(APPEND OpenEXR_LIB_HINTS ${OpenEXR_ROOT}/lib)
  list(APPEND CMAKE_PREFIX_PATH ${OpenEXR_ROOT})
endif()

if(Imath_ROOT)
  list(APPEND Imath_INC_HINTS ${Imath_ROOT}/include/Imath)
  list(APPEND Imath_LIB_HINTS ${Imath_ROOT}/lib)
  list(APPEND CMAKE_PREFIX_PATH ${Imath_ROOT})
endif()

find_package(PkgConfig QUIET)
if (PKG_CONFIG_FOUND)
  pkg_check_modules(PC_OpenEXR QUIET OpenEXR)
  if(PC_OpenEXR_FOUND)
    list(APPEND OpenEXR_LIB_HINTS ${PC_OpenEXR_LIBRARY_DIRS})
    list(APPEND OpenEXR_INC_HINTS ${PC_OpenEXR_INCLUDE_DIRS})
    set(OpenEXR_VERSION_STRING ${PC_OpenEXR_VERSION})
  endif()
endif ()

find_path(OpenEXR_INCLUDE_DIR
          NAMES ImfVersion.h
          HINTS ${OpenEXR_INC_HINTS}
          PATH_SUFFIXES OpenEXR)
find_path(Imath_INCLUDE_DIR
          NAMES ImathMatrix.h
          HINTS ${Imath_INC_HINTS} ${OpenEXR_INCLUDE_DIR}
          PATH_SUFFIXES Imath)

if(OpenEXR_INCLUDE_DIR AND NOT OpenEXR_VERSION_STRING)
  # Fallback for PkgConfig not finding anything
  file(READ ${OpenEXR_INCLUDE_DIR}/OpenEXRConfig.h txt)
  string(REGEX MATCH "define[ \t]+OPENEXR_VERSION_STRING[ \t]+\"([0-9]+(.[0-9]+)?(.[0-9]+)?)\".*$" _ ${txt})
  set(OpenEXR_VERSION_STRING ${CMAKE_MATCH_1})
endif()

if (OpenEXR_VERSION_STRING VERSION_GREATER_EQUAL 3.0)
    find_library(OpenEXR_LIBRARY
                 NAMES OpenEXR
                 HINTS ${OpenEXR_LIB_HINTS})
    find_library(OpenEXR_UTIL_LIBRARY
                 NAMES OpenEXRUtil
                 HINTS ${OpenEXR_LIB_HINTS})
    find_library(OpenEXR_HALF_LIBRARY
                 NAMES Imath
                 HINTS ${Imath_LIB_HINTS})  #Imath is considered separate since v3
    find_library(OpenEXR_IEX_LIBRARY
                 NAMES Iex
                 HINTS ${OpenEXR_LIB_HINTS})
else()
    find_library(OpenEXR_LIBRARY
                 NAMES IlmImf
                 HINTS ${OpenEXR_LIB_HINTS})
    find_library(OpenEXR_UTIL_LIBRARY
                 NAMES IlmImfUtil
                 HINTS ${OpenEXR_LIB_HINTS})
    find_library(OpenEXR_HALF_LIBRARY
                 NAMES Half
                 HINTS ${OpenEXR_LIB_HINTS})
    find_library(OpenEXR_IEX_LIBRARY
                 NAMES Iex
                 HINTS ${OpenEXR_LIB_HINTS})
endif()

mark_as_advanced(OpenEXR_LIBRARY
                 OpenEXR_UTIL_LIBRARY
                 OpenEXR_HALF_LIBRARY
                 OpenEXR_IEX_LIBRARY
                 OpenEXR_INCLUDE_DIR
                 Imath_INCLUDE_DIR)

find_package_handle_standard_args(OpenEXR FOUND_VAR OpenEXR_FOUND
                                  REQUIRED_VARS OpenEXR_LIBRARY
                                                OpenEXR_UTIL_LIBRARY
                                                OpenEXR_HALF_LIBRARY
                                                OpenEXR_IEX_LIBRARY
                                                OpenEXR_INCLUDE_DIR
                                                Imath_INCLUDE_DIR
                                  VERSION_VAR OpenEXR_VERSION_STRING)

if (OpenEXR_FOUND)
  set(OpenEXR_INCLUDE_DIRS ${OpenEXR_INCLUDE_DIR} ${Imath_INCLUDE_DIR})
  set(OpenEXR_LIBRARIES ${OpenEXR_LIBRARY} ${OpenEXR_UTIL_LIBRARY} ${OpenEXR_HALF_LIBRARY} ${OpenEXR_IEX_LIBRARY})
  if (NOT TARGET OpenEXR::OpenEXR)
    add_library(OpenEXR::IlmImf UNKNOWN IMPORTED)
    add_library(OpenEXR::IlmImfUtil UNKNOWN IMPORTED)
    add_library(OpenEXR::Half UNKNOWN IMPORTED)
    add_library(OpenEXR::Iex UNKNOWN IMPORTED)
    set_target_properties(OpenEXR::IlmImf  PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_LIBRARY})
    set_target_properties(OpenEXR::IlmImfUtil PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_UTIL_LIBRARY})
    set_target_properties(OpenEXR::Half PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_HALF_LIBRARY})
    set_target_properties(OpenEXR::Iex PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${OpenEXR_INCLUDE_DIRS}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                          IMPORTED_LOCATION ${OpenEXR_IEX_LIBRARY})
  endif ()
endif ()
endif()

