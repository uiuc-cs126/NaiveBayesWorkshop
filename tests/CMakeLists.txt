# Tests need to be added as executables first
add_executable(test-calculator test-calculator.cc test-expression.cc cached-calculator-tests.cc)

# We're using C++17 in the test
target_compile_features(test-calculator PRIVATE cxx_std_17)

# Should be linked to the main library, as well as the Catch2 testing library
target_link_libraries(test-calculator PRIVATE math Catch2::Catch2)

# If you register a test, then ctest and make test will run it.
# You can also run examples and check the output, as well.
add_test(NAME test-calculator COMMAND test-calculator) # Command can be a target

# Add folders
set_target_properties(test-calculator PROPERTIES FOLDER cs126)