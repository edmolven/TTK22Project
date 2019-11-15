// Generated by gencpp from file custom_msgs/rawGPSdata.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_RAWGPSDATA_H
#define CUSTOM_MSGS_MESSAGE_RAWGPSDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace custom_msgs
{
template <class ContainerAllocator>
struct rawGPSdata_
{
  typedef rawGPSdata_<ContainerAllocator> Type;

  rawGPSdata_()
    : header()
    , NMEA()  {
    }
  rawGPSdata_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , NMEA(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _NMEA_type;
  _NMEA_type NMEA;





  typedef boost::shared_ptr< ::custom_msgs::rawGPSdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::rawGPSdata_<ContainerAllocator> const> ConstPtr;

}; // struct rawGPSdata_

typedef ::custom_msgs::rawGPSdata_<std::allocator<void> > rawGPSdata;

typedef boost::shared_ptr< ::custom_msgs::rawGPSdata > rawGPSdataPtr;
typedef boost::shared_ptr< ::custom_msgs::rawGPSdata const> rawGPSdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::rawGPSdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::rawGPSdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'custom_msgs': ['/home/eivinddm/milliAmpere/workspace/src/custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::rawGPSdata_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::rawGPSdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::rawGPSdata_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b7b5e623e612f1bf238822a134f2656";
  }

  static const char* value(const ::custom_msgs::rawGPSdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b7b5e623e612f1bULL;
  static const uint64_t static_value2 = 0xf238822a134f2656ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/rawGPSdata";
  }

  static const char* value(const ::custom_msgs::rawGPSdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Raw GPS data\n"
"\n"
"Header header\n"
"string NMEA\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::custom_msgs::rawGPSdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.NMEA);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rawGPSdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::rawGPSdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::rawGPSdata_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "NMEA: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.NMEA);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_RAWGPSDATA_H