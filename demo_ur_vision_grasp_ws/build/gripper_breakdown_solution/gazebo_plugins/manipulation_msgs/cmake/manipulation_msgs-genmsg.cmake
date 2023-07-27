# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "manipulation_msgs: 20 messages, 1 services")

set(MSG_I_FLAGS "-Imanipulation_msgs:/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg;-Imanipulation_msgs:/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Ihousehold_objects_database_msgs:/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(manipulation_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" "geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" "geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:sensor_msgs/PointCloud2:sensor_msgs/ChannelFloat32:geometry_msgs/Point32:sensor_msgs/PointField:shape_msgs/MeshTriangle:sensor_msgs/PointCloud:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:manipulation_msgs/GraspableObject:std_msgs/Header:geometry_msgs/Pose:shape_msgs/Mesh:sensor_msgs/Image:geometry_msgs/Point:object_recognition_msgs/ObjectType:sensor_msgs/CameraInfo:manipulation_msgs/SceneRegion:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" "geometry_msgs/Pose:sensor_msgs/RegionOfInterest:geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:sensor_msgs/PointCloud:sensor_msgs/PointCloud2:sensor_msgs/CameraInfo:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:sensor_msgs/Image:geometry_msgs/Point:sensor_msgs/ChannelFloat32:object_recognition_msgs/ObjectType:geometry_msgs/Point32:std_msgs/Header:manipulation_msgs/SceneRegion:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:geometry_msgs/Vector3:manipulation_msgs/GripperTranslation:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" ""
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" ""
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" ""
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" ""
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:geometry_msgs/Vector3:manipulation_msgs/GripperTranslation:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" ""
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" "geometry_msgs/Pose:sensor_msgs/RegionOfInterest:geometry_msgs/Vector3:sensor_msgs/PointCloud2:sensor_msgs/Image:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:sensor_msgs/CameraInfo:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" "geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:manipulation_msgs/GripperTranslation:sensor_msgs/PointCloud2:sensor_msgs/ChannelFloat32:sensor_msgs/JointState:geometry_msgs/Point32:sensor_msgs/PointField:manipulation_msgs/GraspPlanningActionGoal:manipulation_msgs/GraspPlanningActionFeedback:manipulation_msgs/Grasp:actionlib_msgs/GoalID:sensor_msgs/PointCloud:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:manipulation_msgs/GraspPlanningFeedback:manipulation_msgs/GraspableObject:manipulation_msgs/GraspPlanningGoal:std_msgs/Header:manipulation_msgs/GraspPlanningActionResult:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:manipulation_msgs/GraspPlanningResult:sensor_msgs/Image:geometry_msgs/Point:actionlib_msgs/GoalStatus:manipulation_msgs/GraspPlanningErrorCode:object_recognition_msgs/ObjectType:sensor_msgs/CameraInfo:manipulation_msgs/SceneRegion:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" "geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:manipulation_msgs/GripperTranslation:sensor_msgs/PointCloud2:sensor_msgs/ChannelFloat32:sensor_msgs/JointState:geometry_msgs/Point32:sensor_msgs/PointField:manipulation_msgs/Grasp:actionlib_msgs/GoalID:sensor_msgs/PointCloud:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:manipulation_msgs/GraspableObject:manipulation_msgs/GraspPlanningGoal:std_msgs/Header:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:sensor_msgs/Image:geometry_msgs/Point:object_recognition_msgs/ObjectType:sensor_msgs/CameraInfo:manipulation_msgs/SceneRegion:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:actionlib_msgs/GoalID:geometry_msgs/Vector3:manipulation_msgs/GraspPlanningResult:manipulation_msgs/GripperTranslation:manipulation_msgs/Grasp:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:geometry_msgs/Point:sensor_msgs/JointState:manipulation_msgs/GraspPlanningErrorCode:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:actionlib_msgs/GoalID:geometry_msgs/Vector3:manipulation_msgs/GripperTranslation:manipulation_msgs/Grasp:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:actionlib_msgs/GoalStatus:geometry_msgs/Point:sensor_msgs/JointState:manipulation_msgs/GraspPlanningFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" "geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:manipulation_msgs/GripperTranslation:sensor_msgs/PointCloud2:sensor_msgs/ChannelFloat32:sensor_msgs/JointState:geometry_msgs/Point32:sensor_msgs/PointField:manipulation_msgs/Grasp:sensor_msgs/PointCloud:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:manipulation_msgs/GraspableObject:std_msgs/Header:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:sensor_msgs/Image:geometry_msgs/Point:object_recognition_msgs/ObjectType:sensor_msgs/CameraInfo:manipulation_msgs/SceneRegion:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:geometry_msgs/Vector3:manipulation_msgs/GripperTranslation:manipulation_msgs/Grasp:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:sensor_msgs/JointState:manipulation_msgs/GraspPlanningErrorCode:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Pose:geometry_msgs/Vector3:manipulation_msgs/GripperTranslation:manipulation_msgs/Grasp:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_custom_target(_manipulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "manipulation_msgs" "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" "geometry_msgs/Vector3:household_objects_database_msgs/DatabaseModelPose:manipulation_msgs/GripperTranslation:sensor_msgs/PointCloud2:sensor_msgs/ChannelFloat32:sensor_msgs/JointState:geometry_msgs/Point32:sensor_msgs/PointField:manipulation_msgs/Grasp:sensor_msgs/PointCloud:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:manipulation_msgs/GraspableObject:std_msgs/Header:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:sensor_msgs/Image:geometry_msgs/Point:manipulation_msgs/GraspPlanningErrorCode:object_recognition_msgs/ObjectType:sensor_msgs/CameraInfo:manipulation_msgs/SceneRegion:sensor_msgs/RegionOfInterest"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)

### Generating Services
_generate_srv_cpp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
)

