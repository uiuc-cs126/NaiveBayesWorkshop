# Note that headers are optional, and do not affect add_library, but they will not
# show up in IDEs unless they are listed in add_library.

# set(HEADER_LIST "${ModernCMakeExample_SOURCE_DIR}/include/modern/lib.hpp")
# Optionally glob, but only for CMake 3.12 or later:
file(GLOB HEADER_LIST CONFIGURE_DEPENDS
        "${NaiveBayesWorkshop_SOURCE_DIR}/interface/*.h"
        "${NaiveBayesWorkshop_SOURCE_DIR}/interface/*.hpp")
file(GLOB SOURCE_LIST CONFIGURE_DEPENDS
        "${NaiveBayesWorkshop_SOURCE_DIR}/src/*.cc"
        "${NaiveBayesWorkshop_SOURCE_DIR}/src/*.cpp")

# Make an automatic library - will be static or dynamic based on user setting
add_library(math ${SOURCE_LIST} ${HEADER_LIST})

# We need this directory, and users of our library will need it too
target_include_directories(math PUBLIC ../interface)

# All users of this library will need at least C++11
target_compile_features(math PUBLIC cxx_std_11)