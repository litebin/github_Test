# language: zh-CN
功能: 获取定期持有份额详情

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲:获取定期持有份额详情
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name |path|string|
      |wealth|/api/v1/fixedInvest/detail?shareId=15725&type=&pageIndex=0&pageSize=8|productName|
