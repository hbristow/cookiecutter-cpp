# Add the library target
file(GLOB SOURCES *.cpp)
add_library(${PROJECT_NAME}_lib SHARED ${SOURCES})
set_target_properties(${PROJECT_NAME}_lib PROPERTIES OUTPUT_NAME ${PROJECT_NAME})

# Add the executable target here...
#add_executable(${PROJECT_NAME}_bin ...)
#target_link_libraries(${PROJECT_NAME}_bin ${PROJECT_NAME}_lib)
#set_target_properties(${PROJECT_NAME}_bin PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
