// Auto-generated. Do not edit!

// (in-package robotiq_85_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GripperCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.emergency_release = null;
      this.emergency_release_dir = null;
      this.stop = null;
      this.position = null;
      this.speed = null;
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('emergency_release')) {
        this.emergency_release = initObj.emergency_release
      }
      else {
        this.emergency_release = false;
      }
      if (initObj.hasOwnProperty('emergency_release_dir')) {
        this.emergency_release_dir = initObj.emergency_release_dir
      }
      else {
        this.emergency_release_dir = 0;
      }
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperCmd
    // Serialize message field [emergency_release]
    bufferOffset = _serializer.bool(obj.emergency_release, buffer, bufferOffset);
    // Serialize message field [emergency_release_dir]
    bufferOffset = _serializer.uint32(obj.emergency_release_dir, buffer, bufferOffset);
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.float32(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperCmd
    let len;
    let data = new GripperCmd(null);
    // Deserialize message field [emergency_release]
    data.emergency_release = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_release_dir]
    data.emergency_release_dir = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotiq_85_msgs/GripperCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '017fc0d464f4a4d072ae2519e0fc1789';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool emergency_release
    uint32 emergency_release_dir
    bool stop
    float32 position
    float32 speed
    float32 force
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperCmd(null);
    if (msg.emergency_release !== undefined) {
      resolved.emergency_release = msg.emergency_release;
    }
    else {
      resolved.emergency_release = false
    }

    if (msg.emergency_release_dir !== undefined) {
      resolved.emergency_release_dir = msg.emergency_release_dir;
    }
    else {
      resolved.emergency_release_dir = 0
    }

    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0.0
    }

    return resolved;
    }
};

module.exports = GripperCmd;
