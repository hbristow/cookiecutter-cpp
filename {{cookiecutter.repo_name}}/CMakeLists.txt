# {{ cookiecutter.project_name }}
# {{ cookiecutter.description }}
cmake_minimum_required(VERSION 3.2.0)
project({{ cookiecutter.project_name }} C CXX)
set(PROJECT_DESCRIPTION   "{{ cookiecutter.description }}")
set(PROJECT_AUTHOR        "{{ cookiecutter.author }}")
set(PROJECT_URL           "https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.repo_name }}")
set(PROJECT_VERSION_MAJOR "{{ cookiecutter.version.split('.')[0] }}")
set(PROJECT_VERSION_MINOR "{{ cookiecutter.version.split('.')[1] }}")
set(PROJECT_VERSION_PATCH "{{ cookiecutter.version.split('.')[2] }}")

# Dependencies
include_directories(include)

# Sources
add_subdirectory(src)

# Tests
enable_testing()
add_subdirectory(test)

# Documentation
add_subdirectory(doc)
