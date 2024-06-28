cmake_minimum_required(VERSION 3.0.2)
project(my_ros_package)

## 找到catkin宏和库
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  message_generation
)

## 添加消息文件
add_message_files(
  FILES
  MultiplyResult.msg
)

## 生成服务
add_service_files(
  FILES
  MultiplyTwo.srv
  AddOne.srv
)

## 生成消息
generate_messages(
  DEPENDENCIES
  std_msgs
)

## catkin特定配置
catkin_package(
  CATKIN_DEPENDS rospy std_msgs message_runtime
)

## 指定catkin配置文件
include_directories(
  ${catkin_INCLUDE_DIRS}
)

catkin_install_python(PROGRAMS
  scripts/publisher.py
  scripts/subscriber.py
  scripts/multiply_server.py
  scripts/multiply_client.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

