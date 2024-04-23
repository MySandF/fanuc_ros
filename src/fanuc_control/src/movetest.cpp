#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h> 
#include <moveit_msgs/DisplayTrajectory.h> 
#include <moveit_msgs/AttachedCollisionObject.h> 
#include <moveit_msgs/CollisionObject.h> 

#include <vector>
#include <string>
#include <iostream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "movetest");
    ros::NodeHandle node_handle; 
    ros::AsyncSpinner spinner(1);
    spinner.start();
    
    moveit::planning_interface::MoveGroupInterface group("manipulator");//arm对应moveit中选择的规划部分
    
    // 设置发送的数据，对应于moveit中的拖拽
    // geometry_msgs::Pose target_pose1;
    
    // target_pose1.orientation.x= 0.424;
    // target_pose1.orientation.y = -0.637;
    // target_pose1.orientation.z = -0.325;
    // target_pose1.orientation.w = 0.554;
    
    // target_pose1.position.x = 0.805;
    // target_pose1.position.y = -0.348;
    // target_pose1.position.z = 1.213;
    
    // group.setPoseTarget(target_pose1);
    // geometry_msgs::Pose target_pose1;
    
    // target_pose1.orientation.x= 0.424;
    // target_pose1.orientation.y = -0.637;
    // target_pose1.orientation.z = -0.325;
    // target_pose1.orientation.w = 0.554;
    
    // target_pose1.position.x = 0.805;
    // target_pose1.position.y = -0.348;
    // target_pose1.position.z = 1.213;
    std::vector<double> joint_group_positions = {0, 0, 1.57, 0, 0, 0};
    group.setJointValueTarget(joint_group_positions);
    group.move();
    sleep(0.5);
    ROS_INFO("Joint move success");
    
    // 进行运动规划，计算机器人移动到目标的运动轨迹，对应moveit中的plan按钮
    // moveit::planning_interface::MoveGroup::Plan my_plan;
    // bool success = group.plan(my_plan);
    
    // ROS_INFO("Visualizing plan 1 (pose goal) %s",success?"":"FAILED");   
    
    //让机械臂按照规划的轨迹开始运动，对应moveit中的execute。
    // if(success)
        // group.execute(my_plan);
    
    ros::shutdown(); 
    return 0;
}