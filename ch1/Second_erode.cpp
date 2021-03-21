#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;
int main()
{
	//载入图像
	Mat srcImage = imread("/home/jianbo/OpenCV_practice/ch1/data/1.jpg");
	//显示原图
	imshow("【原图】腐蚀操作", srcImage);
	//进行腐蚀操作
	Mat element = getStructuringElement(MORPH_RECT,Size(15,15));
	Mat dstImage;
	erode(srcImage,dstImage,element);
	//显示效果图
	imshow("【效果图】腐蚀操作",dstImage);
	waitKey(0);

	return 0;
}
