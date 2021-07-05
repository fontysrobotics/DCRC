// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from blackboard_interfaces:msg/TaskMsg.idl
// generated code does not contain a copyright notice

#ifndef BLACKBOARD_INTERFACES__MSG__TASK_MSG__TRAITS_HPP_
#define BLACKBOARD_INTERFACES__MSG__TASK_MSG__TRAITS_HPP_

#include "blackboard_interfaces/msg/task_msg__struct.hpp"
#include <rosidl_generator_cpp/traits.hpp>
#include <stdint.h>
#include <type_traits>

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<blackboard_interfaces::msg::TaskMsg>()
{
  return "blackboard_interfaces::msg::TaskMsg";
}

template<>
struct has_fixed_size<blackboard_interfaces::msg::TaskMsg>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<blackboard_interfaces::msg::TaskMsg>
  : std::integral_constant<bool, false> {};

}  // namespace rosidl_generator_traits

#endif  // BLACKBOARD_INTERFACES__MSG__TASK_MSG__TRAITS_HPP_
