# language: zh-CN
功能: 获取修改交易密码的验证码
  场景大纲: 用户登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 获取修改交易密码的验证码
    假如项目<name>做modifyTrade_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name|path|verifycode|string|
      |wealth|/api/v1/verifycode?source=3&|verifycode|发送验证码成功|