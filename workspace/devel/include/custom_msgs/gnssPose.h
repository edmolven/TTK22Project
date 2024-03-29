// Generated by gencpp from file custom_msgs/gnssPose.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_GNSSPOSE_H
#define CUSTOM_MSGS_MESSAGE_GNSSPOSE_H


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
struct gnssPose_
{
  typedef gnssPose_<ContainerAllocator> Type;

  gnssPose_()
    : header()
    , sat_time()
    , latitude(0.0)
    , lat_direction()
    , longitude(0.0)
    , lon_direction()
    , heading(0.0)
    , heading_true()
    , speed_kmph(0.0)
    , mode_indicator()
    , nav_status()  {
    }
  gnssPose_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sat_time(_alloc)
    , latitude(0.0)
    , lat_direction(_alloc)
    , longitude(0.0)
    , lon_direction(_alloc)
    , heading(0.0)
    , heading_true(_alloc)
    , speed_kmph(0.0)
    , mode_indicator(_alloc)
    , nav_status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sat_time_type;
  _sat_time_type sat_time;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lat_direction_type;
  _lat_direction_type lat_direction;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _lon_direction_type;
  _lon_direction_type lon_direction;

   typedef double _heading_type;
  _heading_type heading;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _heading_true_type;
  _heading_true_type heading_true;

   typedef double _speed_kmph_type;
  _speed_kmph_type speed_kmph;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_indicator_type;
  _mode_indicator_type mode_indicator;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _nav_status_type;
  _nav_status_type nav_status;





  typedef boost::shared_ptr< ::custom_msgs::gnssPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::gnssPose_<ContainerAllocator> const> ConstPtr;

}; // struct gnssPose_

typedef ::custom_msgs::gnssPose_<std::allocator<void> > gnssPose;

typedef boost::shared_ptr< ::custom_msgs::gnssPose > gnssPosePtr;
typedef boost::shared_ptr< ::custom_msgs::gnssPose const> gnssPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::gnssPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::gnssPose_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_msgs::gnssPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::gnssPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::gnssPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::gnssPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::gnssPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::gnssPose_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::gnssPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "801b92985560b82617eabd3df27449e3";
  }

  static const char* value(const ::custom_msgs::gnssPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x801b92985560b826ULL;
  static const uint64_t static_value2 = 0x17eabd3df27449e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::gnssPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/gnssPose";
  }

  static const char* value(const ::custom_msgs::gnssPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::gnssPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Something something\n"
"#something something\n"
"\n"
"Header header\n"
"\n"
"string sat_time\n"
"float64 latitude\n"
"string lat_direction\n"
"float64 longitude\n"
"string lon_direction\n"
"\n"
"float64 heading\n"
"string heading_true\n"
"\n"
"float64 speed_kmph\n"
"\n"
"string mode_indicator\n"
"string nav_status\n"
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

  static const char* value(const ::custom_msgs::gnssPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::gnssPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sat_time);
      stream.next(m.latitude);
      stream.next(m.lat_direction);
      stream.next(m.longitude);
      stream.next(m.lon_direction);
      stream.next(m.heading);
      stream.next(m.heading_true);
      stream.next(m.speed_kmph);
      stream.next(m.mode_indicator);
      stream.next(m.nav_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gnssPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::gnssPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::gnssPose_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sat_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sat_time);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "lat_direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lat_direction);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "lon_direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.lon_direction);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "heading_true: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.heading_true);
    s << indent << "speed_kmph: ";
    Printer<double>::stream(s, indent + "  ", v.speed_kmph);
    s << indent << "mode_indicator: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode_indicator);
    s << indent << "nav_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.nav_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_GNSSPOSE_H
