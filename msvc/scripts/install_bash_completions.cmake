# All but gdalinfo
set(PROGRAMS
    gdal2tiles.py
    gdal2xyz.py
    gdaladdo
    gdalbuildvrt
    gdal_calc.py
    gdalchksum.py
    gdalcompare.py
    gdal-config
    gdal_contour
    gdaldem
    gdal_edit.py
    gdalenhance
    gdal_fillnodata.py
    gdal_grid
    gdalident.py
    gdalimport.py
    gdallocationinfo
    gdalmanage
    gdal_merge.py
    gdalmove.py
    gdal_polygonize.py
    gdal_proximity.py
    gdal_rasterize
    gdal_retile.py
    gdal_sieve.py
    gdalsrsinfo
    gdaltindex
    gdaltransform
    gdal_translate
    gdalwarp
    ogr2ogr
    ogrinfo
    ogrlineref
    ogrmerge.py
    ogrtindex
    gdal_viewshed
    gdal_create)

set(INSTALL_DIR "$ENV{DESTDIR}C:/Program Files/gdal/share/bash-completion/completions")

file(MAKE_DIRECTORY "${INSTALL_DIR}")
message(STATUS "Installing ${INSTALL_DIR}/gdalinfo")
configure_file("N:/Development/Dev_Base/gdal-3.6.4/scripts/gdal-bash-completion.sh" "${INSTALL_DIR}/gdalinfo" COPYONLY)

foreach (program IN LISTS PROGRAMS)
  message(STATUS "Installing ${INSTALL_DIR}/${program}")
  if (NOT CMAKE_HOST_SYSTEM_NAME STREQUAL "Windows")
    execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink "gdalinfo" "${INSTALL_DIR}/${program}")
  else ()
    configure_file("${INSTALL_DIR}/gdalinfo" "${INSTALL_DIR}/${program}" COPYONLY)
  endif ()
  file(APPEND N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest_extra.txt "${INSTALL_DIR}/${program}\n")
endforeach ()
