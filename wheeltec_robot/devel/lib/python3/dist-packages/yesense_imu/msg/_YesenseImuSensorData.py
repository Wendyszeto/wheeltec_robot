# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yesense_imu/YesenseImuSensorData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import yesense_imu.msg

class YesenseImuSensorData(genpy.Message):
  _md5sum = "6d4626fa769075113f501bc181b31122"
  _type = "yesense_imu/YesenseImuSensorData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 temperature
uint32 sample_timestamp
uint32 sync_timestamp
geometry_msgs/Accel accel
yesense_imu/YesenseImuQuaternion quaternion
yesense_imu/YesenseImuEulerAngle eulerAngle
yesense_imu/YesenseImuLocation location
================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
================================================================================
MSG: yesense_imu/YesenseImuQuaternion
float32 q0
float32 q1
float32 q2
float32 q3

================================================================================
MSG: yesense_imu/YesenseImuEulerAngle
float32 roll
float32 pitch
float32 yaw

================================================================================
MSG: yesense_imu/YesenseImuLocation
float64 longtidue
float64 latitude
float32 altidue"""
  __slots__ = ['temperature','sample_timestamp','sync_timestamp','accel','quaternion','eulerAngle','location']
  _slot_types = ['float32','uint32','uint32','geometry_msgs/Accel','yesense_imu/YesenseImuQuaternion','yesense_imu/YesenseImuEulerAngle','yesense_imu/YesenseImuLocation']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       temperature,sample_timestamp,sync_timestamp,accel,quaternion,eulerAngle,location

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(YesenseImuSensorData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.temperature is None:
        self.temperature = 0.
      if self.sample_timestamp is None:
        self.sample_timestamp = 0
      if self.sync_timestamp is None:
        self.sync_timestamp = 0
      if self.accel is None:
        self.accel = geometry_msgs.msg.Accel()
      if self.quaternion is None:
        self.quaternion = yesense_imu.msg.YesenseImuQuaternion()
      if self.eulerAngle is None:
        self.eulerAngle = yesense_imu.msg.YesenseImuEulerAngle()
      if self.location is None:
        self.location = yesense_imu.msg.YesenseImuLocation()
    else:
      self.temperature = 0.
      self.sample_timestamp = 0
      self.sync_timestamp = 0
      self.accel = geometry_msgs.msg.Accel()
      self.quaternion = yesense_imu.msg.YesenseImuQuaternion()
      self.eulerAngle = yesense_imu.msg.YesenseImuEulerAngle()
      self.location = yesense_imu.msg.YesenseImuLocation()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_f2I6d7f2df().pack(_x.temperature, _x.sample_timestamp, _x.sync_timestamp, _x.accel.linear.x, _x.accel.linear.y, _x.accel.linear.z, _x.accel.angular.x, _x.accel.angular.y, _x.accel.angular.z, _x.quaternion.q0, _x.quaternion.q1, _x.quaternion.q2, _x.quaternion.q3, _x.eulerAngle.roll, _x.eulerAngle.pitch, _x.eulerAngle.yaw, _x.location.longtidue, _x.location.latitude, _x.location.altidue))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.accel is None:
        self.accel = geometry_msgs.msg.Accel()
      if self.quaternion is None:
        self.quaternion = yesense_imu.msg.YesenseImuQuaternion()
      if self.eulerAngle is None:
        self.eulerAngle = yesense_imu.msg.YesenseImuEulerAngle()
      if self.location is None:
        self.location = yesense_imu.msg.YesenseImuLocation()
      end = 0
      _x = self
      start = end
      end += 108
      (_x.temperature, _x.sample_timestamp, _x.sync_timestamp, _x.accel.linear.x, _x.accel.linear.y, _x.accel.linear.z, _x.accel.angular.x, _x.accel.angular.y, _x.accel.angular.z, _x.quaternion.q0, _x.quaternion.q1, _x.quaternion.q2, _x.quaternion.q3, _x.eulerAngle.roll, _x.eulerAngle.pitch, _x.eulerAngle.yaw, _x.location.longtidue, _x.location.latitude, _x.location.altidue,) = _get_struct_f2I6d7f2df().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_f2I6d7f2df().pack(_x.temperature, _x.sample_timestamp, _x.sync_timestamp, _x.accel.linear.x, _x.accel.linear.y, _x.accel.linear.z, _x.accel.angular.x, _x.accel.angular.y, _x.accel.angular.z, _x.quaternion.q0, _x.quaternion.q1, _x.quaternion.q2, _x.quaternion.q3, _x.eulerAngle.roll, _x.eulerAngle.pitch, _x.eulerAngle.yaw, _x.location.longtidue, _x.location.latitude, _x.location.altidue))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.accel is None:
        self.accel = geometry_msgs.msg.Accel()
      if self.quaternion is None:
        self.quaternion = yesense_imu.msg.YesenseImuQuaternion()
      if self.eulerAngle is None:
        self.eulerAngle = yesense_imu.msg.YesenseImuEulerAngle()
      if self.location is None:
        self.location = yesense_imu.msg.YesenseImuLocation()
      end = 0
      _x = self
      start = end
      end += 108
      (_x.temperature, _x.sample_timestamp, _x.sync_timestamp, _x.accel.linear.x, _x.accel.linear.y, _x.accel.linear.z, _x.accel.angular.x, _x.accel.angular.y, _x.accel.angular.z, _x.quaternion.q0, _x.quaternion.q1, _x.quaternion.q2, _x.quaternion.q3, _x.eulerAngle.roll, _x.eulerAngle.pitch, _x.eulerAngle.yaw, _x.location.longtidue, _x.location.latitude, _x.location.altidue,) = _get_struct_f2I6d7f2df().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f2I6d7f2df = None
def _get_struct_f2I6d7f2df():
    global _struct_f2I6d7f2df
    if _struct_f2I6d7f2df is None:
        _struct_f2I6d7f2df = struct.Struct("<f2I6d7f2df")
    return _struct_f2I6d7f2df
