// Auto-generated. Do not edit!

// (in-package manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GraspPlanningErrorCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspPlanningErrorCode
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspPlanningErrorCode
    let len;
    let data = new GraspPlanningErrorCode(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/GraspPlanningErrorCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0cbf262cc3d8075a46b994eef1bdb2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error codes for grasp and place planning
    
    # plan completed as expected
    int32 SUCCESS = 0
    
    # tf error encountered while transforming
    int32 TF_ERROR = 1 
    
    # some other error
    int32 OTHER_ERROR = 2
    
    # the actual value of this error code
    int32 value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspPlanningErrorCode(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
GraspPlanningErrorCode.Constants = {
  SUCCESS: 0,
  TF_ERROR: 1,
  OTHER_ERROR: 2,
}

module.exports = GraspPlanningErrorCode;
