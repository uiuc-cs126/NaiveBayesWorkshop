//
// Created by Matthew Hokinson on 7/30/20.
//

#include <catch2/catch.hpp>

// String stream so we can test istream and ostream
#include <sstream>

// Files to test
#include "../interface/CachedCalculator.h"

//=====================
// Cached Calculator Tests
//=====================
TEST_CASE("Calculator takes in expressions and stores them", "[istream]") {
    SECTION("Input of a single line", "[single-input]") {
        std::string input = "1 + 1";
        std::istringstream input_sstream(input);

        math::CachedCalculator calculator;
        input_sstream >> calculator;

        REQUIRE(calculator.GetCachedSolutions().size() == 1);
    }
    SECTION("Input of multiple lines", "[multi-input]") {
        std::string input = "1 + 1\n1+2\n1+3\n1+4";
        std::istringstream input_sstream(input);

        math::CachedCalculator calculator;
        input_sstream >> calculator;

        REQUIRE(calculator.GetCachedSolutions().size() == 4);
    }
    SECTION("Repeated lines are caught and stored only once", "[multi-input]") {
        std::string input = "1 + 1\n1+2\n1+3\n1+1";
        std::istringstream input_sstream(input);

        math::CachedCalculator calculator;
        input_sstream >> calculator;

        REQUIRE(calculator.GetCachedSolutions().size() == 3);
    }
}