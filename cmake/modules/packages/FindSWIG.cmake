# Distributed under the GDAL/OGR MIT style License.  See accompanying
# file LICENSE.TXT.

#[=======================================================================[.rst:
configure
---------

#]=======================================================================]
# Find the MRSID library - Multi-resolution Seamless Image Database.
#
# Copyright (C) 2017,2018 Hiroshi Miura
# Copyright (c) 2015 NextGIS <info@nextgis.com>
#
# Sets
#   SWIG_FOUND.
#   SWIG_EXECUTABLE
#
MESSAGE("Specialized FindSWIG Called")
if( NOT $ENV{SWIG_CSHARP} STREQUAL "" )
   set(SWIG_EXECUTABLE $ENV{SWIG_CSHARP})
   set(SWIG_FOUND TRUE)
   Message ("SWIG set from environment")
endif()
