# Documentation for {{ cookiecutter.project_name }}
# Requires Doxygen
find_package(Doxygen)
if (DOXYGEN_FOUND)
    # Populate the Doxyfile
    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in
                   ${CMAKE_CURRENT_BINARY_DIR}/doxyfile @ONLY)

    # Add the target to generate docs in the build directory
    add_custom_target(${PROJECT_NAME}_doc
        COMMAND ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Generating API documentation with Doxygen"
        VERBATIM
    )
    add_custom_target(doc DEPENDS ${PROJECT_NAME}_doc) # make doc
endif()
