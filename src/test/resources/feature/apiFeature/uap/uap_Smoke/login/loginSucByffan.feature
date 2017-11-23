# language: zh-CN
功能: 密码登录成功

  场景大纲:飞凡通帐号-在ffan侧密码登录成功
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|ffan|/auth/login/password|{"reqHeader":{"reqId":"123", "sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"18020170101", "password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|UAP-10000|