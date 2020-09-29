#ifndef OPERATION_H
#define OPERATION_H

#include <string>
#include <iostream>

namespace math {

const char kAddChar = '+';
const char kSubtractChar = '-';
const char kMultiplyChar = '*';
const char kDivideChar = '/';

enum Operation : char {
  kAdd = kAddChar,
  kSubtract = kSubtractChar,
  kMultiply = kMultiplyChar,
  kDivide = kDivideChar,
  kNoOperation
};

bool IsOperationChar(char maybe_op_char);

std::ostream& operator<<(std::ostream& os, const Operation& op);
} //namespace math

#endif
