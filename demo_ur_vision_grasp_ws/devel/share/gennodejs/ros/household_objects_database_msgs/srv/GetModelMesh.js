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
let shape_msgs = _finder('shape_msgs');

//-----------------------------------------------------------

class GetModelMeshRequest {
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
    // Serializes a message object of type GetModelMeshRequest
    // Serialize message field [model_id]
    bufferOffset = _serializer.int32(obj.model_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelMeshRequest
    let len;
    let data = new GetModelMeshRequest(null);
    // Deserialize message field [model_id]
    data.model_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelMeshRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28cb0598daf3b969068a38cd07aaa9f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # retrieves the mesh for a model id
    
    # the id of the model
    int32 model_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelMeshRequest(null);
    if (msg.model_id !== undefined) {
      resolved.model_id = msg.model_id;
    }
    else {
      resolved.model_id = 0
    }

    return resolved;
    }
};

class GetModelMeshResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.return_code = null;
      this.mesh = null;
    }
    else {
      if (initObj.hasOwnProperty('return_code')) {
        this.return_code = initObj.return_code
      }
      else {
        this.return_code = new DatabaseReturnCode();
      }
      if (initObj.hasOwnProperty('mesh')) {
        this.mesh = initObj.mesh
      }
      else {
        this.mesh = new shape_msgs.msg.Mesh();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetModelMeshResponse
    // Serialize message field [return_code]
    bufferOffset = DatabaseReturnCode.serialize(obj.return_code, buffer, bufferOffset);
    // Serialize message field [mesh]
    bufferOffset = shape_msgs.msg.Mesh.serialize(obj.mesh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetModelMeshResponse
    let len;
    let data = new GetModelMeshResponse(null);
    // Deserialize message field [return_code]
    data.return_code = DatabaseReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [mesh]
    data.mesh = shape_msgs.msg.Mesh.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += shape_msgs.msg.Mesh.getMessageSize(object.mesh);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'household_objects_database_msgs/GetModelMeshResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '350330c487efb062c09ffe1ab80683de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # the outcome of the query
    DatabaseReturnCode return_code
    
    # the returned mesh
    shape_msgs/Mesh mesh
    
    
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseReturnCode
    # return codes for database-related services
    
    int32 UNKNOWN_ERROR = 1
    int32 DATABASE_NOT_CONNECTED = 2
    int32 DATABASE_QUERY_ERROR = 3
    int32 SUCCESS = -1
    
    int32 code
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetModelMeshResponse(null);
    if (msg.return_code !== undefined) {
      resolved.return_code = DatabaseReturnCode.Resolve(msg.return_code)
    }
    else {
      resolved.return_code = new DatabaseReturnCode()
    }

    if (msg.mesh !== undefined) {
      resolved.mesh = shape_msgs.msg.Mesh.Resolve(msg.mesh)
    }
    else {
      resolved.mesh = new shape_msgs.msg.Mesh()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetModelMeshRequest,
  Response: GetModelMeshResponse,
  md5sum() { return '10df3e44a7964084746f40f0e606b2ab'; },
  datatype() { return 'household_objects_database_msgs/GetModelMesh'; }
};
