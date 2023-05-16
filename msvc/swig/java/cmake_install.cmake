# Install script for directory: N:/Development/Dev_Base/gdal-3.6.4/swig/java

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xjavax" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/Debug/gdalalljni.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/Release/gdalalljni.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/MinSizeRel/gdalalljni.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE STATIC_LIBRARY OPTIONAL FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/RelWithDebInfo/gdalalljni.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xjavax" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/Debug/gdalalljni.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/Release/gdalalljni.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/MinSizeRel/gdalalljni.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE SHARED_LIBRARY FILES "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/RelWithDebInfo/gdalalljni.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xjavax" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/java" TYPE FILE FILES
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/build/maven/gdal-3.6.4.jar"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/build/maven/gdal-3.6.4-javadoc.jar"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/build/maven/gdal-3.6.4-sources.jar"
    "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/java/build/maven/gdal-3.6.4.pom"
    )
endif()

