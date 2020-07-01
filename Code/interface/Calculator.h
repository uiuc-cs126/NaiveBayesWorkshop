#ifndef CALCULATOR_H
#define CALCULATOR_H

//Note: #pragma once is also suitable to use rather than the above 

//Library Files 
#include <iostream>
#include <vector>
#include <string> //We should always use string rather than C-style char[]

//==============
// How NOT to define constants
// This method is C-style, and we should avoid it for a few reasons
//==============
/*
#define PI 3.14
#define E 2.7
*/

namespace math {
//==================
// Constants (The right way)
//==================
const char kSpecialCharacterDelim = '/';

const std::string kPiStr = "pi";
const std::string kEStr = "e";
const double kPiVal = 3.14;
const double kEVal = 2.72;

enum Operation {
    kAdd,
    kSubtract,
    kMultiply,
    kDivide
};

class Calculator {
    public:
        struct Expression {
            double number1_;
            double number2_;
            Operation op_;
        };

        //This is one way to declare a default constructor, but if not included at all, the compiler will create your class assuming this line
        //This is only really necessary when Calculator is given multiple constructors and you want a default constructor as well 
        Calculator() = default; 

        void solveEquations();

        //You can declare functions in line in the header file, but this should only be done with small, single line functions 
        inline std::vector<std::string> getSolutions() { return solutions_; }

    private:
        std::vector<Expression> expressions_;
        std::vector<std::string> solutions_;
};
} //namespace math

#endif