// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class gnssRMC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.speed_mps = null;
      this.course = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('course')) {
        this.course = initObj.course
      }
      else {
        this.course = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gnssRMC
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [course]
    bufferOffset = _serializer.float64(obj.course, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gnssRMC
    let len;
    let data = new gnssRMC(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [course]
    data.course = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/gnssRMC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd77cc88e76909ff5bdee08258a0a92d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Something something
    
    Header header
    
    float64 speed_mps
    float64 course
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gnssRMC(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.course !== undefined) {
      resolved.course = msg.course;
    }
    else {
      resolved.course = 0.0
    }

    return resolved;
    }
};

module.exports = gnssRMC;
