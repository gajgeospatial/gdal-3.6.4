# Install script for directory: N:/Development/Dev_Base/gdal-3.6.4

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(REMOVE "N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest_extra.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/alg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/iso8211/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/frmts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/ogr/ogrsf_frmts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/gcore/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/apps/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/scripts/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/man/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/gdalplugins" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/frmts/drivers.ini")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/Debug/gdald.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/Release/gdal.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/MinSizeRel/gdal.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/RelWithDebInfo/gdal.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/Debug/gdald.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/Release/gdal.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/MinSizeRel/gdal.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/RelWithDebInfo/gdal.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_atomic_ops.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_auto_close.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_compressor.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_config_extras.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_conv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_csv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_error.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_hash_set.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_http.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_json.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cplkeywordparser.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_list.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_minixml.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_multiproc.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_port.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_progress.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_quad_tree.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_spawn.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_string.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_time.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_vsi.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_vsi_error.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_vsi_virtual.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_virtualmem.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/gdal_csv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_minizip_ioapi.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_minizip_unzip.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_minizip_zip.h"
    "N:/Development/Dev_Base/gdal-3.6.4/port/cpl_odbc.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdal_alg.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdal_alg_priv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdalgrid.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdalgrid_priv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdalwarper.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdal_simplesurf.h"
    "N:/Development/Dev_Base/gdal-3.6.4/alg/gdalpansharpen.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_api.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_recordbatch.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_core.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_feature.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_featurestyle.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_geocoding.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_geometry.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_p.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_spatialref.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_swq.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogr_srs_api.h"
    "N:/Development/Dev_Base/gdal-3.6.4/ogr/ogrsf_frmts/ogrsf_frmts.h"
    "N:/Development/Dev_Base/gdal-3.6.4/frmts/mem/memdataset.h"
    "N:/Development/Dev_Base/gdal-3.6.4/frmts/vrt/vrtdataset.h"
    "N:/Development/Dev_Base/gdal-3.6.4/frmts/vrt/gdal_vrt.h"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/gcore/gdal_version_full/gdal_version.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdaljp2metadata.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdaljp2abstractdataset.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_frmts.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_pam.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_priv.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_proxy.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_rat.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdalcachedpixelaccessor.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/rawdataset.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdalgeorefpamdataset.h"
    "N:/Development/Dev_Base/gdal-3.6.4/gcore/gdal_mdreader.h"
    "N:/Development/Dev_Base/gdal-3.6.4/apps/gdal_utils.h"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/port/cpl_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gdal" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/LICENSE.TXT"
    "N:/Development/Dev_Base/gdal-3.6.4/data/GDALLogoBW.svg"
    "N:/Development/Dev_Base/gdal-3.6.4/data/GDALLogoColor.svg"
    "N:/Development/Dev_Base/gdal-3.6.4/data/GDALLogoGS.svg"
    "N:/Development/Dev_Base/gdal-3.6.4/data/bag_template.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/cubewerx_extra.wkt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/default.rsc"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ecw_cs.wkt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/eedaconf.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/epsg.wkt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/esri_StatePlane_extra.wkt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gdalicon.png"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gdalmdiminfo_output.schema.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gdalvrt.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gml_registry.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gmlasconf.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gmlasconf.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_versions.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_center.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_process.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_subcenter.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_13.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_14.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_15.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_16.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_17.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_18.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_190.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_191.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_19.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_20.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_3.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_4.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_5.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_6.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_0_7.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_191.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_3.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_10_4.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_1_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_1_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_1_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_20_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_20_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_20_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_2_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_2_3.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_2_4.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_2_5.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_3.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_4.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_5.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_3_6.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_0.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_10.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_1.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_2.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_3.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_4.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_5.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_6.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_7.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_8.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_4_9.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_Canada.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_HPC.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_index.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_MRMS.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_NCEP.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_2_local_NDFD.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/grib2_table_4_5.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gt_datum.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/gt_ellips.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/header.dxf"
    "N:/Development/Dev_Base/gdal-3.6.4/data/inspire_cp_BasicPropertyUnit.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/inspire_cp_CadastralBoundary.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/inspire_cp_CadastralParcel.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/inspire_cp_CadastralZoning.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_AdmArea.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_AdmBdry.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_AdmPt.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_BldA.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_BldL.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_Cntr.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_CommBdry.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_CommPt.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_Cstline.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_ElevPt.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_GCP.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_LeveeEdge.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RailCL.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdASL.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdArea.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdCompt.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdEdg.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdMgtBdry.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RdSgmtA.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_RvrMgtBdry.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_SBAPt.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_SBArea.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_SBBdry.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_WA.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_WL.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_WStrA.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/jpfgdgml_WStrL.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/netcdf_config.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/nitf_spec.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/nitf_spec.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ogrvrt.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/osmconf.ini"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ozi_datum.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ozi_ellips.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/pci_datum.txt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/pci_ellips.txt"
    "N:/Development/Dev_Base/gdal-3.6.4/data/pdfcomposition.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/pds4_template.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/plscenesconf.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ruian_vf_ob_v1.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ruian_vf_st_uvoh_v1.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ruian_vf_st_v1.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/ruian_vf_v1.gfs"
    "N:/Development/Dev_Base/gdal-3.6.4/data/s57agencies.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/s57attributes.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/s57expectedinput.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/s57objectclasses.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/seed_2d.dgn"
    "N:/Development/Dev_Base/gdal-3.6.4/data/seed_3d.dgn"
    "N:/Development/Dev_Base/gdal-3.6.4/data/stateplane.csv"
    "N:/Development/Dev_Base/gdal-3.6.4/data/template_tiles.mapml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/tms_LINZAntarticaMapTileGrid.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/tms_MapML_APSTILE.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/tms_MapML_CBMTILE.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/tms_NZTM2000.json"
    "N:/Development/Dev_Base/gdal-3.6.4/data/trailer.dxf"
    "N:/Development/Dev_Base/gdal-3.6.4/data/vdv452.xml"
    "N:/Development/Dev_Base/gdal-3.6.4/data/vdv452.xsd"
    "N:/Development/Dev_Base/gdal-3.6.4/data/vicar.json"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal/GDAL-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal/GDAL-targets.cmake"
         "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal/GDAL-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal/GDAL-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/CMakeFiles/Export/lib/cmake/gdal/GDAL-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/GDALConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gdal" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/GDALConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xapplicationsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/apps/gdal-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/gdal.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("N:/Development/Dev_Base/gdal-3.6.4/msvc/fuzzers/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "N:/Development/Dev_Base/gdal-3.6.4/msvc/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
