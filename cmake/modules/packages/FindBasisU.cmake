#[=======================================================================[.rst:
FindBasisU
---------

This module finds the basisu Library()

The following variables are provided to indicate BASISU support:

.. variable:: basisu_FOUND

  Variable indicating if the iconv support was found.

.. variable:: basisu_INCLUDE_DIRS

  The directories containing the iconv headers.

.. variable:: Iconv_LIBRARIES

  The basisu_LIBRARIES to be linked.


#]=======================================================================]
MESSAGE("Specialized FindBASISU Called")
if( NOT $ENV{BASISU_LIBRARY} STREQUAL "" )
  SET(basisu_LIBRARY $ENV{BASISU_LIBRARY})
  Message("BasisU Library set to " ${basisu_LIBRARY})
  if(NOT $ENV{BASISU_LIBRARY_RELEASE} STREQUAL "")
    set(basisu_LIBRARY_RELEASE, $ENV{BASISU_LIBRARY_RELEASE})
  else ()
    set (basisu_LIBRARY_RELEASE, ${basisu_LIBRARY})
  endif()

  if(NOT $ENV{basisu_LIBRARY_DEBUG} STREQUAL "")
    set(basisu_LIBRARY_DEBUG, $ENV{basisu_LIBRARY_DEBUG})
  else ()
    set (basisu_LIBRARY_DEBUG, ${basisu_LIBRARY})
  endif()

  SET(basisu_LIBRARIES ${basisu_LIBRARY})

  mark_as_advanced(basisu_LIBRARY_RELEASE basisu_LIBRARY_DEBUG)

  if( NOT $ENV{BASISU_INCLUDE_DIR} STREQUAL "" )
     SET(basisu_INCLUDE_DIR $ENV{BASISU_INCLUDE_DIR})
  else()
     SET(basisu_INCLUDE_DIR "BasisuIncludeDir")
  endif()
  Message("BasisU Include Dir set to " ${basisu_INCLUDE_DIR})

  SET(basisu_INCLUDE_DIRS ${basisu_INCLUDE_DIR})
  mark_as_advanced(basisu_INCLUDE_DIR)
  SET(basisu_FOUND TRUE)
  MESSAGE("FINDBasisu Set By Envionment")

endif()
