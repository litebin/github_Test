# language: zh-CN
功能: 发送注册短信验证码

  场景大纲:获取注册短信验证码
    假如项目<name>做wealthmobile_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字符类型中message的值为<string>
    例子:
      |name|path|string|
      |wealth|/api/v1/verifycode?source=1&|发送验证码成功|