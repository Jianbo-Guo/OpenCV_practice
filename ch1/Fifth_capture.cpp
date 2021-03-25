#include <opencv2/opencv.hpp>
using namespace cv;

int main()
{
	//【1】读入视频
	VideoCapture capture("/home/jianbo/OpenCV_practice/ch1/data/1.avi");

	//【2】循环显示每一帧
	while(1)
	{
		Mat frame;//定义一个Mat变量，用于存储每一帧的图像
		capture>>frame;//读取当前帧
		imshow("读取视频",frame);//显示当前帧
		waitKey(30);//延时30s
	}
	return 0;
}
