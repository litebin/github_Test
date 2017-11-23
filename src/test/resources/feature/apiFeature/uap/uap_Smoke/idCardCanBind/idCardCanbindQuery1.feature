# language: zh-CN
功能: 身份证是否可以绑定查询

  场景大纲: 99bill侧身份证是否可以绑定查询成功canbind=1
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/idnumber/canbind|{"reqHeader":{"reqId":"123", "sessionId":"123"}, "idNumber":"41222620170630002X"}|UAP-10000|