# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/brandonbuck/Documents/Projects/languages/learn_c/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/brandonbuck/Documents/Projects/languages/learn_c

# Include any dependencies generated for this target.
include CMakeFiles/lispy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lispy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lispy.dir/flags.make

CMakeFiles/lispy.dir/main.c.o: CMakeFiles/lispy.dir/flags.make
CMakeFiles/lispy.dir/main.c.o: src/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/brandonbuck/Documents/Projects/languages/learn_c/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/lispy.dir/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lispy.dir/main.c.o   -c /Users/brandonbuck/Documents/Projects/languages/learn_c/src/main.c

CMakeFiles/lispy.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lispy.dir/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/brandonbuck/Documents/Projects/languages/learn_c/src/main.c > CMakeFiles/lispy.dir/main.c.i

CMakeFiles/lispy.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lispy.dir/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/brandonbuck/Documents/Projects/languages/learn_c/src/main.c -o CMakeFiles/lispy.dir/main.c.s

CMakeFiles/lispy.dir/main.c.o.requires:
.PHONY : CMakeFiles/lispy.dir/main.c.o.requires

CMakeFiles/lispy.dir/main.c.o.provides: CMakeFiles/lispy.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/lispy.dir/build.make CMakeFiles/lispy.dir/main.c.o.provides.build
.PHONY : CMakeFiles/lispy.dir/main.c.o.provides

CMakeFiles/lispy.dir/main.c.o.provides.build: CMakeFiles/lispy.dir/main.c.o

CMakeFiles/lispy.dir/mpc.c.o: CMakeFiles/lispy.dir/flags.make
CMakeFiles/lispy.dir/mpc.c.o: src/mpc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/brandonbuck/Documents/Projects/languages/learn_c/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/lispy.dir/mpc.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lispy.dir/mpc.c.o   -c /Users/brandonbuck/Documents/Projects/languages/learn_c/src/mpc.c

CMakeFiles/lispy.dir/mpc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lispy.dir/mpc.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/brandonbuck/Documents/Projects/languages/learn_c/src/mpc.c > CMakeFiles/lispy.dir/mpc.c.i

CMakeFiles/lispy.dir/mpc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lispy.dir/mpc.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/brandonbuck/Documents/Projects/languages/learn_c/src/mpc.c -o CMakeFiles/lispy.dir/mpc.c.s

CMakeFiles/lispy.dir/mpc.c.o.requires:
.PHONY : CMakeFiles/lispy.dir/mpc.c.o.requires

CMakeFiles/lispy.dir/mpc.c.o.provides: CMakeFiles/lispy.dir/mpc.c.o.requires
	$(MAKE) -f CMakeFiles/lispy.dir/build.make CMakeFiles/lispy.dir/mpc.c.o.provides.build
.PHONY : CMakeFiles/lispy.dir/mpc.c.o.provides

CMakeFiles/lispy.dir/mpc.c.o.provides.build: CMakeFiles/lispy.dir/mpc.c.o

CMakeFiles/lispy.dir/parser.c.o: CMakeFiles/lispy.dir/flags.make
CMakeFiles/lispy.dir/parser.c.o: src/parser.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/brandonbuck/Documents/Projects/languages/learn_c/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/lispy.dir/parser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/lispy.dir/parser.c.o   -c /Users/brandonbuck/Documents/Projects/languages/learn_c/src/parser.c

CMakeFiles/lispy.dir/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lispy.dir/parser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Users/brandonbuck/Documents/Projects/languages/learn_c/src/parser.c > CMakeFiles/lispy.dir/parser.c.i

CMakeFiles/lispy.dir/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lispy.dir/parser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Users/brandonbuck/Documents/Projects/languages/learn_c/src/parser.c -o CMakeFiles/lispy.dir/parser.c.s

CMakeFiles/lispy.dir/parser.c.o.requires:
.PHONY : CMakeFiles/lispy.dir/parser.c.o.requires

CMakeFiles/lispy.dir/parser.c.o.provides: CMakeFiles/lispy.dir/parser.c.o.requires
	$(MAKE) -f CMakeFiles/lispy.dir/build.make CMakeFiles/lispy.dir/parser.c.o.provides.build
.PHONY : CMakeFiles/lispy.dir/parser.c.o.provides

CMakeFiles/lispy.dir/parser.c.o.provides.build: CMakeFiles/lispy.dir/parser.c.o

# Object files for target lispy
lispy_OBJECTS = \
"CMakeFiles/lispy.dir/main.c.o" \
"CMakeFiles/lispy.dir/mpc.c.o" \
"CMakeFiles/lispy.dir/parser.c.o"

# External object files for target lispy
lispy_EXTERNAL_OBJECTS =

lispy: CMakeFiles/lispy.dir/main.c.o
lispy: CMakeFiles/lispy.dir/mpc.c.o
lispy: CMakeFiles/lispy.dir/parser.c.o
lispy: CMakeFiles/lispy.dir/build.make
lispy: CMakeFiles/lispy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable lispy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lispy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lispy.dir/build: lispy
.PHONY : CMakeFiles/lispy.dir/build

CMakeFiles/lispy.dir/requires: CMakeFiles/lispy.dir/main.c.o.requires
CMakeFiles/lispy.dir/requires: CMakeFiles/lispy.dir/mpc.c.o.requires
CMakeFiles/lispy.dir/requires: CMakeFiles/lispy.dir/parser.c.o.requires
.PHONY : CMakeFiles/lispy.dir/requires

CMakeFiles/lispy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lispy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lispy.dir/clean

CMakeFiles/lispy.dir/depend:
	cd /Users/brandonbuck/Documents/Projects/languages/learn_c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/brandonbuck/Documents/Projects/languages/learn_c/src /Users/brandonbuck/Documents/Projects/languages/learn_c/src /Users/brandonbuck/Documents/Projects/languages/learn_c /Users/brandonbuck/Documents/Projects/languages/learn_c /Users/brandonbuck/Documents/Projects/languages/learn_c/CMakeFiles/lispy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lispy.dir/depend

