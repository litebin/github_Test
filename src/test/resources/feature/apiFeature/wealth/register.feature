# language: zh-CN
功能: 用户注册

  场景大纲:获取验证码
    假如项目<name>做get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|code|
      |wealth|/api/v1/verifycode?source=1&phone=55555555555|1001|

  场景大纲:获取验证码
    假如项目<name>做get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name|path|string|
      |wealth|/api/v1/verifycode?source=1&phone=15866265183|发送验证码成功|
  场景大纲:用户注册
    假如项目<name>做verifycode_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param|code|
      |wealth|/api/v1/register|{"mobile":"15866265183","pwd":"a123456"}|1007|


  场景大纲:获取验证码
    假如项目<name>做register_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<message>
    例子:
      |name|path|message|
      |wealth|/api/v1/verifycode?source=1&|发送验证码成功|
  场景大纲:用户注册
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param|code|
      |wealth|/api/v1/register|{"pwd":"123456"}|1018|

  场景大纲:用户注册
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param|code|
      |wealth|/api/v1/register|{"mobile":"13566265183","verifycode":"123456","pwd":"a123456"}|1021|

  场景大纲:用户注册
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/register|{"pwd":"w123456"}|accessToken|

