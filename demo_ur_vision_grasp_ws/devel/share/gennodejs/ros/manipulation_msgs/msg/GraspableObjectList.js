// Auto-generated. Do not edit!

// (in-package manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GraspableObject = require('./GraspableObject.js');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');
let shape_msgs = _finder('shape_msgs');

//-----------------------------------------------------------

class GraspableObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.graspable_objects = null;
      this.image = null;
      this.camera_info = null;
      this.meshes = null;
      this.reference_to_camera = null;
    }
    else {
      if (initObj.hasOwnProperty('graspable_objects')) {
        this.graspable_objects = initObj.graspable_objects
      }
      else {
        this.graspable_objects = [];
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('camera_info')) {
        this.camera_info = initObj.camera_info
      }
      else {
        this.camera_info = new sensor_msgs.msg.CameraInfo();
      }
      if (initObj.hasOwnProperty('meshes')) {
        this.meshes = initObj.meshes
      }
      else {
        this.meshes = [];
      }
      if (initObj.hasOwnProperty('reference_to_camera')) {
        this.reference_to_camera = initObj.reference_to_camera
      }
      else {
        this.reference_to_camera = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspableObjectList
    // Serialize message field [graspable_objects]
    // Serialize the length for message field [graspable_objects]
    bufferOffset = _serializer.uint32(obj.graspable_objects.length, buffer, bufferOffset);
    obj.graspable_objects.forEach((val) => {
      bufferOffset = GraspableObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [camera_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.camera_info, buffer, bufferOffset);
    // Serialize message field [meshes]
    // Serialize the length for message field [meshes]
    bufferOffset = _serializer.uint32(obj.meshes.length, buffer, bufferOffset);
    obj.meshes.forEach((val) => {
      bufferOffset = shape_msgs.msg.Mesh.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reference_to_camera]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.reference_to_camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspableObjectList
    let len;
    let data = new GraspableObjectList(null);
    // Deserialize message field [graspable_objects]
    // Deserialize array length for message field [graspable_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.graspable_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.graspable_objects[i] = GraspableObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_info]
    data.camera_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [meshes]
    // Deserialize array length for message field [meshes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.meshes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.meshes[i] = shape_msgs.msg.Mesh.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reference_to_camera]
    data.reference_to_camera = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.graspable_objects.forEach((val) => {
      length += GraspableObject.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.camera_info);
    object.meshes.forEach((val) => {
      length += shape_msgs.msg.Mesh.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/GraspableObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd67571f2982f1b7115de1e0027319109';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    manipulation_msgs/GraspableObject[] graspable_objects
    
    #Information required for visualization
    
    sensor_msgs/Image image
    sensor_msgs/CameraInfo camera_info
    
    #Holds a single mesh for each recognized graspable object, an empty mesh otherwise
    shape_msgs/Mesh[] meshes
    
    #pose to transform the frame of the clusters/object poses into camera coordinates
    geometry_msgs/Pose reference_to_camera
    
    ================================================================================
    MSG: manipulation_msgs/GraspableObject
    # an object that the object_manipulator can work on
    
    # a graspable object can be represented in multiple ways. This message
    # can contain all of them. Which one is actually used is up to the receiver
    # of this message. When adding new representations, one must be careful that
    # they have reasonable lightweight defaults indicating that that particular
    # representation is not available.
    
    # the tf frame to be used as a reference frame when combining information from
    # the different representations below
    string reference_frame_id
    
    # potential recognition results from a database of models
    # all poses are relative to the object reference pose
    household_objects_database_msgs/DatabaseModelPose[] potential_models
    
    # the point cloud itself
    sensor_msgs/PointCloud cluster
    
    # a region of a PointCloud2 of interest
    SceneRegion region
    
    # the name that this object has in the collision environment
    string collision_name
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseModelPose
    # Informs that a specific model from the Model Database has been 
    # identified at a certain location
    
    # the database id of the model
    int32 model_id
    
    # if the object was recognized by the ORK pipeline, its type will be in here
    # if this is not empty, then the string in here will be converted to a household_objects_database id
    # leave this empty if providing an id in the model_id field
    object_recognition_msgs/ObjectType type
    
    # the pose that it can be found in
    geometry_msgs/PoseStamped pose
    
    # a measure of the confidence level in this detection result
    float32 confidence
    
    # the name of the object detector that generated this detection result
    string detector_name
    
    ================================================================================
    MSG: object_recognition_msgs/ObjectType
    ################################################## OBJECT ID #########################################################
    
    # Contains information about the type of a found object. Those two sets of parameters together uniquely define an
    # object
    
    # The key of the found object: the unique identifier in the given db
    string key
    
    # The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
    # There is no conventional format for those parameters and it's nice to keep that flexibility.
    # The object_recognition_core as a generic DB type that can read those fields
    # Current examples:
    # For CouchDB:
    #   type: 'CouchDB'
    #   root: 'http://localhost:5984'
    #   collection: 'object_recognition'
    # For SQL household database:
    #   type: 'SqlHousehold'
    #   host: 'wgs36'
    #   port: 5432
    #   user: 'willow'
    #   password: 'willow'
    #   name: 'household_objects'
    #   module: 'tabletop'
    string db
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: sensor_msgs/PointCloud
    # This message holds a collection of 3d points, plus optional additional
    # information about each point.
    
    # Time of sensor data acquisition, coordinate frame ID.
    Header header
    
    # Array of 3d points. Each Point32 should be interpreted as a 3d point
    # in the frame given in the header.
    geometry_msgs/Point32[] points
    
    # Each channel should have the same number of elements as points array,
    # and the data in each channel should correspond 1:1 with each point.
    # Channel names in common practice are listed in ChannelFloat32.msg.
    ChannelFloat32[] channels
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: sensor_msgs/ChannelFloat32
    # This message is used by the PointCloud message to hold optional data
    # associated with each point in the cloud. The length of the values
    # array should be the same as the length of the points array in the
    # PointCloud, and each value should be associated with the corresponding
    # point.
    
    # Channel names in existing practice include:
    #   "u", "v" - row and column (respectively) in the left stereo image.
    #              This is opposite to usual conventions but remains for
    #              historical reasons. The newer PointCloud2 message has no
    #              such problem.
    #   "rgb" - For point clouds produced by color stereo cameras. uint8
    #           (R,G,B) values packed into the least significant 24 bits,
    #           in order.
    #   "intensity" - laser or pixel intensity.
    #   "distance"
    
    # The channel name should give semantics of the channel (e.g.
    # "intensity" instead of "value").
    string name
    
    # The values array should be 1-1 with the elements of the associated
    # PointCloud.
    float32[] values
    
    ================================================================================
    MSG: manipulation_msgs/SceneRegion
    # Point cloud
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
    # contents of the "fields" array.
    
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
    # camera namespace on topic "camera_info" and accompanied by up to five
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
    # self-calibrating systems may "recalibrate" frequently.              #
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
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
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
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
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
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspableObjectList(null);
    if (msg.graspable_objects !== undefined) {
      resolved.graspable_objects = new Array(msg.graspable_objects.length);
      for (let i = 0; i < resolved.graspable_objects.length; ++i) {
        resolved.graspable_objects[i] = GraspableObject.Resolve(msg.graspable_objects[i]);
      }
    }
    else {
      resolved.graspable_objects = []
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.camera_info !== undefined) {
      resolved.camera_info = sensor_msgs.msg.CameraInfo.Resolve(msg.camera_info)
    }
    else {
      resolved.camera_info = new sensor_msgs.msg.CameraInfo()
    }

    if (msg.meshes !== undefined) {
      resolved.meshes = new Array(msg.meshes.length);
      for (let i = 0; i < resolved.meshes.length; ++i) {
        resolved.meshes[i] = shape_msgs.msg.Mesh.Resolve(msg.meshes[i]);
      }
    }
    else {
      resolved.meshes = []
    }

    if (msg.reference_to_camera !== undefined) {
      resolved.reference_to_camera = geometry_msgs.msg.Pose.Resolve(msg.reference_to_camera)
    }
    else {
      resolved.reference_to_camera = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = GraspableObjectList;
