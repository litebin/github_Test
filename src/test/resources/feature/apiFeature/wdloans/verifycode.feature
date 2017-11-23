# language: zh-CN
  功能:发送验证码
    场景大纲: 发送验证码
      假如项目<name>做post请求数据准备<path>和<param>
      当verifycode_post执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/verifycode|{"mobile":"13303030302"}|verifycode|

    场景大纲: 发送验证码_手机号格式错误
      假如项目<name>做post请求数据准备<path>和<param>
      当verifycode_post执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/verifycode|{"mobile":"1330303030"}|"errorCode":4003|


