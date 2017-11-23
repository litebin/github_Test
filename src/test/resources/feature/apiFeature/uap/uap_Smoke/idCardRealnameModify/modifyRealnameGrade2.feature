# language: zh-CN
功能: 身份证实名制等级修改

  场景大纲: 实名等级修改控制-99bill可修改已实名到未实名
    假如项目<name>做PWID<type>_post请求数据准备<uri>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|uri|param|regular|
      |uap|99bill|/identify/realnamelevel/modify|{"reqHeader":{"reqId":"123","sessionId":"123" },"name":"qinyf","idNumber":"123456789009087766","idType":"1", "realNameLevel":"100"}|UAP-10000|