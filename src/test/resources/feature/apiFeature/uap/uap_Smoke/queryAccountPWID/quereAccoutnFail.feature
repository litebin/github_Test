# language: zh-CN
功能: 根据登录帐号查询PWID

  场景大纲:99bill侧查询PWID失败
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/pwid/by_loginname|{"reqHeader":{"reqId":"123", "sessionId":"123"}, "loginName":"168888820550000"}|UAP-20023|