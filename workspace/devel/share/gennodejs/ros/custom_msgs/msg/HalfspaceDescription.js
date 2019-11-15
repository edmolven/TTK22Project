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

class HalfspaceDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = [];
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HalfspaceDescription
    // Serialize message field [A]
    bufferOffset = _arraySerializer.float64(obj.A, buffer, bufferOffset, null);
    // Serialize message field [b]
    bufferOffset = _arraySerializer.float64(obj.b, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HalfspaceDescription
    let len;
    let data = new HalfspaceDescription(null);
    // Deserialize message field [A]
    data.A = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [b]
    data.b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.A.length;
    length += 8 * object.b.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/HalfspaceDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77bfbd60980c2f9a2cd09f881bcff234';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Describes halfspace s.t. Ax <= b is within the halfspace.
    float64[] A
    float64[] b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HalfspaceDescription(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = []
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = []
    }

    return resolved;
    }
};

module.exports = HalfspaceDescription;
