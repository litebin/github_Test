# language: zh-CN
功能: 控制是否复投
  场景大纲: 用户登录
    假如项目<name>做login_post请求数据准备<path>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param1|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|


  场景大纲: 控制是否复投
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|path|param1|string|
      |wealth|/api/v1/auto/invest/control|{"orderId":25416,"password":"111111"}|10260|