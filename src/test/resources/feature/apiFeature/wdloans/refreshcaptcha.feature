# language: zh-CN
  功能: 刷新验证码
    场景大纲: 刷新验证码
      假如项目<name>做post请求数据准备<path>和<param>
      当执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/refreshcaptcha|{"mobile":"13303030303"}|captcha|