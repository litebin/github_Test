# language: zh-CN
功能:清理数据换绑成功的手机号

  场景大纲:清理数据换绑成功的手机号
    假如项目<name>做uapMobileSuc<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/test/clear_all_data_byloginname|{ "reqHeader":{ "reqId":"888888","sessionId":"777777"},"PWID":"","bizType":"reg-online"}|UAP-10000|