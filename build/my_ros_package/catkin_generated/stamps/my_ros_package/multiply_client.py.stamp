#!/usr/bin/env python3

import rospy
from my_ros_package.srv import MultiplyTwo

def multiply_client():
    rospy.init_node('multiply_client')
    rospy.wait_for_service('multiply_two_ints')
    try:
        multiply_two_ints = rospy.ServiceProxy('multiply_two_ints', MultiplyTwo)
        while not rospy.is_shutdown():
            try:
                a = int(input("请输入第一个整数: "))
                b = int(input("请输入第二个整数: "))
                response = multiply_two_ints(a, b)
                rospy.loginfo(f"服务响应: {response.result.message}")
                rospy.loginfo(f"计算结果: {response.result.product}")
            except ValueError:
                rospy.logwarn("请输入有效的整数!")
            except rospy.ServiceException as e:
                rospy.logerr(f"服务调用失败: {e}")
    except rospy.ROSInterruptException:
        pass

if __name__ == "__main__":
    multiply_client()