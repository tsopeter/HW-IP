/**
 * @brief Computes the dot product between matricies
 */

#include "dot_product.hpp"

void dot_product_interface (fix16 A[MAX_M][MAX_N], fix16 B[MAX_N][MAX_K], fix16 C[MAX_M][MAX_K], int m, int n, int h) {
	dot_product<MAX_M,MAX_N,MAX_K>(A, B, C, m, n, h);
}

template <size_t M, size_t N, size_t K>
void dot_product (fix16 A[M][N], fix16 B[M][K], fix16 C[M][K], int m, int n, int h) {
	fix16 acc = 0;
	L1: for (size_t i = 0; i < m; ++i) {
#pragma HLS LOOP_TRIPCOUNT max=MAX_M
		L2: for (size_t j = 0; j < h; ++j) {
#pragma HLS LOOP_TRIPCOUNT max=MAX_K
			SUM: for (size_t k = 0; k < n; ++k) {
#pragma HLS LOOP_TRIPCOUNT max=MAX_N
				acc += A[i][k] * B[k][j];
			}
			C[i][j]=acc;
			acc = 0;	// clear accumulation register
		}
	}
}
