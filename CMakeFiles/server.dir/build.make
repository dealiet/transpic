# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dealiet/cmake/arm_picture_udp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dealiet/cmake/arm_picture_udp

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/main.c.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dealiet/cmake/arm_picture_udp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/server.dir/main.c.o"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server.dir/main.c.o   -c /home/dealiet/cmake/arm_picture_udp/main.c

CMakeFiles/server.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server.dir/main.c.i"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dealiet/cmake/arm_picture_udp/main.c > CMakeFiles/server.dir/main.c.i

CMakeFiles/server.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server.dir/main.c.s"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dealiet/cmake/arm_picture_udp/main.c -o CMakeFiles/server.dir/main.c.s

CMakeFiles/server.dir/error.c.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/error.c.o: error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dealiet/cmake/arm_picture_udp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/server.dir/error.c.o"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server.dir/error.c.o   -c /home/dealiet/cmake/arm_picture_udp/error.c

CMakeFiles/server.dir/error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server.dir/error.c.i"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dealiet/cmake/arm_picture_udp/error.c > CMakeFiles/server.dir/error.c.i

CMakeFiles/server.dir/error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server.dir/error.c.s"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dealiet/cmake/arm_picture_udp/error.c -o CMakeFiles/server.dir/error.c.s

CMakeFiles/server.dir/server_process.c.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server_process.c.o: server_process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dealiet/cmake/arm_picture_udp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/server.dir/server_process.c.o"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/server.dir/server_process.c.o   -c /home/dealiet/cmake/arm_picture_udp/server_process.c

CMakeFiles/server.dir/server_process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/server.dir/server_process.c.i"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dealiet/cmake/arm_picture_udp/server_process.c > CMakeFiles/server.dir/server_process.c.i

CMakeFiles/server.dir/server_process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/server.dir/server_process.c.s"
	aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dealiet/cmake/arm_picture_udp/server_process.c -o CMakeFiles/server.dir/server_process.c.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/main.c.o" \
"CMakeFiles/server.dir/error.c.o" \
"CMakeFiles/server.dir/server_process.c.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/main.c.o
server: CMakeFiles/server.dir/error.c.o
server: CMakeFiles/server.dir/server_process.c.o
server: CMakeFiles/server.dir/build.make
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dealiet/cmake/arm_picture_udp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server

.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /home/dealiet/cmake/arm_picture_udp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dealiet/cmake/arm_picture_udp /home/dealiet/cmake/arm_picture_udp /home/dealiet/cmake/arm_picture_udp /home/dealiet/cmake/arm_picture_udp /home/dealiet/cmake/arm_picture_udp/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend
