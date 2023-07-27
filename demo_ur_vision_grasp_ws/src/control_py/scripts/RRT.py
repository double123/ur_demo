import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import numpy as np
 
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from rrt_planner import RRTPlanner
 
# 初始化 MoveIt 和 RRT 规划器
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('rrt_planner_demo', anonymous=True)
 
robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group_name = "manipulator"
move_group = moveit_commander.MoveGroupCommander(group_name)
planning_frame = move_group.get_planning_frame()
 
# 设置起始点和目标点
start_joint_values = [0, -np.pi/4, 0, -np.pi/2, 0, np.pi/3, 0]
goal_joint_values = [-np.pi/2, -np.pi/4, np.pi/2, -np.pi/2, -np.pi/2, 0, 0]
 
move_group.set_start_state_to_current_state()
move_group.set_joint_value_target(goal_joint_values)
 
# 使用 RRT 规划器进行路径规划
rrt_planner = RRTPlanner(start_joint_values, goal_joint_values, move_group)
path = rrt_planner.plan_path()
 
# 使用五次多项式插值对路径进行平滑化
traj = move_group.retime_trajectory(move_group.get_current_state(), path, 0.8, 0.1)
 
# 将轨迹转化为关节轨迹并发送给机械臂执行
joint_traj = JointTrajectory()
joint_traj.joint_names = traj.joint_trajectory.joint_names
 
for point in traj.joint_trajectory.points:
    joint_traj_point = JointTrajectoryPoint()
    joint_traj_point.positions = point.positions
    joint_traj_point.velocities = point.velocities
    joint_traj_point.time_from_start = point.time_from_start
    joint_traj.points.append(joint_traj_point)
 
move_group.execute(joint_traj, wait=True)
 
# 关闭 MoveIt
moveit_commander.roscpp_shutdown()