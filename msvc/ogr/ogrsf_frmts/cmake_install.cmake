# Install script for directory: N:/Development/Dev_Base/gdal-3.6.4/ogr/ogrsf_frmts

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/gdal")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/mem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/geojson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/mitab/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/shape/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/kml/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/vrt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/avc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gml/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/csv/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/dgn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/ntf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/s57/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/tiger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/geoconcept/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/georss/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/dxf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/pgdump/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gpsbabel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/edigeo/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/sxf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/openfilegdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/wasp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/selafin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/jml/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/vdv/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/flatgeobuf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/mapml/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/sdts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gpx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gmlas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/svg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/csw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/filegdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/libkml/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/nas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/plscenes/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/wfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/ngw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/elastic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/idrisi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/pds/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/sqlite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/gpkg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/osm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/vfk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/mvt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/amigocloud/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/carto/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/ili/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/pg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/mssqlspatial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/odbc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/pgeo/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/xlsx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/xls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/cad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/ods/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/lvbag/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/generic/cmake_install.cmake")
endif()

