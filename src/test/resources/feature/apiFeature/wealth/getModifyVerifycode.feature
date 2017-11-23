# language: zh-CN
功能: 获取短信验证码

  场景大纲:获取注册验证码
    假如项目<name>做wealthmobile_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name|path|verifycode|string|
      |wealth |/api/v1/verifycode?source=1&|verifycode|发送验证码成功|

  场景大纲: 用户注册
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth |/api/v1/register|{"pwd":"w123456"}|accessToken|

  场景大纲: 修改密码验证码
    假如项目<name>做wealthmobile_get请求数据准备<uri3>
    当执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name |uri3|verifycode|string|
      |wealth|/api/v1/verifycode?source=2&|verifycode|发送验证码成功|