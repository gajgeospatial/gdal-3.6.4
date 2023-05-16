# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#.rst:
# FindCryptoPP
# --------
#
# Find Crypto++ library
#
# ::
#
#  Following variables are set.
#
#   CRYPTOPP_FOUND
#     Indicates whether the library has been found.
#
#   CRYPTOPP_INCLUDE_DIRS
#     Points to the CryptoPP include directory.
#
#   CRYPTOPP_LIBRARIES
#     Points to the CryptoPP libraries that should be passed to
#     target_link_libararies.
#
MESSAGE("Specialized FindCryptoPP Called")
if( NOT $ENV{CRYPTOPP_LIBRARY} STREQUAL "" )
  SET(CRYPTOPP_LIBRARY $ENV{CRYPTOPP_LIBRARY})
  Message("CRYPTOPP_LIBRARY set to " ${CRYPTOPP_LIBRARY})

  if(NOT $ENV{CRYPTOPP_LIBRARY_RELEASE} STREQUAL "")
    set(CRYPTOPP_LIBRARY_RELEASE $ENV{CRYPTOPP_LIBRARY_RELEASE})
    Message("CRYPTOPP_LIBRARY_RELEASE set to " ${CRYPTOPP_LIBRARY_RELEASE})
  else ()
    set (CRYPTOPP_LIBRARY_RELEASE ${CRYPTOPP_LIBRARY})
  endif()

  if(NOT $ENV{CRYPTOPP_LIBRARY_DEBUG} STREQUAL "")
    set(CRYPTOPP_LIBRARY_DEBUG, $ENV{CRYPTO_LIBRARY_DEBUG})
    Message("CRYPTOPP_LIBRARY_DEBUG set to " ${CRYPTOPP_LIBRARY_DEBUG})
  else ()
    set (CRYPTOPP_LIBRARY_DEBUG ${CRYPTOPP_LIBRARY})
  endif()

  SET(CRYPTOPP_LIBRARIES ${CRYPTOPP_LIBRARY})

  mark_as_advanced(CRYPTOPP_LIBRARY_RELEASE CRYPTOPP_LIBRARY_DEBUG)

  if( NOT $ENV{CRYPTOPP_INCLUDE_DIR} STREQUAL "" )
     SET(CRYPTOPP_INCLUDE_DIR $ENV{CRYPTOPP_INCLUDE_DIR})
  else()
     SET(CRYPTOPP_INCLUDE_DIR "CryptoppIncludeDir")
  endif()
  SET(CRYPTOPP_INCLUDE_DIRS ${CRYPTOPP_INCLUDE_DIR})
  mark_as_advanced(CRYPTOPP_INCLUDE_DIR)

  if(EXISTS "${CRYPTOPP_INCLUDE_DIR}/config.h")
        file(STRINGS "${CRYPTOPP_INCLUDE_DIR}/config.h" cryptopp_version_str REGEX "^#define CRYPTOPP_VERSION[ \t]+[0-9]+$")
        string(REGEX REPLACE "^#define CRYPTOPP_VERSION[ \t]+([0-9]+)" "\\1" CRYPTOPP_VERSION_STRING "${cryptopp_version_str}")
        unset(cryptopp_version_str)
  endif()

  SET(CRYPTOPP_FOUND TRUE)

  if(CRYPTOPP_FOUND)
    if(NOT TARGET CRYPTOPP::CRYPTOPP)
        Message("FindCryptopp Setting Include Target")
        add_library(CRYPTOPP::CRYPTOPP UNKNOWN IMPORTED)
        set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES ${CRYPTOPP_INCLUDE_DIR}
                              IMPORTED_LINK_INTERFACE_LANGUAGES "CXX")

        if(CRYPTOPP_LIBRARY_RELEASE)
           Message("FindCryptopp Setting Release Library Target")
           set_property(TARGET CRYPTOPP::CRYPTOPP APPEND PROPERTY
                    IMPORTED_CONFIGURATIONS RELEASE)
            set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                    IMPORTED_LOCATION_RELEASE ${CRYPTOPP_LIBRARY_RELEASE})
        endif()

        if(CRYPTOPP_LIBRARY_DEBUG)
            Message("FindCryptopp Setting Debug Library Target")
            set_property(TARGET CRYPTOPP::CRYPTOPP APPEND PROPERTY
                    IMPORTED_CONFIGURATIONS DEBUG)
            set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                    IMPORTED_LOCATION_DEBUG ${CRYPTOPP_LIBRARY_DEBUG})
        endif()
   endif()
  endif()

  MESSAGE("FindCRYPTOPP Set By Envionment")

else()
if(CMAKE_VERSION VERSION_LESS 3.12)
    if(CRYPTOPP_ROOT)
        set(CRYPTOPP_HINTPATH ${CRYPTOPP_ROOT})
    endif()
