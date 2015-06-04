# {{ cookiecutter.project_name }}
# {{ cookiecutter.description }}
# Copyright {{ cookiecutter.year }}, {{ cookiecutter.author }}
cmake_minimum_required(VERSION 3.1)
project({{ cookiecutter.project_name }} C CXX)
set(PROJECT_DESCRIPTION   "{{ cookiecutter.description }}")
set(PROJECT_AUTHOR        "{{ cookiecutter.author }}")
set(PROJECT_URL           "https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.repo_name }}")
set(PROJECT_VERSION_MAJOR "{{ cookiecutter.version.split('.')[0] }}")
set(PROJECT_VERSION_MINOR "{{ cookiecutter.version.split('.')[1] }}")
set(PROJECT_VERSION_PATCH "{{ cookiecutter.version.split('.')[2] }}")

# Build flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -march=native")
{% if cookiecutter.pedantic -%}
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")
{%- endif %}


# ---------------------------------------------------------
# Features
# ---------------------------------------------------------
add_subdirectory(external)
add_subdirectory(src)

enable_testing()
add_subdirectory(test)
add_subdirectory(doc)
