# language: zh-CN
功能: 是否设置过交易密码
  场景大纲:用户登录
    假如项目<name>做login_post请求数据准备<path>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name  |path|param1|accessToken|
      |wealth |/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 是否设置过交易密码
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<alreadySet>
    例子:
      |name |path|alreadySet|
      |wealth |/api/v1/user/password|alreadySet|