// Generated by gencpp from file custom_msgs/MotorState.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_MOTORSTATE_H
#define CUSTOM_MSGS_MESSAGE_MOTORSTATE_H


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
struct MotorState_
{
  typedef MotorState_<ContainerAllocator> Type;

  MotorState_()
    : set_throttle_stop(false)
    , motor_in_temp_limit(false)
    , battery_nearly_empty(false)
    , master_error_code(0.0)
    , motor_voltage(0.0)
    , motor_current(0.0)
    , motor_speed(0.0)
    , motor_pcb_temp(0.0)
    , motor_stator_temp(0.0)
    , battery_voltage(0.0)
    , battery_current(0.0)
    , temperature_reverse_voltage_protection(0.0)  {
    }
  MotorState_(const ContainerAllocator& _alloc)
    : set_throttle_stop(false)
    , motor_in_temp_limit(false)
    , battery_nearly_empty(false)
    , master_error_code(0.0)
    , motor_voltage(0.0)
    , motor_current(0.0)
    , motor_speed(0.0)
    , motor_pcb_temp(0.0)
    , motor_stator_temp(0.0)
    , battery_voltage(0.0)
    , battery_current(0.0)
    , temperature_reverse_voltage_protection(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _set_throttle_stop_type;
  _set_throttle_stop_type set_throttle_stop;

   typedef uint8_t _motor_in_temp_limit_type;
  _motor_in_temp_limit_type motor_in_temp_limit;

   typedef uint8_t _battery_nearly_empty_type;
  _battery_nearly_empty_type battery_nearly_empty;

   typedef double _master_error_code_type;
  _master_error_code_type master_error_code;

   typedef double _motor_voltage_type;
  _motor_voltage_type motor_voltage;

   typedef double _motor_current_type;
  _motor_current_type motor_current;

   typedef double _motor_speed_type;
  _motor_speed_type motor_speed;

   typedef double _motor_pcb_temp_type;
  _motor_pcb_temp_type motor_pcb_temp;

   typedef double _motor_stator_temp_type;
  _motor_stator_temp_type motor_stator_temp;

   typedef double _battery_voltage_type;
  _battery_voltage_type battery_voltage;

   typedef double _battery_current_type;
  _battery_current_type battery_current;

   typedef double _temperature_reverse_voltage_protection_type;
  _temperature_reverse_voltage_protection_type temperature_reverse_voltage_protection;





  typedef boost::shared_ptr< ::custom_msgs::MotorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::MotorState_<ContainerAllocator> const> ConstPtr;

}; // struct MotorState_

typedef ::custom_msgs::MotorState_<std::allocator<void> > MotorState;

typedef boost::shared_ptr< ::custom_msgs::MotorState > MotorStatePtr;
typedef boost::shared_ptr< ::custom_msgs::MotorState const> MotorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::MotorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::MotorState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_msgs::MotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::MotorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::MotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::MotorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::MotorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::MotorState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ba26985322fe9ed7cb8984452bc3eb4";
  }

  static const char* value(const ::custom_msgs::MotorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ba26985322fe9edULL;
  static const uint64_t static_value2 = 0x7cb8984452bc3eb4ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/MotorState";
  }

  static const char* value(const ::custom_msgs::MotorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::MotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Custom message for holding the motor state\n"
"# from torqeedo motors\n"
"\n"
"\n"
"bool set_throttle_stop\n"
"bool motor_in_temp_limit\n"
"bool battery_nearly_empty\n"
"float64 master_error_code\n"
"float64 motor_voltage \n"
"float64 motor_current\n"
"float64 motor_speed\n"
"float64 motor_pcb_temp\n"
"float64 motor_stator_temp\n"
"float64 battery_voltage\n"
"float64 battery_current\n"
"float64 temperature_reverse_voltage_protection\n"
;
  }

  static const char* value(const ::custom_msgs::MotorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::MotorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.set_throttle_stop);
      stream.next(m.motor_in_temp_limit);
      stream.next(m.battery_nearly_empty);
      stream.next(m.master_error_code);
      stream.next(m.motor_voltage);
      stream.next(m.motor_current);
      stream.next(m.motor_speed);
      stream.next(m.motor_pcb_temp);
      stream.next(m.motor_stator_temp);
      stream.next(m.battery_voltage);
      stream.next(m.battery_current);
      stream.next(m.temperature_reverse_voltage_protection);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::MotorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::MotorState_<ContainerAllocator>& v)
  {
    s << indent << "set_throttle_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.set_throttle_stop);
    s << indent << "motor_in_temp_limit: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor_in_temp_limit);
    s << indent << "battery_nearly_empty: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.battery_nearly_empty);
    s << indent << "master_error_code: ";
    Printer<double>::stream(s, indent + "  ", v.master_error_code);
    s << indent << "motor_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.motor_voltage);
    s << indent << "motor_current: ";
    Printer<double>::stream(s, indent + "  ", v.motor_current);
    s << indent << "motor_speed: ";
    Printer<double>::stream(s, indent + "  ", v.motor_speed);
    s << indent << "motor_pcb_temp: ";
    Printer<double>::stream(s, indent + "  ", v.motor_pcb_temp);
    s << indent << "motor_stator_temp: ";
    Printer<double>::stream(s, indent + "  ", v.motor_stator_temp);
    s << indent << "battery_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.battery_voltage);
    s << indent << "battery_current: ";
    Printer<double>::stream(s, indent + "  ", v.battery_current);
    s << indent << "temperature_reverse_voltage_protection: ";
    Printer<double>::stream(s, indent + "  ", v.temperature_reverse_voltage_protection);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_MOTORSTATE_H
