# language: zh-CN
功能: 设置交易密码
  场景大纲:用户登录
    假如项目<name>做login_post请求数据准备<path>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param1|accessToken|
      |wealth |/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲:设置交易密码
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param2|code|
      |wealth |/api/v1/user/password|{ "password":"11111"}|1025|

  场景大纲:设置交易密码
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param2|code|
      |wealth |/api/v1/user/password|{ "password":"a11111"}|1025|

  场景大纲:设置交易密码
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param2|code|
      |wealth |/api/v1/user/password|{ "password":"222222"}|1027|

  场景大纲:获取验证码
    假如项目<name>做register_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name|path|string|
      |wealth|/api/v1/verifycode?source=1&|发送验证码成功|

  场景大纲:用户注册
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/register|{"pwd":"w123456"}|accessToken|

  场景大纲:设置交易密码
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param2|code|
      |wealth |/api/v1/user/password|{ "password":"222222"}|1035|