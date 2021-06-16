// Auto-generated. Do not edit!

// (in-package blackboard.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TaskMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskId = null;
      this.priority = null;
      this.taskType = null;
      this.payload = null;
      this.taskState = null;
      this.cost = null;
      this.energyCost = null;
      this.robotId = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('taskId')) {
        this.taskId = initObj.taskId
      }
      else {
        this.taskId = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('taskType')) {
        this.taskType = initObj.taskType
      }
      else {
        this.taskType = 0;
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = 0;
      }
      if (initObj.hasOwnProperty('taskState')) {
        this.taskState = initObj.taskState
      }
      else {
        this.taskState = 0;
      }
      if (initObj.hasOwnProperty('cost')) {
        this.cost = initObj.cost
      }
      else {
        this.cost = 0.0;
      }
      if (initObj.hasOwnProperty('energyCost')) {
        this.energyCost = initObj.energyCost
      }
      else {
        this.energyCost = 0.0;
      }
      if (initObj.hasOwnProperty('robotId')) {
        this.robotId = initObj.robotId
      }
      else {
        this.robotId = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskMsg
    // Serialize message field [taskId]
    bufferOffset = _serializer.int16(obj.taskId, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int16(obj.priority, buffer, bufferOffset);
    // Serialize message field [taskType]
    bufferOffset = _serializer.int16(obj.taskType, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _serializer.int16(obj.payload, buffer, bufferOffset);
    // Serialize message field [taskState]
    bufferOffset = _serializer.int16(obj.taskState, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.float32(obj.cost, buffer, bufferOffset);
    // Serialize message field [energyCost]
    bufferOffset = _serializer.float32(obj.energyCost, buffer, bufferOffset);
    // Serialize message field [robotId]
    bufferOffset = _serializer.int16(obj.robotId, buffer, bufferOffset);
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskMsg
    let len;
    let data = new TaskMsg(null);
    // Deserialize message field [taskId]
    data.taskId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taskType]
    data.taskType = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taskState]
    data.taskState = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [energyCost]
    data.energyCost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robotId]
    data.robotId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.pose.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'blackboard/TaskMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36aacfc4fa43201ce4e714ef4c2d80ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 taskId
    int16 priority
    int16 taskType
    int16 payload
    int16 taskState
    float32 cost
    float32 energyCost
    int16 robotId
    geometry_msgs/Pose[] pose
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
    const resolved = new TaskMsg(null);
    if (msg.taskId !== undefined) {
      resolved.taskId = msg.taskId;
    }
    else {
      resolved.taskId = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.taskType !== undefined) {
      resolved.taskType = msg.taskType;
    }
    else {
      resolved.taskType = 0
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = 0
    }

    if (msg.taskState !== undefined) {
      resolved.taskState = msg.taskState;
    }
    else {
      resolved.taskState = 0
    }

    if (msg.cost !== undefined) {
      resolved.cost = msg.cost;
    }
    else {
      resolved.cost = 0.0
    }

    if (msg.energyCost !== undefined) {
      resolved.energyCost = msg.energyCost;
    }
    else {
      resolved.energyCost = 0.0
    }

    if (msg.robotId !== undefined) {
      resolved.robotId = msg.robotId;
    }
    else {
      resolved.robotId = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Pose.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
    }

    return resolved;
    }
};

module.exports = TaskMsg;
