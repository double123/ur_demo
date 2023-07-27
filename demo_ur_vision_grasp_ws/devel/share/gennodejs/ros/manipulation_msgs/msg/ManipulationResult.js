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

class ManipulationResult {
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
    // Serializes a message object of type ManipulationResult
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulationResult
    let len;
    let data = new ManipulationResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/ManipulationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85f8d010e045fcb335637fc8fc59184b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Result codes for manipulation tasks
    
    # task completed as expected
    # generally means you can proceed as planned
    int32 SUCCESS = 1
    
    # task not possible (e.g. out of reach or obstacles in the way)
    # generally means that the world was not disturbed, so you can try another task
    int32 UNFEASIBLE = -1
    
    # task was thought possible, but failed due to unexpected events during execution
    # it is likely that the world was disturbed, so you are encouraged to refresh
    # your sensed world model before proceeding to another task
    int32 FAILED = -2
    
    # a lower level error prevented task completion (e.g. joint controller not responding)
    # generally requires human attention
    int32 ERROR = -3
    
    # means that at some point during execution we ended up in a state that the collision-aware
    # arm navigation module will not move out of. The world was likely not disturbed, but you 
    # probably need a new collision map to move the arm out of the stuck position
    int32 ARM_MOVEMENT_PREVENTED = -4
    
    # specific to grasp actions
    # the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested
    # it is likely that the collision environment will see collisions between the hand/object and the support surface
    int32 LIFT_FAILED = -5
    
    # specific to place actions
    # the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested
    # it is likely that the collision environment will see collisions between the hand and the object
    int32 RETREAT_FAILED = -6
    
    # indicates that somewhere along the line a human said "wait, stop, this is bad, go back and do something else"
    int32 CANCELLED = -7
    
    # the actual value of this error code
    int32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManipulationResult(null);
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
ManipulationResult.Constants = {
  SUCCESS: 1,
  UNFEASIBLE: -1,
  FAILED: -2,
  ERROR: -3,
  ARM_MOVEMENT_PREVENTED: -4,
  LIFT_FAILED: -5,
  RETREAT_FAILED: -6,
  CANCELLED: -7,
}

module.exports = ManipulationResult;
