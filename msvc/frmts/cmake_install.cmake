# Install script for directory: N:/Development/Dev_Base/gdal-3.6.4/frmts

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
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/jpeg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/raw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/gtiff/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/mem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/vrt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/derived/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/hfa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/sdts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/nitf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/gxf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ceos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ceos2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/xpm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/dted/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/jdem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/envisat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/elas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/fit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/l1b/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/rs2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ilwis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/rmf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/leveller/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/sgi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/srtmhgt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/idrisi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/gsg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/jaxapalsar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/dimap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/gff/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/cosar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/pds/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/adrg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/coasp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/tsx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/terragen/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/blx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/msgn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/til/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/r/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/northwood/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/saga/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/xyz/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/esric/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/hf2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/kmlsuperoverlay/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ctg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/zmap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ngsgeoid/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/iris/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/map/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/cals/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/safe/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/sentinel2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/prf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/mrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/wmts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/grib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/bmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/tga/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/stacta/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ogcapi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/aigrid/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/arg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/usgsdem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ozi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/pcidsk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/sigdem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/rik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/stacit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/pdf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/png/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/gif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/wcs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/netcdf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/zarr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/daas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/eeda/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/hdf5/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/plmosaic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/wms/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/webp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/hdf4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/rasterlite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/mbtiles/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/postgisraster/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/openjpeg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/exr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/pcraster/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/mrsid/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/ecw/cmake_install.cmake")
endif()

