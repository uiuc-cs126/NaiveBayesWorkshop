#include <string>

class Equation {
    public: // TODO: enum
        Equation(const std::string & s); 
        int getResult();
    private: 
        void calculateResult(); 

        std::string & str; 
        int a, b; // operands
        int result; 
        char operator; 
}