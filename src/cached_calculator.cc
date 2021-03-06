// Make sure to include header file 
#include "cached_calculator.h"

#include <sstream>

// Here is the other way you could indicate the namespace holding the class in your .cpp file 
void math::CachedCalculator::StoreSolution(const Expression& exp) {
  // If the expression already exists, we are not going to do anything
  if (cached_solutions_.find(exp) == cached_solutions_.end()) {
    cached_solutions_[exp] = exp.ComputeSolution();
  }
}

std::ostream& math::operator<<(std::ostream& os, const math::CachedCalculator& calculator) {
    for (const auto& expression : calculator.cached_solutions_) {
        os << expression.first << " = " << expression.second << std::endl;
    }
    
    return os;
}

std::istream& math::operator>>(std::istream& is, math::CachedCalculator& calculator) {
  while (!is.eof()) {
      Expression expression;
      is >> expression;

      calculator.StoreSolution(expression);
  }

  return is;
}
