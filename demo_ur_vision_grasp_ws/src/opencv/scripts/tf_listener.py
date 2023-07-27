#!/usr/bin/env python

import rospy
import tf
from geometry_msgs.msg import Pose
def object_position_pose(t,o):
    # 创建一个发布对象，发布方块位姿信息
    pub = rospy.Publisher('/objection_position_pose',Pose,queue_size=10)
    p = Pose()
    rate = rospy.Rate(5)
    p.position.x = t[0]
    p.position.y = t[1]
    p.position.z = t[2]
    p.orientation.x = o[0]
    p.orientation.y = o[1]
    p.orientation.z = o[2]
    p.orientation.w = o[3]
    pub.publish(p)
    rate.sleep()

if __name__ == '__main__':
   rospy.init_node('tf_listener',anonymous=True)
   listener = tf.TransformListener() 
   rate = rospy.Rate(10.0)
   while not rospy.is_shutdown():
       try:
            # 是将目标的坐标从目标坐标系转换到世界诶坐标系。(trans,rot)分别表示旋转和平移。
           (trans,rot) = listener.lookupTransform('/world', '/object_43', rospy.Time(0))
           print("trans:")
           print(trans)
           print("rot:")
           print(rot)
           object_position_pose(trans,rot)
       except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
           continue
       rate.sleep()