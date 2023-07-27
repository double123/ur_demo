// Auto-generated. Do not edit!

// (in-package manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GripperTranslation = require('./GripperTranslation.js');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Grasp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pre_grasp_posture = null;
      this.grasp_posture = null;
      this.grasp_pose = null;
      this.grasp_quality = null;
      this.approach = null;
      this.retreat = null;
      this.max_contact_force = null;
      this.allowed_touch_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('pre_grasp_posture')) {
        this.pre_grasp_posture = initObj.pre_grasp_posture
      }
      else {
        this.pre_grasp_posture = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('grasp_posture')) {
        this.grasp_posture = initObj.grasp_posture
      }
      else {
        this.grasp_posture = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('grasp_pose')) {
        this.grasp_pose = initObj.grasp_pose
      }
      else {
        this.grasp_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('grasp_quality')) {
        this.grasp_quality = initObj.grasp_quality
      }
      else {
        this.grasp_quality = 0.0;
      }
      if (initObj.hasOwnProperty('approach')) {
        this.approach = initObj.approach
      }
      else {
        this.approach = new GripperTranslation();
      }
      if (initObj.hasOwnProperty('retreat')) {
        this.retreat = initObj.retreat
      }
      else {
        this.retreat = new GripperTranslation();
      }
      if (initObj.hasOwnProperty('max_contact_force')) {
        this.max_contact_force = initObj.max_contact_force
      }
      else {
        this.max_contact_force = 0.0;
      }
      if (initObj.hasOwnProperty('allowed_touch_objects')) {
        this.allowed_touch_objects = initObj.allowed_touch_objects
      }
      else {
        this.allowed_touch_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Grasp
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [pre_grasp_posture]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.pre_grasp_posture, buffer, bufferOffset);
    // Serialize message field [grasp_posture]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.grasp_posture, buffer, bufferOffset);
    // Serialize message field [grasp_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.grasp_pose, buffer, bufferOffset);
    // Serialize message field [grasp_quality]
    bufferOffset = _serializer.float64(obj.grasp_quality, buffer, bufferOffset);
    // Serialize message field [approach]
    bufferOffset = GripperTranslation.serialize(obj.approach, buffer, bufferOffset);
    // Serialize message field [retreat]
    bufferOffset = GripperTranslation.serialize(obj.retreat, buffer, bufferOffset);
    // Serialize message field [max_contact_force]
    bufferOffset = _serializer.float32(obj.max_contact_force, buffer, bufferOffset);
    // Serialize message field [allowed_touch_objects]
    bufferOffset = _arraySerializer.string(obj.allowed_touch_objects, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Grasp
    let len;
    let data = new Grasp(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pre_grasp_posture]
    data.pre_grasp_posture = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [grasp_posture]
    data.grasp_posture = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [grasp_pose]
    data.grasp_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [grasp_quality]
    data.grasp_quality = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [approach]
    data.approach = GripperTranslation.deserialize(buffer, bufferOffset);
    // Deserialize message field [retreat]
    data.retreat = GripperTranslation.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_contact_force]
    data.max_contact_force = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [allowed_touch_objects]
    data.allowed_touch_objects = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += sensor_msgs.msg.JointState.getMessageSize(object.pre_grasp_posture);
    length += sensor_msgs.msg.JointState.getMessageSize(object.grasp_posture);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.grasp_pose);
    length += GripperTranslation.getMessageSize(object.approach);
    length += GripperTranslation.getMessageSize(object.retreat);
    object.allowed_touch_objects.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'manipulation_msgs/Grasp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83bd11da422ea1917259ee456c0e315a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A name for this grasp
    string id
    
    # The internal posture of the hand for the pre-grasp
    # only positions are used
    sensor_msgs/JointState pre_grasp_posture
    
    # The internal posture of the hand for the grasp
    # positions and efforts are used
    sensor_msgs/JointState grasp_posture
    
    # The position of the end-effector for the grasp 
    geometry_msgs/PoseStamped grasp_pose
    
    # The estimated probability of success for this grasp, or some other
    # measure of how "good" it is.
    float64 grasp_quality
    
    # The approach motion
    GripperTranslation approach
    
    # The retreat motion
    GripperTranslation retreat
    
    # the maximum contact force to use while grasping (<=0 to disable)
    float32 max_contact_force
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: manipulation_msgs/GripperTranslation
    # defines a translation for the gripper, used in pickup or place tasks
    # for example for lifting an object off a table or approaching the table for placing
    
    # the direction of the translation
    geometry_msgs/Vector3Stamped direction
    
    # the desired translation distance
    float32 desired_distance
    
    # the min distance that must be considered feasible before the
    # grasp is even attempted
    float32 min_distance
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new Grasp(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.pre_grasp_posture !== undefined) {
      resolved.pre_grasp_posture = sensor_msgs.msg.JointState.Resolve(msg.pre_grasp_posture)
    }
    else {
      resolved.pre_grasp_posture = new sensor_msgs.msg.JointState()
    }

    if (msg.grasp_posture !== undefined) {
      resolved.grasp_posture = sensor_msgs.msg.JointState.Resolve(msg.grasp_posture)
    }
    else {
      resolved.grasp_posture = new sensor_msgs.msg.JointState()
    }

    if (msg.grasp_pose !== undefined) {
      resolved.grasp_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.grasp_pose)
    }
    else {
      resolved.grasp_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.grasp_quality !== undefined) {
      resolved.grasp_quality = msg.grasp_quality;
    }
    else {
      resolved.grasp_quality = 0.0
    }

    if (msg.approach !== undefined) {
      resolved.approach = GripperTranslation.Resolve(msg.approach)
    }
    else {
      resolved.approach = new GripperTranslation()
    }

    if (msg.retreat !== undefined) {
      resolved.retreat = GripperTranslation.Resolve(msg.retreat)
    }
    else {
      resolved.retreat = new GripperTranslation()
    }

    if (msg.max_contact_force !== undefined) {
      resolved.max_contact_force = msg.max_contact_force;
    }
    else {
      resolved.max_contact_force = 0.0
    }

    if (msg.allowed_touch_objects !== undefined) {
      resolved.allowed_touch_objects = msg.allowed_touch_objects;
    }
    else {
      resolved.allowed_touch_objects = []
    }

    return resolved;
    }
};

module.exports = Grasp;
