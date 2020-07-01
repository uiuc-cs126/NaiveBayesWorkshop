#include "equation.h"

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