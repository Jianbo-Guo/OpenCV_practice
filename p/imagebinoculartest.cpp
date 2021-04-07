#include <iostream>
#include <chrono>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <Eigen/Core>
#include<opencv2/calib3d/calib3d.hpp>
#include <pangolin/pangolin.h>
#include <unistd.h>
#include<opencv2/opencv.hpp>
using namespace std;
using namespace Eigen;
using namespace cv;

//高博用pangolin中显示点云
void showPointCloud(const vector<Vector4d, Eigen::aligned_allocator<Vector4d>> &pointcloud);
int main ( int argc, char** argv )
{
    double fx = 718.856, fy = 718.856, cx = 607.1928, cy = 185.2157;// 内参
    double b = 0.573;// 基线
        
    cout << "OpenCV version : " << CV_VERSION << endl;
   
    Mat leftImg=imread("/home/jianbo/OpenCV_practice/p/left.png",0);
    Mat rightImg=imread("/home/jianbo/OpenCV_practice/p/right.png",0);
    
    
    imshow ( "leftImg", leftImg);
    imshow ( "rightImg", rightImg);
    waitKey ( 0 );
  
    //OpenCV实现的SGBM立体匹配算法
    Ptr<StereoSGBM> sgbm = StereoSGBM::create(
        0,//minDisparity 最小视差
        96, //numDisparities 视差搜索范围，值必需为16的整数倍。最大搜索边界=最小视差+视差搜索范围
        9, //blockSize 块大小
        //8*cn*sgbm.SADWindowSize*sgbm.SADWindowSize;
        8 * 9 * 9, //P1 控制视差变化平滑性的参数。P1、P2的值越大，视差越平滑。P1是相邻像素点视差增/减 1 时的惩罚系数；P2是相邻像素点视差变化值大于1时的惩罚系数。P2必须大于P1。
        //32*cn*sgbm.SADWindowSize*sgbm.SADWindowSize
        32 * 9 * 9, //P2
        1, //disp12MaxDiff 左右一致性检测最大容许误差阈值。
        63, //preFilterCap,预处理时映射参数
        10, //uniquenessRatio 唯一性检测参数，
        100, //speckleWindowSize 视差连通区域像素点个数的大小。对于每一个视差点，当其连通区域的像素点个数小于speckleWindowSize时，认为该视差值无效，是噪点。
        32//speckleRange 视差连通条件，在计算一个视差点的连通区域时，当下一个像素点视差变化绝对值大于speckleRange就认为下一个视差像素点和当前视差像素点是不连通的。
    );
    
    Mat disparity_sgbm, disparity;
    sgbm->compute(leftImg, rightImg, disparity_sgbm); //计算视差图
    disparity_sgbm.convertTo(disparity, CV_32F, 1.0 / 16.0f);//得到视差图
    
    cv::imshow("disparity", disparity / 96.0);
    cv::waitKey(0);
    
    
    
    // 生成点云
    
    vector<Vector4d, Eigen::aligned_allocator<Vector4d>> pointcloud;
        // 如果机器慢，把后面的v++和u++改成v+=2, u+=2
    for (int v = 0; v < leftImg.rows; v++)
        for (int u = 0; u < leftImg.cols; u++) {
            if (disparity.at<float>(v, u) <= 0.0 || disparity.at<float>(v, u) >= 96.0) 
                continue;
            Vector4d point(0, 0, 0, leftImg.at<uchar>(v, u) / 255.0); // 前三维为xyz,第四维为颜色
            // 根据双目模型计算 point 的位置
            double x = (u - cx) / fx;
            double y = (v - cy) / fy;
            double depth = fx * b/(disparity.at<float>(v, u));
            point[0] = x * depth;
            point[1] = y * depth;
            point[2] = depth;
            pointcloud.push_back(point);
        }
        
    cv::imshow("disparity", disparity / 96.0);
    cv::waitKey(0);
    // 画出点云
    showPointCloud(pointcloud);
    return 0;
}


void showPointCloud(const vector<Vector4d, Eigen::aligned_allocator<Vector4d>> &pointcloud) 
{
    pangolin::CreateWindowAndBind("Point Cloud Viewer", 1024, 768);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    pangolin::OpenGlRenderState s_cam(
        pangolin::ProjectionMatrix(1024, 768, 500, 500, 512, 389, 0.1, 1000),
        pangolin::ModelViewLookAt(0, -0.1, -1.8, 0, 0, 0, 0.0, -1.0, 0.0)
    );
    pangolin::View &d_cam = pangolin::CreateDisplay()
        .SetBounds(0.0, 1.0, pangolin::Attach::Pix(175), 1.0, -1024.0f / 768.0f)
        .SetHandler(new pangolin::Handler3D(s_cam));
    while (pangolin::ShouldQuit() == false) 
    {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        d_cam.Activate(s_cam);
        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glPointSize(2);
        glBegin(GL_POINTS);
        for (auto &p: pointcloud) {
            glColor3f(p[3], p[3], p[3]);
            glVertex3d(p[0], p[1], p[2]);
        }
        glEnd();
        pangolin::FinishFrame();
        usleep(5000);   // sleep 5 ms
    }
    
    return;
}
