# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug

# Utility rule file for NightlySubmit.

# Include the progress variables for this target.
include _deps/catch2-build/CMakeFiles/NightlySubmit.dir/progress.make

_deps/catch2-build/CMakeFiles/NightlySubmit:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug/_deps/catch2-build && /Applications/CLion.app/Contents/bin/cmake/mac/bin/ctest -D NightlySubmit

NightlySubmit: _deps/catch2-build/CMakeFiles/NightlySubmit
NightlySubmit: _deps/catch2-build/CMakeFiles/NightlySubmit.dir/build.make

.PHONY : NightlySubmit

# Rule to build all files generated by this target.
_deps/catch2-build/CMakeFiles/NightlySubmit.dir/build: NightlySubmit

.PHONY : _deps/catch2-build/CMakeFiles/NightlySubmit.dir/build

_deps/catch2-build/CMakeFiles/NightlySubmit.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug/_deps/catch2-build && $(CMAKE_COMMAND) -P CMakeFiles/NightlySubmit.dir/cmake_clean.cmake
.PHONY : _deps/catch2-build/CMakeFiles/NightlySubmit.dir/clean

_deps/catch2-build/CMakeFiles/NightlySubmit.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug/_deps/catch2-src /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug/_deps/catch2-build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/cmake-build-debug/_deps/catch2-build/CMakeFiles/NightlySubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/catch2-build/CMakeFiles/NightlySubmit.dir/depend

