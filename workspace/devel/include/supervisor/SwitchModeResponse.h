// Generated by gencpp from file supervisor/SwitchModeResponse.msg
// DO NOT EDIT!


#ifndef SUPERVISOR_MESSAGE_SWITCHMODERESPONSE_H
#define SUPERVISOR_MESSAGE_SWITCHMODERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace supervisor
{
template <class ContainerAllocator>
struct SwitchModeResponse_
{
  typedef SwitchModeResponse_<ContainerAllocator> Type;

  SwitchModeResponse_()
    : approved(false)  {
    }
  SwitchModeResponse_(const ContainerAllocator& _alloc)
    : approved(false)  {
  (void)_alloc;
    }



   typedef uint8_t _approved_type;
  _approved_type approved;





  typedef boost::shared_ptr< ::supervisor::SwitchModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::supervisor::SwitchModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SwitchModeResponse_

typedef ::supervisor::SwitchModeResponse_<std::allocator<void> > SwitchModeResponse;

typedef boost::shared_ptr< ::supervisor::SwitchModeResponse > SwitchModeResponsePtr;
typedef boost::shared_ptr< ::supervisor::SwitchModeResponse const> SwitchModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::supervisor::SwitchModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::supervisor::SwitchModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace supervisor

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'custom_msgs': ['/home/eivinddm/milliAmpere/workspace/src/custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::supervisor::SwitchModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervisor::SwitchModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervisor::SwitchModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b38b25448cac98c0eed18d232c86d6fa";
  }

  static const char* value(const ::supervisor::SwitchModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb38b25448cac98c0ULL;
  static const uint64_t static_value2 = 0xeed18d232c86d6faULL;
};

template<class ContainerAllocator>
struct DataType< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "supervisor/SwitchModeResponse";
  }

  static const char* value(const ::supervisor::SwitchModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool approved\n"
"\n"
;
  }

  static const char* value(const ::supervisor::SwitchModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.approved);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SwitchModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::supervisor::SwitchModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::supervisor::SwitchModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "approved: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.approved);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUPERVISOR_MESSAGE_SWITCHMODERESPONSE_H
