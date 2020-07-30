//
// Created by Matthew Hokinson on 7/30/20.
//
#include <catch2/catch.hpp>

// Files to test
#include "../interface/Expression.h"

using math::Expression;

TEST_CASE("Testing Valid Inputs") {
    SECTION("Simple Addition Problem [ 1 + 1 ]") {
        Expression exp("1 + 1");
        REQUIRE(exp.ComputeSolution() == 2);
    }
    SECTION("Simple Subtraction Problem [ 1 - 1 ]") {
        Expression exp("1 - 1");
        REQUIRE(exp.ComputeSolution() == 0);
    }
    SECTION("Simple Multiplication Problem [ 1 * 2 ]") {
        Expression exp("1 * 2");
        REQUIRE(exp.ComputeSolution() == 2);
    }
    SECTION("Simple Division Problem [ 1 / 1 ]") {
        Expression exp("1 / 1");
        REQUIRE(exp.ComputeSolution() == 1);
    }
}
