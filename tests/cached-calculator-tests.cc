//
// Created by Matthew Hokinson on 7/30/20.
//

#include <catch2/catch.hpp>

// String stream so we can test istream and ostream
#include <sstream>

// Files to test
#include "../interface/cached_calculator.h"
#include "../interface/expression.h"

typedef std::unordered_map<math::Expression, double, math::ExpressionHasher> cached_solutions_t;

//=====================
// Cached Calculator Tests
//=====================
TEST_CASE("Calculator takes in expressions and stores them", "[istream]") {
  cached_solutions_t expected_cache;
  math::CachedCalculator calculator;

  SECTION("Input of a single line", "[single-input]") {
    std::string input = "1 + 1";
    expected_cache.insert(std::make_pair(math::Expression(input), 2));

    std::istringstream input_sstream(input);
    input_sstream >> calculator;

    REQUIRE(calculator.GetCachedSolutions() == expected_cache);
  }

  SECTION("Multi-line input is transformed into a cache", "[multi-input]") {
    std::vector<std::string> inputs = {"0+0", "1+0", "1+1", "1+2"};
    std::string input_combined;

    for (size_t i = 0; i < inputs.size(); ++i) {
      input_combined += inputs[i];
      if (i < inputs.size() - 1) {
        input_combined += '\n';
      }
      expected_cache.insert(std::make_pair(math::Expression(inputs[i]), i));
    }
    std::istringstream input_sstream(input_combined);
    input_sstream >> calculator;

    REQUIRE(calculator.GetCachedSolutions() == expected_cache);
  }

  SECTION("Repeated lines are caught and stored only once", "[multi-input]") {
    std::vector<std::string> inputs = {"0+0", "1+0", "1+1", "0+0"};
    std::string input_combined;

    for (size_t i = 0; i < inputs.size() - 1; ++i) {
      input_combined += inputs[i];
      if (i < inputs.size() - 2) {
        input_combined += '\n';
      }
      expected_cache.insert(std::make_pair(math::Expression(inputs[i]), i));
    }
    std::istringstream input_sstream(input_combined);
    input_sstream >> calculator;

    REQUIRE(calculator.GetCachedSolutions() == expected_cache);
  }
}