#!/usr/bin/env python3

import rospy
from my_ros_package.srv import MultiplyTwo, MultiplyTwoResponse
from my_ros_package.msg import MultiplyResult

def multiply_two_ints(req):
    product = req.a * req.b
    result = MultiplyResult()
    result.product = product
    result.message = f"The product of {req.a} and {req.b} is {product}"
    rospy.loginfo(f"接收到请求: {req.a} * {req.b}")
    rospy.loginfo(f"发送响应: {result.message}")
    return MultiplyTwoResponse(result)

def multiply_server():
    rospy.init_node('multiply_server')
    s = rospy.Service('multiply_two_ints', MultiplyTwo, multiply_two_ints)
    rospy.loginfo("乘法服务器已就绪")
    rospy.spin()

if __name__ == "__main__":
    try:
        multiply_server()
    except rospy.ROSInterruptException:
        pass