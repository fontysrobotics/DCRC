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

class TaskCost {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskId = null;
      this.taskCost = null;
      this.robotId = null;
      this.energyCost = null;
    }
    else {
      if (initObj.hasOwnProperty('taskId')) {
        this.taskId = initObj.taskId
      }
      else {
        this.taskId = 0;
      }
      if (initObj.hasOwnProperty('taskCost')) {
        this.taskCost = initObj.taskCost
      }
      else {
        this.taskCost = 0.0;
      }
      if (initObj.hasOwnProperty('robotId')) {
        this.robotId = initObj.robotId
      }
      else {
        this.robotId = 0;
      }
      if (initObj.hasOwnProperty('energyCost')) {
        this.energyCost = initObj.energyCost
      }
      else {
        this.energyCost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskCost
    // Serialize message field [taskId]
    bufferOffset = _serializer.int16(obj.taskId, buffer, bufferOffset);
    // Serialize message field [taskCost]
    bufferOffset = _serializer.float32(obj.taskCost, buffer, bufferOffset);
    // Serialize message field [robotId]
    bufferOffset = _serializer.int16(obj.robotId, buffer, bufferOffset);
    // Serialize message field [energyCost]
    bufferOffset = _serializer.float32(obj.energyCost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskCost
    let len;
    let data = new TaskCost(null);
    // Deserialize message field [taskId]
    data.taskId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taskCost]
    data.taskCost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robotId]
    data.robotId = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [energyCost]
    data.energyCost = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'blackboard/TaskCost';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f44cd155759633dbc2acfa15e81bd1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 taskId
    float32 taskCost
    int16 robotId
    float32 energyCost
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskCost(null);
    if (msg.taskId !== undefined) {
      resolved.taskId = msg.taskId;
    }
    else {
      resolved.taskId = 0
    }

    if (msg.taskCost !== undefined) {
      resolved.taskCost = msg.taskCost;
    }
    else {
      resolved.taskCost = 0.0
    }

    if (msg.robotId !== undefined) {
      resolved.robotId = msg.robotId;
    }
    else {
      resolved.robotId = 0
    }

    if (msg.energyCost !== undefined) {
      resolved.energyCost = msg.energyCost;
    }
    else {
      resolved.energyCost = 0.0
    }

    return resolved;
    }
};

module.exports = TaskCost;
