# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/dealiet/cmake/arm_picture_udp/CMakeFiles /home/dealiet/cmake/arm_picture_udp/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/dealiet/cmake/arm_picture_udp/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named server

# Build rule for target.
server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 server
.PHONY : server

# fast build rule for target.
server/fast:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/build
.PHONY : server/fast

error.o: error.c.o

.PHONY : error.o

# target to build an object file
error.c.o:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/error.c.o
.PHONY : error.c.o

error.i: error.c.i

.PHONY : error.i

# target to preprocess a source file
error.c.i:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/error.c.i
.PHONY : error.c.i

error.s: error.c.s

.PHONY : error.s

# target to generate assembly for a file
error.c.s:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/error.c.s
.PHONY : error.c.s

main.o: main.c.o

.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i

.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s

.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/main.c.s
.PHONY : main.c.s

server_process.o: server_process.c.o

.PHONY : server_process.o

# target to build an object file
server_process.c.o:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server_process.c.o
.PHONY : server_process.c.o

server_process.i: server_process.c.i

.PHONY : server_process.i

# target to preprocess a source file
server_process.c.i:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server_process.c.i
.PHONY : server_process.c.i

server_process.s: server_process.c.s

.PHONY : server_process.s

# target to generate assembly for a file
server_process.c.s:
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server_process.c.s
.PHONY : server_process.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... server"
	@echo "... edit_cache"
	@echo "... error.o"
	@echo "... error.i"
	@echo "... error.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... server_process.o"
	@echo "... server_process.i"
	@echo "... server_process.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

