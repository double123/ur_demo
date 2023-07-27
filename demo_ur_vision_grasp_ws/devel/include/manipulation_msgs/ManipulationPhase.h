// Generated by gencpp from file manipulation_msgs/ManipulationPhase.msg
// DO NOT EDIT!


#ifndef MANIPULATION_MSGS_MESSAGE_MANIPULATIONPHASE_H
#define MANIPULATION_MSGS_MESSAGE_MANIPULATIONPHASE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace manipulation_msgs
{
template <class ContainerAllocator>
struct ManipulationPhase_
{
  typedef ManipulationPhase_<ContainerAllocator> Type;

  ManipulationPhase_()
    : phase(0)  {
    }
  ManipulationPhase_(const ContainerAllocator& _alloc)
    : phase(0)  {
  (void)_alloc;
    }



   typedef int32_t _phase_type;
  _phase_type phase;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CHECKING_FEASIBILITY)
  #undef CHECKING_FEASIBILITY
#endif
#if defined(_WIN32) && defined(MOVING_TO_PREGRASP)
  #undef MOVING_TO_PREGRASP
#endif
#if defined(_WIN32) && defined(MOVING_TO_GRASP)
  #undef MOVING_TO_GRASP
#endif
#if defined(_WIN32) && defined(CLOSING)
  #undef CLOSING
#endif
#if defined(_WIN32) && defined(ADJUSTING_GRASP)
  #undef ADJUSTING_GRASP
#endif
#if defined(_WIN32) && defined(LIFTING)
  #undef LIFTING
#endif
#if defined(_WIN32) && defined(MOVING_WITH_OBJECT)
  #undef MOVING_WITH_OBJECT
#endif
#if defined(_WIN32) && defined(MOVING_TO_PLACE)
  #undef MOVING_TO_PLACE
#endif
#if defined(_WIN32) && defined(PLACING)
  #undef PLACING
#endif
#if defined(_WIN32) && defined(OPENING)
  #undef OPENING
#endif
#if defined(_WIN32) && defined(RETREATING)
  #undef RETREATING
#endif
#if defined(_WIN32) && defined(MOVING_WITHOUT_OBJECT)
  #undef MOVING_WITHOUT_OBJECT
#endif
#if defined(_WIN32) && defined(SHAKING)
  #undef SHAKING
#endif
#if defined(_WIN32) && defined(SUCCEEDED)
  #undef SUCCEEDED
#endif
#if defined(_WIN32) && defined(FAILED)
  #undef FAILED
#endif
#if defined(_WIN32) && defined(ABORTED)
  #undef ABORTED
#endif
#if defined(_WIN32) && defined(HOLDING_OBJECT)
  #undef HOLDING_OBJECT
#endif

  enum {
    CHECKING_FEASIBILITY = 0,
    MOVING_TO_PREGRASP = 1,
    MOVING_TO_GRASP = 2,
    CLOSING = 3,
    ADJUSTING_GRASP = 4,
    LIFTING = 5,
    MOVING_WITH_OBJECT = 6,
    MOVING_TO_PLACE = 7,
    PLACING = 8,
    OPENING = 9,
    RETREATING = 10,
    MOVING_WITHOUT_OBJECT = 11,
    SHAKING = 12,
    SUCCEEDED = 13,
    FAILED = 14,
    ABORTED = 15,
    HOLDING_OBJECT = 16,
  };


  typedef boost::shared_ptr< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> const> ConstPtr;

}; // struct ManipulationPhase_

typedef ::manipulation_msgs::ManipulationPhase_<std::allocator<void> > ManipulationPhase;

typedef boost::shared_ptr< ::manipulation_msgs::ManipulationPhase > ManipulationPhasePtr;
typedef boost::shared_ptr< ::manipulation_msgs::ManipulationPhase const> ManipulationPhaseConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator1> & lhs, const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator2> & rhs)
{
  return lhs.phase == rhs.phase;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator1> & lhs, const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace manipulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c824c847a35d8fd9277d324a3723378";
  }

  static const char* value(const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c824c847a35d8fdULL;
  static const uint64_t static_value2 = 0x9277d324a3723378ULL;
};

template<class ContainerAllocator>
struct DataType< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "manipulation_msgs/ManipulationPhase";
  }

  static const char* value(const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 CHECKING_FEASIBILITY = 0\n"
"int32 MOVING_TO_PREGRASP = 1\n"
"int32 MOVING_TO_GRASP = 2\n"
"int32 CLOSING = 3 \n"
"int32 ADJUSTING_GRASP = 4\n"
"int32 LIFTING = 5\n"
"int32 MOVING_WITH_OBJECT = 6\n"
"int32 MOVING_TO_PLACE = 7\n"
"int32 PLACING = 8\n"
"int32 OPENING = 9\n"
"int32 RETREATING = 10\n"
"int32 MOVING_WITHOUT_OBJECT = 11\n"
"int32 SHAKING = 12\n"
"int32 SUCCEEDED = 13\n"
"int32 FAILED = 14\n"
"int32 ABORTED = 15\n"
"int32 HOLDING_OBJECT = 16\n"
"\n"
"int32 phase\n"
;
  }

  static const char* value(const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.phase);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ManipulationPhase_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::manipulation_msgs::ManipulationPhase_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::manipulation_msgs::ManipulationPhase_<ContainerAllocator>& v)
  {
    s << indent << "phase: ";
    Printer<int32_t>::stream(s, indent + "  ", v.phase);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MANIPULATION_MSGS_MESSAGE_MANIPULATIONPHASE_H
