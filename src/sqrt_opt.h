#ifndef SQRT_OPT_H
#define SQRT_OPT_H

typedef float v4sf __attribute__ ((vector_size (16)));
typedef int v4si __attribute__ ((vector_size (16)));


template <size_t LOOPS = 2>
float sqrt1(float * a) {
    int * ai = reinterpret_cast<int *>(a) ;
    int initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
    // initial zurueck casten zu float
    float root = *(float*)&initial;
    // Newton Verfahren durchfuehren
    for (unsigned int j = 0; j < LOOPS; j++) {
        root = 0.5 * ( root + (* a / root));
    }
    return root;
}

template <size_t LOOPS = 2>
void sqrt2(float * __restrict__ a, float * __restrict__ root) {
  // from here
  // TODO: your code
  // to here
}


template <size_t LOOPS = 2>
void v4sf_sqrt(v4sf *  __restrict__  a, v4sf *  __restrict__  root) {
  // from here
  // TODO: your code
  // to here
}


// wrapper für v4sf_sqrt
template <size_t LOOPS = 2>
void sqrt3(float *  __restrict__  a, float *  __restrict__  root) {
  v4sf *as =  reinterpret_cast<v4sf *>(a);
  v4sf_sqrt<LOOPS>(as, reinterpret_cast<v4sf *>(root) );
}

#endif

