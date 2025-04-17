// Auto-generated. Do not edit!

// (in-package turn_on_wheeltec_robot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class supersonic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.distanceA = null;
      this.distanceB = null;
      this.distanceC = null;
      this.distanceD = null;
      this.distanceE = null;
      this.distanceF = null;
      this.distanceG = null;
      this.distanceH = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('distanceA')) {
        this.distanceA = initObj.distanceA
      }
      else {
        this.distanceA = 0.0;
      }
      if (initObj.hasOwnProperty('distanceB')) {
        this.distanceB = initObj.distanceB
      }
      else {
        this.distanceB = 0.0;
      }
      if (initObj.hasOwnProperty('distanceC')) {
        this.distanceC = initObj.distanceC
      }
      else {
        this.distanceC = 0.0;
      }
      if (initObj.hasOwnProperty('distanceD')) {
        this.distanceD = initObj.distanceD
      }
      else {
        this.distanceD = 0.0;
      }
      if (initObj.hasOwnProperty('distanceE')) {
        this.distanceE = initObj.distanceE
      }
      else {
        this.distanceE = 0.0;
      }
      if (initObj.hasOwnProperty('distanceF')) {
        this.distanceF = initObj.distanceF
      }
      else {
        this.distanceF = 0.0;
      }
      if (initObj.hasOwnProperty('distanceG')) {
        this.distanceG = initObj.distanceG
      }
      else {
        this.distanceG = 0.0;
      }
      if (initObj.hasOwnProperty('distanceH')) {
        this.distanceH = initObj.distanceH
      }
      else {
        this.distanceH = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type supersonic
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [distanceA]
    bufferOffset = _serializer.float32(obj.distanceA, buffer, bufferOffset);
    // Serialize message field [distanceB]
    bufferOffset = _serializer.float32(obj.distanceB, buffer, bufferOffset);
    // Serialize message field [distanceC]
    bufferOffset = _serializer.float32(obj.distanceC, buffer, bufferOffset);
    // Serialize message field [distanceD]
    bufferOffset = _serializer.float32(obj.distanceD, buffer, bufferOffset);
    // Serialize message field [distanceE]
    bufferOffset = _serializer.float32(obj.distanceE, buffer, bufferOffset);
    // Serialize message field [distanceF]
    bufferOffset = _serializer.float32(obj.distanceF, buffer, bufferOffset);
    // Serialize message field [distanceG]
    bufferOffset = _serializer.float32(obj.distanceG, buffer, bufferOffset);
    // Serialize message field [distanceH]
    bufferOffset = _serializer.float32(obj.distanceH, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type supersonic
    let len;
    let data = new supersonic(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [distanceA]
    data.distanceA = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceB]
    data.distanceB = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceC]
    data.distanceC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceD]
    data.distanceD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceE]
    data.distanceE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceF]
    data.distanceF = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceG]
    data.distanceG = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceH]
    data.distanceH = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turn_on_wheeltec_robot/supersonic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aca1ed3052718b36dedbbae37ec7b6eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 distanceA
    float32 distanceB
    float32 distanceC
    float32 distanceD
    float32 distanceE
    float32 distanceF
    float32 distanceG
    float32 distanceH
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
    const resolved = new supersonic(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.distanceA !== undefined) {
      resolved.distanceA = msg.distanceA;
    }
    else {
      resolved.distanceA = 0.0
    }

    if (msg.distanceB !== undefined) {
      resolved.distanceB = msg.distanceB;
    }
    else {
      resolved.distanceB = 0.0
    }

    if (msg.distanceC !== undefined) {
      resolved.distanceC = msg.distanceC;
    }
    else {
      resolved.distanceC = 0.0
    }

    if (msg.distanceD !== undefined) {
      resolved.distanceD = msg.distanceD;
    }
    else {
      resolved.distanceD = 0.0
    }

    if (msg.distanceE !== undefined) {
      resolved.distanceE = msg.distanceE;
    }
    else {
      resolved.distanceE = 0.0
    }

    if (msg.distanceF !== undefined) {
      resolved.distanceF = msg.distanceF;
    }
    else {
      resolved.distanceF = 0.0
    }

    if (msg.distanceG !== undefined) {
      resolved.distanceG = msg.distanceG;
    }
    else {
      resolved.distanceG = 0.0
    }

    if (msg.distanceH !== undefined) {
      resolved.distanceH = msg.distanceH;
    }
    else {
      resolved.distanceH = 0.0
    }

    return resolved;
    }
};

module.exports = supersonic;
