// Auto-generated. Do not edit!

// (in-package household_objects_database_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let DatabaseReturnCode = require('../msg/DatabaseReturnCode.js');
let DatabaseScan = require('../msg/DatabaseScan.js');

//-----------------------------------------------------------

class GetModelScansRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_id = null;
      this.scan_source = null;
    }
    else {
      if (initObj.hasOwnProperty('model_id')) {
        this.model_id = initObj.model_id
      }
      else {
        this.model_id = 0;
      }
      if (initObj.hasOwnProperty('scan_source')) {
        this.scan_source = initObj.scan_source
      }
      else {
        this.scan_source = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelScansRequest
    // Serialize message field [model_id]
    bufferOffset = _serializer.int32(obj.model_id, buffer, bufferOffset);
    // Serialize message field [scan_source]
    bufferOffset = _serializer.string(obj.scan_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelScansRequest
    let len;
    let data = new GetModelScansRequest(null);
    // Deserialize message field [model_id]
    data.model_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scan_source]
    data.scan_source = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.scan_source);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelScansRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f31b0f27ba251f6d1f17eafced83cb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # retrieves a list of object scans which match a given model id and source
    
    # the id of the model
    int32 model_id
    
    # the string name of the source of the scan data
    string scan_source
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelScansRequest(null);
    if (msg.model_id !== undefined) {
      resolved.model_id = msg.model_id;
    }
    else {
      resolved.model_id = 0
    }

    if (msg.scan_source !== undefined) {
      resolved.scan_source = msg.scan_source;
    }
    else {
      resolved.scan_source = ''
    }

    return resolved;
    }
};

class GetModelScansResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
      this.matching_scans = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = new DatabaseReturnCode();
      }
      if (initObj.hasOwnProperty('matching_scans')) {
        this.matching_scans = initObj.matching_scans
      }
      else {
        this.matching_scans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelScansResponse
    // Serialize message field [return_code]
    bufferOffset = DatabaseReturnCode.serialize(obj.return_code, buffer, bufferOffset);
    // Serialize message field [matching_scans]
    // Serialize the length for message field [matching_scans]
    bufferOffset = _serializer.uint32(obj.matching_scans.length, buffer, bufferOffset);
    obj.matching_scans.forEach((val) => {
      bufferOffset = DatabaseScan.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelScansResponse
    let len;
    let data = new GetModelScansResponse(null);
    // Deserialize message field [return_code]
    data.return_code = DatabaseReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [matching_scans]
    // Deserialize array length for message field [matching_scans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.matching_scans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.matching_scans[i] = DatabaseScan.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.matching_scans.forEach((val) => {
      length += DatabaseScan.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelScansResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d1bb6e95c26a5d891987d9d9195e958';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # the outcome of the query
    DatabaseReturnCode return_code
    
    # the returned scans
    DatabaseScan[] matching_scans
    
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseReturnCode
    # return codes for database-related services
    
    int32 UNKNOWN_ERROR = 1
    int32 DATABASE_NOT_CONNECTED = 2
    int32 DATABASE_QUERY_ERROR = 3
    int32 SUCCESS = -1
    
    int32 code
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseScan
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
    const resolved = new GetModelScansResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = DatabaseReturnCode.Resolve(msg.return_code)
    }
    else {
      resolved.return_code = new DatabaseReturnCode()
    }

    if (msg.matching_scans !== undefined) {
      resolved.matching_scans = new Array(msg.matching_scans.length);
      for (let i = 0; i < resolved.matching_scans.length; ++i) {
        resolved.matching_scans[i] = DatabaseScan.Resolve(msg.matching_scans[i]);
      }
    }
    else {
      resolved.matching_scans = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetModelScansRequest,
  Response: GetModelScansResponse,
  md5sum() { return '8e98ddfab8ff8e5fb3a60b1cd7645437'; },
  datatype() { return 'household_objects_database_msgs/GetModelScans'; }
};
