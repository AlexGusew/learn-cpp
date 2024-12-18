# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexandergusev/Projects/cpp/glfw-3.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexandergusev/Projects/cpp/glfw-3.4

# Include any dependencies generated for this target.
include examples/CMakeFiles/gears.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/gears.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/gears.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/gears.dir/flags.make

examples/CMakeFiles/gears.dir/codegen:
.PHONY : examples/CMakeFiles/gears.dir/codegen

examples/gears.app/Contents/Resources/glfw.icns: examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Copying OS X content examples/gears.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/alexandergusev/Projects/cpp/glfw-3.4/examples/glfw.icns examples/gears.app/Contents/Resources/glfw.icns

examples/CMakeFiles/gears.dir/gears.c.o: examples/CMakeFiles/gears.dir/flags.make
examples/CMakeFiles/gears.dir/gears.c.o: examples/gears.c
examples/CMakeFiles/gears.dir/gears.c.o: examples/CMakeFiles/gears.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexandergusev/Projects/cpp/glfw-3.4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/gears.dir/gears.c.o"
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/gears.dir/gears.c.o -MF CMakeFiles/gears.dir/gears.c.o.d -o CMakeFiles/gears.dir/gears.c.o -c /Users/alexandergusev/Projects/cpp/glfw-3.4/examples/gears.c

examples/CMakeFiles/gears.dir/gears.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/gears.dir/gears.c.i"
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/alexandergusev/Projects/cpp/glfw-3.4/examples/gears.c > CMakeFiles/gears.dir/gears.c.i

examples/CMakeFiles/gears.dir/gears.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/gears.dir/gears.c.s"
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/alexandergusev/Projects/cpp/glfw-3.4/examples/gears.c -o CMakeFiles/gears.dir/gears.c.s

# Object files for target gears
gears_OBJECTS = \
"CMakeFiles/gears.dir/gears.c.o"

# External object files for target gears
gears_EXTERNAL_OBJECTS =

examples/gears.app/Contents/MacOS/gears: examples/CMakeFiles/gears.dir/gears.c.o
examples/gears.app/Contents/MacOS/gears: examples/CMakeFiles/gears.dir/build.make
examples/gears.app/Contents/MacOS/gears: src/libglfw.3.4.dylib
examples/gears.app/Contents/MacOS/gears: examples/CMakeFiles/gears.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alexandergusev/Projects/cpp/glfw-3.4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable gears.app/Contents/MacOS/gears"
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gears.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/gears.dir/build: examples/gears.app/Contents/MacOS/gears
examples/CMakeFiles/gears.dir/build: examples/gears.app/Contents/Resources/glfw.icns
.PHONY : examples/CMakeFiles/gears.dir/build

examples/CMakeFiles/gears.dir/clean:
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4/examples && $(CMAKE_COMMAND) -P CMakeFiles/gears.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/gears.dir/clean

examples/CMakeFiles/gears.dir/depend:
	cd /Users/alexandergusev/Projects/cpp/glfw-3.4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexandergusev/Projects/cpp/glfw-3.4 /Users/alexandergusev/Projects/cpp/glfw-3.4/examples /Users/alexandergusev/Projects/cpp/glfw-3.4 /Users/alexandergusev/Projects/cpp/glfw-3.4/examples /Users/alexandergusev/Projects/cpp/glfw-3.4/examples/CMakeFiles/gears.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/gears.dir/depend

