// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from blackboard_interfaces:msg/TaskMsg.idl
// generated code does not contain a copyright notice
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
#include <Python.h>
#include <stdbool.h>
#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "numpy/ndarrayobject.h"
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif
#include "rosidl_generator_c/visibility_control.h"
#include "blackboard_interfaces/msg/task_msg__struct.h"
#include "blackboard_interfaces/msg/task_msg__functions.h"

#include "rosidl_generator_c/primitives_sequence.h"
#include "rosidl_generator_c/primitives_sequence_functions.h"

// Nested array functions includes
#include "geometry_msgs/msg/pose__functions.h"
// end nested array functions include
ROSIDL_GENERATOR_C_IMPORT
bool geometry_msgs__msg__pose__convert_from_py(PyObject * _pymsg, void * _ros_message);
ROSIDL_GENERATOR_C_IMPORT
PyObject * geometry_msgs__msg__pose__convert_to_py(void * raw_ros_message);

ROSIDL_GENERATOR_C_EXPORT
bool blackboard_interfaces__msg__task_msg__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[44];
    {
      char * class_name = NULL;
      char * module_name = NULL;
      {
        PyObject * class_attr = PyObject_GetAttrString(_pymsg, "__class__");
        if (class_attr) {
          PyObject * name_attr = PyObject_GetAttrString(class_attr, "__name__");
          if (name_attr) {
            class_name = (char *)PyUnicode_1BYTE_DATA(name_attr);
            Py_DECREF(name_attr);
          }
          PyObject * module_attr = PyObject_GetAttrString(class_attr, "__module__");
          if (module_attr) {
            module_name = (char *)PyUnicode_1BYTE_DATA(module_attr);
            Py_DECREF(module_attr);
          }
          Py_DECREF(class_attr);
        }
      }
      if (!class_name || !module_name) {
        return false;
      }
      snprintf(full_classname_dest, sizeof(full_classname_dest), "%s.%s", module_name, class_name);
    }
    assert(strncmp(
        "blackboard_interfaces.msg._task_msg.TaskMsg",
        full_classname_dest, 43) == 0);
  }
  blackboard_interfaces__msg__TaskMsg * ros_message = _ros_message;
  {  // taskid
    PyObject * field = PyObject_GetAttrString(_pymsg, "taskid");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->taskid = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // priority
    PyObject * field = PyObject_GetAttrString(_pymsg, "priority");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->priority = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // tasktype
    PyObject * field = PyObject_GetAttrString(_pymsg, "tasktype");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->tasktype = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // payload
    PyObject * field = PyObject_GetAttrString(_pymsg, "payload");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->payload = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // taskstate
    PyObject * field = PyObject_GetAttrString(_pymsg, "taskstate");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->taskstate = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // cost
    PyObject * field = PyObject_GetAttrString(_pymsg, "cost");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->cost = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // energycost
    PyObject * field = PyObject_GetAttrString(_pymsg, "energycost");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->energycost = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // robotid
    PyObject * field = PyObject_GetAttrString(_pymsg, "robotid");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->robotid = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // pose
    PyObject * field = PyObject_GetAttrString(_pymsg, "pose");
    if (!field) {
      return false;
    }
    PyObject * seq_field = PySequence_Fast(field, "expected a sequence in 'pose'");
    if (!seq_field) {
      Py_DECREF(field);
      return false;
    }
    Py_ssize_t size = PySequence_Size(field);
    if (-1 == size) {
      Py_DECREF(seq_field);
      Py_DECREF(field);
      return false;
    }
    if (!geometry_msgs__msg__Pose__Sequence__init(&(ros_message->pose), size)) {
      PyErr_SetString(PyExc_RuntimeError, "unable to create geometry_msgs__msg__Pose__Sequence ros_message");
      Py_DECREF(seq_field);
      Py_DECREF(field);
      return false;
    }
    geometry_msgs__msg__Pose * dest = ros_message->pose.data;
    for (Py_ssize_t i = 0; i < size; ++i) {
      if (!geometry_msgs__msg__pose__convert_from_py(PySequence_Fast_GET_ITEM(seq_field, i), &dest[i])) {
        Py_DECREF(seq_field);
        Py_DECREF(field);
        return false;
      }
    }
    Py_DECREF(seq_field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * blackboard_interfaces__msg__task_msg__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of TaskMsg */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("blackboard_interfaces.msg._task_msg");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "TaskMsg");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  blackboard_interfaces__msg__TaskMsg * ros_message = (blackboard_interfaces__msg__TaskMsg *)raw_ros_message;
  {  // taskid
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->taskid);
    {
      int rc = PyObject_SetAttrString(_pymessage, "taskid", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // priority
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->priority);
    {
      int rc = PyObject_SetAttrString(_pymessage, "priority", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // tasktype
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->tasktype);
    {
      int rc = PyObject_SetAttrString(_pymessage, "tasktype", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // payload
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->payload);
    {
      int rc = PyObject_SetAttrString(_pymessage, "payload", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // taskstate
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->taskstate);
    {
      int rc = PyObject_SetAttrString(_pymessage, "taskstate", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // cost
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->cost);
    {
      int rc = PyObject_SetAttrString(_pymessage, "cost", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // energycost
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->energycost);
    {
      int rc = PyObject_SetAttrString(_pymessage, "energycost", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // robotid
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->robotid);
    {
      int rc = PyObject_SetAttrString(_pymessage, "robotid", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // pose
    PyObject * field = NULL;
    size_t size = ros_message->pose.size;
    field = PyList_New(size);
    if (!field) {
      return NULL;
    }
    geometry_msgs__msg__Pose * item;
    for (size_t i = 0; i < size; ++i) {
      item = &(ros_message->pose.data[i]);
      PyObject * pyitem = geometry_msgs__msg__pose__convert_to_py(item);
      if (!pyitem) {
        Py_DECREF(field);
        return NULL;
      }
      int rc = PyList_SetItem(field, i, pyitem);
      (void)rc;
      assert(rc == 0);
    }
    assert(PySequence_Check(field));
    {
      int rc = PyObject_SetAttrString(_pymessage, "pose", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}
