// Generated by gencpp from file custom_msgs/XsensQuaternion.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_XSENSQUATERNION_H
#define CUSTOM_MSGS_MESSAGE_XSENSQUATERNION_H


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
struct XsensQuaternion_
{
  typedef XsensQuaternion_<ContainerAllocator> Type;

  XsensQuaternion_()
    : w(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  XsensQuaternion_(const ContainerAllocator& _alloc)
    : w(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _w_type;
  _w_type w;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::custom_msgs::XsensQuaternion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::XsensQuaternion_<ContainerAllocator> const> ConstPtr;

}; // struct XsensQuaternion_

typedef ::custom_msgs::XsensQuaternion_<std::allocator<void> > XsensQuaternion;

typedef boost::shared_ptr< ::custom_msgs::XsensQuaternion > XsensQuaternionPtr;
typedef boost::shared_ptr< ::custom_msgs::XsensQuaternion const> XsensQuaternionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::XsensQuaternion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::XsensQuaternion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::XsensQuaternion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::XsensQuaternion_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b82aaf9e8e0ae143191a8612f5c5d4c";
  }

  static const char* value(const ::custom_msgs::XsensQuaternion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b82aaf9e8e0ae14ULL;
  static const uint64_t static_value2 = 0x3191a8612f5c5d4cULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/XsensQuaternion";
  }

  static const char* value(const ::custom_msgs::XsensQuaternion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 w\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
;
  }

  static const char* value(const ::custom_msgs::XsensQuaternion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.w);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XsensQuaternion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::XsensQuaternion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::XsensQuaternion_<ContainerAllocator>& v)
  {
    s << indent << "w: ";
    Printer<double>::stream(s, indent + "  ", v.w);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_XSENSQUATERNION_H
