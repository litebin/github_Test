# language: zh-CN
  功能: 忘记密码，修改密码
      场景大纲: 发送修改密码验证码
        假如项目<name>做post请求数据准备<path>和<param>
        当verifycode_post执行post请求
      例子:
        |name|path|param|
        |loans|/api/v1/verifycode|{"mobile":"13303030303"}|

      场景大纲: 修改密码成功
        假如项目<name>做forgetpass_post请求数据准备<path>和<param>
        当执行post请求
        那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/forgetpass|{"mobile":"13303030303"}|\\{\\}|

    场景大纲: 发送修改密码验证码
      假如项目<name>做post请求数据准备<path>和<param>
      当verifycode_post执行post请求
      例子:
        |name|path|param|
        |loans|/api/v1/verifycode|{"mobile":"13557215712"}|

    场景大纲: 修改密码_新密码不能与原密码完全相同
      假如项目<name>做forgetpass_post请求数据准备<path>和<param>
      当执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/forgetpass|{"mobile":"13557215712","pwd":"u11111"}|"errorCode":1028|