// Generated by gencpp from file blackboard/bbsynch.msg
// DO NOT EDIT!


#ifndef BLACKBOARD_MESSAGE_BBSYNCH_H
#define BLACKBOARD_MESSAGE_BBSYNCH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <blackboard/TaskMsg.h>

namespace blackboard
{
template <class ContainerAllocator>
struct bbsynch_
{
  typedef bbsynch_<ContainerAllocator> Type;

  bbsynch_()
    : tasks()  {
    }
  bbsynch_(const ContainerAllocator& _alloc)
    : tasks(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::blackboard::TaskMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::blackboard::TaskMsg_<ContainerAllocator> >::other >  _tasks_type;
  _tasks_type tasks;





  typedef boost::shared_ptr< ::blackboard::bbsynch_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::blackboard::bbsynch_<ContainerAllocator> const> ConstPtr;

}; // struct bbsynch_

typedef ::blackboard::bbsynch_<std::allocator<void> > bbsynch;

typedef boost::shared_ptr< ::blackboard::bbsynch > bbsynchPtr;
typedef boost::shared_ptr< ::blackboard::bbsynch const> bbsynchConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::blackboard::bbsynch_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::blackboard::bbsynch_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::blackboard::bbsynch_<ContainerAllocator1> & lhs, const ::blackboard::bbsynch_<ContainerAllocator2> & rhs)
{
  return lhs.tasks == rhs.tasks;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::blackboard::bbsynch_<ContainerAllocator1> & lhs, const ::blackboard::bbsynch_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace blackboard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::blackboard::bbsynch_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::blackboard::bbsynch_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blackboard::bbsynch_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blackboard::bbsynch_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blackboard::bbsynch_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blackboard::bbsynch_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::blackboard::bbsynch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6466ca11443297facdd573ec78db41a7";
  }

  static const char* value(const ::blackboard::bbsynch_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6466ca11443297faULL;
  static const uint64_t static_value2 = 0xcdd573ec78db41a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::blackboard::bbsynch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blackboard/bbsynch";
  }

  static const char* value(const ::blackboard::bbsynch_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::blackboard::bbsynch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blackboard/TaskMsg[] tasks\n"
"================================================================================\n"
"MSG: blackboard/TaskMsg\n"
"int16 taskId\n"
"int16 priority\n"
"int16 taskType\n"
"int16 payload\n"
"int16 taskState\n"
"float32 cost\n"
"float32 energyCost\n"
"int16 robotId\n"
"geometry_msgs/Pose[] pose\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::blackboard::bbsynch_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::blackboard::bbsynch_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tasks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bbsynch_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::blackboard::bbsynch_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::blackboard::bbsynch_<ContainerAllocator>& v)
  {
    s << indent << "tasks[]" << std::endl;
    for (size_t i = 0; i < v.tasks.size(); ++i)
    {
      s << indent << "  tasks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::blackboard::TaskMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.tasks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BLACKBOARD_MESSAGE_BBSYNCH_H
