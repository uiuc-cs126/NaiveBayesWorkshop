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
include tests/CMakeFiles/test-calculator.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test-calculator.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test-calculator.dir/flags.make

tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.o: tests/CMakeFiles/test-calculator.dir/flags.make
tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.o: ../tests/test-calculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-calculator.dir/test-calculator.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-calculator.cpp

tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-calculator.dir/test-calculator.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-calculator.cpp > CMakeFiles/test-calculator.dir/test-calculator.cpp.i

tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-calculator.dir/test-calculator.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-calculator.cpp -o CMakeFiles/test-calculator.dir/test-calculator.cpp.s

tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o: tests/CMakeFiles/test-calculator.dir/flags.make
tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o: ../tests/cached-calculator-tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/cached-calculator-tests.cpp

tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/cached-calculator-tests.cpp > CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.i

tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/cached-calculator-tests.cpp -o CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.s

tests/CMakeFiles/test-calculator.dir/test-expression.cpp.o: tests/CMakeFiles/test-calculator.dir/flags.make
tests/CMakeFiles/test-calculator.dir/test-expression.cpp.o: ../tests/test-expression.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/test-calculator.dir/test-expression.cpp.o"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-calculator.dir/test-expression.cpp.o -c /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-expression.cpp

tests/CMakeFiles/test-calculator.dir/test-expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-calculator.dir/test-expression.cpp.i"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-expression.cpp > CMakeFiles/test-calculator.dir/test-expression.cpp.i

tests/CMakeFiles/test-calculator.dir/test-expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-calculator.dir/test-expression.cpp.s"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests/test-expression.cpp -o CMakeFiles/test-calculator.dir/test-expression.cpp.s

# Object files for target test-calculator
test__calculator_OBJECTS = \
"CMakeFiles/test-calculator.dir/test-calculator.cpp.o" \
"CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o" \
"CMakeFiles/test-calculator.dir/test-expression.cpp.o"

# External object files for target test-calculator
test__calculator_EXTERNAL_OBJECTS =

tests/test-calculator: tests/CMakeFiles/test-calculator.dir/test-calculator.cpp.o
tests/test-calculator: tests/CMakeFiles/test-calculator.dir/cached-calculator-tests.cpp.o
tests/test-calculator: tests/CMakeFiles/test-calculator.dir/test-expression.cpp.o
tests/test-calculator: tests/CMakeFiles/test-calculator.dir/build.make
tests/test-calculator: src/libmath.a
tests/test-calculator: tests/CMakeFiles/test-calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test-calculator"
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test-calculator.dir/build: tests/test-calculator

.PHONY : tests/CMakeFiles/test-calculator.dir/build

tests/CMakeFiles/test-calculator.dir/clean:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-calculator.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test-calculator.dir/clean

tests/CMakeFiles/test-calculator.dir/depend:
	cd /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/tests /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests /Users/Mr.Awesome/Desktop/CS_126_Work/OtherWork/NaiveBayesWorkshop/build/tests/CMakeFiles/test-calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test-calculator.dir/depend

