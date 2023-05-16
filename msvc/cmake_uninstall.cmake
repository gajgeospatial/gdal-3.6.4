# install_manifest.txt is created in the top build tree, not the project one
if (NOT EXISTS "N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest.txt\"")
endif()

set(uninstall_file_list "N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest.txt")
if(EXISTS "N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest_extra.txt")
   list(APPEND uninstall_file_list "N:/Development/Dev_Base/gdal-3.6.4/msvc/install_manifest_extra.txt")
endif()
if(EXISTS "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/python/record.txt")
   list(APPEND uninstall_file_list "N:/Development/Dev_Base/gdal-3.6.4/msvc/swig/python/record.txt")
endif()

foreach (manifest_file IN ITEMS ${uninstall_file_list})
    file(READ "${manifest_file}" files)
    string(REGEX REPLACE "\n$" "" files "${files}")
    string(REGEX REPLACE "\n" ";" files "${files}")
    list(REVERSE files)
    foreach (file ${files})
        message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
        if (IS_DIRECTORY "$ENV{DESTDIR}${file}")
            # Only remove csharp related directories, which are the only ones
            # to get in the install_manifest, to avoid doing too dangerous
            # removals.
            if("${file}" MATCHES "csharp")
                execute_process(
                  COMMAND C:/Program Files/CMake/bin/cmake.exe -E remove_directory "$ENV{DESTDIR}${file}"
                  OUTPUT_VARIABLE rm_out
                  RESULT_VARIABLE rm_retval
               )
               if(NOT ${rm_retval} EQUAL 0)
                   message(STATUS "Problem when removing directory \"$ENV{DESTDIR}${file}\"")
               endif()
            else()
               message(STATUS "Keeping directory \"$ENV{DESTDIR}${file}\".")
            endif()
        elseif (EXISTS "$ENV{DESTDIR}${file}")
            execute_process(
                COMMAND C:/Program Files/CMake/bin/cmake.exe -E remove "$ENV{DESTDIR}${file}"
                OUTPUT_VARIABLE rm_out
                RESULT_VARIABLE rm_retval
            )
            if(NOT ${rm_retval} EQUAL 0)
                message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
            endif (NOT ${rm_retval} EQUAL 0)
        else ()
            message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
        endif ()
    endforeach(file)
endforeach()
