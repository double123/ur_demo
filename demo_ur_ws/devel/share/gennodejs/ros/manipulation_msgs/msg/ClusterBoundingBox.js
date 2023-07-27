// Auto-generated. Do not edit!

// (in-package manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ClusterBoundingBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_stamped = null;
      this.dimensions = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_stamped')) {
        this.pose_stamped = initObj.pose_stamped
      }
      else {
        this.pose_stamped = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterBoundingBox
    // Serialize message field [pose_stamped]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_stamped, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterBoundingBox
    let len;
    let data = new ClusterBoundingBox(null);
    // Deserialize message field [pose_stamped]
    data.pose_stamped = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_stamped);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/ClusterBoundingBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bf2b7a44ad666dc3a6a2bbc21782dad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # contains a bounding box, which is essentially a box somewhere in space
    # used here ususally for the outlier-invariant bounding box of a cluster of points
    
    #the pose of the box frame
    geometry_msgs/PoseStamped pose_stamped
    
    #the dimensions of the box
    geometry_msgs/Vector3 dimensions
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClusterBoundingBox(null);
    if (msg.pose_stamped !== undefined) {
      resolved.pose_stamped = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamped)
    }
    else {
      resolved.pose_stamped = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = ClusterBoundingBox;
