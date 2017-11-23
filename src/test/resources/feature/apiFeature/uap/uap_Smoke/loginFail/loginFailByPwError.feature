# language: zh-CN
功能: 密码登录失败及登录错误次数查询

  场景大纲:99bill侧登录失败
    假如项目<name>做accessToken<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/login/password|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"loginName":"18020170101","password":"5e283e1f4add2b69eeff25fad40e0a79fea4df8442cc67e620e9b0d60f13be2ad4313ad19e602dadfa2ce8f8d99cc734ed0b2029ff702256baa78e9ccc993d69"}|UAP-33105|