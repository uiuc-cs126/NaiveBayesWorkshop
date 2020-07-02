#ifndef EXPRESSION_H
#define EXPRESSION_H

#include <iostream>

#include "Operation.h"

//==============
// How NOT to define constants
// This method is C-style, and we should avoid it for a few reasons
//==============
/*
#define PI 3.14
#define E 2.7
*/

namespace math {
//==================
// Constants (The right way)
//==================
const char kSpecialCharacterDelim = '/';

const std::string kPiStr = "pi";
const std::string kEStr = "e";
const double kPiVal = 3.14;
const double kEVal = 2.72;


class Expression {
public:
    Expression() = default;
    Expression(const std::string& input);

    double getSolution();

    // Input and Output stream operator overloads 
    friend std::ostream& operator<<(std::ostream& os, const Expression& exp);
    friend std::istream& operator>>(std::istream& is, Expression& exp);

private:
    double number1_;
    double number2_;
    Operation op_;
};
} //namespace math

#endif