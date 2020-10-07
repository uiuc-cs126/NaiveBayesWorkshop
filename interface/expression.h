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

const size_t kConstantStrLen = 2;

class Expression {
  friend class ExpressionHasher;

  public:
    //===================
    // Constructors 
    //===================
    Expression() = default;
    Expression(const std::string& input);

    double ComputeSolution() const;

    /**
     * Operator overload for == used in the hashing operation. 
     */
    bool operator==(const Expression& rhs) const;

    /**
     * Operator overload for << (ostream). Declared as friend to the Expression class 
     * to access data members. 
     */
    friend std::ostream& operator<<(std::ostream& os, const Expression& expression);

    /**
     * Opeartor overload for >> (ostream). Declared as friend to the Expression class 
     * to access data members. 
     */
    friend std::istream& operator>>(std::istream& is, Expression& expresson);

  private:
    //==============
    // Helping Functions
    //==============
    /**
     * Takes the raw input and checks for errors while also filling in the data members 
     * for the operator and lhs and rhs numbers. 
     */
    void ParseRawInput(const std::string& input);

    /**
     * Takes a string containing only a number and checks for correctness and returns 
     * the number contained in the string. It will also check to see if a constant was called.
     */ 
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
