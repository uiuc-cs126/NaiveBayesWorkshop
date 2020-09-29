add_executable(main main.cc)
target_compile_features(main PRIVATE cxx_std_17)
target_link_libraries(main PRIVATE math)