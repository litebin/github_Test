# language: zh-CN
功能:登录账号状态信息修改

  场景大纲:99bill侧登录账号状态修改注销成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/login_account/cancel|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"loginName":"18020170101"}|"respCode":"UAP-10000"|

  场景大纲:99bill侧登录账号状态修改正常成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/login_account/normal|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"loginName":"18020170101"}|"respCode":"UAP-10000"|