# GoogleTest (gtest)
# A unit testing library for C/C++
# Creates a libgtest target packaged with the required include driectories
find_package(Threads REQUIRED)
include(ExternalProject)

# Fetch GoogleTest remotely
ExternalProject_Add(
    gtest
    URL https://googletest.googlecode.com/files/gtest-1.7.0.zip
    URL_MD5 2d6ec8ccdf5c46b05ba54a9fd1d130d7
    PREFIX ${CMAKE_CURRENT_BINARY_DIR}
    # Disable INSTALL
    INSTALL_COMMAND ""
)
add_library(libgtest IMPORTED STATIC GLOBAL)
add_dependencies(libgtest gtest)

# Setup the build tree and package the target
ExternalProject_Get_Property(gtest SOURCE_DIR BINARY_DIR)
file(MAKE_DIRECTORY ${SOURCE_DIR}/include)
set_target_properties(libgtest PROPERTIES
    "IMPORTED_LOCATION" "${BINARY_DIR}/libgtest.a"
    "IMPORTED_LINK_INTERFACE_LIBRARIES" "${CMAKE_THREAD_LIBS_INIT}"
    "INTERFACE_INCLUDE_DIRECTORIES" "${SOURCE_DIR}/include"
)
