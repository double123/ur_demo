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

//-----------------------------------------------------------

class GetModelDescriptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_id = null;
    }
    else {
      if (initObj.hasOwnProperty('model_id')) {
        this.model_id = initObj.model_id
      }
      else {
        this.model_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelDescriptionRequest
    // Serialize message field [model_id]
    bufferOffset = _serializer.int32(obj.model_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelDescriptionRequest
    let len;
    let data = new GetModelDescriptionRequest(null);
    // Deserialize message field [model_id]
    data.model_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelDescriptionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28cb0598daf3b969068a38cd07aaa9f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # retreieves various metadata for an model id
    
    # the id of the model
    int32 model_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelDescriptionRequest(null);
    if (msg.model_id !== undefined) {
      resolved.model_id = msg.model_id;
    }
    else {
      resolved.model_id = 0
    }

    return resolved;
    }
};

class GetModelDescriptionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
      this.tags = null;
      this.name = null;
      this.maker = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = new DatabaseReturnCode();
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('maker')) {
        this.maker = initObj.maker
      }
      else {
        this.maker = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelDescriptionResponse
    // Serialize message field [return_code]
    bufferOffset = DatabaseReturnCode.serialize(obj.return_code, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [maker]
    bufferOffset = _serializer.string(obj.maker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelDescriptionResponse
    let len;
    let data = new GetModelDescriptionResponse(null);
    // Deserialize message field [return_code]
    data.return_code = DatabaseReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maker]
    data.maker = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.name);
    length += _getByteLength(object.maker);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelDescriptionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6c55e34b143695104d37ad9b33c72c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # the outcome of the query
    DatabaseReturnCode return_code
    
    # the tags of the model
    string[] tags
    
    # the name of the model
    string name
    
    # the maker of the model
    string maker
    
    
    
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseReturnCode
    # return codes for database-related services
    
    int32 UNKNOWN_ERROR = 1
    int32 DATABASE_NOT_CONNECTED = 2
    int32 DATABASE_QUERY_ERROR = 3
    int32 SUCCESS = -1
    
    int32 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelDescriptionResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = DatabaseReturnCode.Resolve(msg.return_code)
    }
    else {
      resolved.return_code = new DatabaseReturnCode()
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.maker !== undefined) {
      resolved.maker = msg.maker;
    }
    else {
      resolved.maker = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetModelDescriptionRequest,
  Response: GetModelDescriptionResponse,
  md5sum() { return '1fee77e674730723af04cd39a4e3e0b1'; },
  datatype() { return 'household_objects_database_msgs/GetModelDescription'; }
};
