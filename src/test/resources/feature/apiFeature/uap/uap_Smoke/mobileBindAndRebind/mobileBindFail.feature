# language: zh-CN
功能:绑定和换绑手机号

  场景大纲:ffan侧绑定失败绑定已注册手机号
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|ffan|/account/login_account/bind_mobile|{ "reqHeader":{ "reqId":"123","sessionId":"123"},"mobile":"18020170101"}|UAP-32402|