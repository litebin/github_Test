# language: zh-CN
功能:支付密码管理

  场景大纲: 99bill侧支付密码验证成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/auth/paypwd/verify|{"reqHeader":{"reqId":"123","sessionId":"123"},"logCollection":{"terminal":"","vendor":"HTC","deviceId":"sdf","screenSize":null,"network":"","mac":"","gps":"","imei":"","ip":"192.168.3.100", "os":""},"payPwd":"59b0a3ff7e748398b105758290dfc048b53a9e7011fc250bfca8d8f372c55122a894252103ac1c6fcdde79c905f0e6926a7f307df1f84f65c01a6ea9577a37fe"}|UAP-10000|