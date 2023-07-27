// Auto-generated. Do not edit!

// (in-package robotiq_85_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GripperStat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_ready = null;
      this.is_reset = null;
      this.is_moving = null;
      this.obj_detected = null;
      this.fault_status = null;
      this.position = null;
      this.requested_position = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_ready')) {
        this.is_ready = initObj.is_ready
      }
      else {
        this.is_ready = false;
      }
      if (initObj.hasOwnProperty('is_reset')) {
        this.is_reset = initObj.is_reset
      }
      else {
        this.is_reset = false;
      }
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = false;
      }
      if (initObj.hasOwnProperty('obj_detected')) {
        this.obj_detected = initObj.obj_detected
      }
      else {
        this.obj_detected = false;
      }
      if (initObj.hasOwnProperty('fault_status')) {
        this.fault_status = initObj.fault_status
      }
      else {
        this.fault_status = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('requested_position')) {
        this.requested_position = initObj.requested_position
      }
      else {
        this.requested_position = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperStat
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_ready]
    bufferOffset = _serializer.bool(obj.is_ready, buffer, bufferOffset);
    // Serialize message field [is_reset]
    bufferOffset = _serializer.bool(obj.is_reset, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.bool(obj.is_moving, buffer, bufferOffset);
    // Serialize message field [obj_detected]
    bufferOffset = _serializer.bool(obj.obj_detected, buffer, bufferOffset);
    // Serialize message field [fault_status]
    bufferOffset = _serializer.uint8(obj.fault_status, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [requested_position]
    bufferOffset = _serializer.float32(obj.requested_position, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperStat
    let len;
    let data = new GripperStat(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_ready]
    data.is_ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_reset]
    data.is_reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obj_detected]
    data.obj_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fault_status]
    data.fault_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [requested_position]
    data.requested_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotiq_85_msgs/GripperStat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b008656b72baf8ed957040c01e114fed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool is_ready
    bool is_reset
    bool is_moving
    bool obj_detected
    uint8 fault_status
    float32 position
    float32 requested_position
    float32 current
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperStat(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_ready !== undefined) {
      resolved.is_ready = msg.is_ready;
    }
    else {
      resolved.is_ready = false
    }

    if (msg.is_reset !== undefined) {
      resolved.is_reset = msg.is_reset;
    }
    else {
      resolved.is_reset = false
    }

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = false
    }

    if (msg.obj_detected !== undefined) {
      resolved.obj_detected = msg.obj_detected;
    }
    else {
      resolved.obj_detected = false
    }

    if (msg.fault_status !== undefined) {
      resolved.fault_status = msg.fault_status;
    }
    else {
      resolved.fault_status = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.requested_position !== undefined) {
      resolved.requested_position = msg.requested_position;
    }
    else {
      resolved.requested_position = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    return resolved;
    }
};

module.exports = GripperStat;