### Generating Module File
_generate_module_cpp(manipulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(manipulation_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(manipulation_msgs_generate_messages manipulation_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_cpp _manipulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manipulation_msgs_gencpp)
add_dependencies(manipulation_msgs_gencpp manipulation_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manipulation_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)

### Generating Services
_generate_srv_eus(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
)

### Generating Module File
_generate_module_eus(manipulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(manipulation_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(manipulation_msgs_generate_messages manipulation_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_eus _manipulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manipulation_msgs_geneus)
add_dependencies(manipulation_msgs_geneus manipulation_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manipulation_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)

### Generating Services
_generate_srv_lisp(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
)

### Generating Module File
_generate_module_lisp(manipulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(manipulation_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(manipulation_msgs_generate_messages manipulation_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_lisp _manipulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manipulation_msgs_genlisp)
add_dependencies(manipulation_msgs_genlisp manipulation_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manipulation_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)

### Generating Services
_generate_srv_nodejs(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
)

### Generating Module File
_generate_module_nodejs(manipulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(manipulation_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(manipulation_msgs_generate_messages manipulation_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_nodejs _manipulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manipulation_msgs_gennodejs)
add_dependencies(manipulation_msgs_gennodejs manipulation_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manipulation_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)
_generate_msg_py(manipulation_msgs
  "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)

### Generating Services
_generate_srv_py(manipulation_msgs
  "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/household_objects_database_msgs/msg/DatabaseModelPose.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
)

### Generating Module File
_generate_module_py(manipulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(manipulation_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(manipulation_msgs_generate_messages manipulation_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/CartesianGains.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ClusterBoundingBox.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObjectList.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspableObject.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/Grasp.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspPlanningErrorCode.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GraspResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/GripperTranslation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationPhase.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/ManipulationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocation.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/PlaceLocationResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/msg/SceneRegion.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningAction.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningActionFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningGoal.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningResult.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/devel/share/manipulation_msgs/msg/GraspPlanningFeedback.msg" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/demo_ur_ws/src/gripper_breakdown_solution/gazebo_plugins/manipulation_msgs/srv/GraspPlanning.srv" NAME_WE)
add_dependencies(manipulation_msgs_generate_messages_py _manipulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(manipulation_msgs_genpy)
add_dependencies(manipulation_msgs_genpy manipulation_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS manipulation_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/manipulation_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET shape_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp shape_msgs_generate_messages_cpp)
endif()
if(TARGET household_objects_database_msgs_generate_messages_cpp)
  add_dependencies(manipulation_msgs_generate_messages_cpp household_objects_database_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/manipulation_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET shape_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus shape_msgs_generate_messages_eus)
endif()
if(TARGET household_objects_database_msgs_generate_messages_eus)
  add_dependencies(manipulation_msgs_generate_messages_eus household_objects_database_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/manipulation_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET shape_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp shape_msgs_generate_messages_lisp)
endif()
if(TARGET household_objects_database_msgs_generate_messages_lisp)
  add_dependencies(manipulation_msgs_generate_messages_lisp household_objects_database_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/manipulation_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET shape_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs shape_msgs_generate_messages_nodejs)
endif()
if(TARGET household_objects_database_msgs_generate_messages_nodejs)
  add_dependencies(manipulation_msgs_generate_messages_nodejs household_objects_database_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/manipulation_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET shape_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py shape_msgs_generate_messages_py)
endif()
if(TARGET household_objects_database_msgs_generate_messages_py)
  add_dependencies(manipulation_msgs_generate_messages_py household_objects_database_msgs_generate_messages_py)
endif()
