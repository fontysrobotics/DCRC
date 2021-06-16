// Auto-generated. Do not edit!

// (in-package blackboard.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TaskStateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskId = null;
      this.taskState = null;
    }
    else {
      if (initObj.hasOwnProperty('taskId')) {
        this.taskId = initObj.taskId
      }
      else {
        this.taskId = 0;
      }
      if (initObj.hasOwnProperty('taskState')) {
        this.taskState = initObj.taskState
      }
      else {
        this.taskState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStateMsg
    // Serialize message field [taskId]
    bufferOffset = _serializer.int16(obj.taskId, buffer, bufferOffset);
    // Serialize message field [taskState]
    bufferOffset = _serializer.int16(obj.taskState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStateMsg
    let len;
    let data = new TaskStateMsg(null);
    // Deserialize message field [taskId]
    data.taskId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taskState]
    data.taskState = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'blackboard/TaskStateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5ce57945f778c6d07ba18bc1f23f3bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 taskId
    int16 taskState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStateMsg(null);
    if (msg.taskId !== undefined) {
      resolved.taskId = msg.taskId;
    }
    else {
      resolved.taskId = 0
    }

    if (msg.taskState !== undefined) {
      resolved.taskState = msg.taskState;
    }
    else {
      resolved.taskState = 0
    }

    return resolved;
    }
};

module.exports = TaskStateMsg;
