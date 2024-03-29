// Generated by gencpp from file custom_msgs/gnssGGA_status.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_GNSSGGA_STATUS_H
#define CUSTOM_MSGS_MESSAGE_GNSSGGA_STATUS_H


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
struct gnssGGA_status_
{
  typedef gnssGGA_status_<ContainerAllocator> Type;

  gnssGGA_status_()
    : numSat(0)
    , hDOP(0.0)
    , mode(0)
    , modeStatus()  {
    }
  gnssGGA_status_(const ContainerAllocator& _alloc)
    : numSat(0)
    , hDOP(0.0)
    , mode(0)
    , modeStatus(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _numSat_type;
  _numSat_type numSat;

   typedef double _hDOP_type;
  _hDOP_type hDOP;

   typedef int64_t _mode_type;
  _mode_type mode;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _modeStatus_type;
  _modeStatus_type modeStatus;





  typedef boost::shared_ptr< ::custom_msgs::gnssGGA_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::gnssGGA_status_<ContainerAllocator> const> ConstPtr;

}; // struct gnssGGA_status_

typedef ::custom_msgs::gnssGGA_status_<std::allocator<void> > gnssGGA_status;

typedef boost::shared_ptr< ::custom_msgs::gnssGGA_status > gnssGGA_statusPtr;
typedef boost::shared_ptr< ::custom_msgs::gnssGGA_status const> gnssGGA_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::gnssGGA_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'custom_msgs': ['/home/eivinddm/milliAmpere/workspace/src/custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::gnssGGA_status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::gnssGGA_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::gnssGGA_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0e8745cbb7cfe1a00d99b4fdc87eeb1f";
  }

  static const char* value(const ::custom_msgs::gnssGGA_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0e8745cbb7cfe1a0ULL;
  static const uint64_t static_value2 = 0x0d99b4fdc87eeb1fULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/gnssGGA_status";
  }

  static const char* value(const ::custom_msgs::gnssGGA_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 numSat\n"
"float64 hDOP\n"
"int64 mode\n"
"string modeStatus\n"
;
  }

  static const char* value(const ::custom_msgs::gnssGGA_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.numSat);
      stream.next(m.hDOP);
      stream.next(m.mode);
      stream.next(m.modeStatus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gnssGGA_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::gnssGGA_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::gnssGGA_status_<ContainerAllocator>& v)
  {
    s << indent << "numSat: ";
    Printer<int64_t>::stream(s, indent + "  ", v.numSat);
    s << indent << "hDOP: ";
    Printer<double>::stream(s, indent + "  ", v.hDOP);
    s << indent << "mode: ";
    Printer<int64_t>::stream(s, indent + "  ", v.mode);
    s << indent << "modeStatus: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.modeStatus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_GNSSGGA_STATUS_H
