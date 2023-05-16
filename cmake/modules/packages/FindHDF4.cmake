#
# To be used by projects that make use of CMakeified hdf-4.2
#

#[=======================================================================[.rst:
FindHDF4
---------

Find the HDF4 includes and get all installed hdf4 library settings

The following vars are set if hdf4 is found.

.. variable:: HDF4_FOUND

  True if found, otherwise all other vars are undefined

IMPORTED targets
^^^^^^^^^^^^^^^^
This module defines the following :prop_tgt:`IMPORTED` target:
``HDF4::HDF4``
#
#]=======================================================================]
#
MESSAGE("Specialized FindHDF4 Called")
if( NOT $ENV{HDF4_DF_LIBRARY} STREQUAL "" )
  SET(HDF4_df_LIBRARY $ENV{HDF4_DF_LIBRARY})
  if(NOT $ENV{HDF4_DF_LIBRARY_RELEASE} STREQUAL "")
    set(HDF4_df_LIBRARY_RELEASE, $ENV{HDF4_DF_LIBRARY_RELEASE})
  else ()
    set (HDF4_df_LIBRARY_RELEASE, ${HDF4_DF_LIBRARY})
  endif()

  if(NOT $ENV{HDF4_DF_LIBRARY_DEBUG} STREQUAL "")
    set(HDF4_df_LIBRARY_DEBUG, $ENV{HDF4_DF_LIBRARY_DEBUG})
  else ()
    set (HDF4_df_LIBRARY_DEBUG, ${HDF4_DF_LIBRARY})
  endif()

  SET(HDF4_df_LIBRARIES ${HDF4_DF_LIBRARY})

  mark_as_advanced(HDF4_df_LIBRARY_RELEASE HDF4_df_LIBRARY_DEBUG)

  if( NOT $ENV{HDF4_MFHDF_LIBRARY} STREQUAL "" )
    SET(HDF4_mfhdf_LIBRARY $ENV{HDF4_MFHDF_LIBRARY})
  else()
    SET(HDF4_mfhdf_LIBRARY "HDF4_MFHDF_LIBRARY:missing")
  endif()

  if(NOT $ENV{HDF4_MFHDF_LIBRARY_RELEASE} STREQUAL "")
    set(HDF4_mfhdf_LIBRARY_RELEASE, $ENV{HDF4_MFHDF_LIBRARY_RELEASE})
  else ()
    set (HDF4_mfhdf_LIBRARY_RELEASE, ${HDF4_MFHDF_LIBRARY})
  endif()

  if(NOT $ENV{HDF4_MFHDF_LIBRARY_DEBUG} STREQUAL "")
    set(HDF4_mfhdf_LIBRARY_DEBUG, $ENV{HDF4_MFHDF_LIBRARY_DEBUG})
  else ()
    set (HDF4_mfhdf_LIBRARY_DEBUG, ${HDF4_MFHDF_LIBRARY})
  endif()

  SET(HDF4_mfhdf_LIBRARIES ${HDF4_MFHDF_LIBRARY})

  mark_as_advanced(HDF4_mfhdf_LIBRARY_RELEASE HDF4_mfhdf_LIBRARY_DEBUG)

  if( NOT $ENV{HDF4_XDR_LIBRARY} STREQUAL "" )
    SET(HDF4_xdr_LIBRARY $ENV{HDF4_XDR_LIBRARY})
  else()
    SET(HDF4_xdr_LIBRARY "HDF4_XDR_LIBRARY:missing")
  endif()

  if(NOT $ENV{HDF4_XDR_LIBRARY_RELEASE} STREQUAL "")
    set(HDF4_xdr_LIBRARY_RELEASE, $ENV{HDF4_XDR_LIBRARY_RELEASE})
  else ()
    set (HDF4_xdr_LIBRARY_RELEASE, ${HDF4_XDR_LIBRARY})
  endif()

  if(NOT $ENV{HDF4_XDR_LIBRARY_DEBUG} STREQUAL "")
    set(HDF4_xdr_LIBRARY_DEBUG, $ENV{HDF4_XDR_LIBRARY_DEBUG})
  else ()
    set (HDF4_xdr_LIBRARY_DEBUG, ${HDF4_XDR_LIBRARY})
  endif()

  SET(HDF4_xdr_LIBRARIES ${HDF4_XDR_LIBRARY})

  mark_as_advanced(HDF4_xdr_LIBRARY_RELEASE HDF4_xdr_LIBRARY_DEBUG)

  if( NOT $ENV{HDF4_INCLUDE_DIR} STREQUAL "" )
     SET(HDF4_INCLUDE_DIR $ENV{HDF4_INCLUDE_DIR})
  else()
     SET(HDF4_INCLUDE_DIR "Hdf4IncludeDir")
  endif()
  SET(HDF4_INCLUDE_DIRS ${HDF4_INCLUDE_DIR})
  mark_as_advanced(HDF4_INCLUDE_DIR)

  if(NOT $ENV{HDF4_MFHDF_H_INCLUDE_DIR} STREQUAL "")
    SET(MFHDF_H_INCLUDE_DIR $ENV{HDF4_MFHDF_H_INCLUDE_DIR})
    message("Set MFHDF_H_INCLUDE_DIR to " ${MFHDF_H_INCLUDE_DIR})
    if(EXISTS ${MFHDF_H_INCLUDE_DIR}\\mfhdf.h)
       message("FindHDf4: MFHDF_H_INCLUDE_DIR exists")
       mark_as_advanced(MFHDF_H_INCLUDE_DIR)
    endif()
  endif()

  if(HDF4_INCLUDE_DIR AND EXISTS "${HDF4_INCLUDE_DIR}/hfile.h")
     file(STRINGS "${HDF4_INCLUDE_DIR}/hfile.h" hdf4_version_string
          REGEX "^#define[\t ]+LIBVER.*")
     string(REGEX MATCH "LIBVER_MAJOR[ \t]+([0-9]+)" HDF4_VERSION_MAJOR "${hdf4_version_string}")
     string(REGEX MATCH "([0-9]+)" HDF4_VERSION_MAJOR ${HDF4_VERSION_MAJOR})
     string(REGEX MATCH "LIBVER_MINOR[ \t]+([0-9]+)" HDF4_VERSION_MINOR "${hdf4_version_string}")
     string(REGEX MATCH "([0-9]+)" HDF4_VERSION_MINOR ${HDF4_VERSION_MINOR})
     string(REGEX MATCH "LIBVER_RELEASE[ \t]+([0-9]+)" HDF4_VERSION_RELEASE "${hdf4_version_string}")
     string(REGEX MATCH "([0-9]+)" HDF4_VERSION_RELEASE ${HDF4_VERSION_RELEASE})
     string(REGEX MATCH "LIBVER_SUBRELEASE[ \t]+([0-9A-Za-z]+)" HDF4_VERSION_SUBRELEASE "${hdf4_version_string}")
     unset(hdf4_version_string)
     if(NOT HDF4_VERSION_SUBRELEASE STREQUAL "")
        string(REGEX MATCH "([0-9A-Za-z]+)" LIBVER_SUBRELEASE ${LIBVER_SUBRELEASE})
        set(HDF4_VERSION_STRING "${HDF4_VERSION_MAJOR}.${HDF4_VERSION_MINOR}.${HDF4_VERSION_RELEASE}_${HDF4_VERSION_SUBRELEASE}")
     else()
        set(HDF4_VERSION_STRING "${HDF4_VERSION_MAJOR}.${HDF4_VERSION_MINOR}.${HDF4_VERSION_RELEASE}")
     endif()
  endif()

  SET(HDF4_FOUND TRUE)

  if(HDF4_FOUND)
      set(HDF4_INCLUDE_DIRS ${HDF4_INCLUDE_DIR}  ${MFHDF_H_INCLUDE_DIR})
      if(NOT TARGET HDF4::HDF4)
          set(HDF4_TARGETS)
          add_library(HDF4::HDF4_df UNKNOWN IMPORTED)
          set_target_properties(HDF4::HDF4_df PROPERTIES
                                IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                                IMPORTED_LOCATION "${HDF4_df_LIBRARY}")
          list(APPEND HDF4_TARGETS HDF4::HDF4_df)

          add_library(HDF4::HDF4_mfhdf UNKNOWN IMPORTED)
          set_target_properties(HDF4::HDF4_mfhdf PROPERTIES
                                IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                                IMPORTED_LOCATION "${HDF4_mfhdf_LIBRARY}")
          list(APPEND HDF4_TARGETS HDF4::HDF4_mfhdf)

          add_library(HDF4::HDF4_xdr UNKNOWN IMPORTED)
          set_target_properties(HDF4::HDF4_xdr PROPERTIES
                                IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                                IMPORTED_LOCATION "${HDF4_xdr_LIBRARY}")
          list(APPEND HDF4_TARGETS HDF4::HDF4_xdr)

          add_library(HDF4::HDF4 INTERFACE IMPORTED)
          set_target_properties(HDF4::HDF4 PROPERTIES
                                INTERFACE_INCLUDE_DIRECTORIES "${HDF4_INCLUDE_DIRS}"
                                INTERFACE_LINK_LIBRARIES "${HDF4_TARGETS}")
      endif()
  endif()

  MESSAGE("FindHDF4 Set By Envionment")

