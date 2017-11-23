# language: zh-CN
  功能:登录
    场景大纲:登录成功
      假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
      当login_getaccessToken_post执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/login|{}|accessToken|

    场景大纲:登录_密码错误
      假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
      当login_getaccessToken_post执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/login|{"pwd":"e11111"}|"errorCode":1009|

    场景大纲:登录_帐号不存在
      假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
      当login_getaccessToken_post执行post请求
      那么检查接口是否返回正确<regular>
      例子:
        |name|path|param|regular|
        |loans|/api/v1/login|{"pwd":"u11111","mobile":"13309090909"}|"errorCode":1010|



