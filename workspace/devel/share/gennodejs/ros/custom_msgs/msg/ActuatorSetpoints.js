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

class ActuatorSetpoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.throttle_reference = null;
      this.angle_reference = null;
    }
    else {
      if (initObj.hasOwnProperty('throttle_reference')) {
        this.throttle_reference = initObj.throttle_reference
      }
      else {
        this.throttle_reference = 0;
      }
      if (initObj.hasOwnProperty('angle_reference')) {
        this.angle_reference = initObj.angle_reference
      }
      else {
        this.angle_reference = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorSetpoints
    // Serialize message field [throttle_reference]
    bufferOffset = _serializer.int16(obj.throttle_reference, buffer, bufferOffset);
    // Serialize message field [angle_reference]
    bufferOffset = _serializer.int16(obj.angle_reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorSetpoints
    let len;
    let data = new ActuatorSetpoints(null);
    // Deserialize message field [throttle_reference]
    data.throttle_reference = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [angle_reference]
    data.angle_reference = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/ActuatorSetpoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d64702992bfea9b6443fa0b9864979b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Custom message for holding the actuator setpoints
    # from thust allocation
    
    int16 throttle_reference
    int16 angle_reference
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorSetpoints(null);
    if (msg.throttle_reference !== undefined) {
      resolved.throttle_reference = msg.throttle_reference;
    }
    else {
      resolved.throttle_reference = 0
    }

    if (msg.angle_reference !== undefined) {
      resolved.angle_reference = msg.angle_reference;
    }
    else {
      resolved.angle_reference = 0
    }

    return resolved;
    }
};

module.exports = ActuatorSetpoints;
