#include <iostream>
#include <cmath>
#include "sqrt_opt.h"

template <size_t LOOPS = 2>
void test_sqrt(void) {
    std::cout << LOOPS  << " iterations" << std::endl;

    alignas(128) float testFloats[4];
    alignas(128) float testRoots[4];

    testFloats[0] = 2;
    testFloats[1] = 4;
    testFloats[2] = 9;
    testFloats[3] = 16;

    for (int i = 0; i < 4; i++) {
        testRoots[i] = sqrt(testFloats[i]);
        std::cout << "sqrt(" << testFloats[i] << ") = " << testRoots[i] << std::endl;
    }

    for (int i = 0; i < 4; i++) {
        testRoots[i] = sqrt1<LOOPS>(testFloats + i);
        std::cout << "sqrt1(" << testFloats[i] << ") = " << testRoots[i] << std::endl;
    }

    sqrt2<LOOPS>(testFloats, testRoots);
    for (int i = 0; i < 4; i++) {
        std::cout << "sqrt2(" << testFloats[i] << ") = " << testRoots[i] << std::endl;
    }

    sqrt3<LOOPS>(testFloats, testRoots);
    for (int i = 0; i < 4; i++) {
        std::cout << "sqrt3(" << testFloats[i] << ") = " << testRoots[i] << std::endl;
    }
}

int main(void) {
    test_sqrt<20>();
    return 1;
}