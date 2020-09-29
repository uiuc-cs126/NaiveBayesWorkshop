#include "operation.h"

namespace math {

bool IsOperationChar(char maybe_op_char) {
  return maybe_op_char == kAddChar || maybe_op_char == kSubtractChar ||
      maybe_op_char == kMultiplyChar || maybe_op_char == kDivideChar;
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
