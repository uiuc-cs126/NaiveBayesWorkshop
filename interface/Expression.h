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
  friend class ExpressionHasher;

  public:
    Expression() = default;
    Expression(const std::string& input);

    double ComputeSolution() const;

    // == Operator overload for hashing collisions
    bool operator==(const Expression& rhs);

    // Input and Output stream operator overloads
    friend std::ostream& operator<<(std::ostream& os, const Expression& exp);
    friend std::istream& operator>>(std::istream& is, Expression& exp);

  private:
    //==============
    // Helping Functions
    //==============
    void ParseRawInput(const std::string& input);

    //==============
    // Data members
    //==============
    double number1_;
    double number2_;
    Operation op_;
  };

//==================
// Hashing for Expression
//==================
struct ExpressionHasher {
  inline size_t operator()(const Expression& exp) const {
    return ((std::hash<double>()(exp.number1_)
      ^ (std::hash<double>()(exp.number2_) << 1)) >> 1)
      ^ (std::hash<int>()(exp.op_) << 1);
  }
};

} //namespace math

#endif