# language: zh-CN
功能: 安全问题

  场景大纲:99bill侧短信验证码设置安全问题
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/credential/security_question/set|{"reqHeader":{"reqId":"123","sessionId":"123"},"mobile":"18020170101","messageAuthenCode":"$EB88F-OD74I-LOUOB-BJCAJ-AMSWW","securityQuestionList": [{ "answer": "答案1","questionCode": 1},{"answer": "答案2","questionCode": 3}]}|UAP-10000|

  场景大纲:99bill侧安全问题验证
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/credential/security_question/verify|{"reqHeader":{"reqId":"123","sessionId":"123"},"securityQuestions": [{"answer": "答案1", "questionCode": 1},{"answer": "答案2","questionCode": 3}]}|UAP-10000|