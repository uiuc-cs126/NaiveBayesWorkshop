#include "../interface/Operation.h"

namespace math {

bool isOperationChar(char maybeOpChar) {
  return maybeOpChar == kAddChar || maybeOpChar == kSubtractChar ||
      maybeOpChar == kMultiplyChar || maybeOpChar == kDivideChar;
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
