# language: zh-CN
功能:登录密码管理

  场景大纲:99bill侧短信重置密码成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/credential/pwd/reset/by_sms|{"reqHeader":{"reqId":"123","sessionId":"672560" }, "PWID":"12345676512","password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484","mobile":"18020170101","messageAuthenCode":"$EB88F-OD74I-LOUOB-BJCAJ-AMSWW"}|UAP-10000|