# language: zh-CN
功能: 安全问题

  场景大纲:安全问题列表查询
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/security_questions|{"reqHeader":{"reqId":"123", "sessionId":"123"}}|UAP-10000|