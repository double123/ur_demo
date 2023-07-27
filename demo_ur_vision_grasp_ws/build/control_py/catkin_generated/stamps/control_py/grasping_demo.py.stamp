#! /usr/bin/env python
import sys
import rospy
import moveit_commander
# import geometry_msgs
# import tf


def graspRed():
    # 针对规划组进行控制
    arm_group = moveit_commander.move_group.MoveGroupCommander("arm")
    hand_group = moveit_commander.move_group.MoveGroupCommander("gripper")

    arm_group.set_named_target("home")
    plan = arm_group.go()
    print("Point1_home")

    # Open
    hand_group.set_named_target("open")
    plan = hand_group.go()
    print("Point2_open_gripper")

    pose_target = arm_group.get_current_pose().pose

    # 移动到红色方块上方
    pose_target.position.x = 0.4
    pose_target.position.y = 0.0
    pose_target.position.z = pose_target.position.z+0.06

    arm_group.set_pose_target(pose_target)
    arm_group.go(wait=True)
    print("Point3_Red_overhead")

    # 落下
    pose_target.position.x = pose_target.position.x - 0.01
    pose_target.position.y = -0.01
    pose_target.position.z = pose_target.position.z-0.14

    arm_group.set_pose_target(pose_target)
    arm_group.go(wait=True)
    print("Point4_down")
    # 抓取
    hand_group.set_named_target("grasp")
    plan = hand_group.go()
    print("Point5_grasp")
    # 抬高
    pose_target.position.z = pose_target.position.z + 0.1
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Point6_up")
    # 移动
    # pose_target.position.z = pose_target.position.z - 0.1
    pose_target.position.x = 0.55
    # pose_target.position.y = 0.2
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Point7_xy")
    # 落下
    pose_target.position.z = pose_target.position.z - 0.08
    # pose_target.position.x = 0.8
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Point7_down")
    # 放开夹抓
    hand_group.set_named_target("open")
    plan = hand_group.go()
    print("Point8_open")
    # 抬高
    pose_target.position.y = 0.2
    pose_target.position.z = pose_target.position.z + 0.1
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Point9_up")

    # 抓取绿色方快
    pose_target.position.x = 0.4 - 0.02
    pose_target.position.y = pose_target.position.y - 0.01
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Point_green")
    # 落下
    pose_target.position.z = pose_target.position.z - 0.12
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Pointgreen_down")
    # 抓取
    hand_group.set_named_target("grasp")
    plan = hand_group.go()
    print("Pointgreen_grasp")
    # 抬高
    pose_target.position.z = pose_target.position.z + 0.11
    # pose_target.position.x = 0.8
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Pointgreen_up")

    pose_target.position.y = 0
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Pointy")
    
    pose_target.position.z = pose_target.position.z - 0.09
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Pointgreen_down")

    # 放开夹抓
    hand_group.set_named_target("open")
    plan = hand_group.go()
    print("Pointgreen_open")

    pose_target.position.z = pose_target.position.z + 0.11
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("Pointgreen_up")

    # 移动到蓝色方块上方
    pose_target.position.x = 0.4 - 0.01
    pose_target.position.y = -0.2 - 0.01
    pose_target.position.z = pose_target.position.z+0.06
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_overhead")
    # down
    pose_target.position.z = pose_target.position.z - 0.19
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_down")
    # 抓取
    hand_group.set_named_target("grasp")
    plan = hand_group.go()
    print("PointBlue_grasp")
    # up
    pose_target.position.z = pose_target.position.z + 0.1
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_up")
    # 移动到原绿色方块上方
    pose_target.position.x = 0.4
    pose_target.position.y = 0.2
    pose_target.position.z = pose_target.position.z+0.06
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_xyz")

    # down
    pose_target.position.z = pose_target.position.z - 0.13
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_down")

    # 放开夹抓
    hand_group.set_named_target("open")
    plan = hand_group.go()
    print("PointBlue_open")

    # up
    pose_target.position.z = pose_target.position.z + 0.1
    arm_group.set_pose_target(pose_target)
    plan = arm_group.go()
    print("PointBlue_up")

    arm_group.set_named_target("home")
    plan = arm_group.go()
    print("home")
    rospy.sleep(5)
    moveit_commander.roscpp_initializer.roscpp_shutdown()

if __name__ == "__main__":
    #  初始化moveit_commander，创建一个node
    moveit_commander.roscpp_initializer.roscpp_initialize(sys.argv)
    rospy.init_node('move_group_grasp', anonymous=True)

    # 创建一个RobotCommander对象。RobotCommander是针对整个机器人的控制
    robot = moveit_commander.robot.RobotCommander()
    graspRed()