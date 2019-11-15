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

class gnssPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sat_time = null;
      this.latitude = null;
      this.lat_direction = null;
      this.longitude = null;
      this.lon_direction = null;
      this.heading = null;
      this.heading_true = null;
      this.speed_kmph = null;
      this.mode_indicator = null;
      this.nav_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sat_time')) {
        this.sat_time = initObj.sat_time
      }
      else {
        this.sat_time = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('lat_direction')) {
        this.lat_direction = initObj.lat_direction
      }
      else {
        this.lat_direction = '';
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('lon_direction')) {
        this.lon_direction = initObj.lon_direction
      }
      else {
        this.lon_direction = '';
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('heading_true')) {
        this.heading_true = initObj.heading_true
      }
      else {
        this.heading_true = '';
      }
      if (initObj.hasOwnProperty('speed_kmph')) {
        this.speed_kmph = initObj.speed_kmph
      }
      else {
        this.speed_kmph = 0.0;
      }
      if (initObj.hasOwnProperty('mode_indicator')) {
        this.mode_indicator = initObj.mode_indicator
      }
      else {
        this.mode_indicator = '';
      }
      if (initObj.hasOwnProperty('nav_status')) {
        this.nav_status = initObj.nav_status
      }
      else {
        this.nav_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gnssPose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sat_time]
    bufferOffset = _serializer.string(obj.sat_time, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [lat_direction]
    bufferOffset = _serializer.string(obj.lat_direction, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [lon_direction]
    bufferOffset = _serializer.string(obj.lon_direction, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [heading_true]
    bufferOffset = _serializer.string(obj.heading_true, buffer, bufferOffset);
    // Serialize message field [speed_kmph]
    bufferOffset = _serializer.float64(obj.speed_kmph, buffer, bufferOffset);
    // Serialize message field [mode_indicator]
    bufferOffset = _serializer.string(obj.mode_indicator, buffer, bufferOffset);
    // Serialize message field [nav_status]
    bufferOffset = _serializer.string(obj.nav_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gnssPose
    let len;
    let data = new gnssPose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sat_time]
    data.sat_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_direction]
    data.lat_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_direction]
    data.lon_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_true]
    data.heading_true = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_kmph]
    data.speed_kmph = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mode_indicator]
    data.mode_indicator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nav_status]
    data.nav_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.sat_time.length;
    length += object.lat_direction.length;
    length += object.lon_direction.length;
    length += object.heading_true.length;
    length += object.mode_indicator.length;
    length += object.nav_status.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/gnssPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '801b92985560b82617eabd3df27449e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Something something
    #something something
    
    Header header
    
    string sat_time
    float64 latitude
    string lat_direction
    float64 longitude
    string lon_direction
    
    float64 heading
    string heading_true
    
    float64 speed_kmph
    
    string mode_indicator
    string nav_status
    
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
    const resolved = new gnssPose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sat_time !== undefined) {
      resolved.sat_time = msg.sat_time;
    }
    else {
      resolved.sat_time = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.lat_direction !== undefined) {
      resolved.lat_direction = msg.lat_direction;
    }
    else {
      resolved.lat_direction = ''
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.lon_direction !== undefined) {
      resolved.lon_direction = msg.lon_direction;
    }
    else {
      resolved.lon_direction = ''
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.heading_true !== undefined) {
      resolved.heading_true = msg.heading_true;
    }
    else {
      resolved.heading_true = ''
    }

    if (msg.speed_kmph !== undefined) {
      resolved.speed_kmph = msg.speed_kmph;
    }
    else {
      resolved.speed_kmph = 0.0
    }

    if (msg.mode_indicator !== undefined) {
      resolved.mode_indicator = msg.mode_indicator;
    }
    else {
      resolved.mode_indicator = ''
    }

    if (msg.nav_status !== undefined) {
      resolved.nav_status = msg.nav_status;
    }
    else {
      resolved.nav_status = ''
    }

    return resolved;
    }
};

module.exports = gnssPose;
