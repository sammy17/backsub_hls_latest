//#include <hls_opencv.h>
//#include "core.h"
//#include "frame1.h"
//#include "frame2.h"
//#include "frame3.h"
//#include <iostream>
//#include <fstream>
//#include <climits>
//#include <iostream>
//#include <algorithm>
//#include <bitset>
//#include "test_cam.h"
//
//uint16_t bram_ar[76800] = { 0 };
//cv::Mat IMG1(IMG_H, IMG_W, CV_8UC1);
//
//cv::Mat outImg1(IMG_H, IMG_W, CV_8UC1);
//cv::Mat outImg2(IMG_H, IMG_W, CV_8UC1);
//cv::Mat outImg3(IMG_H, IMG_W, CV_8UC1);
//
//cv::Mat inImg1(IMG_H, IMG_W, CV_8UC1);
//cv::Mat inImg2(IMG_H, IMG_W, CV_8UC1);
//cv::Mat inImg3(IMG_H, IMG_W, CV_8UC1);
//
//cv::Mat frame;
//
//std::string yuvimg[(IMG_W / 2) * IMG_H];
//
////void execute(cv::Mat img1, bool init);
////
////void execute_yuv(std::string *yuvimg, bool init);
//
//void bgr2yuv();
//
//
//
//
//int main_test() {
//	main_test() ;
////	cv::Mat img_1;
////	cv::Mat img_2;
////	cv::Mat img_3;
////
////	cv::Mat imtest(240, 320, CV_8UC1);
////
////	for (int i = 0; i < 240; i++) {
////		for (int j = 0; j < 160; j++) {
////			uint32_t val = frame1[i * 160 + j];
////			yuv pix;
////			//
////			tostruct(val, &pix);
////			imtest.at<uint8_t>(i, 2 * j) = pix.y1;
////			imtest.at<uint8_t>(i, 2 * j+1) = pix.y2;
////		}
////	}
////
////	cv::namedWindow("Live1");
////	cv::imshow("Live1", imtest);
////
////
////	//cv::imshow("Live2", outImg);
////	cv::waitKey(0);
//
//
//	//img_1
//
////	cv::VideoCapture cap;
////
////	cap.open("cut_out.avi");
////
////	if (!cap.isOpened()) {
////		std::cerr << "ERROR! Unable to open camera\n";
////		return -1;
////	}
//	//cap.read(frame);
//	//bgr2yuv();
//	//printf("height = %d, width = %d\n", frame.rows, frame.cols);
//	//cv::cvtColor(frame, IMG1, CV_BGR2GRAY);
//
//	bool init = 1;
//	//execute(IMG1, init);
//	//execute_yuv(yuvimg, init);
////	init = 0;
//
////	cv::namedWindow("Live1");
////	cv::imshow("Live1", img_1);
////	cv::namedWindow("Live2");
////	cv::imshow("Live2", outImg);
////	cv::waitKey(0);
//
////	for (int i=0;i<2;) {
////		// wait for a new frame from camera and store it into 'frame'
////		cap.read(frame);
////		// check if we succeeded
////		if (frame.empty()) {
////			std::cerr << "ERROR! blank frame grabbed\n";
////			break;
////		}
////		unsigned char *input = (unsigned char*) (frame.data);
////		bgr2yuv();
////		cv::cvtColor(frame, IMG1, CV_BGR2GRAY);
////		//execute(IMG1, false);
////		execute_yuv(yuvimg, false);
////
////		cv::namedWindow("Live1");
////		cv::imshow("Live1", IMG1);
////		cv::imshow("Live2", outImg);
//////		cv::waitKey(0);
////		if (cv::waitKey(1) >= 0)
////			break;
//
////	}
//	AXI_STREAM ch1;
//
//	for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
//		for (int idxCols = 0; idxCols < IMG_W/2; idxCols++) {
//			ap_axiu<32, 1, 1, 1> valIn;
//			valIn.data = frame1[idxRow * IMG_W + idxCols];
//			valIn.keep = 1;
//			valIn.strb = 1;
//			valIn.user = 1;
//			valIn.id = 1;
//			valIn.dest = 1;
//			if (idxRow == IMG_H - 1 && idxCols == IMG_W - 1)
//				valIn.last = 1;
//			else
//				valIn.last = 0;
//			ch1 << valIn;
//		}
//	}
//
//	AXI_STREAM_OUT outStream1;
//	init = true;
//	backsub(ch1, outStream1, bram_ar, init);
//
//	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
//		for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
//			ap_axiu<8, 1, 1, 1> valOut1;
//			ap_axiu<8, 1, 1, 1> valOut2;
//			outStream1.read(valOut1);
//			outStream1.read(valOut2);
//			outImg1.at<unsigned char>(idxRows, idxCols) = valOut1.data;	//.to_uchar();
//			outImg1.at<unsigned char>(idxRows, idxCols + 1) = valOut2.data;	//.to_uchar();
//		}
//	}
//
//	cv::namedWindow("Live1");
//	cv::imshow("Live2", outImg1);
////
////	AXI_STREAM ch2;
////
////	for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
////		for (int idxCols = 0; idxCols < IMG_W; idxCols++) {
////			ap_axiu<32, 1, 1, 1> valIn;
////			valIn.data = frame2[idxRow * IMG_W + idxCols];
////			valIn.keep = 1;
////			valIn.strb = 1;
////			valIn.user = 1;
////			valIn.id = 1;
////			valIn.dest = 1;
////			if (idxRow == IMG_H - 1 && idxCols == IMG_W - 1)
////				valIn.last = 1;
////			else
////				valIn.last = 0;
////			ch2 << valIn;
////		}
////	}
////
////	AXI_STREAM_OUT outStream2;
////	init = false;
////	backsub(ch2, outStream2, bram_ar, init);
////
////	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
////		for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
////			ap_axiu<8, 1, 1, 1> valOut1;
////			ap_axiu<8, 1, 1, 1> valOut2;
////			outStream2.read(valOut1);
////			outStream2.read(valOut2);
////			outImg2.at<unsigned char>(idxRows, idxCols) = valOut1.data;	//.to_uchar();
////			outImg2.at<unsigned char>(idxRows, idxCols + 1) = valOut2.data;	//.to_uchar();
////		}
////	}
////
////	cv::namedWindow("Live2");
////	cv::imshow("Live2", outImg2);
////
////	AXI_STREAM ch3;
////
////	for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
////		for (int idxCols = 0; idxCols < IMG_W; idxCols++) {
////			ap_axiu<32, 1, 1, 1> valIn;
////			valIn.data = frame3[idxRow * IMG_W + idxCols];
////			valIn.keep = 1;
////			valIn.strb = 1;
////			valIn.user = 1;
////			valIn.id = 1;
////			valIn.dest = 1;
////			if (idxRow == IMG_H - 1 && idxCols == IMG_W - 1)
////				valIn.last = 1;
////			else
////				valIn.last = 0;
////			ch3 << valIn;
////		}
////	}
////
////	AXI_STREAM_OUT outStream3;
////	init = false;
////	backsub(ch3, outStream3, bram_ar, init);
////
////	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
////		for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
////			ap_axiu<8, 1, 1, 1> valOut1;
////			ap_axiu<8, 1, 1, 1> valOut2;
////			outStream3.read(valOut1);
////			outStream3.read(valOut2);
////			outImg3.at<unsigned char>(idxRows, idxCols) = valOut1.data;	//.to_uchar();
////			outImg3.at<unsigned char>(idxRows, idxCols + 1) = valOut2.data;	//.to_uchar();
////		}
////	}
////
////	cv::namedWindow("Live3");
////	cv::imshow("Live3", outImg3);
////	cv::waitKey(0);
//
//	return 0;
//
//}
//
///*
// void bgr2yuv() {
// uint8_t r, g, b;
// uint8_t r2, g2, b2;
// int U, V;
// std::string tempA[4];
// cv::Mat RGB[3];
// cv::split(frame, RGB);
// for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
// for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
//
// b = RGB[0].at<uint8_t>(idxRow, idxCols);
// g = RGB[1].at<uint8_t>(idxRow, idxCols);
// r = RGB[2].at<uint8_t>(idxRow, idxCols);
//
// b2 = RGB[0].at<uint8_t>(idxRow, idxCols + 1);
// g2 = RGB[1].at<uint8_t>(idxRow, idxCols + 1);
// r2 = RGB[2].at<uint8_t>(idxRow, idxCols + 1);
//
// int y = (0.257 * r) + (0.504 * g) + (0.098 * b) + 16;
// int u = -(0.148 * r) - (0.291 * g) + (0.439 * b) + 128;
// int v = (0.439 * r) - (0.368 * g) - (0.071 * b) + 128;
//
// int y = (0.257 * r) + (0.504 * g) + (0.098 * b) + 16;
// int u = -(0.148 * r) - (0.291 * g) + (0.439 * b) + 128;
// int v = (0.439 * r) - (0.368 * g) - (0.071 * b) + 128;
// uint8_t y_t = std::min(255, std::max(0, y));
// uint8_t u_t = std::min(255, std::max(0, u));
// uint8_t v_t = std::min(255, std::max(0, v));
//
// //	            std::string Y = std::bitset< 8 >( y).to_string();
// //	            std::string U = std::bitset< 8 >( u).to_string();
// //	            std::string V = std::bitset< 8 >( v).to_string();
//
// if (idxCols % 2 == 0) {
// tempA[0] = y_t;
// tempA[1] = u_t;
// tempA[3] = v_t;
// } else {
// tempA[2] = y_t;
// yuvimg[idxRow * (IMG_W / 2) + (idxCols / 2)] = tempA[0]
// + tempA[1] + tempA[2] + tempA[3];
// //std::cout << tempA[0]+tempA[1]+tempA[2]+tempA[3] <<std::endl;
// }
//
// }
// }
//
// }
//
// void execute(cv::Mat img1, bool init) {
// AXI_STREAM ch1;
//
// for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
// for (int idxCols = 0; idxCols < IMG_W; idxCols++) {
// ap_axiu<32, 1, 1, 1> valIn;
// valIn.data = img1.at<unsigned char>(idxRow, idxCols);
// valIn.keep = 1;
// valIn.strb = 1;
// valIn.user = 1;
// valIn.id = 1;
// valIn.dest = 1;
// if (idxRow == img1.rows - 1 && idxCols == img1.cols - 1)
// valIn.last = 1;
// else
// valIn.last = 0;
// ch1 << valIn;
// }
// }
//
// AXI_STREAM outStream;
//
// backsub(ch1, outStream, bram_ar, init);
//
// for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
// for (int idxCols = 0; idxCols < IMG_W; idxCols++) {
//
// ap_axiu<32, 1, 1, 1> valOut;
// outStream.read(valOut);
// outImg.at<unsigned char>(idxRows, idxCols) = valOut.data; //.to_uchar();
// }
// }
// //cv::normalize(outImg,outImg,255,0,CV_MINMAX);
//
// }
//
// void execute_yuv(std::string *yuvimg, bool init) {
// AXI_STREAM ch1;
//
// for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
// for (int idxCols = 0; idxCols < IMG_W / 2; idxCols++) {
// ap_axiu<32, 1, 1, 1> valIn;
// valIn.data =
// std::bitset<32>(yuvimg[idxRow * (IMG_W / 2) + idxCols]).to_ulong();
// valIn.keep = 1;
// valIn.strb = 1;
// valIn.user = 1;
// valIn.id = 1;
// valIn.dest = 1;
// if (idxRow == IMG_H - 1 && idxCols == IMG_W / 2 - 1)
// valIn.last = 1;
// else
// valIn.last = 0;
// ch1 << valIn;
// }
// }
//
// AXI_STREAM outStream;
//
// backsub(ch1, outStream, bram_ar, init);
// //
// //	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
// //		for (int idxCols = 0; idxCols < IMG_W; idxCols++) {
// //
// //			ap_axiu<32, 1, 1, 1> valOut;
// //			outStream.read(valOut);
// //			outImg.at<unsigned char>(idxRows, idxCols) = valOut.data;//.to_uchar();
// //		}
// //	}
// //cv::normalize(outImg,outImg,255,0,CV_MINMAX);
//
// }
// */
//
