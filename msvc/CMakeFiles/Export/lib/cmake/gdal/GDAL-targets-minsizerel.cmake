#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GDAL::GDAL" for configuration "MinSizeRel"
set_property(TARGET GDAL::GDAL APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(GDAL::GDAL PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/gdal.lib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/gdal.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS GDAL::GDAL )
list(APPEND _IMPORT_CHECK_FILES_FOR_GDAL::GDAL "${_IMPORT_PREFIX}/lib/gdal.lib" "${_IMPORT_PREFIX}/bin/gdal.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
