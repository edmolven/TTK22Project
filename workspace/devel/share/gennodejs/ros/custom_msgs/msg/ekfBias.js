// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ekfBias {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.linear_acceleration_bias = null;
      this.angular_velocity_bias = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('linear_acceleration_bias')) {
        this.linear_acceleration_bias = initObj.linear_acceleration_bias
      }
      else {
        this.linear_acceleration_bias = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity_bias')) {
        this.angular_velocity_bias = initObj.angular_velocity_bias
      }
      else {
        this.angular_velocity_bias = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ekfBias
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_bias]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration_bias, buffer, bufferOffset);
    // Serialize message field [angular_velocity_bias]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity_bias, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ekfBias
    let len;
    let data = new ekfBias(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_bias]
    data.linear_acceleration_bias = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_bias]
    data.angular_velocity_bias = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/ekfBias';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f28d98bc12c1d056a9ceb7daafeccf3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    
    Header header
    
    geometry_msgs/Vector3 linear_acceleration_bias
    geometry_msgs/Vector3 angular_velocity_bias
    
    
    
    
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ekfBias(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.linear_acceleration_bias !== undefined) {
      resolved.linear_acceleration_bias = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration_bias)
    }
    else {
      resolved.linear_acceleration_bias = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity_bias !== undefined) {
      resolved.angular_velocity_bias = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity_bias)
    }
    else {
      resolved.angular_velocity_bias = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = ekfBias;
