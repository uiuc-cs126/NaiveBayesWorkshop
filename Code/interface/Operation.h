#ifndef OPERATION_H
#define OPERATION_H

#include <string>
#include <iostream>

namespace math {

    const char kAddChar = '+';
    const char kSubtractChar = '-';
    const char kMultiplyChar = '*';
    const char kDivideChar = '/';

    enum Operation {
        kAdd,
        kSubtract,
        kMultiply,
        kDivide,
        kNoOperation
    };

    bool isOperationChar(char c);

    Operation charToOperation(char c);

    std::ostream& operator<<(std::ostream& os, const Operation& op);
} //namespace math

#endif