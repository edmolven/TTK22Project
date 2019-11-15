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

class NorthEastHeading {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.north = null;
      this.east = null;
      this.heading = null;
    }
    else {
      if (initObj.hasOwnProperty('north')) {
        this.north = initObj.north
      }
      else {
        this.north = 0.0;
      }
      if (initObj.hasOwnProperty('east')) {
        this.east = initObj.east
      }
      else {
        this.east = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NorthEastHeading
    // Serialize message field [north]
    bufferOffset = _serializer.float64(obj.north, buffer, bufferOffset);
    // Serialize message field [east]
    bufferOffset = _serializer.float64(obj.east, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NorthEastHeading
    let len;
    let data = new NorthEastHeading(null);
    // Deserialize message field [north]
    data.north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east]
    data.east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/NorthEastHeading';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8c4d8d295356fc4c7989ce2c0e1b148';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 north
    float64 east
    float64 heading
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NorthEastHeading(null);
    if (msg.north !== undefined) {
      resolved.north = msg.north;
    }
    else {
      resolved.north = 0.0
    }

    if (msg.east !== undefined) {
      resolved.east = msg.east;
    }
    else {
      resolved.east = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    return resolved;
    }
};

module.exports = NorthEastHeading;
