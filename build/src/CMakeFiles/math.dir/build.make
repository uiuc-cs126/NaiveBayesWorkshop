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

# Include any dependencies generated for this target.
include src/CMakeFiles/math.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/math.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/math.dir/flags.make

src/CMakeFiles/math.dir/CachedCalculator.cpp.o: src/CMakeFiles/math.dir/flags.make
src/CMakeFiles/math.dir/CachedCalculator.cpp.o: ../src/CachedCalculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/math.dir/CachedCalculator.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math.dir/CachedCalculator.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/CachedCalculator.cpp

src/CMakeFiles/math.dir/CachedCalculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math.dir/CachedCalculator.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/CachedCalculator.cpp > CMakeFiles/math.dir/CachedCalculator.cpp.i

src/CMakeFiles/math.dir/CachedCalculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math.dir/CachedCalculator.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/CachedCalculator.cpp -o CMakeFiles/math.dir/CachedCalculator.cpp.s

src/CMakeFiles/math.dir/Expression.cpp.o: src/CMakeFiles/math.dir/flags.make
src/CMakeFiles/math.dir/Expression.cpp.o: ../src/Expression.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/math.dir/Expression.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math.dir/Expression.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Expression.cpp

src/CMakeFiles/math.dir/Expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math.dir/Expression.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Expression.cpp > CMakeFiles/math.dir/Expression.cpp.i

src/CMakeFiles/math.dir/Expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math.dir/Expression.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Expression.cpp -o CMakeFiles/math.dir/Expression.cpp.s

src/CMakeFiles/math.dir/Operation.cpp.o: src/CMakeFiles/math.dir/flags.make
src/CMakeFiles/math.dir/Operation.cpp.o: ../src/Operation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/math.dir/Operation.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math.dir/Operation.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Operation.cpp

src/CMakeFiles/math.dir/Operation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math.dir/Operation.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Operation.cpp > CMakeFiles/math.dir/Operation.cpp.i

src/CMakeFiles/math.dir/Operation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math.dir/Operation.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src/Operation.cpp -o CMakeFiles/math.dir/Operation.cpp.s

# Object files for target math
math_OBJECTS = \
"CMakeFiles/math.dir/CachedCalculator.cpp.o" \
"CMakeFiles/math.dir/Expression.cpp.o" \
"CMakeFiles/math.dir/Operation.cpp.o"

# External object files for target math
math_EXTERNAL_OBJECTS =

src/libmath.a: src/CMakeFiles/math.dir/CachedCalculator.cpp.o
src/libmath.a: src/CMakeFiles/math.dir/Expression.cpp.o
src/libmath.a: src/CMakeFiles/math.dir/Operation.cpp.o
src/libmath.a: src/CMakeFiles/math.dir/build.make
src/libmath.a: src/CMakeFiles/math.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libmath.a"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && $(CMAKE_COMMAND) -P CMakeFiles/math.dir/cmake_clean_target.cmake
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/math.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/math.dir/build: src/libmath.a

.PHONY : src/CMakeFiles/math.dir/build

src/CMakeFiles/math.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src && $(CMAKE_COMMAND) -P CMakeFiles/math.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/math.dir/clean

src/CMakeFiles/math.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/src /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/NaiveBayesWorkshop/build/src/CMakeFiles/math.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/math.dir/depend

