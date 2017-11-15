#include "core.h"
#include <hls_math.h>

#define R_OFFSET 0
#define G_OFFSET 76800
#define B_OFFSET 153600


int backsub(AXI_STREAM& inStream, AXI_STREAM_OUT& outStream,
		uint16_t frame[76800], bool init) {
#pragma HLS INTERFACE bram port=frame
#pragma HLS INTERFACE s_axilite port=init bundle=CRTL_BUS
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS


	float alpha = 0.1;
	float beta = 0.2;
	float gamma = 0.7;

	loop1: {
		if (init) {
			for (int i = 0; i < IMG_SIZE; i = i + 2) {
#pragma HLS PIPELINE
				ap_axiu<32, 1, 1, 1> valIn;

				ap_axiu<8, 1, 1, 1> valOut1;
				ap_axiu<8, 1, 1, 1> valOut2;

				inStream.read(valIn);
				uint32_t val = valIn.data;
				yuv pix;

				tostruct(val, &pix);

				frame[i] = pix.y1;
				frame[i + 1] = pix.y2;

				//std::cout << valIn.data << std::endl;

				frame[i] = frame[i] | (pix.y1 << 8);
				frame[i+1] = frame[i + 1] | (pix.y2 << 8);

				valOut1.keep = valIn.keep;
				valOut1.strb = valIn.strb;
				valOut1.dest = valIn.dest;
				valOut1.id = valIn.id;
				valOut1.last = valIn.last;
				valOut1.user = valIn.user;
				valOut1.data = pix.y1;
				outStream.write(valOut1);

				valOut2.keep = valIn.keep;
				valOut2.strb = valIn.strb;
				valOut2.dest = valIn.dest;
				valOut2.id = valIn.id;
				valOut2.last = valIn.last;
				valOut2.user = valIn.user;
				valOut2.data = pix.y2;
				outStream.write(valOut2);


			}

		} else {

			for (int i = 0; i < IMG_SIZE; i = i + 2) {
#pragma HLS PIPELINE
				ap_axiu<32, 1, 1, 1> valIn;
				ap_axiu<8, 1, 1, 1> valOut1;
				ap_axiu<8, 1, 1, 1> valOut2;
				inStream.read(valIn);

				uint32_t val = valIn.data;
				yuv pix;

				tostruct(val, &pix);

				uint8_t pix_11 = pix.y1;
				uint8_t pix_12 = frame[i];
				uint8_t pix_13 = frame[i] >> 8;

				frame[i] = pix_11;
				frame[i] = frame[i] | (pix_12 << 8);

				uint8_t temp_1 = alpha * pix_11 + beta * pix_12
						+ gamma * pix_13;


				uint8_t pix_21 = pix.y2;
				uint8_t pix_22 = frame[i + 1];
				uint8_t pix_23 = frame[i + 1] >> 8;

				frame[i+1] = pix_21;
				frame[i+1] = frame[i + 1] | (pix_22 << 8);

				uint8_t temp_2 = alpha * pix_21 + beta * pix_22
						+ gamma * pix_23;

				//have to do for two pixels

				if (15 > hls::abs(pix_11 - temp_1))
					valOut1.data = 0;
				else
					valOut1.data = 255;

				//valOut1.data = pix_13;
//			valOut1.data =frame[i];//hls::abs(pix_11 - temp_1) ;

				valOut1.keep = valIn.keep;
				valOut1.strb = valIn.strb;
				valOut1.dest = valIn.dest;
				valOut1.id = valIn.id;
				valOut1.last = valIn.last;
				valOut1.user = valIn.user;
				outStream.write(valOut1);

				if (15 > hls::abs(pix_21 - temp_2))
					valOut2.data = 0;
				else
					valOut2.data = 255;
//				valOut2.data = pix_23;
//				valOut2.data =frame[i+1];//hls::abs(pix_21 - temp_2) ;

				valOut2.keep = valIn.keep;
				valOut2.strb = valIn.strb;
				valOut2.dest = valIn.dest;
				valOut2.id = valIn.id;
				valOut2.last = valIn.last;
				valOut2.user = valIn.user;
				outStream.write(valOut2);

			}
		}
	}
	return 0;
}

void tostruct(uint32_t val, yuv *yuv_struct) {
	yuv_struct->y1 =  255 & val;
	yuv_struct->u = 255 & (val >> 8);
	yuv_struct->y2 = 255 & (val >> 16);
	yuv_struct->v = 255 & (val >> 24);
}
