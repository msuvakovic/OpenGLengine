# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/desktoppc/Documents/opengltest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/desktoppc/Documents/opengltest

# Include any dependencies generated for this target.
include CMakeFiles/Openglearn.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Openglearn.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Openglearn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Openglearn.dir/flags.make

CMakeFiles/Openglearn.dir/main.cpp.o: CMakeFiles/Openglearn.dir/flags.make
CMakeFiles/Openglearn.dir/main.cpp.o: main.cpp
CMakeFiles/Openglearn.dir/main.cpp.o: CMakeFiles/Openglearn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/desktoppc/Documents/opengltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Openglearn.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Openglearn.dir/main.cpp.o -MF CMakeFiles/Openglearn.dir/main.cpp.o.d -o CMakeFiles/Openglearn.dir/main.cpp.o -c /home/desktoppc/Documents/opengltest/main.cpp

CMakeFiles/Openglearn.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Openglearn.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/desktoppc/Documents/opengltest/main.cpp > CMakeFiles/Openglearn.dir/main.cpp.i

CMakeFiles/Openglearn.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Openglearn.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/desktoppc/Documents/opengltest/main.cpp -o CMakeFiles/Openglearn.dir/main.cpp.s

CMakeFiles/Openglearn.dir/stb_extra.cpp.o: CMakeFiles/Openglearn.dir/flags.make
CMakeFiles/Openglearn.dir/stb_extra.cpp.o: stb_extra.cpp
CMakeFiles/Openglearn.dir/stb_extra.cpp.o: CMakeFiles/Openglearn.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/desktoppc/Documents/opengltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Openglearn.dir/stb_extra.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Openglearn.dir/stb_extra.cpp.o -MF CMakeFiles/Openglearn.dir/stb_extra.cpp.o.d -o CMakeFiles/Openglearn.dir/stb_extra.cpp.o -c /home/desktoppc/Documents/opengltest/stb_extra.cpp

CMakeFiles/Openglearn.dir/stb_extra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Openglearn.dir/stb_extra.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/desktoppc/Documents/opengltest/stb_extra.cpp > CMakeFiles/Openglearn.dir/stb_extra.cpp.i

CMakeFiles/Openglearn.dir/stb_extra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Openglearn.dir/stb_extra.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/desktoppc/Documents/opengltest/stb_extra.cpp -o CMakeFiles/Openglearn.dir/stb_extra.cpp.s

# Object files for target Openglearn
Openglearn_OBJECTS = \
"CMakeFiles/Openglearn.dir/main.cpp.o" \
"CMakeFiles/Openglearn.dir/stb_extra.cpp.o"

# External object files for target Openglearn
Openglearn_EXTERNAL_OBJECTS =

Openglearn: CMakeFiles/Openglearn.dir/main.cpp.o
Openglearn: CMakeFiles/Openglearn.dir/stb_extra.cpp.o
Openglearn: CMakeFiles/Openglearn.dir/build.make
Openglearn: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
Openglearn: /usr/lib/x86_64-linux-gnu/libGL.so
Openglearn: /usr/local/lib/libglad.a
Openglearn: CMakeFiles/Openglearn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/desktoppc/Documents/opengltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Openglearn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Openglearn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Openglearn.dir/build: Openglearn
.PHONY : CMakeFiles/Openglearn.dir/build

CMakeFiles/Openglearn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Openglearn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Openglearn.dir/clean

CMakeFiles/Openglearn.dir/depend:
	cd /home/desktoppc/Documents/opengltest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/desktoppc/Documents/opengltest /home/desktoppc/Documents/opengltest /home/desktoppc/Documents/opengltest /home/desktoppc/Documents/opengltest /home/desktoppc/Documents/opengltest/CMakeFiles/Openglearn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Openglearn.dir/depend

