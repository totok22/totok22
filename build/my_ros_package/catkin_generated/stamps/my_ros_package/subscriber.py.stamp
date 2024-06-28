#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

# 回调函数，处理接收到的消息
def callback(msg):
    incremented_value = msg.data + 1  # 将接收到的消息加1
    rospy.loginfo(f"Received: {msg.data}, Incremented: {incremented_value}")  # 记录接收到的消息及加1后的结果

if __name__ == '__main__':
    rospy.init_node('keyboard_subscriber')  # 初始化ROS节点
    rospy.Subscriber('keyboard_topic', Int32, callback)  # 创建订阅者，订阅名为'keyboard_topic'的整型消息
    rospy.spin()  # 循环等待接收消息
