// Make sure to include header file 
#include "../interface/CachedCalculator.h"

// Here is the other way you could indicate the namespace holding the class in your .cpp file 

void math::CachedCalculator::solveEquations() {
    //TODO: write the equation solving 
}

std::ostream& operator<<(std::ostream& os, const math::CachedCalculator& calc) {
    return os;
}

std::istream& operator>>(std::istream& is, math::CachedCalculator& calc) {
    return is;
}