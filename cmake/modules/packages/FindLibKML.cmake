# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindLibKML
----------

Find the LibKML headers and libraries.

This module accept optional COMPONENTS to check supported sub modules::

    LIBKML_BASE_LIBRARY
    LIBKML_DOM_LIBRARY
    LIBKML_ENGINE_LIBRARY
    LIBKML_CONVENIENCE_LIBRARY
    LIBKML_XSD_LIBRARY


IMPORTED Targets
^^^^^^^^^^^^^^^^

This module defines :prop_tgt:`IMPORTED` target ``LIBKML::LibKML``, if found.

Result Variables
^^^^^^^^^^^^^^^^

This module defines the following variables:

``LIBKML_FOUND``
  True if libkml found.

``LIBKML_INCLUDE_DIRS``
  where to find header files.

``LIBKML_LIBRARIES``
  List of libraries when using libkml.

``LIBKML_VERSION_STRING``
  The version of libkml found.
#]=======================================================================]
MESSAGE("Specialized FindLibKML Called")
if( NOT $ENV{LIBKML_LIBRARY} STREQUAL "" )
  SET(LIBKML_BASE_LIBRARY $ENV{LIBKML_LIBRARY})
  if(NOT $ENV{LIBKML_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_BASE_LIBRARY_RELEASE, $ENV{LIBKML_LIBRARY_RELEASE})
  else ()
    set (LIBKML_BASE_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_BASE_LIBRARY_DEBUG, $ENV{LIBKML_LIBRARY_DEBUG})
  else ()
    set (LIBKML_BASE_LIBRARY_DEBUG, ${LIBKML_BASE_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_BASE_LIBRARY_RELEASE LIBKML_BASE_LIBRARY_DEBUG)

  if(NOT $ENV{LIBKML_DOM_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_DOM_LIBRARY_RELEASE, $ENV{LIBKML_DOM_LIBRARY_RELEASE})
    set(LIBKML_DOM_LIBRARY, $ENV{LIBKML_DOM_LIBRARY_RELEASE})
  else ()
    set (LIBKML_BASE_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_DOM_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_DOM_LIBRARY_DEBUG, $ENV{LIBKML_DOM_LIBRARY_DEBUG})
  else ()
    set (LIBKML_DOM_LIBRARY_DEBUG, ${LIBKML_BASE_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_DOM_LIBRARY_RELEASE LIBKML_DOM_LIBRARY_DEBUG)

  if(NOT $ENV{LIBKML_ENGINE_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_ENGINE_LIBRARY_RELEASE, $ENV{LIBKML_ENGINE_LIBRARY_RELEASE})
    set(LIBKML_ENGINE_LIBRARY, $ENV{LIBKML_ENGINE_LIBRARY_RELEASE})
  else ()
    set (LIBKML_ENGINE_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_ENGINE_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_ENGINE_LIBRARY_DEBUG, $ENV{LIBKML_ENGINE_LIBRARY_DEBUG})
  else ()
    set (LIBKML_ENGINE_LIBRARY_DEBUG, ${LIBKML_BASE_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_ENGINE_LIBRARY_RELEASE LIBKML_ENGINE_LIBRARY_DEBUG)

  if(NOT $ENV{LIBKML_CONVENIENCE_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_CONVENIENCE_LIBRARY_RELEASE, $ENV{LIBKML_CONVENIENCE_LIBRARY_RELEASE})
    set(LIBKML_CONVENIENCE_LIBRARY, $ENV{LIBKML_CONVENIENCE_LIBRARY_RELEASE})
  else ()
    set (LIBKML_CONVENIENCE_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_CONVENIENCE_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_CONVENIENCE_LIBRARY_DEBUG, $ENV{LIBKML_CONVENIENCE_LIBRARY_DEBUG})
  else ()
    set (LIBKML_CONVENIENCE_LIBRARY_DEBUG, ${LIBKML_BASE_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_CONVENIENCE_LIBRARY_RELEASE LIBKML_CONVENIENCE_LIBRARY_DEBUG)

  if(NOT $ENV{LIBKML_XSD_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_XSD_LIBRARY_RELEASE, $ENV{LIBKML_XSD_LIBRARY_RELEASE})
    set(LIBKML_XSD_LIBRARY, $ENV{LIBKML_XSD_LIBRARY_RELEASE})
  else ()
    set (LIBKML_XSD_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_XSD_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_XSD_LIBRARY_DEBUG, $ENV{LIBKML_XSD_LIBRARY_DEBUG})
  else ()
    set (LIBKML_XSD_LIBRARY_DEBUG, ${LIBKML_BASE_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_XSD_LIBRARY_RELEASE LIBKML_XSD_LIBRARY_DEBUG)

  if(NOT $ENV{LIBKML_REGIONATOR_LIBRARY_RELEASE} STREQUAL "")
    set(LIBKML_REGIONATOR_LIBRARY_RELEASE, $ENV{LIBKML_REGIONATOR_LIBRARY_RELEASE})
    set(LIBKML_REGIONATOR_LIBRARY, $ENV{LIBKML_REGIONATOR_LIBRARY_RELEASE})
  else ()
    set (LIBKML_REGIONATOR_LIBRARY_RELEASE, ${LIBKML_BASE_LIBRARY})
  endif()

  if(NOT $ENV{LIBKML_REGIONATOR_LIBRARY_DEBUG} STREQUAL "")
    set(LIBKML_REGIONATOR_LIBRARY_DEBUG, $ENV{LIBKML_REGIONATOR_LIBRARY_DEBUG})
  else ()
    set (LIBKML_REGIONATOR_LIBRARY_DEBUG, ${LIBKML_REGIONATOR_LIBRARY})
  endif()

  mark_as_advanced(LIBKML_REGIONATOR_LIBRARY_RELEASE LIBKML_REGIONATOR_LIBRARY_DEBUG)

  SET(LIBKML_LIBRARIES ${LIBKML_BASE_LIBRARY})
  list(APPEND LIBKML_LIBRARIES ${LIBKML_DOM_LIBRARY})
  list(APPEND LIBKML_LIBRARIES ${LIBKML_ENGINE_LIBRARY})
  list(APPEND LIBKML_LIBRARIES ${LIBKML_CONVENIENCE_LIBRARY})
  list(APPEND LIBKML_LIBRARIES ${LIBKML_XSD_LIBRARY})
  list(APPEND LIBKML_LIBRARIES ${LIBKML_REGIONATOR_LIBRARY})
  
  if( NOT $ENV{LIBKML_INCLUDE_DIR} STREQUAL "" )
     SET(LIBKML_INCLUDE_DIR $ENV{LIBKML_INCLUDE_DIR})
  else()
     SET(LIBKML_INCLUDE_DIR "LibKMLIncludeDir")
  endif()
  SET(LIBKML_INCLUDE_DIRS ${LIBKML_INCLUDE_DIR})
  mark_as_advanced(LIBKML_INCLUDE_DIR)

  if(LIBKML_INCLUDE_DIR AND NOT LIBKML_VERSION)
    file(STRINGS ${LIBKML_INCLUDE_DIR}/kml/base/version.h libkml_version_h_string
       REGEX "^#define[\t ]+LIBKML_(MAJOR|MINOR|MICRO)_VERSION[\t ]+[0-9]+")
    string(REGEX REPLACE ".*LIBKML_MAJOR_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MAJOR "${libkml_version_h_string}")
    string(REGEX REPLACE ".*LIBKML_MINOR_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MINOR "${libkml_version_h_string}")
    string(REGEX REPLACE ".*LIBKML_MICRO_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MICRO "${libkml_version_h_string}")
    set(LIBKML_VERSION_STRING "${LIBKML_VERSION_MAJOR}.${LIBKML_VERSION_MINOR}.${LIBKML_VERSION_MICRO}")
  endif()

  SET(LIBKML_FOUND TRUE)
  Set(LibKML_FOUND TRUE)
  if(LIBKML_FOUND)
    set(LIBKML_INCLUDE_DIRS "${LIBKML_INCLUDE_DIR}")
    set(LIBKML_LIBRARIES "${LIBKML_BASE_LIBRARY}")
    if(NOT TARGET LIBKML::LibKML)
      add_library(LIBKML::LibKML UNKNOWN IMPORTED)
      set_target_properties(LIBKML::LibKML PROPERTIES
                            INTERFACE_INCLUDE_DIRECTORIES "${LIBKML_INCLUDE_DIR}"
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_BASE_LIBRARY}")
    endif()
    if(NOT TARGET LIBKML::DOM)
      add_library(LIBKML::DOM UNKNOWN IMPORTED)
      set_target_properties(LIBKML::DOM PROPERTIES
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_DOM_LIBRARY}")
    endif()
    if(NOT TARGET LIBKML::ENGINE)
      add_library(LIBKML::ENGINE UNKNOWN IMPORTED)
      set_target_properties(LIBKML::ENGINE PROPERTIES
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_ENGINE_LIBRARY}")
    endif()
    if(NOT TARGET LIBKML::CONVENIENCE)
      add_library(LIBKML::CONVENIENCE UNKNOWN IMPORTED)
      set_target_properties(LIBKML::CONVENIENCE PROPERTIES
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_CONVENIENCE_LIBRARY}")
    endif()
    if(NOT TARGET LIBKML::XSD)
      add_library(LIBKML::XSD UNKNOWN IMPORTED)
      set_target_properties(LIBKML::CONVENIENCE PROPERTIES
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_XSD_LIBRARY}")
    endif()
    if(NOT TARGET LIBKML::REGIONATOR)
      add_library(LIBKML::REGIONATOR UNKNOWN IMPORTED)
      set_target_properties(LIBKML::REGIONATOR PROPERTIES
                            IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                            IMPORTED_LOCATION "${LIBKML_REGIONATOR_LIBRARY}")
    endif()
  endif()
  MESSAGE("FindLIBKML Set By Envionment")

else()
find_package(PkgConfig QUIET)
if(PKG_CONFIG_FOUND)
  pkg_check_modules(PC_LIBKML QUIET libkml)
  if(PC_LIBKML_VERSION)
  endif()
endif()

find_path(LIBKML_INCLUDE_DIR
          NAMES kml/engine.h kml/dom.h
          HINTS ${PC_LIBKML_INCLUDE_DIRS})
mark_as_advanced(LIBKML_INCLUDE_DIR)

find_library(LIBKML_BASE_LIBRARY
             NAMES kmlbase libkmlbase
             HINTS ${PC_LIBKML_LIBRARY_DIRS} )
mark_as_advanced(LIBKML_BASE_LIBRARY)

set(libkml_known_components DOM CONVENIENCE ENGINE REGIONATOR)
foreach(_comp IN LISTS libkml_known_components)
  if(${_comp} IN_LIST LibKML_FIND_COMPONENTS)
    string(TOLOWER ${_comp} _name)
    find_library(LIBKML_${_comp}_LIBRARY
                 NAMES kml${_name} libkml${_name}
                 HINTS ${PC_LIBKML_LIBRARY_DIRS} )
    mark_as_advanced(LIBKML_${_comp}_LIBRARY)
  endif()
endforeach()

set(libkml_helpers MINIZIP URIPARSER)
foreach(_helper IN LISTS libkml_helpers)
  string(TOLOWER ${_helper} _name)
  find_library(LIBKML_${_helper}_LIBRARY
               NAMES ${_name} lib${_name}
               HINTS ${PC_LIBKML_LIBRARY_DIRS} )
  mark_as_advanced(LIBKML_${_helper}_LIBRARY)
endforeach()

if(LIBKML_INCLUDE_DIR AND NOT LIBKML_VERSION)
  file(STRINGS ${LIBKML_INCLUDE_DIR}/kml/base/version.h libkml_version_h_string
       REGEX "^#define[\t ]+LIBKML_(MAJOR|MINOR|MICRO)_VERSION[\t ]+[0-9]+")
  string(REGEX REPLACE ".*LIBKML_MAJOR_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MAJOR "${libkml_version_h_string}")
  string(REGEX REPLACE ".*LIBKML_MINOR_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MINOR "${libkml_version_h_string}")
  string(REGEX REPLACE ".*LIBKML_MICRO_VERSION[\t ]+([0-9]+).*" "\\1" LIBKML_VERSION_MICRO "${libkml_version_h_string}")
  set(LIBKML_VERSION_STRING "${LIBKML_VERSION_MAJOR}.${LIBKML_VERSION_MINOR}.${LIBKML_VERSION_MICRO}")
endif()

set(libkml_required_vars LIBKML_BASE_LIBRARY LIBKML_INCLUDE_DIR)
foreach(_comp IN LISTS LibKML_FIND_COMPONENTS)
  set(libkml_required_vars ${libkml_required_vars} "LIBKML_${_comp}_LIBRARY")
endforeach()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LibKML
                                  FOUND_VAR LIBKML_FOUND
                                  REQUIRED_VARS ${libkml_required_vars}
                                  VERSION_VAR LIBKML_VERSION_STRING)

if(LIBKML_FOUND)
  set(LIBKML_INCLUDE_DIRS "${LIBKML_INCLUDE_DIR}")
  set(LIBKML_LIBRARIES "${LIBKML_BASE_LIBRARY}")
  if(NOT TARGET LIBKML::LibKML)
    add_library(LIBKML::LibKML UNKNOWN IMPORTED)
    set_target_properties(LIBKML::LibKML PROPERTIES
                          INTERFACE_INCLUDE_DIRECTORIES "${LIBKML_INCLUDE_DIR}"
                          IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                          IMPORTED_LOCATION "${LIBKML_BASE_LIBRARY}")
  endif()
  foreach(_comp IN LISTS libkml_known_components)
    if(${_comp} IN_LIST LibKML_FIND_COMPONENTS)
      list(APPEND LIBKML_LIBRARIES "${LIBKML_${_comp}_LIBRARY}")
      if(NOT TARGET LIBKML::${_comp})
        add_library(LIBKML::${_comp} UNKNOWN IMPORTED)
        set_target_properties(LIBKML::${_comp} PROPERTIES
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                              IMPORTED_LOCATION "${LIBKML_${_comp}_LIBRARY}")
      endif()
    endif()
  endforeach()
  foreach(_helper IN LISTS libkml_helpers)
    if(LIBKML_${_helper}_LIBRARY)
      list(APPEND LIBKML_LIBRARIES "${LIBKML_${_helper}_LIBRARY}")
      if(NOT TARGET LIBKML::${_helper})
        add_library(LIBKML::${_helper} UNKNOWN IMPORTED)
        set_target_properties(LIBKML::${_helper} PROPERTIES
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C++"
                              IMPORTED_LOCATION "${LIBKML_${_helper}_LIBRARY}")
      endif()
    endif()
  endforeach()
endif()
endif()
