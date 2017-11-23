# language: zh-CN
功能: 添加银行卡
  场景大纲: 用户登录
    假如项目<name>做login_post请求数据准备<path>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param1|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|


  场景大纲: 获取验证码
    假如项目<name>做addBank_get请求数据准备<path>
    当verifycode_执行get请求
    那么检查接口响应字段中是否包含<verifycode>
    例子:
      |name|path|verifycode|
      |wealth|/api/v1/verifycode?source=4&|verifycode|
  场景大纲: 添加银行卡
    假如项目<name>做addBank_post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口返回状态码status是<Status1>
    例子:
      |name|path|param2|Status1|
      |wealth|/api/v1/user/bankcard/add|{"realName":"xiaoming"}|200|

  场景大纲: 添加银行卡
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param2|code|
      |wealth|/api/v1/user/bankcard/add|{"realName":"xiaoming","phone":"13366265183","verifyCode":"123456"}|1001|

  场景大纲: 添加银行卡
    假如项目<name>做post请求数据准备<path>和<param2>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param2|code|
      |wealth|/api/v1/user/bankcard/add|{"cardNo":"6212261904001381013","realName":"xiaoming","phone":"15866265183","verifyCode":"123456"}|1021|

  场景大纲:获取卡号
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么cardId获取
    例子:
      |name |path|
      |wealth|/api/v1/user/bankcard/list|

  场景大纲:删除卡号
    假如项目<name>做cardId_get请求数据准备<path>
    当执行get请求
    那么检查接口返回状态码status是<Status>
    例子:
      |name|path|Status|
      |wealth|/api/v1/user/bankcard/delete?|200|