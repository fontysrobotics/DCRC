# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from blackboard/bbsynch.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import blackboard.msg
import geometry_msgs.msg

class bbsynch(genpy.Message):
  _md5sum = "6466ca11443297facdd573ec78db41a7"
  _type = "blackboard/bbsynch"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """blackboard/TaskMsg[] tasks
================================================================================
MSG: blackboard/TaskMsg
int16 taskId
int16 priority
int16 taskType
int16 payload
int16 taskState
float32 cost
float32 energyCost
int16 robotId
geometry_msgs/Pose[] pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['tasks']
  _slot_types = ['blackboard/TaskMsg[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       tasks

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bbsynch, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.tasks is None:
        self.tasks = []
    else:
      self.tasks = []

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
      length = len(self.tasks)
      buff.write(_struct_I.pack(length))
      for val1 in self.tasks:
        _x = val1
        buff.write(_get_struct_5h2fh().pack(_x.taskId, _x.priority, _x.taskType, _x.payload, _x.taskState, _x.cost, _x.energyCost, _x.robotId))
        length = len(val1.pose)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pose:
          _v1 = val2.position
          _x = _v1
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v2 = val2.orientation
          _x = _v2
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
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
      if self.tasks is None:
        self.tasks = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tasks = []
      for i in range(0, length):
        val1 = blackboard.msg.TaskMsg()
        _x = val1
        start = end
        end += 20
        (_x.taskId, _x.priority, _x.taskType, _x.payload, _x.taskState, _x.cost, _x.energyCost, _x.robotId,) = _get_struct_5h2fh().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pose = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Pose()
          _v3 = val2.position
          _x = _v3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v4 = val2.orientation
          _x = _v4
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          val1.pose.append(val2)
        self.tasks.append(val1)
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
      length = len(self.tasks)
      buff.write(_struct_I.pack(length))
      for val1 in self.tasks:
        _x = val1
        buff.write(_get_struct_5h2fh().pack(_x.taskId, _x.priority, _x.taskType, _x.payload, _x.taskState, _x.cost, _x.energyCost, _x.robotId))
        length = len(val1.pose)
        buff.write(_struct_I.pack(length))
        for val2 in val1.pose:
          _v5 = val2.position
          _x = _v5
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v6 = val2.orientation
          _x = _v6
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
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
      if self.tasks is None:
        self.tasks = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tasks = []
      for i in range(0, length):
        val1 = blackboard.msg.TaskMsg()
        _x = val1
        start = end
        end += 20
        (_x.taskId, _x.priority, _x.taskType, _x.payload, _x.taskState, _x.cost, _x.energyCost, _x.robotId,) = _get_struct_5h2fh().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.pose = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Pose()
          _v7 = val2.position
          _x = _v7
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v8 = val2.orientation
          _x = _v8
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          val1.pose.append(val2)
        self.tasks.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_5h2fh = None
def _get_struct_5h2fh():
    global _struct_5h2fh
    if _struct_5h2fh is None:
        _struct_5h2fh = struct.Struct("<5h2fh")
    return _struct_5h2fh
