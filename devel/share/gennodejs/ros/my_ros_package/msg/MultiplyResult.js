// Auto-generated. Do not edit!

// (in-package my_ros_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MultiplyResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.product = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('product')) {
        this.product = initObj.product
      }
      else {
        this.product = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyResult
    // Serialize message field [product]
    bufferOffset = _serializer.int32(obj.product, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyResult
    let len;
    let data = new MultiplyResult(null);
    // Deserialize message field [product]
    data.product = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_ros_package/MultiplyResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e359ab8f5ff6b1819dec7096306b3a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 product
    string message
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyResult(null);
    if (msg.product !== undefined) {
      resolved.product = msg.product;
    }
    else {
      resolved.product = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = MultiplyResult;
