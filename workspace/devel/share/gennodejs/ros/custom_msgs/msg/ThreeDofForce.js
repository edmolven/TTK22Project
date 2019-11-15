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

class ThreeDofForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.X = null;
      this.Y = null;
      this.N = null;
    }
    else {
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = 0.0;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = 0.0;
      }
      if (initObj.hasOwnProperty('N')) {
        this.N = initObj.N
      }
      else {
        this.N = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThreeDofForce
    // Serialize message field [X]
    bufferOffset = _serializer.float64(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.float64(obj.Y, buffer, bufferOffset);
    // Serialize message field [N]
    bufferOffset = _serializer.float64(obj.N, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThreeDofForce
    let len;
    let data = new ThreeDofForce(null);
    // Deserialize message field [X]
    data.X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [N]
    data.N = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/ThreeDofForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d59525997a21f5b026ea2746ebcfb38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 X
    float64 Y
    float64 N
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThreeDofForce(null);
    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = 0.0
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = 0.0
    }

    if (msg.N !== undefined) {
      resolved.N = msg.N;
    }
    else {
      resolved.N = 0.0
    }

    return resolved;
    }
};

module.exports = ThreeDofForce;
