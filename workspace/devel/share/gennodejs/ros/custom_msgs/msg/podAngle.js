// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class podAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.port = null;
      this.star = null;
    }
    else {
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0.0;
      }
      if (initObj.hasOwnProperty('star')) {
        this.star = initObj.star
      }
      else {
        this.star = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type podAngle
    // Serialize message field [port]
    bufferOffset = _serializer.float64(obj.port, buffer, bufferOffset);
    // Serialize message field [star]
    bufferOffset = _serializer.float64(obj.star, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type podAngle
    let len;
    let data = new podAngle(null);
    // Deserialize message field [port]
    data.port = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [star]
    data.star = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/podAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '008d1aaf11032e16c8f046f110392eb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 port
    float64 star
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new podAngle(null);
    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0.0
    }

    if (msg.star !== undefined) {
      resolved.star = msg.star;
    }
    else {
      resolved.star = 0.0
    }

    return resolved;
    }
};

module.exports = podAngle;
