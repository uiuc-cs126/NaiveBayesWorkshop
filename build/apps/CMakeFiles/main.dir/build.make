# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build

# Include any dependencies generated for this target.
include apps/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/main.dir/flags.make

apps/CMakeFiles/main.dir/main.cc.o: apps/CMakeFiles/main.dir/flags.make
apps/CMakeFiles/main.dir/main.cc.o: ../apps/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/CMakeFiles/main.dir/main.cc.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cc.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/apps/main.cc

apps/CMakeFiles/main.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cc.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/apps/main.cc > CMakeFiles/main.dir/main.cc.i

apps/CMakeFiles/main.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cc.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/apps/main.cc -o CMakeFiles/main.dir/main.cc.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cc.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

apps/main: apps/CMakeFiles/main.dir/main.cc.o
apps/main: apps/CMakeFiles/main.dir/build.make
apps/main: src/libmath.a
apps/main: apps/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/main.dir/build: apps/main

.PHONY : apps/CMakeFiles/main.dir/build

apps/CMakeFiles/main.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/main.dir/clean

apps/CMakeFiles/main.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/apps /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/apps/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/main.dir/depend

