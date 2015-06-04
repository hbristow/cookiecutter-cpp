# Target:   {{ cookiecutter.project_name }}_lib
# Type:     Library
file(GLOB SOURCE *.cpp)
add_library({{ cookiecutter.project_name }}_lib SHARED ${SOURCE})
set_target_properties({{ cookiecutter.project_name }}_lib PROPERTIES
    "OUTPUT_NAME" "{{ cookiecutter.project_name }}"
    "INCLUDE_DIRECTORIES" "${CMAKE_CURRENT_SOURCE_DIR}/include"
)
install(TARGETS {{ cookiecutter.project_name }}_lib EXPORT {{ cookiecutter.project_name }} DESTINATION ${CMAKE_SOURCE_DIR}/lib)
export(TARGETS {{ cookiecutter.project_name }}_lib FILE ${CMAKE_BINARY_DIR}/{{ cookiecutter.project_name }}-config.cmake)
