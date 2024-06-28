// Generated by gencpp from file my_ros_package/AddOne.msg
// DO NOT EDIT!


#ifndef MY_ROS_PACKAGE_MESSAGE_ADDONE_H
#define MY_ROS_PACKAGE_MESSAGE_ADDONE_H

#include <ros/service_traits.h>


#include <my_ros_package/AddOneRequest.h>
#include <my_ros_package/AddOneResponse.h>


namespace my_ros_package
{

struct AddOne
{

typedef AddOneRequest Request;
typedef AddOneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddOne
} // namespace my_ros_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_ros_package::AddOne > {
  static const char* value()
  {
    return "21d8f69e8f1621953b39ae17e934f4f0";
  }

  static const char* value(const ::my_ros_package::AddOne&) { return value(); }
};

template<>
struct DataType< ::my_ros_package::AddOne > {
  static const char* value()
  {
    return "my_ros_package/AddOne";
  }

  static const char* value(const ::my_ros_package::AddOne&) { return value(); }
};


// service_traits::MD5Sum< ::my_ros_package::AddOneRequest> should match
// service_traits::MD5Sum< ::my_ros_package::AddOne >
template<>
struct MD5Sum< ::my_ros_package::AddOneRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_ros_package::AddOne >::value();
  }
  static const char* value(const ::my_ros_package::AddOneRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_ros_package::AddOneRequest> should match
// service_traits::DataType< ::my_ros_package::AddOne >
template<>
struct DataType< ::my_ros_package::AddOneRequest>
{
  static const char* value()
  {
    return DataType< ::my_ros_package::AddOne >::value();
  }
  static const char* value(const ::my_ros_package::AddOneRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_ros_package::AddOneResponse> should match
// service_traits::MD5Sum< ::my_ros_package::AddOne >
template<>
struct MD5Sum< ::my_ros_package::AddOneResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_ros_package::AddOne >::value();
  }
  static const char* value(const ::my_ros_package::AddOneResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_ros_package::AddOneResponse> should match
// service_traits::DataType< ::my_ros_package::AddOne >
template<>
struct DataType< ::my_ros_package::AddOneResponse>
{
  static const char* value()
  {
    return DataType< ::my_ros_package::AddOne >::value();
  }
  static const char* value(const ::my_ros_package::AddOneResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_ROS_PACKAGE_MESSAGE_ADDONE_H