# language: zh-CN
功能: 修改交易密码
  场景大纲: 用户登录
    假如项目<name>做login_post请求数据准备<uri1>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name |uri1|param1|accessToken|
      |wealth |/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 获取验证码
    假如项目<name>做modifyTrade_get请求数据准备<uri2>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name |uri2|verifycode|
      |wealth |/api/v1/verifycode?source=3&|verifycode|

  场景大纲: 修改交易密码Step1
    假如项目<name>做step1_post请求数据准备<uri3>和<param2>
    当handler_执行post请求
    那么检查接口响应字段中是否包含<handler>
    例子:
      |name |uri3|param2|handler|
      |wealth |/api/v1/tradepassword/step1|{"name":"xiaoming"}|handler|

  场景大纲: 修改交易密码Step2
    假如项目<name>做step2_post请求数据准备<uri4>和<param3>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |uri4|param3|code|
      |wealth|/api/v1/tradepassword/step2|{"password":"291962"}|1026|

  场景大纲: 修改交易密码Step2
    假如项目<name>做step2_post请求数据准备<uri4>和<param3>
    当执行post请求
    那么检查接口返回状态码status是<Status1>
    例子:
      |name |uri4|param3|Status1|
      |wealth|/api/v1/tradepassword/step2|{"password":"111111"}|200|



