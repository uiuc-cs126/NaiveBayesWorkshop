//
// Created by Matthew Hokinson on 7/30/20.
//
#include <catch2/catch.hpp>
#include <exception>

// Files to test
#include "../interface/Expression.h"

using math::Expression;

TEST_CASE("Testing Simple Valid Inputs", "[valid-expressions]") {
    SECTION("Parsing addition and computing correctly", "[addition]") {
        SECTION("Simple Addition Problem", "[single-digit]") {
            Expression exp("1 + 1");
            REQUIRE(exp.ComputeSolution() == 2);
        }
        SECTION("Complex Addition Problem", "[multi-digit]") {
            Expression exp("125 + 878");
            REQUIRE(exp.ComputeSolution() == 1003);
        }
    }
    SECTION("Parsing subtraction and computing correctly", "[subtraction]") {
        SECTION("Simple Subtraction Problem", "[single-digit]") {
            Expression exp("1 - 1");
            REQUIRE(exp.ComputeSolution() == 0);
        }
        SECTION("Complex Subtraction Problem", "[multi-digit]") {
            Expression exp("830 - 230");
            REQUIRE(exp.ComputeSolution() == 600);
        }
    }
    SECTION("Parsing multiplication and computing correctly", "[multiplication]") {
        SECTION("Simple Multiplication Problem", "[single-digit]") {
            Expression exp("1 * 2");
            REQUIRE(exp.ComputeSolution() == 2);
        }
        SECTION("Complex Multiplication Problem", "[multi-digit]") {
            Expression exp("15 * 24");
            REQUIRE(exp.ComputeSolution() == 360);
        }
    }
    SECTION("Parsing division and computing correctly", "[division]") {
        SECTION("Simple Division Problem", "[single-digit]") {
            Expression exp("5 / 1");
            REQUIRE(exp.ComputeSolution() == 5);
        }
        SECTION("Complex Division Problem", "[multi-digit]") {
            Expression exp("75 / 25");
            REQUIRE(exp.ComputeSolution() == 3);
        }
    }
    SECTION("Parsing no operation expressions correctly", "[no-operation]") {
        SECTION("Simple No Operation", "[single-digit]") {
            Expression exp("10");
            REQUIRE(exp.ComputeSolution() == 10);
        }
        SECTION("Simple No Operation 2", "[single-digit]") {
            Expression exp("$p");
            REQUIRE(exp.ComputeSolution() == math::kPiVal);
        }
        SECTION("Simple No Operation 3", "[single-digit]") {
            Expression exp("$e");
            REQUIRE(exp.ComputeSolution() == math::kEVal);
        }
    }
}

TEST_CASE("Testing Simple Invalid Inputs", "[invalid-syntax]") {
    SECTION("Operation Followed By No Number") {
        CHECK_THROWS_AS(Expression("12 -"), std::runtime_error);
    }
    SECTION("Multiple Operators [ 12 + * 13 ]") {
        CHECK_THROWS_AS(Expression("12 + * 13"), std::runtime_error);
    }
    SECTION("Random Letters [ 12 - abd ]") {
        CHECK_THROWS_AS(Expression("12 - abd"), std::runtime_error);
    }
}
