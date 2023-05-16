# Install script for directory: N:/Development/Dev_Base/gdal-3.6.4/swig/csharp

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/gdalconst_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/gdalconst_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/gdalconst_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/gdalconst_wrap.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/gdalconst_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/gdalconst_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/gdalconst_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/gdalconst_wrap.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/osr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/osr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/osr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/osr_wrap.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/osr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/osr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/osr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/osr_wrap.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/ogr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/ogr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/ogr_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/ogr_wrap.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/ogr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/ogr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/ogr_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/ogr_wrap.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/gdal_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/gdal_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/gdal_wrap.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/gdal_wrap.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Debug/gdal_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/Release/gdal_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/MinSizeRel/gdal_wrap.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/RelWithDebInfo/gdal_wrap.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/const/gdalconst_csharp.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/osr/osr_csharp.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/ogr/ogr_csharp.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/gdal/gdal_csharp.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OgrInfo" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OgrInfo/OgrInfo.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OgrInfo/OgrInfo.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/CreateData" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/CreateData/CreateData.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/CreateData/CreateData.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OSRTransform" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OSRTransform/OSRTransform.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OSRTransform/OSRTransform.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALRead" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALRead/GDALRead.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALRead/GDALRead.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALReadDirect" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALReadDirect/GDALReadDirect.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALReadDirect/GDALReadDirect.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALAdjustContrast" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALAdjustContrast/GDALAdjustContrast.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALAdjustContrast/GDALAdjustContrast.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetRasterIO" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetRasterIO/GDALDatasetRasterIO.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetRasterIO/GDALDatasetRasterIO.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWrite" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWrite/GDALWrite.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWrite/GDALWrite.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetWrite" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetWrite/GDALDatasetWrite.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALDatasetWrite/GDALDatasetWrite.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALColorTable" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALColorTable/GDALColorTable.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALColorTable/GDALColorTable.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/WKT2WKB" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/WKT2WKB/WKT2WKB.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/WKT2WKB/WKT2WKB.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRGEOS" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRGEOS/OGRGEOS.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRGEOS/OGRGEOS.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/ReadXML" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/ReadXML/ReadXML.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/ReadXML/ReadXML.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALInfo" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALInfo/GDALInfo.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALInfo/GDALInfo.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALOverviews" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALOverviews/GDALOverviews.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALOverviews/GDALOverviews.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALCreateCopy" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALCreateCopy/GDALCreateCopy.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALCreateCopy/GDALCreateCopy.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALGetHistogram" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALGetHistogram/GDALGetHistogram.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALGetHistogram/GDALGetHistogram.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALTest" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALTest/GDALTest.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALTest/GDALTest.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRLayerAlg" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRLayerAlg/OGRLayerAlg.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRLayerAlg/OGRLayerAlg.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRFeatureEdit" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRFeatureEdit/OGRFeatureEdit.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/OGRFeatureEdit/OGRFeatureEdit.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWarp" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWarp/GDALWarp.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GDALWarp/GDALWarp.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE DIRECTORY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GetCRSInfo" FILES_MATCHING REGEX "/[^/]*\\.json$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcsharpx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/csharp" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GetCRSInfo/GetCRSInfo.exe"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/csharp/GetCRSInfo/GetCRSInfo.dll"
    )
endif()

