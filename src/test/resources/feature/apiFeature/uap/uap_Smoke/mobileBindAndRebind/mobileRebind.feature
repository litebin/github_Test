# language: zh-CN
功能:绑定和换绑手机号

  场景大纲:99bill侧换绑新的手机号失败该手机已被绑定
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/login_account/rebind_mobile|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"mobile":"18020170101"}|UAP-32301|