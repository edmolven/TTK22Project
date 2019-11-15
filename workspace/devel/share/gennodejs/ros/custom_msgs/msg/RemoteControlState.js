// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JoyAxis = require('./JoyAxis.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RemoteControlState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_stick = null;
      this.right_stick = null;
      this.override_switch = null;
      this.safe_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_stick')) {
        this.left_stick = initObj.left_stick
      }
      else {
        this.left_stick = new JoyAxis();
      }
      if (initObj.hasOwnProperty('right_stick')) {
        this.right_stick = initObj.right_stick
      }
      else {
        this.right_stick = new JoyAxis();
      }
      if (initObj.hasOwnProperty('override_switch')) {
        this.override_switch = initObj.override_switch
      }
      else {
        this.override_switch = 0;
      }
      if (initObj.hasOwnProperty('safe_mode')) {
        this.safe_mode = initObj.safe_mode
      }
      else {
        this.safe_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteControlState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_stick]
    bufferOffset = JoyAxis.serialize(obj.left_stick, buffer, bufferOffset);
    // Serialize message field [right_stick]
    bufferOffset = JoyAxis.serialize(obj.right_stick, buffer, bufferOffset);
    // Serialize message field [override_switch]
    bufferOffset = _serializer.uint8(obj.override_switch, buffer, bufferOffset);
    // Serialize message field [safe_mode]
    bufferOffset = _serializer.uint8(obj.safe_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteControlState
    let len;
    let data = new RemoteControlState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_stick]
    data.left_stick = JoyAxis.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_stick]
    data.right_stick = JoyAxis.deserialize(buffer, bufferOffset);
    // Deserialize message field [override_switch]
    data.override_switch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [safe_mode]
    data.safe_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/RemoteControlState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ceda10c7b37590a99e768bcaea5d1257';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Custom message to hold the state of the joystick at a given time
    # Left stick contains the axis values of the left stick, as a JoyAxis custom message
    # Right stick contains the axis values of the right stick, as a JoyAxis custom message
    # override_switch holds the position of the override switch, which can be 0, 1 or 2
    
    Header header
    
    custom_msgs/JoyAxis left_stick
    custom_msgs/JoyAxis right_stick
    uint8 override_switch
    uint8 safe_mode
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
    
    ================================================================================
    MSG: custom_msgs/JoyAxis
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
    const resolved = new RemoteControlState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_stick !== undefined) {
      resolved.left_stick = JoyAxis.Resolve(msg.left_stick)
    }
    else {
      resolved.left_stick = new JoyAxis()
    }

    if (msg.right_stick !== undefined) {
      resolved.right_stick = JoyAxis.Resolve(msg.right_stick)
    }
    else {
      resolved.right_stick = new JoyAxis()
    }

    if (msg.override_switch !== undefined) {
      resolved.override_switch = msg.override_switch;
    }
    else {
      resolved.override_switch = 0
    }

    if (msg.safe_mode !== undefined) {
      resolved.safe_mode = msg.safe_mode;
    }
    else {
      resolved.safe_mode = 0
    }

    return resolved;
    }
};

module.exports = RemoteControlState;
