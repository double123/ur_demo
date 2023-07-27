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

class GraspResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result_code = null;
      this.continuation_possible = null;
    }
    else {
      if (initObj.hasOwnProperty('result_code')) {
        this.result_code = initObj.result_code
      }
      else {
        this.result_code = 0;
      }
      if (initObj.hasOwnProperty('continuation_possible')) {
        this.continuation_possible = initObj.continuation_possible
      }
      else {
        this.continuation_possible = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspResult
    // Serialize message field [result_code]
    bufferOffset = _serializer.int32(obj.result_code, buffer, bufferOffset);
    // Serialize message field [continuation_possible]
    bufferOffset = _serializer.bool(obj.continuation_possible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspResult
    let len;
    let data = new GraspResult(null);
    // Deserialize message field [result_code]
    data.result_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [continuation_possible]
    data.continuation_possible = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/GraspResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8a909da895cdddc0630aafd59848191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SUCCESS = 1
    int32 GRASP_OUT_OF_REACH = 2
    int32 GRASP_IN_COLLISION = 3
    int32 GRASP_UNFEASIBLE = 4
    int32 PREGRASP_OUT_OF_REACH = 5
    int32 PREGRASP_IN_COLLISION = 6
    int32 PREGRASP_UNFEASIBLE = 7
    int32 LIFT_OUT_OF_REACH = 8
    int32 LIFT_IN_COLLISION = 9
    int32 LIFT_UNFEASIBLE = 10
    int32 MOVE_ARM_FAILED = 11
    int32 GRASP_FAILED = 12
    int32 LIFT_FAILED = 13
    int32 RETREAT_FAILED = 14
    int32 result_code
    
    # whether the state of the world was disturbed by this attempt. generally, this flag
    # shows if another task can be attempted, or a new sensed world model is recommeded
    # before proceeding
    bool continuation_possible
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspResult(null);
    if (msg.result_code !== undefined) {
      resolved.result_code = msg.result_code;
    }
    else {
      resolved.result_code = 0
    }

    if (msg.continuation_possible !== undefined) {
      resolved.continuation_possible = msg.continuation_possible;
    }
    else {
      resolved.continuation_possible = false
    }

    return resolved;
    }
};

// Constants for message
GraspResult.Constants = {
  SUCCESS: 1,
  GRASP_OUT_OF_REACH: 2,
  GRASP_IN_COLLISION: 3,
  GRASP_UNFEASIBLE: 4,
  PREGRASP_OUT_OF_REACH: 5,
  PREGRASP_IN_COLLISION: 6,
  PREGRASP_UNFEASIBLE: 7,
  LIFT_OUT_OF_REACH: 8,
  LIFT_IN_COLLISION: 9,
  LIFT_UNFEASIBLE: 10,
  MOVE_ARM_FAILED: 11,
  GRASP_FAILED: 12,
  LIFT_FAILED: 13,
  RETREAT_FAILED: 14,
}

module.exports = GraspResult;
