#ifndef EXPRESSION_H
#define EXPRESSION_H

#include <iostream>

#include "operation.h"

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
const char kSpecialCharacterDelim = '$';

const char kPiChar = 'p';
const char kEChar = 'e';
const double kPiVal = 3.14;
const double kEVal = 2.72;

class Expression {
  friend class ExpressionHasher;

  public:
    Expression() = default;
    Expression(const std::string& input);

    double ComputeSolution() const;

    // == Operator overload for hashing collisions
    bool operator==(const Expression& rhs) const;

    // Input and Output stream operator overloads
    friend std::ostream& operator<<(std::ostream& os, const Expression& expression);
    friend std::istream& operator>>(std::istream& is, Expression& expresson);

  private:
    //==============
    // Helping Functions
    //==============
    void ParseRawInput(const std::string& input);
    double ParseNumber(std::string num_str);

    //==============
    // Data members
    //==============
    double lhs_number_;
    double rhs_number_;
    Operation operator_;
  };

//==================
// Hashing for Expression
//==================
struct ExpressionHasher {
  inline size_t operator()(const Expression& exp) const {
    return ((std::hash<double>()(exp.lhs_number_)
      ^ (std::hash<double>()(exp.rhs_number_) << 1)) >> 1)
      ^ (std::hash<int>()(exp.operator_) << 1);
  }
};

} //namespace math

#endif
