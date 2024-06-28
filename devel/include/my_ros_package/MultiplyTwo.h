// Generated by gencpp from file my_ros_package/MultiplyTwo.msg
// DO NOT EDIT!


#ifndef MY_ROS_PACKAGE_MESSAGE_MULTIPLYTWO_H
#define MY_ROS_PACKAGE_MESSAGE_MULTIPLYTWO_H

#include <ros/service_traits.h>


#include <my_ros_package/MultiplyTwoRequest.h>
#include <my_ros_package/MultiplyTwoResponse.h>


namespace my_ros_package
{

struct MultiplyTwo
{

typedef MultiplyTwoRequest Request;
typedef MultiplyTwoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MultiplyTwo
} // namespace my_ros_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_ros_package::MultiplyTwo > {
  static const char* value()
  {
    return "0d13f62a6f4a7a0a6b77fd6ffe004721";
  }

  static const char* value(const ::my_ros_package::MultiplyTwo&) { return value(); }
};

template<>
struct DataType< ::my_ros_package::MultiplyTwo > {
  static const char* value()
  {
    return "my_ros_package/MultiplyTwo";
  }

  static const char* value(const ::my_ros_package::MultiplyTwo&) { return value(); }
};


// service_traits::MD5Sum< ::my_ros_package::MultiplyTwoRequest> should match
// service_traits::MD5Sum< ::my_ros_package::MultiplyTwo >
template<>
struct MD5Sum< ::my_ros_package::MultiplyTwoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_ros_package::MultiplyTwo >::value();
  }
  static const char* value(const ::my_ros_package::MultiplyTwoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_ros_package::MultiplyTwoRequest> should match
// service_traits::DataType< ::my_ros_package::MultiplyTwo >
template<>
struct DataType< ::my_ros_package::MultiplyTwoRequest>
{
  static const char* value()
  {
    return DataType< ::my_ros_package::MultiplyTwo >::value();
  }
  static const char* value(const ::my_ros_package::MultiplyTwoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_ros_package::MultiplyTwoResponse> should match
// service_traits::MD5Sum< ::my_ros_package::MultiplyTwo >
template<>
struct MD5Sum< ::my_ros_package::MultiplyTwoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_ros_package::MultiplyTwo >::value();
  }
  static const char* value(const ::my_ros_package::MultiplyTwoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_ros_package::MultiplyTwoResponse> should match
// service_traits::DataType< ::my_ros_package::MultiplyTwo >
template<>
struct DataType< ::my_ros_package::MultiplyTwoResponse>
{
  static const char* value()
  {
    return DataType< ::my_ros_package::MultiplyTwo >::value();
  }
  static const char* value(const ::my_ros_package::MultiplyTwoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_ROS_PACKAGE_MESSAGE_MULTIPLYTWO_H
