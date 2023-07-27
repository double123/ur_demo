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

class PlaceLocationResult {
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
    // Serializes a message object of type PlaceLocationResult
    // Serialize message field [result_code]
    bufferOffset = _serializer.int32(obj.result_code, buffer, bufferOffset);
    // Serialize message field [continuation_possible]
    bufferOffset = _serializer.bool(obj.continuation_possible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaceLocationResult
    let len;
    let data = new PlaceLocationResult(null);
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
    return 'manipulation_msgs/PlaceLocationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dd9edc3a2a98cab298ca81031224cda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SUCCESS = 1
    int32 PLACE_OUT_OF_REACH = 2
    int32 PLACE_IN_COLLISION = 3
    int32 PLACE_UNFEASIBLE = 4
    int32 PREPLACE_OUT_OF_REACH = 5
    int32 PREPLACE_IN_COLLISION = 6
    int32 PREPLACE_UNFEASIBLE = 7
    int32 RETREAT_OUT_OF_REACH = 8
    int32 RETREAT_IN_COLLISION = 9
    int32 RETREAT_UNFEASIBLE = 10
    int32 MOVE_ARM_FAILED = 11
    int32 PLACE_FAILED = 12
    int32 RETREAT_FAILED = 13
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
    const resolved = new PlaceLocationResult(null);
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
PlaceLocationResult.Constants = {
  SUCCESS: 1,
  PLACE_OUT_OF_REACH: 2,
  PLACE_IN_COLLISION: 3,
  PLACE_UNFEASIBLE: 4,
  PREPLACE_OUT_OF_REACH: 5,
  PREPLACE_IN_COLLISION: 6,
  PREPLACE_UNFEASIBLE: 7,
  RETREAT_OUT_OF_REACH: 8,
  RETREAT_IN_COLLISION: 9,
  RETREAT_UNFEASIBLE: 10,
  MOVE_ARM_FAILED: 11,
  PLACE_FAILED: 12,
  RETREAT_FAILED: 13,
}

module.exports = PlaceLocationResult;
