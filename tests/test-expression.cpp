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
        SECTION("Catches Divide by 0", "[single-digit][invalid-syntax]") {
            Expression exp("7 / 0");
            CHECK_THROWS_AS(exp.ComputeSolution(), std::runtime_error);
        }
    }
    SECTION("Parsing no operation expressions correctly", "[no-operation][constants]") {
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
    SECTION("Using constant values in single operation expressions", "[constants]") {
        SECTION("Multiplying with constants", "[multiplication") {
            int secondDigit = 10;

            Expression timesPi("$p * " + std::to_string(secondDigit));
            Expression timesE("$e * " + std::to_string(secondDigit));

            REQUIRE(timesPi.ComputeSolution() == (math::kPiVal * secondDigit));
            REQUIRE(timesE.ComputeSolution() == (math::kEVal * secondDigit));
        }
        SECTION("Adding with constants", "[addition]") {
            int secondDigit = 10;

            Expression timesPi("$p + " + std::to_string(secondDigit));
            Expression timesE("$e + " + std::to_string(secondDigit));

            REQUIRE(timesPi.ComputeSolution() == (math::kPiVal + secondDigit));
            REQUIRE(timesE.ComputeSolution() == (math::kEVal + secondDigit));
        }
    }
}

TEST_CASE("Testing Invalid Inputs", "[invalid-syntax]") {
    SECTION("Operation Followed By No Number") {
        CHECK_THROWS_AS(Expression("12 -"), std::runtime_error);
    }
    SECTION("Multiple Operators [ 12 + * 13 ]") {
        CHECK_THROWS_AS(Expression("12 + * 13"), std::runtime_error);
    }
    SECTION("Random Letters [ 12 - abd ]") {
        CHECK_THROWS_AS(Expression("12 - abd"), std::runtime_error);
    }
    SECTION("Valid syntax but multiple operations", "[multi-operation]") {
        CHECK_THROWS_AS(Expression("5 * 10 * 2"), std::runtime_error);
    }
    SECTION("Valid syntax but we don't accept -Num") {
        CHECK_THROWS_AS(Expression("-10"), std::runtime_error);
    }
}

