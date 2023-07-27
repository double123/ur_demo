// Auto-generated. Do not edit!

// (in-package household_objects_database_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DatabaseScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_id = null;
      this.bagfile_location = null;
      this.scan_source = null;
      this.pose = null;
      this.cloud_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('model_id')) {
        this.model_id = initObj.model_id
      }
      else {
        this.model_id = 0;
      }
      if (initObj.hasOwnProperty('bagfile_location')) {
        this.bagfile_location = initObj.bagfile_location
      }
      else {
        this.bagfile_location = '';
      }
      if (initObj.hasOwnProperty('scan_source')) {
        this.scan_source = initObj.scan_source
      }
      else {
        this.scan_source = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('cloud_topic')) {
        this.cloud_topic = initObj.cloud_topic
      }
      else {
        this.cloud_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DatabaseScan
    // Serialize message field [model_id]
    bufferOffset = _serializer.int32(obj.model_id, buffer, bufferOffset);
    // Serialize message field [bagfile_location]
    bufferOffset = _serializer.string(obj.bagfile_location, buffer, bufferOffset);
    // Serialize message field [scan_source]
    bufferOffset = _serializer.string(obj.scan_source, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [cloud_topic]
    bufferOffset = _serializer.string(obj.cloud_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DatabaseScan
    let len;
    let data = new DatabaseScan(null);
    // Deserialize message field [model_id]
    data.model_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bagfile_location]
    data.bagfile_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [scan_source]
    data.scan_source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_topic]
    data.cloud_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.bagfile_location);
    length += _getByteLength(object.scan_source);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += _getByteLength(object.cloud_topic);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'household_objects_database_msgs/DatabaseScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7edb7abec4973143a801c25c336b4bb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Contains the location of a stored point cloud scan of an object, 
    # as well as additional metadata about that scan 
    
    # the database id of the model
    int32 model_id
    
    # the location of the bag file storing the scan
    string bagfile_location
    
    # the source of the scan (e.g. simulation)
    string scan_source
    
    # the ground truth pose of the object that was scanned
    geometry_msgs/PoseStamped pose
    
    # the topic that the points in the bag are published on
    string cloud_topic
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DatabaseScan(null);
    if (msg.model_id !== undefined) {
      resolved.model_id = msg.model_id;
    }
    else {
      resolved.model_id = 0
    }

    if (msg.bagfile_location !== undefined) {
      resolved.bagfile_location = msg.bagfile_location;
    }
    else {
      resolved.bagfile_location = ''
    }

    if (msg.scan_source !== undefined) {
      resolved.scan_source = msg.scan_source;
    }
    else {
      resolved.scan_source = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.cloud_topic !== undefined) {
      resolved.cloud_topic = msg.cloud_topic;
    }
    else {
      resolved.cloud_topic = ''
    }

    return resolved;
    }
};

module.exports = DatabaseScan;
