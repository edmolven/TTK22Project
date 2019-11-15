// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let orientationEuler = require('./orientationEuler.js');
let XsensQuaternion = require('./XsensQuaternion.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImuSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.orientation = null;
      this.dq = null;
      this.dv = null;
      this.angular_velocity = null;
      this.linear_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new orientationEuler();
      }
      if (initObj.hasOwnProperty('dq')) {
        this.dq = initObj.dq
      }
      else {
        this.dq = new XsensQuaternion();
      }
      if (initObj.hasOwnProperty('dv')) {
        this.dv = initObj.dv
      }
      else {
        this.dv = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = orientationEuler.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [dq]
    bufferOffset = XsensQuaternion.serialize(obj.dq, buffer, bufferOffset);
    // Serialize message field [dv]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dv, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuSensor
    let len;
    let data = new ImuSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = orientationEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [dq]
    data.dq = XsensQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [dv]
    data.dv = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/ImuSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '479b13feb5a2ffdeb7421897e51b76c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    
    Header header
    
    orientationEuler orientation
    
    XsensQuaternion dq
    
    geometry_msgs/Vector3 dv
    
    
    
    geometry_msgs/Vector3 angular_velocity
    geometry_msgs/Vector3 linear_acceleration
    
    
    
    
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
    MSG: custom_msgs/orientationEuler
    # This is a message to hold orientation data. No header
    
    float64 roll
    float64 pitch
    float64 yaw
    
    
    ================================================================================
    MSG: custom_msgs/XsensQuaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 w
    float64 x
    float64 y
    float64 z
    
    
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
    const resolved = new ImuSensor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = orientationEuler.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new orientationEuler()
    }

    if (msg.dq !== undefined) {
      resolved.dq = XsensQuaternion.Resolve(msg.dq)
    }
    else {
      resolved.dq = new XsensQuaternion()
    }

    if (msg.dv !== undefined) {
      resolved.dv = geometry_msgs.msg.Vector3.Resolve(msg.dv)
    }
    else {
      resolved.dv = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = ImuSensor;
