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

namespace Math {
    //==================
    // Constants (The right way)
    //==================
    const char SPECIAL_CHAR_DELIM = '/';
    const std::string PI_STR = "pi";
    const std::string E_STR = "e";

    enum Operation {
        ADD,
        SUBTRACT,
        MULTIPLY,
        DIVIDE
    };

    class Calculator {
        public:
            struct Expressions {
                double number1;
                double number2;
                Operation op;

                double solveEquation();
            };

            //This is one way to declare a default constructor, but if not included at all, the compiler will create your class assuming this line
            //This is only really necessary when Calculator is given multiple constructors and you want a default constructor as well 
            Calculator() = default; 

            void solveEquations();

            //You can declare functions in line in the header file, but this should only be done with small, single line functions 
            std::vector<std::string> getSolutions() { return solutions; }

        private:
            std::vector<Expressions> expressions;
            std::vector<std::string> solutions;
    };
}

#endif