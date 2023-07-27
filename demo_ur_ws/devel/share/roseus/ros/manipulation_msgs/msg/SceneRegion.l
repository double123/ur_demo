;; Auto-generated. Do not edit!


(when (boundp 'manipulation_msgs::SceneRegion)
  (if (not (find-package "MANIPULATION_MSGS"))
    (make-package "MANIPULATION_MSGS"))
  (shadow 'SceneRegion (find-package "MANIPULATION_MSGS")))
(unless (find-package "MANIPULATION_MSGS::SCENEREGION")
  (make-package "MANIPULATION_MSGS::SCENEREGION"))

(in-package "ROS")
;;//! \htmlinclude SceneRegion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass manipulation_msgs::SceneRegion
  :super ros::object
  :slots (_cloud _mask _image _disparity_image _cam_info _roi_box_pose _roi_box_dims ))

(defmethod manipulation_msgs::SceneRegion
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:mask __mask) (make-array 0 :initial-element 0 :element-type :integer))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:disparity_image __disparity_image) (instance sensor_msgs::Image :init))
    ((:cam_info __cam_info) (instance sensor_msgs::CameraInfo :init))
    ((:roi_box_pose __roi_box_pose) (instance geometry_msgs::PoseStamped :init))
    ((:roi_box_dims __roi_box_dims) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _cloud __cloud)
   (setq _mask __mask)
   (setq _image __image)
   (setq _disparity_image __disparity_image)
   (setq _cam_info __cam_info)
   (setq _roi_box_pose __roi_box_pose)
   (setq _roi_box_dims __roi_box_dims)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:disparity_image
   (&rest __disparity_image)
   (if (keywordp (car __disparity_image))
       (send* _disparity_image __disparity_image)
     (progn
       (if __disparity_image (setq _disparity_image (car __disparity_image)))
       _disparity_image)))
  (:cam_info
   (&rest __cam_info)
   (if (keywordp (car __cam_info))
       (send* _cam_info __cam_info)
     (progn
       (if __cam_info (setq _cam_info (car __cam_info)))
       _cam_info)))
  (:roi_box_pose
   (&rest __roi_box_pose)
   (if (keywordp (car __roi_box_pose))
       (send* _roi_box_pose __roi_box_pose)
     (progn
       (if __roi_box_pose (setq _roi_box_pose (car __roi_box_pose)))
       _roi_box_pose)))
  (:roi_box_dims
   (&rest __roi_box_dims)
   (if (keywordp (car __roi_box_dims))
       (send* _roi_box_dims __roi_box_dims)
     (progn
       (if __roi_box_dims (setq _roi_box_dims (car __roi_box_dims)))
       _roi_box_dims)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ;; int32[] _mask
    (* 4    (length _mask)) 4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/Image _disparity_image
    (send _disparity_image :serialization-length)
    ;; sensor_msgs/CameraInfo _cam_info
    (send _cam_info :serialization-length)
    ;; geometry_msgs/PoseStamped _roi_box_pose
    (send _roi_box_pose :serialization-length)
    ;; geometry_msgs/Vector3 _roi_box_dims
    (send _roi_box_dims :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;; int32[] _mask
     (write-long (length _mask) s)
     (dotimes (i (length _mask))
       (write-long (elt _mask i) s)
       )
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/Image _disparity_image
       (send _disparity_image :serialize s)
     ;; sensor_msgs/CameraInfo _cam_info
       (send _cam_info :serialize s)
     ;; geometry_msgs/PoseStamped _roi_box_pose
       (send _roi_box_pose :serialize s)
     ;; geometry_msgs/Vector3 _roi_box_dims
       (send _roi_box_dims :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;; int32[] _mask
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mask (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mask i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/Image _disparity_image
     (send _disparity_image :deserialize buf ptr-) (incf ptr- (send _disparity_image :serialization-length))
   ;; sensor_msgs/CameraInfo _cam_info
     (send _cam_info :deserialize buf ptr-) (incf ptr- (send _cam_info :serialization-length))
   ;; geometry_msgs/PoseStamped _roi_box_pose
     (send _roi_box_pose :deserialize buf ptr-) (incf ptr- (send _roi_box_pose :serialization-length))
   ;; geometry_msgs/Vector3 _roi_box_dims
     (send _roi_box_dims :deserialize buf ptr-) (incf ptr- (send _roi_box_dims :serialization-length))
   ;;
   self)
  )

(setf (get manipulation_msgs::SceneRegion :md5sum-) "0a9ab02b19292633619876c9d247690c")
(setf (get manipulation_msgs::SceneRegion :datatype-) "manipulation_msgs/SceneRegion")
(setf (get manipulation_msgs::SceneRegion :definition-)
      "# Point cloud
sensor_msgs/PointCloud2 cloud

# Indices for the region of interest
int32[] mask

# One of the corresponding 2D images, if applicable
sensor_msgs/Image image

# The disparity image, if applicable
sensor_msgs/Image disparity_image

# Camera info for the camera that took the image
sensor_msgs/CameraInfo cam_info

# a 3D region of interest for grasp planning
geometry_msgs/PoseStamped  roi_box_pose
geometry_msgs/Vector3 	   roi_box_dims

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: sensor_msgs/CameraInfo
# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :manipulation_msgs/SceneRegion "0a9ab02b19292633619876c9d247690c")


