// Generated by gencpp from file bodyreader/body.msg
// DO NOT EDIT!


#ifndef BODYREADER_MESSAGE_BODY_H
#define BODYREADER_MESSAGE_BODY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <bodyreader/vector3f.h>
#include <bodyreader/joint.h>

namespace bodyreader
{
template <class ContainerAllocator>
struct body_
{
  typedef body_<ContainerAllocator> Type;

  body_()
    : bodyid(0)
    , centerOfMass()
    , joints()  {
    }
  body_(const ContainerAllocator& _alloc)
    : bodyid(0)
    , centerOfMass(_alloc)
    , joints()  {
  (void)_alloc;
      joints.assign( ::bodyreader::joint_<ContainerAllocator> (_alloc));
  }



   typedef int16_t _bodyid_type;
  _bodyid_type bodyid;

   typedef  ::bodyreader::vector3f_<ContainerAllocator>  _centerOfMass_type;
  _centerOfMass_type centerOfMass;

   typedef boost::array< ::bodyreader::joint_<ContainerAllocator> , 19>  _joints_type;
  _joints_type joints;





  typedef boost::shared_ptr< ::bodyreader::body_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bodyreader::body_<ContainerAllocator> const> ConstPtr;

}; // struct body_

typedef ::bodyreader::body_<std::allocator<void> > body;

typedef boost::shared_ptr< ::bodyreader::body > bodyPtr;
typedef boost::shared_ptr< ::bodyreader::body const> bodyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bodyreader::body_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bodyreader::body_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bodyreader::body_<ContainerAllocator1> & lhs, const ::bodyreader::body_<ContainerAllocator2> & rhs)
{
  return lhs.bodyid == rhs.bodyid &&
    lhs.centerOfMass == rhs.centerOfMass &&
    lhs.joints == rhs.joints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bodyreader::body_<ContainerAllocator1> & lhs, const ::bodyreader::body_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bodyreader

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bodyreader::body_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bodyreader::body_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bodyreader::body_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bodyreader::body_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bodyreader::body_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bodyreader::body_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bodyreader::body_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57f2da357721aaca7548e8de3d97f76a";
  }

  static const char* value(const ::bodyreader::body_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57f2da357721aacaULL;
  static const uint64_t static_value2 = 0x7548e8de3d97f76aULL;
};

template<class ContainerAllocator>
struct DataType< ::bodyreader::body_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bodyreader/body";
  }

  static const char* value(const ::bodyreader::body_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bodyreader::body_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 bodyid\n"
"vector3f centerOfMass\n"
"joint[19] joints\n"
"================================================================================\n"
"MSG: bodyreader/vector3f\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"================================================================================\n"
"MSG: bodyreader/joint\n"
"int8 type\n"
"vector2f depthPosition\n"
"vector3f worldPosition\n"
"================================================================================\n"
"MSG: bodyreader/vector2f\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::bodyreader::body_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bodyreader::body_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bodyid);
      stream.next(m.centerOfMass);
      stream.next(m.joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct body_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bodyreader::body_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bodyreader::body_<ContainerAllocator>& v)
  {
    s << indent << "bodyid: ";
    Printer<int16_t>::stream(s, indent + "  ", v.bodyid);
    s << indent << "centerOfMass: ";
    s << std::endl;
    Printer< ::bodyreader::vector3f_<ContainerAllocator> >::stream(s, indent + "  ", v.centerOfMass);
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::bodyreader::joint_<ContainerAllocator> >::stream(s, indent + "    ", v.joints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BODYREADER_MESSAGE_BODY_H
