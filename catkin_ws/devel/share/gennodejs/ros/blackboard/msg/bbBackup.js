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

class bbBackup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bbAdress = null;
      this.buAdress = null;
    }
    else {
      if (initObj.hasOwnProperty('bbAdress')) {
        this.bbAdress = initObj.bbAdress
      }
      else {
        this.bbAdress = '';
      }
      if (initObj.hasOwnProperty('buAdress')) {
        this.buAdress = initObj.buAdress
      }
      else {
        this.buAdress = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bbBackup
    // Serialize message field [bbAdress]
    bufferOffset = _serializer.string(obj.bbAdress, buffer, bufferOffset);
    // Serialize message field [buAdress]
    bufferOffset = _serializer.string(obj.buAdress, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bbBackup
    let len;
    let data = new bbBackup(null);
    // Deserialize message field [bbAdress]
    data.bbAdress = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [buAdress]
    data.buAdress = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.bbAdress.length;
    length += object.buAdress.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'blackboard/bbBackup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e47aaa65c9ecf31332f737b2f3056288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string bbAdress
    string buAdress
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bbBackup(null);
    if (msg.bbAdress !== undefined) {
      resolved.bbAdress = msg.bbAdress;
    }
    else {
      resolved.bbAdress = ''
    }

    if (msg.buAdress !== undefined) {
      resolved.buAdress = msg.buAdress;
    }
    else {
      resolved.buAdress = ''
    }

    return resolved;
    }
};

module.exports = bbBackup;
