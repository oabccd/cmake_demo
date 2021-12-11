
# 
封装所有源文件所需的头文件到project_interface
function(project_include_directories)
  foreach(arg ${ARGV})
    if(IS_ABSOLUTE ${arg})
      set(path ${arg})
    else()
      set(path ${CMAKE_CURRENT_SOURCE_DIR}/${arg})
    endif()
    target_include_directories(project_interface INTERFACE ${path})
  endforeach()
endfunction()