# language: zh-CN
功能: 安全问题

  场景大纲:99bill侧支付密码重置安全问题
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/query/user_security_questions|{"reqHeader":{"reqId":"123","sessionId":"123"}, "payPwd":"59b0a3ff7e748398b105758290dfc048b53a9e7011fc250bfca8d8f372c55122a894252103ac1c6fcdde79c905f0e6926a7f307df1f84f65c01a6ea9577a37fe","securityQuestionList": [{ "answer": "答案1","questionCode": 1},{"answer": "答案2","questionCode": 3}]}|UAP-10000|