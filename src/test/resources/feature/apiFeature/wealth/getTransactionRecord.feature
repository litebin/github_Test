# language: zh-CN
功能: 获取交易记录详情

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|path|param|string|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|
  场景大纲:获取交易记录列表
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|path|param|string|
      |wealth|/api/v1/transactionRecord|{"traceNo":"30bc7117-12d4-4d31-887a-1da637956d8b"}|\\[*\\]|
