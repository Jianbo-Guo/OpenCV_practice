#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

using namespace cv;

int main()
{
	VideoCapture cap(0);
	while (1)
	{
		Mat frame;
		cap >> frame;
		resize(frame, frame, Size(1280, 480));//set size of image
		Mat leftImage, rightImage;
        Mat LeftImage, RightImage;
		leftImage = frame(Rect(0, 0, frame.size().width / 2, frame.size().height));//split left image
		rightImage = frame(Rect(frame.size().width / 2, 0, frame.size().width / 2, frame.size().height));//split right image
        cvtColor(leftImage,leftImage,COLOR_BGR2GRAY);
        cvtColor(rightImage,rightImage,COLOR_BGR2GRAY);
        equalizeHist(leftImage,LeftImage);
        equalizeHist(rightImage,RightImage);
        //bilateralFilter(leftImage,LeftImage,25,25*2,25/2);
        // bilateralFilter(rightImage,RightImage,25,25*2,25/2);
		imshow("LeftImage", LeftImage);//left image
        imwrite("Left.png",LeftImage);
		imshow("RightImage", RightImage);//right image
        imwrite("Right.png",RightImage);
		waitKey(33);
	}
	return 0;
}
