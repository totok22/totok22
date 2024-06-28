#!/usr/bin/env python


import rospy
from std_msgs.msg import Int32
import sys, select, termios, tty

# 从键盘获取单个字符的函数
def get_key():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

if __name__ == '__main__':
    settings = termios.tcgetattr(sys.stdin)
    rospy.init_node('keyboard_publisher')   # 初始化ROS节点
    pub = rospy.Publisher('keyboard_topic', Int32, queue_size=10) # 创建发布者，发布整型消息到名为'keyboard_topic'的话题上
    rate = rospy.Rate(10)

    try:
        while not rospy.is_shutdown():
            key = get_key()  # 获取键盘输入的字符
            if key.isdigit():  # 检查输入是否为数字
                msg = Int32(data=int(key))  # 创建Int32消息
                pub.publish(msg)  # 发布消息到话题上
                rospy.loginfo(f"Published: {msg.data}")  # 记录发布的消息数据
            rate.sleep()  # 按设定频率休眠
    except rospy.ROSInterruptException:
        pass
    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)  # 恢复终端设置
        