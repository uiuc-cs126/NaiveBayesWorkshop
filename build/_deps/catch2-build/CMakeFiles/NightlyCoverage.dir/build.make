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

# Utility rule file for NightlyCoverage.

# Include the progress variables for this target.
include _deps/catch2-build/CMakeFiles/NightlyCoverage.dir/progress.make

_deps/catch2-build/CMakeFiles/NightlyCoverage:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build && /usr/local/Cellar/cmake/3.13.1/bin/ctest -D NightlyCoverage

NightlyCoverage: _deps/catch2-build/CMakeFiles/NightlyCoverage
NightlyCoverage: _deps/catch2-build/CMakeFiles/NightlyCoverage.dir/build.make

.PHONY : NightlyCoverage

# Rule to build all files generated by this target.
_deps/catch2-build/CMakeFiles/NightlyCoverage.dir/build: NightlyCoverage

.PHONY : _deps/catch2-build/CMakeFiles/NightlyCoverage.dir/build

_deps/catch2-build/CMakeFiles/NightlyCoverage.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build && $(CMAKE_COMMAND) -P CMakeFiles/NightlyCoverage.dir/cmake_clean.cmake
.PHONY : _deps/catch2-build/CMakeFiles/NightlyCoverage.dir/clean

_deps/catch2-build/CMakeFiles/NightlyCoverage.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-src /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/_deps/catch2-build/CMakeFiles/NightlyCoverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/catch2-build/CMakeFiles/NightlyCoverage.dir/depend

