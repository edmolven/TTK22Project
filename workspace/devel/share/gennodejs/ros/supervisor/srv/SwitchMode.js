// Auto-generated. Do not edit!

// (in-package supervisor.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SwitchModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchModeRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchModeRequest
    let len;
    let data = new SwitchModeRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'supervisor/SwitchModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e84dc3ad5dc323bb64f0aca01c2d1eef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchModeRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    return resolved;
    }
};

class SwitchModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.approved = null;
    }
    else {
      if (initObj.hasOwnProperty('approved')) {
        this.approved = initObj.approved
      }
      else {
        this.approved = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchModeResponse
    // Serialize message field [approved]
    bufferOffset = _serializer.bool(obj.approved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchModeResponse
    let len;
    let data = new SwitchModeResponse(null);
    // Deserialize message field [approved]
    data.approved = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'supervisor/SwitchModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b38b25448cac98c0eed18d232c86d6fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool approved
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchModeResponse(null);
    if (msg.approved !== undefined) {
      resolved.approved = msg.approved;
    }
    else {
      resolved.approved = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchModeRequest,
  Response: SwitchModeResponse,
  md5sum() { return 'a418eba3be203821f092a22ffded4941'; },
  datatype() { return 'supervisor/SwitchMode'; }
};
