#include "../interface/Expression.h"
#include <string>
#include <stdexcept>

// A few ways to access the namespace 
// We could put using math::Expression;
// We could also wrap the file in the namespace like below:

namespace math {

Expression::Expression(const std::string& input) {
  ParseRawInput(input);
}

double Expression::ComputeSolution() const {
  switch (operator_) {
    case Operation::kAdd:
      return number1_ + number2_;
    case Operation::kSubtract:
      return number1_ - number2_;
    case Operation::kMultiply:
      return number1_ * number2_;
    case Operation::kDivide:
      if(number2_) {
        return number1_ / number2_;
      }
      throw new std::runtime_error("Math error: You cannot divide by 0!");
    case Operation::kNoOperation:
      return number1_;
  }
}

bool Expression::operator==(const Expression& rhs) {
  return number1_ == rhs.number1_ && number2_ == rhs.number2_ && operator_ == rhs.operator_;
}

std::ostream& operator<<(std::ostream& os, const Expression& expression) {
  if(expression.operator_ == kNoOperation) {
    return os << expression.number1_;
  }
  return os << expression.number1_ << " " << expression.operator_ << " " << expression.number2_;
}

std::istream& operator>>(std::istream& is, Expression& expression) {
  std::string expressionLine;
  std::getline(is, expressionLine);

  expression = Expression(expressionLine);

  return is;
}

void Expression::ParseRawInput(const std::string& input) {
  size_t idx = 0;

  std::string raw_num_1 = "";
  std::string raw_num_2 = "";

  while(idx < input.size() && !isOperationChar(input[idx])) {
    raw_num_1 += input[idx];
    ++idx;
  }

  if(idx < input.size() - 1) { // Make sure that we have space for both the operation and a number afterwards
    operator_ = static_cast<Operation>(input[idx]);
    ++idx;

    while(idx < input.size()) {
      raw_num_2 += input[idx];
      ++idx;
    }

    number1_ = std::stod(raw_num_1);
    number2_ = std::stod(raw_num_2);
  }
  else {
    operator_ = Operation::kNoOperation;
    number1_ = std::stod(raw_num_1);
    number2_ = 0;
  }
}

} // namespace math
