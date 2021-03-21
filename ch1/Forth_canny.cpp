#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;

int main()
{
	//【0】载入原始图
	Mat srcImage = imread("/home/jianbo/OpenCV_practice/ch1/data/1.jpg");//工程目录下应有名为1.jpg的图
	imshow("【原始图】Canny边缘检测",srcImage);//显示原始图
	Mat dstImage,edge,grayImage;//参数定义

	//【1】创建与src同类型和大小的矩阵（dst）
	dstImage.create(srcImage.size(),srcImage.type());

	//【2】将原图像转换为灰度图
	cvtColor(srcImage,grayImage,COLOR_BGR2GRAY);//OpenCV3版本编写格式，CV2最后一项为CV_BGR2GRAY

	//【3】先使用3x3内核来降噪
	blur(grayImage,edge,Size(3,3));

	//【4】运行canny算子
	Canny(edge,edge,3,9,3);

	//【5】显示效果图
	imshow("【效果图Canny边缘检测】",edge);

	waitKey(0);

	return 0;
}
