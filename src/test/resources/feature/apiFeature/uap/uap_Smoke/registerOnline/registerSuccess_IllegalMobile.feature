# language: zh-CN
功能: 线上注册

  场景大纲: 99bill线上注册飞凡通成功-mobile_illegal
    假如项目<name>做uapMobileIll<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/registration/online|{ "reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100","os":""}, "messageAuthenCode":"$EB88F-OD74I-LOUOB-BJCAJ-AMSWW",  "password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|UAP-10000|

  场景大纲: 清理数据99bill线上注册成功-mobile_illegal
    假如项目<name>做uapMobileIll<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/test/clear_all_data_byloginname|{"reqHeader":{"reqId":"888888", "sessionId":"777777" }, "PWID":"","bizType":"reg-online"}|UAP-10000|