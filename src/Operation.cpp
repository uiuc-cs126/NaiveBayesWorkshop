#include "../interface/Operation.h"

namespace math {

bool isOperationChar(char maybeOpChar) {
  return maybeOpChar == kAddChar || maybeOpChar == kSubtractChar ||
      maybeOpChar == kMultiplyChar || maybeOpChar == kDivideChar;
}

<<<<<<< HEAD
=======
Operation charToOperation(char op) {
  switch (op) {
>>>>>>> 3130779d2a05a3356db5ed09ff65342c256c3283
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

} // namespace math
