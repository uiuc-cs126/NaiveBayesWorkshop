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

bool isOperationChar(char maybeOpChar);

std::ostream& operator<<(std::ostream& os, const Operation& op);
} //namespace math

#endif
