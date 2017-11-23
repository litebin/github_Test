# language: zh-CN
功能: 查询登录账号是否存在

  场景大纲:ffan侧登录账号不存在查询
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/login_account/exist|{"reqHeader":{"reqId":"123", "sessionId":"123"}, "loginName":"168888820550000"}|UAP-20023|