

# my_ros_package

## 简介

`my_ros_package` 包含两个主要的节点：一个发布节点和一个接收节点。发布节点从键盘接收整型数据并以10Hz的频率发布消息。接收节点接收该消息，加1后打印输出。

## 依赖

- ROS (Robot Operating System)
- `rospy`
- `std_msgs`
- `message_generation`
- `message_runtime`

## 安装与构建

```bash
cd ~/catkin_ws/src
git clone <repository_url> my_ros_package
cd ~/catkin_ws
catkin_make
source devel/setup.bash
```

## 使用方法

### 1. 启动发布节点

发布节点从键盘接收整型数据并以10Hz的频率发布消息。运行以下命令启动发布节点：

```bash
rosrun my_ros_package publisher.py
```

运行该命令后，你可以在终端中输入整型数据（例如 1、2、3 等），这些数据将以10Hz的频率发布到 `keyboard_topic` 话题上。

### 2. 启动接收节点

接收节点接收 `keyboard_topic` 话题上的消息，加1后打印输出。运行以下命令启动接收节点：

```bash
rosrun my_ros_package subscriber.py
```

当接收节点接收到消息后，它会将消息加1，并打印结果。

## 服务使用

`my_ros_package` 还包含一个服务节点，可以通过以下命令调用该服务：

```bash
rosservice call /add_one "input: <your_integer>"
```

例如，要将数字5传递给服务，并接收加1后的结果，可以运行以下命令：

```bash
rosservice call /add_one "input: 5"
```
