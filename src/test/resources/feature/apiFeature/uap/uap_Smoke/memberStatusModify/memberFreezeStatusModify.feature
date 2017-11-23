# language: zh-CN
功能:会员状态修改激活操作

  场景大纲:99bill侧正常会员转待激活成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/status/freeze|{ "reqHeader":{ "reqId":"123","sessionId":"445673"}}|UAP-10000|

  场景大纲:99bill侧激活待激活会员成功
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|uap|/account/status/normal|{ "reqHeader":{ "reqId":"123","sessionId":"445673"}}|UAP-10000|