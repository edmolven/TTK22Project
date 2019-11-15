// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HalfspaceDescription = require('./HalfspaceDescription.js');

//-----------------------------------------------------------

class DockingMpcParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prediction_horizon = null;
      this.control_intervals = null;
      this.polynomial_degree = null;
      this.theta = null;
      this.initial_time = null;
      this.solution_time = null;
      this.convex_set = null;
      this.initial_state = null;
    }
    else {
      if (initObj.hasOwnProperty('prediction_horizon')) {
        this.prediction_horizon = initObj.prediction_horizon
      }
      else {
        this.prediction_horizon = 0.0;
      }
      if (initObj.hasOwnProperty('control_intervals')) {
        this.control_intervals = initObj.control_intervals
      }
      else {
        this.control_intervals = 0;
      }
      if (initObj.hasOwnProperty('polynomial_degree')) {
        this.polynomial_degree = initObj.polynomial_degree
      }
      else {
        this.polynomial_degree = 0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = [];
      }
      if (initObj.hasOwnProperty('initial_time')) {
        this.initial_time = initObj.initial_time
      }
      else {
        this.initial_time = 0.0;
      }
      if (initObj.hasOwnProperty('solution_time')) {
        this.solution_time = initObj.solution_time
      }
      else {
        this.solution_time = 0.0;
      }
      if (initObj.hasOwnProperty('convex_set')) {
        this.convex_set = initObj.convex_set
      }
      else {
        this.convex_set = new HalfspaceDescription();
      }
      if (initObj.hasOwnProperty('initial_state')) {
        this.initial_state = initObj.initial_state
      }
      else {
        this.initial_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockingMpcParameters
    // Serialize message field [prediction_horizon]
    bufferOffset = _serializer.float64(obj.prediction_horizon, buffer, bufferOffset);
    // Serialize message field [control_intervals]
    bufferOffset = _serializer.uint16(obj.control_intervals, buffer, bufferOffset);
    // Serialize message field [polynomial_degree]
    bufferOffset = _serializer.uint16(obj.polynomial_degree, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _arraySerializer.float64(obj.theta, buffer, bufferOffset, null);
    // Serialize message field [initial_time]
    bufferOffset = _serializer.float64(obj.initial_time, buffer, bufferOffset);
    // Serialize message field [solution_time]
    bufferOffset = _serializer.float64(obj.solution_time, buffer, bufferOffset);
    // Serialize message field [convex_set]
    bufferOffset = HalfspaceDescription.serialize(obj.convex_set, buffer, bufferOffset);
    // Serialize message field [initial_state]
    bufferOffset = _arraySerializer.float64(obj.initial_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockingMpcParameters
    let len;
    let data = new DockingMpcParameters(null);
    // Deserialize message field [prediction_horizon]
    data.prediction_horizon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_intervals]
    data.control_intervals = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [polynomial_degree]
    data.polynomial_degree = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [initial_time]
    data.initial_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [solution_time]
    data.solution_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [convex_set]
    data.convex_set = HalfspaceDescription.deserialize(buffer, bufferOffset);
    // Deserialize message field [initial_state]
    data.initial_state = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.theta.length;
    length += HalfspaceDescription.getMessageSize(object.convex_set);
    length += 8 * object.initial_state.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/DockingMpcParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4ee0113d800b702c767f93572165b2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 prediction_horizon
    uint16 control_intervals
    uint16 polynomial_degree
    float64[] theta
    float64 initial_time
    float64 solution_time
    HalfspaceDescription convex_set
    float64[] initial_state
    
    ================================================================================
    MSG: custom_msgs/HalfspaceDescription
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
    const resolved = new DockingMpcParameters(null);
    if (msg.prediction_horizon !== undefined) {
      resolved.prediction_horizon = msg.prediction_horizon;
    }
    else {
      resolved.prediction_horizon = 0.0
    }

    if (msg.control_intervals !== undefined) {
      resolved.control_intervals = msg.control_intervals;
    }
    else {
      resolved.control_intervals = 0
    }

    if (msg.polynomial_degree !== undefined) {
      resolved.polynomial_degree = msg.polynomial_degree;
    }
    else {
      resolved.polynomial_degree = 0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = []
    }

    if (msg.initial_time !== undefined) {
      resolved.initial_time = msg.initial_time;
    }
    else {
      resolved.initial_time = 0.0
    }

    if (msg.solution_time !== undefined) {
      resolved.solution_time = msg.solution_time;
    }
    else {
      resolved.solution_time = 0.0
    }

    if (msg.convex_set !== undefined) {
      resolved.convex_set = HalfspaceDescription.Resolve(msg.convex_set)
    }
    else {
      resolved.convex_set = new HalfspaceDescription()
    }

    if (msg.initial_state !== undefined) {
      resolved.initial_state = msg.initial_state;
    }
    else {
      resolved.initial_state = []
    }

    return resolved;
    }
};

module.exports = DockingMpcParameters;
