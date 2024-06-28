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

let MultiplyResult = require('../msg/MultiplyResult.js');

//-----------------------------------------------------------

class MultiplyTwoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyTwoRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int32(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyTwoRequest
    let len;
    let data = new MultiplyTwoRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_ros_package/MultiplyTwoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef8322123148e475e3e93a1f609b2f70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 a
    int32 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyTwoRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class MultiplyTwoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new MultiplyResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyTwoResponse
    // Serialize message field [result]
    bufferOffset = MultiplyResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyTwoResponse
    let len;
    let data = new MultiplyTwoResponse(null);
    // Deserialize message field [result]
    data.result = MultiplyResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MultiplyResult.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_ros_package/MultiplyTwoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92d29fa9bb1caea5b9f7ce0294895d32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MultiplyResult result
    
    ================================================================================
    MSG: my_ros_package/MultiplyResult
    int32 product
    string message
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyTwoResponse(null);
    if (msg.result !== undefined) {
      resolved.result = MultiplyResult.Resolve(msg.result)
    }
    else {
      resolved.result = new MultiplyResult()
    }

    return resolved;
    }
};

module.exports = {
  Request: MultiplyTwoRequest,
  Response: MultiplyTwoResponse,
  md5sum() { return '0d13f62a6f4a7a0a6b77fd6ffe004721'; },
  datatype() { return 'my_ros_package/MultiplyTwo'; }
};
