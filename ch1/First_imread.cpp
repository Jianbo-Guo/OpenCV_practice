#include <opencv2/opencv.hpp>
using namespace cv;

int main()
{
Mat srcImage = imread("/home/jianbo/OpenCV_practice/ch1/data/1.jpg"); //载入图像
imshow("【原始图】", srcImage); //显示图像
waitKey(0);  //等待任意按键按下
}

