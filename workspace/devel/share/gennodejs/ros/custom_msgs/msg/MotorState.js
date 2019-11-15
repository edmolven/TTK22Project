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

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_throttle_stop = null;
      this.motor_in_temp_limit = null;
      this.battery_nearly_empty = null;
      this.master_error_code = null;
      this.motor_voltage = null;
      this.motor_current = null;
      this.motor_speed = null;
      this.motor_pcb_temp = null;
      this.motor_stator_temp = null;
      this.battery_voltage = null;
      this.battery_current = null;
      this.temperature_reverse_voltage_protection = null;
    }
    else {
      if (initObj.hasOwnProperty('set_throttle_stop')) {
        this.set_throttle_stop = initObj.set_throttle_stop
      }
      else {
        this.set_throttle_stop = false;
      }
      if (initObj.hasOwnProperty('motor_in_temp_limit')) {
        this.motor_in_temp_limit = initObj.motor_in_temp_limit
      }
      else {
        this.motor_in_temp_limit = false;
      }
      if (initObj.hasOwnProperty('battery_nearly_empty')) {
        this.battery_nearly_empty = initObj.battery_nearly_empty
      }
      else {
        this.battery_nearly_empty = false;
      }
      if (initObj.hasOwnProperty('master_error_code')) {
        this.master_error_code = initObj.master_error_code
      }
      else {
        this.master_error_code = 0.0;
      }
      if (initObj.hasOwnProperty('motor_voltage')) {
        this.motor_voltage = initObj.motor_voltage
      }
      else {
        this.motor_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('motor_current')) {
        this.motor_current = initObj.motor_current
      }
      else {
        this.motor_current = 0.0;
      }
      if (initObj.hasOwnProperty('motor_speed')) {
        this.motor_speed = initObj.motor_speed
      }
      else {
        this.motor_speed = 0.0;
      }
      if (initObj.hasOwnProperty('motor_pcb_temp')) {
        this.motor_pcb_temp = initObj.motor_pcb_temp
      }
      else {
        this.motor_pcb_temp = 0.0;
      }
      if (initObj.hasOwnProperty('motor_stator_temp')) {
        this.motor_stator_temp = initObj.motor_stator_temp
      }
      else {
        this.motor_stator_temp = 0.0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('battery_current')) {
        this.battery_current = initObj.battery_current
      }
      else {
        this.battery_current = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_reverse_voltage_protection')) {
        this.temperature_reverse_voltage_protection = initObj.temperature_reverse_voltage_protection
      }
      else {
        this.temperature_reverse_voltage_protection = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [set_throttle_stop]
    bufferOffset = _serializer.bool(obj.set_throttle_stop, buffer, bufferOffset);
    // Serialize message field [motor_in_temp_limit]
    bufferOffset = _serializer.bool(obj.motor_in_temp_limit, buffer, bufferOffset);
    // Serialize message field [battery_nearly_empty]
    bufferOffset = _serializer.bool(obj.battery_nearly_empty, buffer, bufferOffset);
    // Serialize message field [master_error_code]
    bufferOffset = _serializer.float64(obj.master_error_code, buffer, bufferOffset);
    // Serialize message field [motor_voltage]
    bufferOffset = _serializer.float64(obj.motor_voltage, buffer, bufferOffset);
    // Serialize message field [motor_current]
    bufferOffset = _serializer.float64(obj.motor_current, buffer, bufferOffset);
    // Serialize message field [motor_speed]
    bufferOffset = _serializer.float64(obj.motor_speed, buffer, bufferOffset);
    // Serialize message field [motor_pcb_temp]
    bufferOffset = _serializer.float64(obj.motor_pcb_temp, buffer, bufferOffset);
    // Serialize message field [motor_stator_temp]
    bufferOffset = _serializer.float64(obj.motor_stator_temp, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float64(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [battery_current]
    bufferOffset = _serializer.float64(obj.battery_current, buffer, bufferOffset);
    // Serialize message field [temperature_reverse_voltage_protection]
    bufferOffset = _serializer.float64(obj.temperature_reverse_voltage_protection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [set_throttle_stop]
    data.set_throttle_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_in_temp_limit]
    data.motor_in_temp_limit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_nearly_empty]
    data.battery_nearly_empty = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [master_error_code]
    data.master_error_code = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_voltage]
    data.motor_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_current]
    data.motor_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_speed]
    data.motor_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_pcb_temp]
    data.motor_pcb_temp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_stator_temp]
    data.motor_stator_temp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_current]
    data.battery_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_reverse_voltage_protection]
    data.temperature_reverse_voltage_protection = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 75;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ba26985322fe9ed7cb8984452bc3eb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Custom message for holding the motor state
    # from torqeedo motors
    
    
    bool set_throttle_stop
    bool motor_in_temp_limit
    bool battery_nearly_empty
    float64 master_error_code
    float64 motor_voltage 
    float64 motor_current
    float64 motor_speed
    float64 motor_pcb_temp
    float64 motor_stator_temp
    float64 battery_voltage
    float64 battery_current
    float64 temperature_reverse_voltage_protection
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.set_throttle_stop !== undefined) {
      resolved.set_throttle_stop = msg.set_throttle_stop;
    }
    else {
      resolved.set_throttle_stop = false
    }

    if (msg.motor_in_temp_limit !== undefined) {
      resolved.motor_in_temp_limit = msg.motor_in_temp_limit;
    }
    else {
      resolved.motor_in_temp_limit = false
    }

    if (msg.battery_nearly_empty !== undefined) {
      resolved.battery_nearly_empty = msg.battery_nearly_empty;
    }
    else {
      resolved.battery_nearly_empty = false
    }

    if (msg.master_error_code !== undefined) {
      resolved.master_error_code = msg.master_error_code;
    }
    else {
      resolved.master_error_code = 0.0
    }

    if (msg.motor_voltage !== undefined) {
      resolved.motor_voltage = msg.motor_voltage;
    }
    else {
      resolved.motor_voltage = 0.0
    }

    if (msg.motor_current !== undefined) {
      resolved.motor_current = msg.motor_current;
    }
    else {
      resolved.motor_current = 0.0
    }

    if (msg.motor_speed !== undefined) {
      resolved.motor_speed = msg.motor_speed;
    }
    else {
      resolved.motor_speed = 0.0
    }

    if (msg.motor_pcb_temp !== undefined) {
      resolved.motor_pcb_temp = msg.motor_pcb_temp;
    }
    else {
      resolved.motor_pcb_temp = 0.0
    }

    if (msg.motor_stator_temp !== undefined) {
      resolved.motor_stator_temp = msg.motor_stator_temp;
    }
    else {
      resolved.motor_stator_temp = 0.0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.battery_current !== undefined) {
      resolved.battery_current = msg.battery_current;
    }
    else {
      resolved.battery_current = 0.0
    }

    if (msg.temperature_reverse_voltage_protection !== undefined) {
      resolved.temperature_reverse_voltage_protection = msg.temperature_reverse_voltage_protection;
    }
    else {
      resolved.temperature_reverse_voltage_protection = 0.0
    }

    return resolved;
    }
};

module.exports = MotorState;
