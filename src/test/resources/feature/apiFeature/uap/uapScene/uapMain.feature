# language: zh-CN
功能: uap场景接口

  场景大纲: 清理数据99bill线上注册成功--mobile_success
    假如项目<name>做existMobile<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/test/clear_all_data_byloginname|{"reqHeader":{ "reqId":"888888", "sessionId":"777777" }, "PWID":"","bizType":"reg-online"}|"respCode":"UAP-10000"|

  场景大纲: 99bill线上注册飞凡通成功-mobile_success
    假如项目<name>做existMobile<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么赋值PWID
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/registration/online|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100","os":""}, "messageAuthenCode":"$EB88F-OD74I-LOUOB-BJCAJ-AMSWW",  "password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|"respCode":"UAP-10000"|

  场景大纲: 99bill侧修改实名等级成功未实名到实名
    假如项目<name>做Scene_PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/identify/realnamelevel/modify|{"reqHeader":{"reqId":"123","sessionId":"123" },"name":"qinyf","idNumber":"123456789009087766","idType":"1", "realNameLevel":"105"}|"respCode":"UAP-10000"|

  场景大纲: 统一客服平台修改实名成功
    假如项目<name>做Scene_PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/identify/realname/fix|{"reqHeader":{"reqId":"123","sessionId":"123" },"name":"qinyf","idNumber":"12344567778888","idType":"1"}|"respCode":"UAP-10000"|

  场景大纲:飞凡通帐号-在99bill侧密码登录成功
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/login/password|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"18020170001","password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|"respCode":"UAP-10000"|

  场景大纲: 清理换绑的手机号--mobile_bind_success
    假如项目<name>做modifyMobile<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/test/clear_all_data_byloginname|{"reqHeader":{ "reqId":"888888", "sessionId":"777777" }, "PWID":"","bizType":"reg-online"}|"respCode":"UAP-10000"|

  场景大纲:ffan侧换绑新的手机号成功
    假如项目<name>做Scene_PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|ffan|/account/login_account/rebind_mobile|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"mobile":"18120170001"}|"respCode":"UAP-10000"|

  场景大纲:飞凡通帐号-在99bill侧密码登录成功
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/login/password|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"18120170001","password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|"respCode":"UAP-10000"|

  场景大纲: 99bill侧绑定邮箱成功
    假如项目<name>做Scene_PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/login_account/bind_email|{"reqHeader":{"reqId":"123", "sessionId":"123"}, "email":"testyaolei@qq.com" }|"respCode":"UAP-10000"|

  场景大纲:99bill侧用邮箱登录成功
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/login/password|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"testyaolei@qq.com","password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|"respCode":"UAP-10000"|

  场景大纲: 99bill侧换绑新邮箱成功
    假如项目<name>做Scene_PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/login_account/rebind_email|{"reqHeader":{"reqId":"123", "sessionId":"123"}, "email":"912756634@qq.com" }|"respCode":"UAP-10000"|

  场景大纲:99bill侧用新邮箱登录登录成功
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/login/password|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"912756634@qq.com","password":"04b9535f6dd1607da39e83cb018f53d86825fd6e69784816acac004d7cdd4bb18952f27b95582494caaa8c0120553998535204de85791df6a57c9a78af241484"}|"respCode":"UAP-10000"|