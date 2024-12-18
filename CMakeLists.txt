cmake_minimum_required(VERSION 3.5)
project(GLFW-CMake-starter)

# Set C++ standard to C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Find the OpenGL package
find_package(OpenGL REQUIRED)

# Include the OpenGL header files
include_directories(${OPENGL_INCLUDE_DIR})

# Set up include directory for GLAD
set(GLAD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/external/glad")
include_directories("${GLAD_DIR}/include")

# Add glad.c to the project
add_library("glad" "${GLAD_DIR}/src/glad.c")

# Optionally, disable GLFW docs, tests, and examples to speed up the build
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

# Add the GLFW subdirectory
add_subdirectory(glfw)

# Add your sources here (if main.cpp is in src directory)
set(SOURCE_FILES src/main.cpp)

# Define the executable
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Linking
target_link_libraries(${PROJECT_NAME} ${OPENGL_LIBRARIES} glfw glad)

# MSVC specific build options
if(MSVC)
    SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup")
    
    # Automatically set the startup project for Visual Studio
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0")
        message("\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set '${PROJECT_NAME}' as StartUp Project in Visual Studio.\n")
    else()
        set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME})
    endif()
endif()
