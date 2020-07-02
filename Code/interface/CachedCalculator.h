#ifndef CACHEDCALCULATOR_H
#define CACHEDCALCULATOR_H

// Note: #pragma once is also suitable to use rather than the above 

// Library Files 
#include <iostream>
#include <vector>
#include <string> //We should always use string rather than C-style char[]
#include <map>

// Our Files 
#include "Operation.h"
#include "Expression.h"

namespace math {

class CachedCalculator {
    public:
        // This is one way to declare a default constructor, but if not included at all, the compiler will create your class assuming this line
        // This is only really necessary when Calculator is given multiple constructors and you want a default constructor as well 
        CachedCalculator() = default; 

        void solveEquations();

        // You can declare functions in line in the header file, but this should only be done with small, single line functions 
        inline std::vector<std::string> getSolutions() { return solutions_; }

        // Stream operator overloads 
        // You can also declare these inside the class definitino as a "friend", meaning these functions 
        // have access to private members of the Calculator class 
        friend std::ostream& operator<<(std::ostream& os, const CachedCalculator& calc);
        friend std::istream& operator>>(std::istream& is, CachedCalculator& calc);

    private:
        std::map<Expression, double> cached_solutions_;

        std::vector<Expression> expressions_;
        std::vector<std::string> solutions_;
};
} // namespace math

#endif