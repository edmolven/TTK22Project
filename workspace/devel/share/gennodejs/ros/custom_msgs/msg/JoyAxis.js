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

class JoyAxis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_axis = null;
      this.y_axis = null;
    }
    else {
      if (initObj.hasOwnProperty('x_axis')) {
        this.x_axis = initObj.x_axis
      }
      else {
        this.x_axis = 0;
      }
      if (initObj.hasOwnProperty('y_axis')) {
        this.y_axis = initObj.y_axis
      }
      else {
        this.y_axis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoyAxis
    // Serialize message field [x_axis]
    bufferOffset = _serializer.int16(obj.x_axis, buffer, bufferOffset);
    // Serialize message field [y_axis]
    bufferOffset = _serializer.int16(obj.y_axis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoyAxis
    let len;
    let data = new JoyAxis(null);
    // Deserialize message field [x_axis]
    data.x_axis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y_axis]
    data.y_axis = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/JoyAxis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8729562965cf2371e2fd83295ee15ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Custom message to hold the value of the axes of a joystick
    
    int16 x_axis
    int16 y_axis
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoyAxis(null);
    if (msg.x_axis !== undefined) {
      resolved.x_axis = msg.x_axis;
    }
    else {
      resolved.x_axis = 0
    }

    if (msg.y_axis !== undefined) {
      resolved.y_axis = msg.y_axis;
    }
    else {
      resolved.y_axis = 0
    }

    return resolved;
    }
};

module.exports = JoyAxis;