else()

include(SelectLibraryConfigurations)

set(HDF4_PATHS
    /usr/lib/hdf4
    /usr/local/hdf4
    )

find_path(HDF4_INCLUDE_DIR hdf.h
          PATHS ${HDF4_PATHS}
          PATH_SUFFIXES
          include
          Include
          hdf
          hdf4
          )
mark_as_advanced(HDF4_INCLUDE_DIR)

if(HDF4_INCLUDE_DIR AND EXISTS "${HDF4_INCLUDE_DIR}/hfile.h")
    file(STRINGS "${HDF4_INCLUDE_DIR}/hfile.h" hdf4_version_string
         REGEX "^#define[\t ]+LIBVER.*")
    string(REGEX MATCH "LIBVER_MAJOR[ \t]+([0-9]+)" HDF4_VERSION_MAJOR "${hdf4_version_string}")
    string(REGEX MATCH "([0-9]+)" HDF4_VERSION_MAJOR ${HDF4_VERSION_MAJOR})
    string(REGEX MATCH "LIBVER_MINOR[ \t]+([0-9]+)" HDF4_VERSION_MINOR "${hdf4_version_string}")
    string(REGEX MATCH "([0-9]+)" HDF4_VERSION_MINOR ${HDF4_VERSION_MINOR})
    string(REGEX MATCH "LIBVER_RELEASE[ \t]+([0-9]+)" HDF4_VERSION_RELEASE "${hdf4_version_string}")
    string(REGEX MATCH "([0-9]+)" HDF4_VERSION_RELEASE ${HDF4_VERSION_RELEASE})
    string(REGEX MATCH "LIBVER_SUBRELEASE[ \t]+([0-9A-Za-z]+)" HDF4_VERSION_SUBRELEASE "${hdf4_version_string}")
    unset(hdf4_version_string)
    if(NOT HDF4_VERSION_SUBRELEASE STREQUAL "")
        string(REGEX MATCH "([0-9A-Za-z]+)" LIBVER_SUBRELEASE ${LIBVER_SUBRELEASE})
        set(HDF4_VERSION_STRING "${HDF4_VERSION_MAJOR}.${HDF4_VERSION_MINOR}.${HDF4_VERSION_RELEASE}_${HDF4_VERSION_SUBRELEASE}")
    else()
        set(HDF4_VERSION_STRING "${HDF4_VERSION_MAJOR}.${HDF4_VERSION_MINOR}.${HDF4_VERSION_RELEASE}")
    endif()
