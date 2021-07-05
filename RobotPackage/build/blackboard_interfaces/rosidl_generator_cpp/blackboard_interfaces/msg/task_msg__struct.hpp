// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from blackboard_interfaces:msg/TaskMsg.idl
// generated code does not contain a copyright notice

#ifndef BLACKBOARD_INTERFACES__MSG__TASK_MSG__STRUCT_HPP_
#define BLACKBOARD_INTERFACES__MSG__TASK_MSG__STRUCT_HPP_

#include <rosidl_generator_cpp/bounded_vector.hpp>
#include <rosidl_generator_cpp/message_initialization.hpp>
#include <algorithm>
#include <array>
#include <memory>
#include <string>
#include <vector>

// Protect against ERROR being predefined on Windows, in case somebody defines a
// constant by that name.
#if defined(_WIN32)
  #if defined(ERROR)
    #undef ERROR
  #endif
  #if defined(NO_ERROR)
    #undef NO_ERROR
  #endif
#endif

// Include directives for member types
// Member 'pose'
#include "geometry_msgs/msg/pose__struct.hpp"

#ifndef _WIN32
# define DEPRECATED__blackboard_interfaces__msg__TaskMsg __attribute__((deprecated))
#else
# define DEPRECATED__blackboard_interfaces__msg__TaskMsg __declspec(deprecated)
#endif

namespace blackboard_interfaces
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct TaskMsg_
{
  using Type = TaskMsg_<ContainerAllocator>;

  explicit TaskMsg_(rosidl_generator_cpp::MessageInitialization _init = rosidl_generator_cpp::MessageInitialization::ALL)
  {
    if (rosidl_generator_cpp::MessageInitialization::ALL == _init ||
      rosidl_generator_cpp::MessageInitialization::ZERO == _init)
    {
      this->taskid = 0;
      this->priority = 0;
      this->tasktype = 0;
      this->payload = 0;
      this->taskstate = 0;
      this->cost = 0.0f;
      this->energycost = 0.0f;
      this->robotid = 0;
    }
  }

  explicit TaskMsg_(const ContainerAllocator & _alloc, rosidl_generator_cpp::MessageInitialization _init = rosidl_generator_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_generator_cpp::MessageInitialization::ALL == _init ||
      rosidl_generator_cpp::MessageInitialization::ZERO == _init)
    {
      this->taskid = 0;
      this->priority = 0;
      this->tasktype = 0;
      this->payload = 0;
      this->taskstate = 0;
      this->cost = 0.0f;
      this->energycost = 0.0f;
      this->robotid = 0;
    }
  }

  // field types and members
  using _taskid_type =
    int16_t;
  _taskid_type taskid;
  using _priority_type =
    int16_t;
  _priority_type priority;
  using _tasktype_type =
    int16_t;
  _tasktype_type tasktype;
  using _payload_type =
    int16_t;
  _payload_type payload;
  using _taskstate_type =
    int16_t;
  _taskstate_type taskstate;
  using _cost_type =
    float;
  _cost_type cost;
  using _energycost_type =
    float;
  _energycost_type energycost;
  using _robotid_type =
    int16_t;
  _robotid_type robotid;
  using _pose_type =
    std::vector<geometry_msgs::msg::Pose_<ContainerAllocator>, typename ContainerAllocator::template rebind<geometry_msgs::msg::Pose_<ContainerAllocator>>::other>;
  _pose_type pose;

  // setters for named parameter idiom
  Type & set__taskid(
    const int16_t & _arg)
  {
    this->taskid = _arg;
    return *this;
  }
  Type & set__priority(
    const int16_t & _arg)
  {
    this->priority = _arg;
    return *this;
  }
  Type & set__tasktype(
    const int16_t & _arg)
  {
    this->tasktype = _arg;
    return *this;
  }
  Type & set__payload(
    const int16_t & _arg)
  {
    this->payload = _arg;
    return *this;
  }
  Type & set__taskstate(
    const int16_t & _arg)
  {
    this->taskstate = _arg;
    return *this;
  }
  Type & set__cost(
    const float & _arg)
  {
    this->cost = _arg;
    return *this;
  }
  Type & set__energycost(
    const float & _arg)
  {
    this->energycost = _arg;
    return *this;
  }
  Type & set__robotid(
    const int16_t & _arg)
  {
    this->robotid = _arg;
    return *this;
  }
  Type & set__pose(
    const std::vector<geometry_msgs::msg::Pose_<ContainerAllocator>, typename ContainerAllocator::template rebind<geometry_msgs::msg::Pose_<ContainerAllocator>>::other> & _arg)
  {
    this->pose = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> *;
  using ConstRawPtr =
    const blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__blackboard_interfaces__msg__TaskMsg
    std::shared_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__blackboard_interfaces__msg__TaskMsg
    std::shared_ptr<blackboard_interfaces::msg::TaskMsg_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const TaskMsg_ & other) const
  {
    if (this->taskid != other.taskid) {
      return false;
    }
    if (this->priority != other.priority) {
      return false;
    }
    if (this->tasktype != other.tasktype) {
      return false;
    }
    if (this->payload != other.payload) {
      return false;
    }
    if (this->taskstate != other.taskstate) {
      return false;
    }
    if (this->cost != other.cost) {
      return false;
    }
    if (this->energycost != other.energycost) {
      return false;
    }
    if (this->robotid != other.robotid) {
      return false;
    }
    if (this->pose != other.pose) {
      return false;
    }
    return true;
  }
  bool operator!=(const TaskMsg_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct TaskMsg_

// alias to use template instance with default allocator
using TaskMsg =
  blackboard_interfaces::msg::TaskMsg_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace blackboard_interfaces

#endif  // BLACKBOARD_INTERFACES__MSG__TASK_MSG__STRUCT_HPP_
