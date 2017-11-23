# language: zh-CN
功能: 线上注册

  场景大纲: 线上注册失败-请求消息无法解析
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|path|param|regular|
      |uap|/account/registration/online||UAP-20010|