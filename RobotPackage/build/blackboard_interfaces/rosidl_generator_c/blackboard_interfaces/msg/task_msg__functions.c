// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from blackboard_interfaces:msg/TaskMsg.idl
// generated code does not contain a copyright notice
#include "blackboard_interfaces/msg/task_msg__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>


// Include directives for member types
// Member `pose`
#include "geometry_msgs/msg/pose__functions.h"

bool
blackboard_interfaces__msg__TaskMsg__init(blackboard_interfaces__msg__TaskMsg * msg)
{
  if (!msg) {
    return false;
  }
  // taskid
  // priority
  // tasktype
  // payload
  // taskstate
  // cost
  // energycost
  // robotid
  // pose
  if (!geometry_msgs__msg__Pose__Sequence__init(&msg->pose, 0)) {
    blackboard_interfaces__msg__TaskMsg__fini(msg);
    return false;
  }
  return true;
}

void
blackboard_interfaces__msg__TaskMsg__fini(blackboard_interfaces__msg__TaskMsg * msg)
{
  if (!msg) {
    return;
  }
  // taskid
  // priority
  // tasktype
  // payload
  // taskstate
  // cost
  // energycost
  // robotid
  // pose
  geometry_msgs__msg__Pose__Sequence__fini(&msg->pose);
}

blackboard_interfaces__msg__TaskMsg *
blackboard_interfaces__msg__TaskMsg__create()
{
  blackboard_interfaces__msg__TaskMsg * msg = (blackboard_interfaces__msg__TaskMsg *)malloc(sizeof(blackboard_interfaces__msg__TaskMsg));
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(blackboard_interfaces__msg__TaskMsg));
  bool success = blackboard_interfaces__msg__TaskMsg__init(msg);
  if (!success) {
    free(msg);
    return NULL;
  }
  return msg;
}

void
blackboard_interfaces__msg__TaskMsg__destroy(blackboard_interfaces__msg__TaskMsg * msg)
{
  if (msg) {
    blackboard_interfaces__msg__TaskMsg__fini(msg);
  }
  free(msg);
}


bool
blackboard_interfaces__msg__TaskMsg__Sequence__init(blackboard_interfaces__msg__TaskMsg__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  blackboard_interfaces__msg__TaskMsg * data = NULL;
  if (size) {
    data = (blackboard_interfaces__msg__TaskMsg *)calloc(size, sizeof(blackboard_interfaces__msg__TaskMsg));
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = blackboard_interfaces__msg__TaskMsg__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        blackboard_interfaces__msg__TaskMsg__fini(&data[i - 1]);
      }
      free(data);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
blackboard_interfaces__msg__TaskMsg__Sequence__fini(blackboard_interfaces__msg__TaskMsg__Sequence * array)
{
  if (!array) {
    return;
  }
  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      blackboard_interfaces__msg__TaskMsg__fini(&array->data[i]);
    }
    free(array->data);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

blackboard_interfaces__msg__TaskMsg__Sequence *
blackboard_interfaces__msg__TaskMsg__Sequence__create(size_t size)
{
  blackboard_interfaces__msg__TaskMsg__Sequence * array = (blackboard_interfaces__msg__TaskMsg__Sequence *)malloc(sizeof(blackboard_interfaces__msg__TaskMsg__Sequence));
  if (!array) {
    return NULL;
  }
  bool success = blackboard_interfaces__msg__TaskMsg__Sequence__init(array, size);
  if (!success) {
    free(array);
    return NULL;
  }
  return array;
}

void
blackboard_interfaces__msg__TaskMsg__Sequence__destroy(blackboard_interfaces__msg__TaskMsg__Sequence * array)
{
  if (array) {
    blackboard_interfaces__msg__TaskMsg__Sequence__fini(array);
  }
  free(array);
}
