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

class GetModelListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_set = null;
    }
    else {
      if (initObj.hasOwnProperty('model_set')) {
        this.model_set = initObj.model_set
      }
      else {
        this.model_set = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelListRequest
    // Serialize message field [model_set]
    bufferOffset = _serializer.string(obj.model_set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelListRequest
    let len;
    let data = new GetModelListRequest(null);
    // Deserialize message field [model_set]
    data.model_set = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_set);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bdf0a866151f41b8876e73800929933';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # retrieves model id's from the database
    
    # optional: the name of a model set that the id's should belong to;
    # used to only retrieve a subset of models, pre-specified in the database
    # leave empty to get all available models
    string model_set
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelListRequest(null);
    if (msg.model_set !== undefined) {
      resolved.model_set = msg.model_set;
    }
    else {
      resolved.model_set = ''
    }

    return resolved;
    }
};

class GetModelListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
      this.model_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = new DatabaseReturnCode();
      }
      if (initObj.hasOwnProperty('model_ids')) {
        this.model_ids = initObj.model_ids
      }
      else {
        this.model_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelListResponse
    // Serialize message field [return_code]
    bufferOffset = DatabaseReturnCode.serialize(obj.return_code, buffer, bufferOffset);
    // Serialize message field [model_ids]
    bufferOffset = _arraySerializer.int32(obj.model_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelListResponse
    let len;
    let data = new GetModelListResponse(null);
    // Deserialize message field [return_code]
    data.return_code = DatabaseReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [model_ids]
    data.model_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.model_ids.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81fac8c5d631e612bd9183a923572d53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # the outcome of the query
    DatabaseReturnCode return_code
    
    # the actual model ids
    int32[] model_ids
    
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
    const resolved = new GetModelListResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = DatabaseReturnCode.Resolve(msg.return_code)
    }
    else {
      resolved.return_code = new DatabaseReturnCode()
    }

    if (msg.model_ids !== undefined) {
      resolved.model_ids = msg.model_ids;
    }
    else {
      resolved.model_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetModelListRequest,
  Response: GetModelListResponse,
  md5sum() { return '5f1f68d0a220da15352f6f1cb9a37fea'; },
  datatype() { return 'household_objects_database_msgs/GetModelList'; }
};
