#include "../interface/Operation.h"

namespace math {
    bool isOperationChar(char c) {
        return c == kAddChar || c == kSubtractChar || 
               c == kMultiplyChar || c == kDivideChar;
    }

    Operation charToOperation(char c) {
        switch (c) {
            case kAddChar:
                return Operation::kAdd;
            case kSubtractChar:
                return Operation::kSubtract;
            case kMultiplyChar:
                return Operation::kMultiply;
            case kDivideChar:
                return Operation::kDivide;
        }

        return Operation::kNoOperation;
    }

    std::ostream& operator<<(std::ostream& os, const Operation& op) {
        switch (op) {
            case kAdd:
                return os << kAddChar;
            case kSubtract:
                return os << kSubtractChar;
            case kMultiply:
                return os << kMultiplyChar;
            case kDivide:
                return os << kDivideChar;
            case kNoOperation:
                return os;
        }
    }
} // namepspace math