endif()

find_path(CRYPTOPP_INCLUDE_DIR NAMES cryptopp/aes.h HINTS ${CRYPTOPP_HINTPATH}/include)

if(CRYPTOPP_INCLUDE_DIR)
    if(BUILD_SHARED_LIBS)
        find_library(CRYPTOPP_LIBRARY_RELEASE NAMES cryptolib cryptopp HINTS ${CRYPTOPP_HINTPATH}/lib)
        find_library(CRYPTOPP_LIBRARY_DEBUG NAMES cryptolibd cryptoppd HINTS ${CRYPTOPP_HINTPATH}/debug)
    else()
        find_library(CRYPTOPP_LIBRARY_RELEASE NAMES cryptopp HINTS ${CRYPTOPP_HINTPATH}/lib)
        find_library(CRYPTOPP_LIBRARY_DEBUG NAMES cryptoppd HINTS ${CRYPTOPP_HINTPATH}/debug)
    endif()
    mark_as_advanced(CRYPTOPP_LIBRARY_RELEASE CRYPTOPP_LIBRARY_DEBUG)
    include(SelectLibraryConfigurations)
    select_library_configurations(CRYPTOPP)

    if(EXISTS ${_CRYPTOPP_VERSION_HEADER})
        file(STRINGS "${CRYPTOPP_INCLUDE_DIR}/cryptopp/config.h" cryptopp_version_str REGEX "^#define CRYPTOPP_VERSION[ \t]+[0-9]+$")
        string(REGEX REPLACE "^#define CRYPTOPP_VERSION[ \t]+([0-9]+)" "\\1" CRYPTOPP_VERSION_STRING "${cryptopp_version_str}")
        unset(cryptopp_version_str)
    endif()
endif()

if(NOT CMAKE_CXX_COMPILER_LOADED)
    message(AUTHOR_WARNING "CXX language not enabled: Skipping detection of issue with clang++.")
    set(CRYPTOPP_TEST_KNOWNBUG TRUE)
elseif(CRYPTOPP_INCLUDE_DIR AND CRYPTOPP_LIBRARY)
    include(CMakePushCheckState)
    include(CheckCXXSourceCompiles)
    cmake_push_check_state(RESET)
    set(CMAKE_REQUIRED_LIBRARIES ${CRYPTOPP_LIBRARY})
    set(CMAKE_REQUIRED_INCLUDES ${CRYPTOPP_INCLUDE_DIR})
    # Catch issue with clang++ (https://groups.google.com/forum/#!topic/cryptopp-users/DfWHy3bT0KI)
    check_cxx_source_compiles("#include <cryptopp/osrng.h>
        int main(int argc, char** argv) { CryptoPP::AES::Encryption oEnc; return 0; }" CRYPTOPP_TEST_KNOWNBUG)
    cmake_pop_check_state()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CryptoPP
                                  FOUND_VAR CRYPTOPP_FOUND
                                  REQUIRED_VARS CRYPTOPP_LIBRARY CRYPTOPP_TEST_KNOWNBUG CRYPTOPP_INCLUDE_DIR
                                  VERSION_VAR CRYPTOPP_VERSION_STRING)
mark_as_advanced(CRYPTOPP_LIBRARY CRYPTOPP_INCLUDE_DIR)

if(CRYPTOPP_FOUND)
    set(CRYPTOPP_LIBRARIES "${CRYPTOPP_LIBRARY}")
    set(CRYPTOPP_INCLUDE_DIRS "${CRYPTOPP_INCLUDE_DIR}")
    if(NOT TARGET CRYPTOPP::CRYPTOPP)
        add_library(CRYPTOPP::CRYPTOPP UNKNOWN IMPORTED)
        set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES "${CRYPTOPP_INCLUDE_DIR}"
                              IMPORTED_LINK_INTERFACE_LANGUAGES "CXX")

        if(CRYPTOPP_LIBRARY_RELEASE)
            set_property(TARGET CRYPTOPP::CRYPTOPP APPEND PROPERTY
                    IMPORTED_CONFIGURATIONS RELEASE)
            set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                    IMPORTED_LOCATION_RELEASE "${CRYPTOPP_LIBRARY_RELEASE}")
        endif()

        if(CRYPTOPP_LIBRARY_DEBUG)
            set_property(TARGET CRYPTOPP::CRYPTOPP APPEND PROPERTY
                    IMPORTED_CONFIGURATIONS DEBUG)
            set_target_properties(CRYPTOPP::CRYPTOPP PROPERTIES
                    IMPORTED_LOCATION_DEBUG "${CRYPTOPP_LIBRARY_DEBUG}")
        endif()
   endif()
endif()
endif()
