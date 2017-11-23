# language: zh-CN
功能: 登录
  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name |path|param|accessToken|
      |wealth |/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param|code|
      |wealth |/api/v1/login|{"pwd":"b123456"}|1006|

  场景大纲: 登录
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param|code|
      |wealth |/api/v1/login|{"pwd":"aaa"}|1013|
  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param|code|
      |wealth |/api/v1/login|{"pwd":""}|1014|

  场景大纲: 登录
    假如项目<name>做post请求数据准备<uri>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |uri|param|code|
      |wealth |/api/v1/login|{"mobile":"bb","pwd":"b123456"}|1020|

  场景大纲: 登录
    假如项目<name>做post请求数据准备<uri>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |uri|param|code|
      |wealth |/api/v1/login|{"mobile":"12345645685","pwd":"b123456"}|1010|

