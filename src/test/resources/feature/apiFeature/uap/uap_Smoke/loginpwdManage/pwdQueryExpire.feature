# language: zh-CN
功能: 登录密码管理

  场景大纲:99bill侧登录密码过期日期查询
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/loginpwd|{"reqHeader":{"reqId":"123", "sessionId":"672560"}}|UAP-10000|