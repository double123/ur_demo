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


//-----------------------------------------------------------

class TranslateRecognitionIdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recognition_id = null;
    }
    else {
      if (initObj.hasOwnProperty('recognition_id')) {
        this.recognition_id = initObj.recognition_id
      }
      else {
        this.recognition_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslateRecognitionIdRequest
    // Serialize message field [recognition_id]
    bufferOffset = _serializer.string(obj.recognition_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslateRecognitionIdRequest
    let len;
    let data = new TranslateRecognitionIdRequest(null);
    // Deserialize message field [recognition_id]
    data.recognition_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.recognition_id);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/TranslateRecognitionIdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d95610f63ed69a670a8f8aaa3c6aa36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string recognition_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslateRecognitionIdRequest(null);
    if (msg.recognition_id !== undefined) {
      resolved.recognition_id = msg.recognition_id;
    }
    else {
      resolved.recognition_id = ''
    }

    return resolved;
    }
};

class TranslateRecognitionIdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.household_objects_id = null;
      this.ID_NOT_FOUND = null;
      this.DATABASE_ERROR = null;
      this.OTHER_ERROR = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('household_objects_id')) {
        this.household_objects_id = initObj.household_objects_id
      }
      else {
        this.household_objects_id = 0;
      }
      if (initObj.hasOwnProperty('ID_NOT_FOUND')) {
        this.ID_NOT_FOUND = initObj.ID_NOT_FOUND
      }
      else {
        this.ID_NOT_FOUND = 0;
      }
      if (initObj.hasOwnProperty('DATABASE_ERROR')) {
        this.DATABASE_ERROR = initObj.DATABASE_ERROR
      }
      else {
        this.DATABASE_ERROR = 0;
      }
      if (initObj.hasOwnProperty('OTHER_ERROR')) {
        this.OTHER_ERROR = initObj.OTHER_ERROR
      }
      else {
        this.OTHER_ERROR = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslateRecognitionIdResponse
    // Serialize message field [household_objects_id]
    bufferOffset = _serializer.int32(obj.household_objects_id, buffer, bufferOffset);
    // Serialize message field [ID_NOT_FOUND]
    bufferOffset = _serializer.int32(obj.ID_NOT_FOUND, buffer, bufferOffset);
    // Serialize message field [DATABASE_ERROR]
    bufferOffset = _serializer.int32(obj.DATABASE_ERROR, buffer, bufferOffset);
    // Serialize message field [OTHER_ERROR]
    bufferOffset = _serializer.int32(obj.OTHER_ERROR, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslateRecognitionIdResponse
    let len;
    let data = new TranslateRecognitionIdResponse(null);
    // Deserialize message field [household_objects_id]
    data.household_objects_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ID_NOT_FOUND]
    data.ID_NOT_FOUND = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [DATABASE_ERROR]
    data.DATABASE_ERROR = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [OTHER_ERROR]
    data.OTHER_ERROR = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/TranslateRecognitionIdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4afd505fbee150bf06acaffa82e84cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 household_objects_id
    
    int32 SUCCESS=0
    int32 ID_NOT_FOUND
    int32 DATABASE_ERROR
    int32 OTHER_ERROR
    int32 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslateRecognitionIdResponse(null);
    if (msg.household_objects_id !== undefined) {
      resolved.household_objects_id = msg.household_objects_id;
    }
    else {
      resolved.household_objects_id = 0
    }

    if (msg.ID_NOT_FOUND !== undefined) {
      resolved.ID_NOT_FOUND = msg.ID_NOT_FOUND;
    }
    else {
      resolved.ID_NOT_FOUND = 0
    }

    if (msg.DATABASE_ERROR !== undefined) {
      resolved.DATABASE_ERROR = msg.DATABASE_ERROR;
    }
    else {
      resolved.DATABASE_ERROR = 0
    }

    if (msg.OTHER_ERROR !== undefined) {
      resolved.OTHER_ERROR = msg.OTHER_ERROR;
    }
    else {
      resolved.OTHER_ERROR = 0
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
TranslateRecognitionIdResponse.Constants = {
  SUCCESS: 0,
}

module.exports = {
  Request: TranslateRecognitionIdRequest,
  Response: TranslateRecognitionIdResponse,
  md5sum() { return '4c59c4be3a6f662f70d4287dcaff730f'; },
  datatype() { return 'household_objects_database_msgs/TranslateRecognitionId'; }
};
