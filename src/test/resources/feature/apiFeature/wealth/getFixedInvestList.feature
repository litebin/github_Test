# language: zh-CN
功能: 获取定期已回款份额

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲:获取定期已回款份额
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|path|param1|string|
      |wealth|/api/v1/fixedInvest|{"pageIndex":0,"pageSize":10,"type":2}|\\[*\\]|
