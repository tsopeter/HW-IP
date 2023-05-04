#ifndef __dot_product_hpp__
#define __dot_product_hpp__

#include "hls_math.h"
#include "ap_fixed.h"

using fix16 = ap_fixed<8, 8>;

#define MAX_M	1024
#define MAX_N	1024
#define MAX_K	1024

void dot_product_interface (fix16 A[MAX_M][MAX_N], fix16 B[MAX_N][MAX_K], fix16 C[MAX_M][MAX_K], int m, int n, int h);

template <size_t M, size_t N, size_t K>
void dot_product (fix16 A[M][N], fix16 B[M][K], fix16 C[M][K], int m, int n, int h);

#endif

