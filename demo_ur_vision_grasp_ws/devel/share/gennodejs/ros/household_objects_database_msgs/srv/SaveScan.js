// Auto-generated. Do not edit!

// (in-package household_objects_database_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let DatabaseReturnCode = require('../msg/DatabaseReturnCode.js');

//-----------------------------------------------------------

class SaveScanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scaled_model_id = null;
      this.ground_truth_pose = null;
      this.bagfile_location = null;
      this.scan_source = null;
      this.cloud_topic = null;
    }
    else {
      if (initObj.hasOwnProperty('scaled_model_id')) {
        this.scaled_model_id = initObj.scaled_model_id
      }
      else {
        this.scaled_model_id = 0;
      }
      if (initObj.hasOwnProperty('ground_truth_pose')) {
        this.ground_truth_pose = initObj.ground_truth_pose
      }
      else {
        this.ground_truth_pose = new geometry_msgs.msg.PoseStamped();
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
      if (initObj.hasOwnProperty('cloud_topic')) {
        this.cloud_topic = initObj.cloud_topic
      }
      else {
        this.cloud_topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveScanRequest
    // Serialize message field [scaled_model_id]
    bufferOffset = _serializer.int32(obj.scaled_model_id, buffer, bufferOffset);
    // Serialize message field [ground_truth_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.ground_truth_pose, buffer, bufferOffset);
    // Serialize message field [bagfile_location]
    bufferOffset = _serializer.string(obj.bagfile_location, buffer, bufferOffset);
    // Serialize message field [scan_source]
    bufferOffset = _serializer.string(obj.scan_source, buffer, bufferOffset);
    // Serialize message field [cloud_topic]
    bufferOffset = _serializer.string(obj.cloud_topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveScanRequest
    let len;
    let data = new SaveScanRequest(null);
    // Deserialize message field [scaled_model_id]
    data.scaled_model_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ground_truth_pose]
    data.ground_truth_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [bagfile_location]
    data.bagfile_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [scan_source]
    data.scan_source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cloud_topic]
    data.cloud_topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.ground_truth_pose);
    length += _getByteLength(object.bagfile_location);
    length += _getByteLength(object.scan_source);
    length += _getByteLength(object.cloud_topic);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/SaveScanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '492f49d320aa26325df5fb078c297fa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Stores information about a saved scan of an object to the database
    
    # the id of the model
    int32 scaled_model_id
    
    # The ground truth location of the object represented by the point cloud
    geometry_msgs/PoseStamped ground_truth_pose
    
    # The location of the bagfile storing the scan
    string bagfile_location
    
    # The string name of the source of the scan data
    string scan_source
    
    # The topic in the bag that the cloud is published on 
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
    const resolved = new SaveScanRequest(null);
    if (msg.scaled_model_id !== undefined) {
      resolved.scaled_model_id = msg.scaled_model_id;
    }
    else {
      resolved.scaled_model_id = 0
    }

    if (msg.ground_truth_pose !== undefined) {
      resolved.ground_truth_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.ground_truth_pose)
    }
    else {
      resolved.ground_truth_pose = new geometry_msgs.msg.PoseStamped()
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

    if (msg.cloud_topic !== undefined) {
      resolved.cloud_topic = msg.cloud_topic;
    }
    else {
      resolved.cloud_topic = ''
    }

    return resolved;
    }
};

class SaveScanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = new DatabaseReturnCode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveScanResponse
    // Serialize message field [return_code]
    bufferOffset = DatabaseReturnCode.serialize(obj.return_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveScanResponse
    let len;
    let data = new SaveScanResponse(null);
    // Deserialize message field [return_code]
    data.return_code = DatabaseReturnCode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/SaveScanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b49fccceeb56b964ed23601916a24082';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # the outcome of the query
    DatabaseReturnCode return_code
    
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseReturnCode
    # return codes for database-related services
    
    int32 UNKNOWN_ERROR = 1
    int32 DATABASE_NOT_CONNECTED = 2
    int32 DATABASE_QUERY_ERROR = 3
    int32 SUCCESS = -1
    
    int32 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveScanResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = DatabaseReturnCode.Resolve(msg.return_code)
    }
    else {
      resolved.return_code = new DatabaseReturnCode()
    }

    return resolved;
    }
};

module.exports = {
  Request: SaveScanRequest,
  Response: SaveScanResponse,
  md5sum() { return '855c7b6f2658d8a9de03dd9a5f7b1f1e'; },
  datatype() { return 'household_objects_database_msgs/SaveScan'; }
};
