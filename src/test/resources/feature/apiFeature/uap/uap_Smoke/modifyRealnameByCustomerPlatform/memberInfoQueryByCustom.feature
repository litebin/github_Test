# language: zh-CN
功能: 统一客服平台查询会员信息

  场景大纲: 统一客服平台查询会员信息成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/query/personal_data|{"reqHeader":{ "reqId":"123", "sessionId":"672560" }}|UAP-10000|