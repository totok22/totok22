
# 服务通讯题目

## 项目概述

本项目实现了一个简单的ROS服务,可以接收两个整数并返回它们的乘积。项目包含一个服务器节点和一个客户端节点,使用自定义的服务和消息类型。

## 文件结构

```
my_ros_package/
├── src/
├── srv/
│   └── MultiplyTwo.srv
├── msg/
│   └── MultiplyResult.msg
├── scripts/
│   ├── multiply_server.py
│   └── multiply_client.py
├── CMakeLists.txt
└── package.xml
```

## 自定义消息和服务

1. MultiplyTwo.srv: 定义乘法服务的请求和响应结构
2. MultiplyResult.msg: 定义乘法结果的消息结构

## 节点说明

1. multiply_server.py: 乘法服务器节点
2. multiply_client.py: 乘法客户端节点

## 运行说明

1. 确保已经安装了ROS Noetic。

2. 将项目文件夹 `my_ros_package` 放在您的catkin工作空间的 `src` 目录下。

3. 打开终端,进入catkin工作空间,编译项目:

   ```bash
   cd ~/catkin_ws
   catkin_make
   source devel/setup.bash
   ```

4. 确保Python脚本具有执行权限:

   ```bash
   chmod +x ~/catkin_ws/src/my_ros_package/scripts/multiply_server.py
   chmod +x ~/catkin_ws/src/my_ros_package/scripts/multiply_client.py
   ```

5. 在新的终端中启动ROS核心:

   ```bash
   roscore
   ```

6. 在新的终端中启动乘法服务器节点:

   ```bash
   rosrun my_ros_package multiply_server.py
   ```

7. 在另一个新的终端中启动乘法客户端节点:

   ```bash
   rosrun my_ros_package multiply_client.py
   ```

8. 按照客户端节点的提示,输入两个整数。客户端会发送请求到服务器,并显示乘法结果。

## 注意事项

- 确保在运行节点之前已经启动了 `roscore`。
- 服务器节点必须在客户端节点之前启动。
- 如果遇到导入错误,请确保已经正确设置了ROS环境变量,并且已经编译了项目。

---