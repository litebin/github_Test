# language: zh-CN
功能:发送新增银行卡验证码
  场景大纲:登录
    假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
    当login_getaccessToken_post执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/login|{}|accessToken|

  场景大纲: 发送新增银行卡验证码
    假如项目<name>做bankcardverifycode_post请求数据准备<path>和<param>
    当bankcardverifycode_post执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/verifycode|{}|发送验证码成功|