// Auto-generated. Do not edit!

// (in-package my_ros_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddOneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddOneRequest
    // Serialize message field [input]
    bufferOffset = _serializer.int32(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddOneRequest
    let len;
    let data = new AddOneRequest(null);
    // Deserialize message field [input]
    data.input = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_ros_package/AddOneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '350f8291236c5b6fb3b8cfcb1672a02e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddOneRequest(null);
    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = 0
    }

    return resolved;
    }
};

class AddOneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddOneResponse
    // Serialize message field [output]
    bufferOffset = _serializer.int32(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddOneResponse
    let len;
    let data = new AddOneResponse(null);
    // Deserialize message field [output]
    data.output = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_ros_package/AddOneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5fc6b37f5643970fe87c91f31f11e4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 output
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddOneResponse(null);
    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: AddOneRequest,
  Response: AddOneResponse,
  md5sum() { return '21d8f69e8f1621953b39ae17e934f4f0'; },
  datatype() { return 'my_ros_package/AddOne'; }
};
