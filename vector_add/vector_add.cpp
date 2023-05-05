#include "hls_stream.h"
#include "hls_math.h"
#include "ap_fixed.h"

#define SIZE 512

using fix16 = ap_fixed<8, 8>;

void vector_add(hls::stream<fix16> &x, hls::stream<fix16> &w, fix16 &y) {
#pragma HLS INTERFACE axis port=x
#pragma HLS INTERFACE axis port=w
#pragma HLS INTERFACE s_axilite register port=y
#pragma HLS INTERFACE ap_ctrl_none port=return

	// initialize an accumulator
	static fix16 acc = 0;

	// read and accumulate
	if (!x.empty() && !w.empty()) {
		fix16 X = x.read();
		fix16 W = w.read();

		acc += X * W;
	}

	y   = acc;
	acc = 0;
}
