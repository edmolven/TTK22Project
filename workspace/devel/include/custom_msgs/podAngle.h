// Generated by gencpp from file custom_msgs/podAngle.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_PODANGLE_H
#define CUSTOM_MSGS_MESSAGE_PODANGLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_msgs
{
template <class ContainerAllocator>
struct podAngle_
{
  typedef podAngle_<ContainerAllocator> Type;

  podAngle_()
    : port(0.0)
    , star(0.0)  {
    }
  podAngle_(const ContainerAllocator& _alloc)
    : port(0.0)
    , star(0.0)  {
  (void)_alloc;
    }



   typedef double _port_type;
  _port_type port;

   typedef double _star_type;
  _star_type star;





  typedef boost::shared_ptr< ::custom_msgs::podAngle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::podAngle_<ContainerAllocator> const> ConstPtr;

}; // struct podAngle_

typedef ::custom_msgs::podAngle_<std::allocator<void> > podAngle;

typedef boost::shared_ptr< ::custom_msgs::podAngle > podAnglePtr;
typedef boost::shared_ptr< ::custom_msgs::podAngle const> podAngleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::podAngle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::podAngle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'custom_msgs': ['/home/eivinddm/milliAmpere/workspace/src/custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::podAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::podAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::podAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::podAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::podAngle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::podAngle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::podAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "008d1aaf11032e16c8f046f110392eb1";
  }

  static const char* value(const ::custom_msgs::podAngle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x008d1aaf11032e16ULL;
  static const uint64_t static_value2 = 0xc8f046f110392eb1ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::podAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/podAngle";
  }

  static const char* value(const ::custom_msgs::podAngle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::podAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 port\n"
"float64 star\n"
;
  }

  static const char* value(const ::custom_msgs::podAngle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::podAngle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.port);
      stream.next(m.star);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct podAngle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::podAngle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::podAngle_<ContainerAllocator>& v)
  {
    s << indent << "port: ";
    Printer<double>::stream(s, indent + "  ", v.port);
    s << indent << "star: ";
    Printer<double>::stream(s, indent + "  ", v.star);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_PODANGLE_H