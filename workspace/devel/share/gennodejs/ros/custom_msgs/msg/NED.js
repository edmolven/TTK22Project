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

class NED {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.north = null;
      this.east = null;
      this.down = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
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
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NED
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [north]
    bufferOffset = _serializer.float64(obj.north, buffer, bufferOffset);
    // Serialize message field [east]
    bufferOffset = _serializer.float64(obj.east, buffer, bufferOffset);
    // Serialize message field [down]
    bufferOffset = _serializer.float64(obj.down, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NED
    let len;
    let data = new NED(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [north]
    data.north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east]
    data.east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [down]
    data.down = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/NED';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e3ad809ef3fb9cb0a4d745208c0eb90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this is a message to send NED data
    
    Header header
    
    float64 north
    float64 east
    float64 down
    
    
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
    const resolved = new NED(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

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

    if (msg.down !== undefined) {
      resolved.down = msg.down;
    }
    else {
      resolved.down = 0.0
    }

    return resolved;
    }
};

module.exports = NED;
