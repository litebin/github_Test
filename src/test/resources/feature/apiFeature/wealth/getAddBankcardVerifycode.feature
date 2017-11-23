# language: zh-CN
功能: 获取绑定银行卡的验证码


  场景大纲: 用户登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 添加银行卡发送验证码
    假如项目<name>做addBank_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name |path|verifycode|
      |wealth|/api/v1/verifycode?source=4&|verifycode|

  场景大纲: 添加银行卡发送验证码
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|code|
      |wealth|/api/v1/verifycode?source=4&phone=123|1001|

