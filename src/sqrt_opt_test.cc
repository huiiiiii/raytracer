#include <iostream>
#include <limits>
#include <random>
#include <cmath>
#include "sqrt_opt.h"


double random_double()
{
    static std::random_device device;
    static std::uniform_real_distribution<double> dist(0.0, 10000.0);
    return dist(device);
}

void reset(float * roots, float * testFloats) {
    for (int i = 0; i < 4; i++) {
        roots[i] = 0;
    }
    testFloats[0] = 2;
    for (int i = 1; i < 4; i++) {
        testFloats[i] = random_double();
    }
}

template <size_t LOOPS = 2>
void test_sqrt1(void) {
    alignas(128) float testFloats[4];
    alignas(128) float testRoots[4];

    reset(testRoots, testFloats);

    for (int i = 0; i < 4; i++) {
        if (std::abs(sqrt(testFloats[i]) - sqrt1<LOOPS>(testFloats + i)) > 0.001) {
            std::cout << "Failed Test test_sqrt1" << std::endl;
            return;
        };
    }

    std::cout << "Succeed Test test_sqrt1" << std::endl;

}

template <size_t LOOPS = 2>
void test_sqrt2(void) {
    alignas(128) float testFloats[4];
    alignas(128) float testRoots[4];

    reset(testRoots, testFloats);

    sqrt2<LOOPS>(testFloats, testRoots);
    for (int i = 0; i < 4; i++) {
        if (std::abs(sqrt(testFloats[i]) - testRoots[i]) > 0.001) {
            std::cout << "Failed Test test_sqrt2" << std::endl;
            return;
        };
    }

    std::cout << "Succeed Test test_sqrt2" << std::endl;

}

template <size_t LOOPS = 2>
void test_sqrt3(void) {
    alignas(128) float testFloats[4];
    alignas(128) float testRoots[4];

    reset(testRoots, testFloats);

    sqrt3<LOOPS>(testFloats, testRoots);
    for (int i = 0; i < 4; i++) {
        if (std::abs(sqrt(testFloats[i]) - testRoots[i]) > 0.001) {
            std::cout << "Failed Test test_sqrt3" << std::endl;
            return;
        };
    }

    std::cout << "Succeed Test test_sqrt3" << std::endl;
}

int main(void) {
    test_sqrt1<10>();
    test_sqrt2<10>();
    test_sqrt3<10>();
    return 1;
}