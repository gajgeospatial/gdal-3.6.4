# - Try to find the WebP library
#
# Once done this will define
#
#  WEBP_FOUND - System has libgta
#  WEBP_INCLUDE_DIR - The libgta include directory
#  WEBP_LIBRARIES - The libraries needed to use libgta
MESSAGE("Specialized FindWebP Called")
if( NOT $ENV{WEBP_LIBRARY} STREQUAL "" )
  SET(WEBP_LIBRARY $ENV{WEBP_LIBRARY})
  if(NOT $ENV{WEBP_LIBRARY_RELEASE} STREQUAL "")
    set(WEBP_LIBRARY_RELEASE, $ENV{WEBP_LIBRARY_RELEASE})
  else ()
    set (WEBP_LIBRARY_RELEASE, ${WEBP_LIBRARY})
  endif()

  if(NOT $ENV{WEBP_LIBRARY_DEBUG} STREQUAL "")
    set(WEBP_LIBRARY_DEBUG, $ENV{WEBP_LIBRARY_DEBUG})
  else ()
    set (WEBP_LIBRARY_DEBUG, ${WEBP_LIBRARY})
  endif()

  SET(WEBP_LIBRARIES ${WEBP_LIBRARY})

  mark_as_advanced(WEBP_LIBRARY_RELEASE WEBP_LIBRARY_DEBUG)

  if( NOT $ENV{WEBP_INCLUDE_DIR} STREQUAL "" )
     SET(WEBP_INCLUDE_DIR $ENV{WEBP_INCLUDE_DIR})
  else()
     SET(WEBP_INCLUDE_DIR "WebPIncludeDir")
  endif()
  SET(WEBP_INCLUDE_DIRS ${WEBP_INCLUDE_DIR})
  mark_as_advanced(WEBP_INCLUDE_DIR)

  SET(WEBP_FOUND TRUE)
  if(WEBP_FOUND)
    set(WEBP_LIBRARIES "${WEBP_LIBRARY}")
    set(WEBP_INCLUDE_DIRS "${WEBP_INCLUDE_DIR}")
    if(NOT TARGET WEBP::WebP)
        add_library(WEBP::WebP UNKNOWN IMPORTED)
        set_target_properties(WEBP::WebP PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${WEBP_INCLUDE_DIRS}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${WEBP_LIBRARIES}")
    endif()
  endif()


  MESSAGE("FindWEBP Set By Envionment")

else()
find_package(PkgConfig QUIET)
if(PKG_CONFIG_FOUND)
    pkg_check_modules(PC_WEBP QUIET libwebp)
    set(WEBP_VERSION_STRING ${PC_WEBP_VERSION})
endif()

find_path(WEBP_INCLUDE_DIR webp/encode.h HINTS ${PC_WEBP_INCLUDE_DIRS})

find_library(WEBP_LIBRARY NAMES webp libwebp HINTS ${PC_WEBP_LIBRARY_DIRS})

mark_as_advanced(WEBP_INCLUDE_DIR WEBP_LIBRARY)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(WebP
                                  FOUND_VAR WEBP_FOUND
                                  REQUIRED_VARS WEBP_LIBRARY WEBP_INCLUDE_DIR
                                  VERSION_VAR WEBP_VERSION_STRING
)

if(WEBP_FOUND)
    set(WEBP_LIBRARIES "${WEBP_LIBRARY}")
    set(WEBP_INCLUDE_DIRS "${WEBP_INCLUDE_DIR}")
    if(NOT TARGET WEBP::WebP)
        add_library(WEBP::WebP UNKNOWN IMPORTED)
        set_target_properties(WEBP::WebP PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${WEBP_INCLUDE_DIRS}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                              IMPORTED_LOCATION "${WEBP_LIBRARIES}")
    endif()
endif()
endif()
