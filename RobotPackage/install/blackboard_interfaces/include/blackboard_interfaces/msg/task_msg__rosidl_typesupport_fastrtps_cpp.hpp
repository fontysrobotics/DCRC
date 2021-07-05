// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__rosidl_typesupport_fastrtps_cpp.hpp.em
// with input from blackboard_interfaces:msg/TaskMsg.idl
// generated code does not contain a copyright notice

#ifndef BLACKBOARD_INTERFACES__MSG__TASK_MSG__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
#define BLACKBOARD_INTERFACES__MSG__TASK_MSG__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_

#include "rosidl_generator_c/message_type_support_struct.h"
#include "rosidl_typesupport_interface/macros.h"
#include "blackboard_interfaces/msg/rosidl_typesupport_fastrtps_cpp__visibility_control.h"
#include "blackboard_interfaces/msg/task_msg__struct.hpp"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

#include "fastcdr/Cdr.h"

namespace blackboard_interfaces
{

namespace msg
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_blackboard_interfaces
cdr_serialize(
  const blackboard_interfaces::msg::TaskMsg & ros_message,
  eprosima::fastcdr::Cdr & cdr);

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_blackboard_interfaces
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  blackboard_interfaces::msg::TaskMsg & ros_message);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_blackboard_interfaces
get_serialized_size(
  const blackboard_interfaces::msg::TaskMsg & ros_message,
  size_t current_alignment);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_blackboard_interfaces
max_serialized_size_TaskMsg(
  bool & full_bounded,
  size_t current_alignment);

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace blackboard_interfaces

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_blackboard_interfaces
const rosidl_message_type_support_t *
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, blackboard_interfaces, msg, TaskMsg)();

#ifdef __cplusplus
}
#endif

#endif  // BLACKBOARD_INTERFACES__MSG__TASK_MSG__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
