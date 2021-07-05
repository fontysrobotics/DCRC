# generated from rosidl_generator_py/resource/_idl.py.em
# with input from blackboard_interfaces:msg/TaskMsg.idl
# generated code does not contain a copyright notice


# Import statements for member types

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_TaskMsg(type):
    """Metaclass of message 'TaskMsg'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('blackboard_interfaces')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'blackboard_interfaces.msg.TaskMsg')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__task_msg
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__task_msg
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__task_msg
            cls._TYPE_SUPPORT = module.type_support_msg__msg__task_msg
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__task_msg

            from geometry_msgs.msg import Pose
            if Pose.__class__._TYPE_SUPPORT is None:
                Pose.__class__.__import_type_support__()

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class TaskMsg(metaclass=Metaclass_TaskMsg):
    """Message class 'TaskMsg'."""

    __slots__ = [
        '_taskid',
        '_priority',
        '_tasktype',
        '_payload',
        '_taskstate',
        '_cost',
        '_energycost',
        '_robotid',
        '_pose',
    ]

    _fields_and_field_types = {
        'taskid': 'int16',
        'priority': 'int16',
        'tasktype': 'int16',
        'payload': 'int16',
        'taskstate': 'int16',
        'cost': 'float',
        'energycost': 'float',
        'robotid': 'int16',
        'pose': 'sequence<geometry_msgs/Pose>',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.UnboundedSequence(rosidl_parser.definition.NamespacedType(['geometry_msgs', 'msg'], 'Pose')),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.taskid = kwargs.get('taskid', int())
        self.priority = kwargs.get('priority', int())
        self.tasktype = kwargs.get('tasktype', int())
        self.payload = kwargs.get('payload', int())
        self.taskstate = kwargs.get('taskstate', int())
        self.cost = kwargs.get('cost', float())
        self.energycost = kwargs.get('energycost', float())
        self.robotid = kwargs.get('robotid', int())
        self.pose = kwargs.get('pose', [])

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.taskid != other.taskid:
            return False
        if self.priority != other.priority:
            return False
        if self.tasktype != other.tasktype:
            return False
        if self.payload != other.payload:
            return False
        if self.taskstate != other.taskstate:
            return False
        if self.cost != other.cost:
            return False
        if self.energycost != other.energycost:
            return False
        if self.robotid != other.robotid:
            return False
        if self.pose != other.pose:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @property
    def taskid(self):
        """Message field 'taskid'."""
        return self._taskid

    @taskid.setter
    def taskid(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'taskid' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'taskid' field must be an integer in [-32768, 32767]"
        self._taskid = value

    @property
    def priority(self):
        """Message field 'priority'."""
        return self._priority

    @priority.setter
    def priority(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'priority' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'priority' field must be an integer in [-32768, 32767]"
        self._priority = value

    @property
    def tasktype(self):
        """Message field 'tasktype'."""
        return self._tasktype

    @tasktype.setter
    def tasktype(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'tasktype' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'tasktype' field must be an integer in [-32768, 32767]"
        self._tasktype = value

    @property
    def payload(self):
        """Message field 'payload'."""
        return self._payload

    @payload.setter
    def payload(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'payload' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'payload' field must be an integer in [-32768, 32767]"
        self._payload = value

    @property
    def taskstate(self):
        """Message field 'taskstate'."""
        return self._taskstate

    @taskstate.setter
    def taskstate(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'taskstate' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'taskstate' field must be an integer in [-32768, 32767]"
        self._taskstate = value

    @property
    def cost(self):
        """Message field 'cost'."""
        return self._cost

    @cost.setter
    def cost(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'cost' field must be of type 'float'"
        self._cost = value

    @property
    def energycost(self):
        """Message field 'energycost'."""
        return self._energycost

    @energycost.setter
    def energycost(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'energycost' field must be of type 'float'"
        self._energycost = value

    @property
    def robotid(self):
        """Message field 'robotid'."""
        return self._robotid

    @robotid.setter
    def robotid(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'robotid' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 'robotid' field must be an integer in [-32768, 32767]"
        self._robotid = value

    @property
    def pose(self):
        """Message field 'pose'."""
        return self._pose

    @pose.setter
    def pose(self, value):
        if __debug__:
            from geometry_msgs.msg import Pose
            from collections.abc import Sequence
            from collections.abc import Set
            from collections import UserList
            from collections import UserString
            assert \
                ((isinstance(value, Sequence) or
                  isinstance(value, Set) or
                  isinstance(value, UserList)) and
                 not isinstance(value, str) and
                 not isinstance(value, UserString) and
                 all(isinstance(v, Pose) for v in value) and
                 True), \
                "The 'pose' field must be a set or sequence and each value of type 'Pose'"
        self._pose = value