endif()

if(NOT DEFINED HDF4_COMPONENTS)
  set(HDF4_COMPONENTS df mfhdf xdr szip)
endif()

if(HDF4_INCLUDE_DIR)
    # Debian supplies the HDF4 library which does not conflict with NetCDF.
    # Test for Debian flavor first. Hint: install the libhdf4-alt-dev package.
    foreach(tgt IN LISTS HDF4_COMPONENTS)
        if(tgt STREQUAL "df")
          # hdf.lib (dynamic) used by conda, but libhdf.lib (static) also present
          set(_names_debug  ${tgt}altd ${tgt}d hdfd libhdfd)
          set(_names_release ${tgt}alt ${tgt} hdf libhdf)
        else()
          set(_names_debug  ${tgt}altd ${tgt}d)
          set(_names_release ${tgt}alt ${tgt} lib${tgt})
        endif()
        find_library(HDF4_${tgt}_LIBRARY_DEBUG
                     NAMES ${_names_debug}
                     PATHS ${HDF4_PATHS}/lib)
        find_library(HDF4_${tgt}_LIBRARY_RELEASE
                     NAMES ${_names_release}
                     PATHS ${HDF4_PATHS}/lib)
        select_library_configurations(HDF4_${tgt})
        mark_as_advanced(HDF4_${tgt}_LIBRARY HDF4_${tgt}_LIBRARY_RELEASE HDF4_${tgt}_LIBRARY_DEBUG )
    endforeach()

    set(HDF4_LIBRARIES)
    foreach(_comp IN LISTS HDF4_COMPONENTS)
        if(HDF4_${_comp}_LIBRARY)
            list(APPEND HDF4_LIBRARIES "${HDF4_${_comp}_LIBRARY}")
        endif()
    endforeach()

    if(WIN32)
        find_library(WS2_32_LIBRARY ws2_32)
        if(WS2_32_LIBRARY)
          list(APPEND HDF4_LIBRARIES ${WS2_32_LIBRARY})
        endif()
    endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(HDF4
                                  FOUND_VAR HDF4_FOUND
                                  REQUIRED_VARS HDF4_df_LIBRARY HDF4_mfhdf_LIBRARY HDF4_INCLUDE_DIR
                                  VERSION_VAR HDF4_VERSION_STRING
                                  HANDLE_COMPONENTS
                                  )

# set output variables
if(HDF4_FOUND)
  set(HDF4_INCLUDE_DIRS "${HDF4_INCLUDE_DIR}")
  if(NOT TARGET HDF4::HDF4)
      set(INCR 1)
      set(HDF4_TARGETS)
      foreach(_lib IN LISTS HDF4_LIBRARIES)
          add_library(HDF4::HDF4_${INCR} UNKNOWN IMPORTED)
          set_target_properties(HDF4::HDF4_${INCR} PROPERTIES
                                IMPORTED_LINK_INTERFACE_LANGUAGES "C"
                                IMPORTED_LOCATION "${_lib}")
          list(APPEND HDF4_TARGETS HDF4::HDF4_${INCR})
          math(EXPR INCR "${INCR}+1")
      endforeach()

      add_library(HDF4::HDF4 INTERFACE IMPORTED)
      set_target_properties(HDF4::HDF4 PROPERTIES
                            INTERFACE_INCLUDE_DIRECTORIES "${HDF4_INCLUDE_DIRS}"
                            INTERFACE_LINK_LIBRARIES "${HDF4_TARGETS}")
  endif()
endif()
endif()
