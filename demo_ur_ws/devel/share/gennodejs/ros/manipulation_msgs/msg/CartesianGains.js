// Auto-generated. Do not edit!

// (in-package manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CartesianGains {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gains = null;
      this.fixed_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gains')) {
        this.gains = initObj.gains
      }
      else {
        this.gains = [];
      }
      if (initObj.hasOwnProperty('fixed_frame')) {
        this.fixed_frame = initObj.fixed_frame
      }
      else {
        this.fixed_frame = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianGains
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gains]
    bufferOffset = _arraySerializer.float64(obj.gains, buffer, bufferOffset, null);
    // Serialize message field [fixed_frame]
    bufferOffset = _arraySerializer.float64(obj.fixed_frame, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianGains
    let len;
    let data = new CartesianGains(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gains]
    data.gains = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [fixed_frame]
    data.fixed_frame = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.gains.length;
    length += 8 * object.fixed_frame.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/CartesianGains';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab347f046ca5736a156ec424cbb63635';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64[] gains
    float64[] fixed_frame
    
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
    const resolved = new CartesianGains(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gains !== undefined) {
      resolved.gains = msg.gains;
    }
    else {
      resolved.gains = []
    }

    if (msg.fixed_frame !== undefined) {
      resolved.fixed_frame = msg.fixed_frame;
    }
    else {
      resolved.fixed_frame = []
    }

    return resolved;
    }
};

module.exports = CartesianGains;
