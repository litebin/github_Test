# language: zh-CN
功能: 修改登录密码

 场景大纲:发送验证码
    假如项目<name>做register_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name |path|verifycode|
      |wealth |/api/v1/verifycode?source=1&|verifycode|

  场景大纲: 用户注册
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name |path|param1|accessToken|
      |wealth |/api/v1/register|{"pwd":"w123456"}|accessToken|

  场景大纲:获取修改登录密码验证码
    假如项目<name>做wealthmobile_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name |path|verifycode|
      |wealth  |/api/v1/verifycode?source=2&|verifycode|

  场景大纲:修改登录密码
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param2|code|
      |wealth |/api/v1/forgetpass|{"pwd":"123456"}|1018|

  场景大纲:获取修改登录密码验证码
    假如项目<name>做wealthmobile_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name |path|verifycode|
      |wealth  |/api/v1/verifycode?source=2&|verifycode|


  场景大纲:修改登录密码
    假如项目<name>做wealthmobile_verifycode_post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口返回状态码status是<Status>
    例子:
      |name |path|param2|Status|
      |wealth |/api/v1/forgetpass|{"pwd":"a123456"}|200|


