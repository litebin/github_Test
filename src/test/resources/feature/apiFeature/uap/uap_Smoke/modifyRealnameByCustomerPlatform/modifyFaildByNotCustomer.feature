# language: zh-CN
功能: 实名修改(统一客服平台专用)

  场景大纲: 非统一客服平台修改实名失败
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/identify/realname/fix|{"reqHeader":{"reqId":"123","sessionId":"123" },"name":"qinyf","idNumber":"12344567778888","idType":"1"}|UAP-20014|