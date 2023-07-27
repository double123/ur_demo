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

class ManipulationPhase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.phase = null;
    }
    else {
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManipulationPhase
    // Serialize message field [phase]
    bufferOffset = _serializer.int32(obj.phase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulationPhase
    let len;
    let data = new ManipulationPhase(null);
    // Deserialize message field [phase]
    data.phase = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/ManipulationPhase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c824c847a35d8fd9277d324a3723378';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 CHECKING_FEASIBILITY = 0
    int32 MOVING_TO_PREGRASP = 1
    int32 MOVING_TO_GRASP = 2
    int32 CLOSING = 3 
    int32 ADJUSTING_GRASP = 4
    int32 LIFTING = 5
    int32 MOVING_WITH_OBJECT = 6
    int32 MOVING_TO_PLACE = 7
    int32 PLACING = 8
    int32 OPENING = 9
    int32 RETREATING = 10
    int32 MOVING_WITHOUT_OBJECT = 11
    int32 SHAKING = 12
    int32 SUCCEEDED = 13
    int32 FAILED = 14
    int32 ABORTED = 15
    int32 HOLDING_OBJECT = 16
    
    int32 phase
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManipulationPhase(null);
    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0
    }

    return resolved;
    }
};

// Constants for message
ManipulationPhase.Constants = {
  CHECKING_FEASIBILITY: 0,
  MOVING_TO_PREGRASP: 1,
  MOVING_TO_GRASP: 2,
  CLOSING: 3,
  ADJUSTING_GRASP: 4,
  LIFTING: 5,
  MOVING_WITH_OBJECT: 6,
  MOVING_TO_PLACE: 7,
  PLACING: 8,
  OPENING: 9,
  RETREATING: 10,
  MOVING_WITHOUT_OBJECT: 11,
  SHAKING: 12,
  SUCCEEDED: 13,
  FAILED: 14,
  ABORTED: 15,
  HOLDING_OBJECT: 16,
}

module.exports = ManipulationPhase;
