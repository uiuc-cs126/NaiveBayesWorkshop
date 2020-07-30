//
// Created by Matthew Hokinson on 7/30/20.
//
#include <catch2/catch.hpp>
#include <exception>

// Files to test
#include "../interface/Expression.h"

using math::Expression;

TEST_CASE("Testing Simple Valid Inputs") {
    SECTION("Simple Addition Problem [ 1 + 1 ]") {
        Expression exp("1 + 1");
        REQUIRE(exp.ComputeSolution() == 2);
    }
    SECTION("Complex Addition Problem [ 125 + 878 ]") {
        Expression exp("125 + 878");
        REQUIRE(exp.ComputeSolution() == 1003);
    }
    SECTION("Simple Subtraction Problem [ 1 - 1 ]") {
        Expression exp("1 - 1");
        REQUIRE(exp.ComputeSolution() == 0);
    }
    SECTION("Complex Subtraction Problem [ 830 - 230 ]") {
        Expression exp("830 - 230");
        REQUIRE(exp.ComputeSolution() == 600);
    }
    SECTION("Simple Multiplication Problem [ 1 * 2 ]") {
        Expression exp("1 * 2");
        REQUIRE(exp.ComputeSolution() == 2);
    }
    SECTION("Complex Multiplication Problem [ 15 * 24 ]") {
        Expression exp("15 * 24");
        REQUIRE(exp.ComputeSolution() == 360);
    }
    SECTION("Simple Division Problem [ 5 / 1 ]") {
        Expression exp("5 / 1");
        REQUIRE(exp.ComputeSolution() == 5);
    }
    SECTION("Complex Division Problem [ 75 / 25 ]") {
        Expression exp("75 / 25");
        REQUIRE(exp.ComputeSolution() == 3);
    }
    SECTION("Simple No Operation [ 10 ]") {
        Expression exp("10");
        REQUIRE(exp.ComputeSolution() == 10);
    }
    SECTION("Simple No Operation 2 [ $p ]") {
        Expression exp("$p");
        REQUIRE(exp.ComputeSolution() == math::kPiVal);
    }
    SECTION("Simple No Operation 3 [ $e ]") {
        Expression exp("$e");
        REQUIRE(exp.ComputeSolution() == math::kEVal);
    }
}

TEST_CASE("Testing Simple Invalid Inputs") {
    SECTION("Operation Followed By No Number [ 12 - ]") {
        CHECK_THROWS_AS(Expression("12 -"), std::runtime_error);
    }
    SECTION("Multiple Operators [ 12 + * 13 ]") {
        CHECK_THROWS_AS(Expression("12 + * 13"), std::runtime_error);
    }
    SECTION("Random Letters [ 12 - abd ]") {
        CHECK_THROWS_AS(Expression("12 - abd"), std::runtime_error);
    }
}
