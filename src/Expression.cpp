#include "../interface/Expression.h"
#include "../interface/Operation.h"
#include <string>
#include <stdexcept>
#include <regex>

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

bool Expression::operator==(const Expression& rhs) const {
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
  // Going to search for operator using regex
  std::regex operator_regex("[*-+-/]");
  std::smatch search_results;
  std::regex_search(input, search_results, operator_regex);
  std::cout << input << std::endl;

  if(search_results.size() == 0) {
    std::cout << __LINE__ << std::endl;
    operator_ = Operation::kNoOperation;
    number1_ = ParseNumber(input);
  }
  else if(search_results.size() == 1) {
    std::cout << __LINE__ << std::endl;
    // Get operator, then parse into numbers the two substrings
    operator_ = static_cast<Operation>(input[search_results.position(0)]);
    number1_ = ParseNumber(input.substr(0, search_results.position(0)));

    // Make sure there is room for number after operator
    if ((search_results.position(0) + 1) >= input.size()) {
      std::cout << __LINE__ << std::endl;
      throw std::runtime_error("Invalid Syntax!");
    }
    number2_ = ParseNumber(input.substr(search_results.position(0) + 1, input.size()));
  }
  else {
    std::cout << __LINE__ << std::endl;
    throw std::runtime_error("Sorry, only one operator is allowed!");
  }
}

double Expression::ParseNumber(std::string num_str) {
  // Remove spaces from the string
  num_str.erase(std::remove_if(num_str.begin(), num_str.end(), isspace), num_str.end());
  std::cout << "Num str: " << num_str << std::endl;

  // Check for constants
  size_t special_char_search = num_str.find(kSpecialCharacterDelim);
  if(special_char_search == 0) {
    std::cout << __LINE__ << std::endl;
    if(num_str[1] == kPiChar) {
      std::cout << __LINE__ << std::endl;
      return num_str.size() == 2 ? kPiVal : throw std::runtime_error("Invalid Syntax!");
    }
    else if(num_str[1] == kEChar) {
      std::cout << __LINE__ << std::endl;
      return num_str.size() == 2 ? kEVal : throw std::runtime_error("Invalid Syntax!");
    }
  }

  // Should just be numbers from here
  std::regex numbers_neg_regex("[^0-9-]");
  std::smatch search_results;
  std::regex_search(num_str, search_results, numbers_neg_regex);

  if(search_results.size() != 0) {
    std::cout << __LINE__ << std::endl;
    throw std::runtime_error("Invalid Syntax!");
  }

  std::cout << __LINE__ << std::endl;
  return std::stod(num_str);
}

} // namespace math
