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
CMAKE_SOURCE_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build

# Utility rule file for ContinuousUpdate.

# Include the progress variables for this target.
include _deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/progress.make

_deps/catch2-build/CMakeFiles/ContinuousUpdate:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build && /usr/local/Cellar/cmake/3.13.1/bin/ctest -D ContinuousUpdate

ContinuousUpdate: _deps/catch2-build/CMakeFiles/ContinuousUpdate
ContinuousUpdate: _deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/build.make

.PHONY : ContinuousUpdate

# Rule to build all files generated by this target.
_deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/build: ContinuousUpdate

.PHONY : _deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/build

_deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousUpdate.dir/cmake_clean.cmake
.PHONY : _deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/clean

_deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-src /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/catch2-build/CMakeFiles/ContinuousUpdate.dir/depend

