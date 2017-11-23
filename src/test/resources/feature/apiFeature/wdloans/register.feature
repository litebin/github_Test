# language: zh-CN
功能: 注册
  场景大纲: 发送验证码
    假如项目<name>做loansmobile_post请求数据准备<path>和<param>
    当verifycode_post执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/verifycode|{}|verifycode|

  场景大纲:注册成功
    假如项目<name>做verifycode_loansmobile_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/register|{"name":"zhangfei","email":"zhangfei@wandan.cn","pwd":"u11111","PWID":"PWID00000009"}|accessToken|

  场景大纲: 发送验证码
    假如项目<name>做loansmobile_post请求数据准备<path>和<param>
    当verifycode_post执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/verifycode|{"mobile":"13303030303"}|verifycode|

  场景大纲:注册_手机号码已注册
    假如项目<name>做verifycode_loansmobile_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/register|{"name":"zhangfei","email":"zhangfei@wandan.cn","pwd":"u11111","PWID":"PWID00000009","mobile":"13303030303"}|手机号码已注册|

  场景大纲: 发送验证码
    假如项目<name>做loansmobile_post请求数据准备<path>和<param>
    当verifycode_post执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/verifycode|{"mobile":"13303030302"}|verifycode|

  场景大纲:注册_验证码错误
    假如项目<name>做verifycode_loansmobile_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/register|{"name":"zhangfei","email":"zhangfei@wandan.cn","pwd":"u11111","PWID":"PWID00000009","mobile":"13303030303"}|"errorCode":4005|

  场景大纲: 发送验证码
    假如项目<name>做loansmobile_post请求数据准备<path>和<param>
    当verifycode_post执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/verifycode|{}|verifycode|

  场景大纲:注册_密码格式不正确
    假如项目<name>做verifycode_loansmobile_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |loans|/api/v1/register|{"name":"zhangfei","email":"zhangfei@wandan.cn","pwd":"u1111","PWID":"PWID00000009"}|"errorCode":1018|
