// Auto-generated. Do not edit!

// (in-package household_objects_database_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DatabaseModelPose = require('./DatabaseModelPose.js');

//-----------------------------------------------------------

class DatabaseModelPoseList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_list = null;
    }
    else {
      if (initObj.hasOwnProperty('model_list')) {
        this.model_list = initObj.model_list
      }
      else {
        this.model_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DatabaseModelPoseList
    // Serialize message field [model_list]
    // Serialize the length for message field [model_list]
    bufferOffset = _serializer.uint32(obj.model_list.length, buffer, bufferOffset);
    obj.model_list.forEach((val) => {
      bufferOffset = DatabaseModelPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DatabaseModelPoseList
    let len;
    let data = new DatabaseModelPoseList(null);
    // Deserialize message field [model_list]
    // Deserialize array length for message field [model_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.model_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.model_list[i] = DatabaseModelPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.model_list.forEach((val) => {
      length += DatabaseModelPose.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'household_objects_database_msgs/DatabaseModelPoseList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0bb2aa8d2ededee0ffe0f5d2107e099';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # stores a list of possible database models recognition results
    DatabaseModelPose[] model_list
    ================================================================================
    MSG: household_objects_database_msgs/DatabaseModelPose
    # Informs that a specific model from the Model Database has been 
    # identified at a certain location
    
    # the database id of the model
    int32 model_id
    
    # if the object was recognized by the ORK pipeline, its type will be in here
    # if this is not empty, then the string in here will be converted to a household_objects_database id
    # leave this empty if providing an id in the model_id field
    object_recognition_msgs/ObjectType type
    
    # the pose that it can be found in
    geometry_msgs/PoseStamped pose
    
    # a measure of the confidence level in this detection result
    float32 confidence
    
    # the name of the object detector that generated this detection result
    string detector_name
    
    ================================================================================
    MSG: object_recognition_msgs/ObjectType
    ################################################## OBJECT ID #########################################################
    
    # Contains information about the type of a found object. Those two sets of parameters together uniquely define an
    # object
    
    # The key of the found object: the unique identifier in the given db
    string key
    
    # The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
    # There is no conventional format for those parameters and it's nice to keep that flexibility.
    # The object_recognition_core as a generic DB type that can read those fields
    # Current examples:
    # For CouchDB:
    #   type: 'CouchDB'
    #   root: 'http://localhost:5984'
    #   collection: 'object_recognition'
    # For SQL household database:
    #   type: 'SqlHousehold'
    #   host: 'wgs36'
    #   port: 5432
    #   user: 'willow'
    #   password: 'willow'
    #   name: 'household_objects'
    #   module: 'tabletop'
    string db
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DatabaseModelPoseList(null);
    if (msg.model_list !== undefined) {
      resolved.model_list = new Array(msg.model_list.length);
      for (let i = 0; i < resolved.model_list.length; ++i) {
        resolved.model_list[i] = DatabaseModelPose.Resolve(msg.model_list[i]);
      }
    }
    else {
      resolved.model_list = []
    }

    return resolved;
    }
};

module.exports = DatabaseModelPoseList;
