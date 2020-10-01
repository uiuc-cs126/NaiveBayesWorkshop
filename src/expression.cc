#include "expression.h"
#include "operation.h"
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
      return lhs_number_ + rhs_number_;
    case Operation::kSubtract:
      return lhs_number_ - rhs_number_;
    case Operation::kMultiply:
      return lhs_number_ * rhs_number_;
    case Operation::kDivide:
      if(rhs_number_ != 0) {
        return lhs_number_ / rhs_number_;
      }
      throw std::runtime_error("Math error: You cannot divide by 0!");
    case Operation::kNoOperation:
      return lhs_number_;
  }
}

bool Expression::operator==(const Expression& rhs) const {
  return lhs_number_ == rhs.lhs_number_ && rhs_number_ == rhs.rhs_number_ && operator_ == rhs.operator_;
}

std::ostream& operator<<(std::ostream& os, const Expression& expression) {
  if(expression.operator_ == kNoOperation) {
    return os << expression.lhs_number_;
  }
  return os << expression.lhs_number_ << " " << expression.operator_ << " " << expression.rhs_number_;
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
  std::string input_copy = input;
  std::vector<int> operator_indices;

  // Make sure that we find all instances of an operator in input string
  while (std::regex_search(input_copy, search_results, operator_regex)) {
    operator_indices.push_back(search_results.position(0));
    input_copy = input_copy.substr(search_results.position(search_results.size() - 1) + 1);
  }

  if(operator_indices.size() == 0) { // Operator not found
    operator_ = Operation::kNoOperation;
    lhs_number_ = ParseNumber(input);
  }
  else if(operator_indices.size() == 1) { // Found one operator
    // Get operator, then parse into numbers the two substrings
    operator_ = static_cast<Operation>(input[operator_indices[0]]);
    lhs_number_ = ParseNumber(input.substr(0, operator_indices[0]));

    // Make sure there is room for number after operator
    if ((operator_indices[0] + 1) >= input.size()) {
      throw std::runtime_error("Invalid Syntax!");
    }
    rhs_number_ = ParseNumber(input.substr(operator_indices[0] + 1, input.size()));
  }
  else {
    throw std::runtime_error("Sorry, only one operator is allowed!");
  }
}

double Expression::ParseNumber(std::string num_str) {
  // Remove spaces from the string
  num_str.erase(std::remove_if(num_str.begin(), num_str.end(), isspace), num_str.end());

  // Check for constants
  size_t special_char_search = num_str.find(kSpecialCharacterDelim);
  if(special_char_search == 0) {
    if(num_str[1] == kPiChar) {
      return num_str.size() == 2 ? kPiVal : throw std::runtime_error("Invalid Syntax!");
    }
    else if(num_str[1] == kEChar) {
      return num_str.size() == 2 ? kEVal : throw std::runtime_error("Invalid Syntax!");
    }
  }

  // Should just be numbers from here
  std::regex numbers_neg_regex("[^0-9]");
  std::smatch search_results;
  std::regex_search(num_str, search_results, numbers_neg_regex);
  if(search_results.size() != 0 || num_str.size() == 0) { // If we have an empty string or regex match
    throw std::runtime_error("Invalid Syntax!");
  }

  return std::stod(num_str);
}

} // namespace math
