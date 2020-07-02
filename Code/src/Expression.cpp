#include "../interface/Expression.h"
#include <string>
#include <stdexcept>

// A few ways to access the namespace 
// We could put using math::Expression;
// We could also wrap the file in the namespace like below:

namespace math {
    Expression::Expression(const std::string& input) {
        size_t idx = 0;

        std::string num1, num2;

        while(idx < input.size() && !isOperationChar(input[idx])) {
            num1 += input[idx];
            ++idx;
        }

        if(idx < input.size() - 1) { // Make sure that we have space for both the operation and a number afterwards
            op_ = charToOperation(input[idx]);
            ++idx;

            while(idx < input.size()) {
                num2 += input[idx];
                ++idx;
            }

            number1_ = std::stod(num1);
            number2_ = std::stod(num2);
        }
        else {
            op_ = Operation::kNoOperation;
            number1_ = std::stod(num1);
            number2_ = 0;
        }
    }

    double Expression::getSolution() {
        switch (op_) {
            case Operation::kAdd:
                return number1_ + number2_;
            case Operation::kSubtract:
                return number1_ - number2_;
            case Operation::kMultiply:
                return number1_ * number2_;
            case Operation::kDivide:
                if(number2_)
                    return number1_ / number2_;
                throw new std::runtime_error("Math error: You cannot divide by 0!");
            case Operation::kNoOperation:
                return number1_;
        }
    }

    std::ostream& operator<<(std::ostream& os, const Expression& exp) {
        if(exp.op_ == kNoOperation) {
            return os << exp.number1_;
        }
        return os << exp.number1_ << " " << exp.op_ << " " << exp.number2_;
    }

    std::istream& operator>>(std::istream& is, Expression& exp) {
        std::string expressionLine;
        std::getline(is, expressionLine);

        exp = Expression(expressionLine);

        return is;
    }
}
/*
Equation::Equation(const std::string & s) {
    // TODO: split string
    a = 10; 
    b = 10; 
    operator = '+'; 
    calculateResult(); 
}

void Equation::calculateResult() {
    result = 10; 
}

int Equation::getResult() {
    return result; 
}
*/